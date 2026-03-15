--1.

with yasa as (
select year(i.InvoiceDate) AS [Year] ,
		sum( s.Quantity*s.UnitPrice) AS IncomePerYear ,
		count(distinct month(i.InvoiceDate)) AS NumberOfDistinctMonths,
		sum( s.Quantity*s.UnitPrice)* 12.0/(count(distinct month(i.InvoiceDate))) AS YearlyLinearIncome 
from sales.InvoiceLines s JOIN SALES.Invoices i ON s.InvoiceID=i.InvoiceID
group by year(i.InvoiceDate) 
) 
select [year],
		CONVERT(varchar(20), CAST(IncomePerYear AS money), 1) AS IncomePerYear,
		NumberOfDistinctMonths,
		CONVERT(varchar(20), CAST(YearlyLinearIncome AS money), 1) AS YearlyLinearIncome,
		FORMAT(
			ROUND(
					(
					(YearlyLinearIncome - LAG(YearlyLinearIncome,1) OVER (ORDER BY [Year]))
					 / LAG(YearlyLinearIncome,1) OVER (ORDER BY [Year])
					) * 100.0
					, 2)
					, '0.00') AS GrowthRate
from yasa
order by [year]

--2.

with yasa as (
select year(s.InvoiceDate) AS [Year] ,
	DATEPART(quarter,s.InvoiceDate) AS TheQuarter ,
	c.CustomerName AS CustomerName,
	sum(i.ExtendedPrice-i.TaxAmount) AS IncomePerQuarterYear,
	ROW_NUMBER() OVER(PARTITION BY year(s.InvoiceDate) , DATEPART(quarter,s.InvoiceDate) ORDER BY sum(i.ExtendedPrice-i.TaxAmount) DESC ) AS DNR
from sales.InvoiceLines i join sales.Invoices s on i.InvoiceID=s.InvoiceID JOIN Sales.Customers c ON s.CustomerID=c.CustomerID
GROUP BY year(s.InvoiceDate) ,DATEPART(quarter,s.InvoiceDate)   , c.CustomerName
)

select *
from yasa
WHERE DNR<=5


--3 

SELECT TOP (10)
       i.StockItemID,
       s.StockItemName,
      sum(i.ExtendedPrice-i.TaxAmount) AS TotalProfit
FROM Sales.InvoiceLines i join Warehouse.StockItems s ON i.StockItemID = s.StockItemID
GROUP BY i.StockItemID, s.StockItemName
ORDER BY TotalProfit DESC

--4 

WITH yasa AS (
SELECT row_number() over (order by (W.RecommendedRetailPrice-W.UnitPrice) desc ) Rn
	,	W.StockItemID ,w.StockItemName , W.UnitPrice , W.RecommendedRetailPrice 
	, (W.RecommendedRetailPrice-W.UnitPrice) AS NominalProductProfit
	, dense_rank() over (order by (W.RecommendedRetailPrice-W.UnitPrice) desc) AS DNR
	
FROM [Warehouse].[StockItems] w
WHERE GETDATE()<W.VALIDTO
)

SELECT * FROM YASA
order by Rn 

--5 

SELECT CONCAT(P.SupplierID,' ','-',' ',P.SupplierName) AS SupplierDetails,
		string_agg(CONCAT(S.STOCKITEMID, ' ', cast(s.StockItemName AS varchar(8000))),' /,') WITHIN GROUP(order by S.STOCKITEMID )AS ProductDetail
FROM Purchasing.Suppliers P join [Warehouse].[StockItems_Archive] s ON p.SupplierID = s.SupplierID
GROUP BY P.SupplierID,P.SupplierName

--6

select top (5) c.CustomerID , ci.CityName , ca.CountryName , ca.Continent ,ca.Region , 
			CONVERT(varchar(20), CAST(sum(sil.ExtendedPrice) as money), 1) AS TotalExtendedPrice
from sales.InvoiceLines sil join sales.Invoices si on sil.InvoiceID = si.InvoiceID	
						join sales.Customers c on si.CustomerID = c.CustomerID 
						join application.Cities ci on c.PostalCityID = ci.CityID 
						join Application.StateProvinces s on ci.StateProvinceID = s.StateProvinceID 
						join Application.Countries ca on s.CountryID = ca.CountryID

group by c.CustomerID , ci.CityName , ca.CountryName , ca.Continent ,ca.Region
order by sum(sil.ExtendedPrice) desc

--7

with yasa as (
select year(s.InvoiceDate) AS InvoiceYear, month(s.InvoiceDate) InvoiceMonth, sum(so.Quantity*so.UnitPrice)  as MonthlyTotal
from sales.Invoices s join sales.orderLines so on s.OrderID = so.OrderID
group by year(s.InvoiceDate),month(s.InvoiceDate)
),
 yaso as (
select CAST(InvoiceYear AS varchar(10)) AS InvoiceYear, 
	CAST(InvoiceMonth AS varchar(2)) AS InvoiceMonth, 
	CONVERT(VARCHAR(25) , CAST(MonthlyTotal AS MONEY),1 ) as MonthlyTotal ,
	CONVERT(varchar(20), CAST(SUM(MonthlyTotal) OVER (PARTITION BY InvoiceYear ORDER BY InvoiceMonth) AS money), 1) AS  CumulativeTotal
	, invoicemonth as sortmonth
from yasa

    UNION ALL

 select CAST(InvoiceYear AS varchar(10)),
        'GrandTotal',
   		CONVERT(varchar(25), CAST(SUM(MonthlyTotal) AS money), 1),
        CONVERT(varchar(25), CAST(SUM(MonthlyTotal) AS money), 1),
        13 as sortmonth
 from yasa
 group by InvoiceYear
  )

select InvoiceYear , InvoiceMonth , MonthlyTotal , CumulativeTotal
from yaso
order by invoiceyear,sortmonth

--8

select OrderMonth,
    ISNULL([2013], 0) AS [2013],
    ISNULL([2014], 0) AS [2014],
    ISNULL([2015], 0) AS [2015],
    ISNULL([2016], 0) AS [2016] 
	from
(
select  month( so.OrderDate ) as ordermonth , year(so.OrderDate ) as orderyear, count (*) as totalorders
from sales.orders so
group by  year(so.OrderDate ) ,month( so.OrderDate ) 
) as src
PIVOT 
( sum(totalorders) for orderyear in ([2013],[2014],[2015],[2016]) 
) as p
order by ordermonth

--9

with yasa as (	
select  c.CustomerID AS CustomerID 
		, c.CustomerName AS CustomerName 
		, o.OrderDate As OrderDate ,
		lag(o.OrderDate) over (partition by c.CustomerID  order by o.OrderDate) AS PreviousOrderDate ,
		DATEDIFF(dd,(lag(o.OrderDate) over (partition by c.CustomerID  order by o.OrderDate)),o.OrderDate) AS DaysSinceLastOrder1
	
from sales.Orders o join sales.Customers c on o.CustomerID = c.CustomerID
),

	 yaso as (
select  CustomerID , CustomerName , OrderDate , PreviousOrderDate 
		, avg(DaysSinceLastOrder1) OVER (PARTITION BY CUSTOMERID ) AS AvgDaysBetweenOrders 
		, max(OrderDate) OVER (PARTITION BY CUSTOMERID ) AS LastCustOrderDate
		, max(orderdate) over ( ) AS LastOrderDateAll
		,DaysSinceLastOrder1
		
from yasa
)
select CustomerID , CustomerName , OrderDate , PreviousOrderDate  , AvgDaysBetweenOrders , LastCustOrderDate ,LastOrderDateAll ,
		datediff(dd,LastCustOrderDate,LastOrderDateAll) AS DaysSinceLastOrder ,
	  CASE when MAX( 	CASe when OrderDate = LastCustOrderDate 
					AND DaysSinceLastOrder1 > (AvgDaysBetweenOrders * 2)
					then 1 else 0 
					END ) OVER (PARTITION BY CustomerID) = 1
								then 'Potential Chum'
								 else 'Active'
		END AS CustomerStatut 
	
from yaso
order by customerid, OrderDate

--10

with yasa as (

select  c.CustomerCategoryName  , case when s.CustomerName like 'Wingtip%' then 'Wingtip' 
									 when s.CustomerName Like 'Tailspin%' then 'Tailspin'
									 else s.CustomerName
								END AS Cus
	
from sales.Customers s join sales.CustomerCategories c on s.CustomerCategoryID = c.CustomerCategoryID
),

yaso as (
	select CustomerCategoryName , count(distinct cus) AS CustomerCount 
  from yasa
  group by customercategoryname 
  ),

 yase as ( 
select * , sum (CustomerCount) over() AS TotalCustCount
from yaso
),

yasi as ( 	select * , concat(cast ((CustomerCount*100.0/(TotalCustCount)) AS decimal (5,2) )  , '%') as DistributionFactor
	from yase

	)

select * from yasi
order by CustomerCategoryName


