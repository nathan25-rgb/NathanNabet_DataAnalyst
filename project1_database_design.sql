/* Project 1 – Table Design & Creation 
	Student: Natan Course: SQL Server 
	John Bryce Topic: Poker WSOP 
	Database Description: Relational database designed to store poker players and their WSOP tournament results. */


CREATE DATABASE POKER;
END
GO
USE [POKER]
GO
/****** Object:  Table [dbo].[Player]    Script Date: 29/12/2025 13:52:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Player](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](100) NOT NULL,
	[Nationality] [varchar](50) NULL,
	[Bracelets] [int] NOT NULL,
	[TotalWin] [money] NULL,
 CONSTRAINT [POK_Player_Id_PK] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Player_WSOP_CareerStats]    Script Date: 29/12/2025 13:52:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Player_WSOP_CareerStats](
	[PlayerID] [int] NOT NULL,
	[WsopCashes] [int] NULL,
	[WsopFinalTables] [int] NULL,
	[WsopCareerEarnings] [money] NULL,
	[WsopYearsCashed] [int] NULL,
	[WsopFirstCashYear] [smallint] NULL,
	[WsopLastCashYear] [smallint] NULL,
 CONSTRAINT [PK_Player_WSOP_CareerStats] PRIMARY KEY CLUSTERED 
(
	[PlayerID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Results]    Script Date: 29/12/2025 13:52:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Results](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Position] [int] NOT NULL,
	[Win] [decimal](10, 0) NOT NULL,
	[Player_Id] [int] NOT NULL,
	[Tournament_Id] [int] NOT NULL,
 CONSTRAINT [RESULTS_Id_PK] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tournament]    Script Date: 29/12/2025 13:52:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tournament](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Country] [varchar](50) NOT NULL,
	[Num_Of_Players] [int] NOT NULL,
	[Buy_In] [decimal](10, 0) NULL,
	[Prize_Pool] [decimal](20, 0) NULL,
	[Edition_Year] [int] NOT NULL,
	[Tournament_Name] [varchar](100) NOT NULL,
 CONSTRAINT [Tournament_Id_PK] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Player] ON 

INSERT [dbo].[Player] ([ID], [Name], [Nationality], [Bracelets], [TotalWin]) VALUES (1332, N'Benny Glaser', N'UK', 8, 7000000.0000)
INSERT [dbo].[Player] ([ID], [Name], [Nationality], [Bracelets], [TotalWin]) VALUES (1383, N'Billy Baxter', N'USA', 7, 8000000.0000)
INSERT [dbo].[Player] ([ID], [Name], [Nationality], [Bracelets], [TotalWin]) VALUES (2184, N'Chris Ferguson', N'USA', 6, 9500000.0000)
INSERT [dbo].[Player] ([ID], [Name], [Nationality], [Bracelets], [TotalWin]) VALUES (3696, N'Doyle Brunson', N'USA', 10, 6100000.0000)
INSERT [dbo].[Player] ([ID], [Name], [Nationality], [Bracelets], [TotalWin]) VALUES (5808, N'Jay Heimowitz', N'USA', 6, 4875000.0000)
INSERT [dbo].[Player] ([ID], [Name], [Nationality], [Bracelets], [TotalWin]) VALUES (5883, N'Jeff Lisandro', N'Australia', 6, 560000.0000)
INSERT [dbo].[Player] ([ID], [Name], [Nationality], [Bracelets], [TotalWin]) VALUES (6404, N'John Hennigan', N'USA', 7, 9975000.0000)
INSERT [dbo].[Player] ([ID], [Name], [Nationality], [Bracelets], [TotalWin]) VALUES (6543, N'Johnny Chan', N'USA', 10, 87927179.0000)
INSERT [dbo].[Player] ([ID], [Name], [Nationality], [Bracelets], [TotalWin]) VALUES (6548, N'Johnny Moss', N'USA', 9, 1254859.0000)
INSERT [dbo].[Player] ([ID], [Name], [Nationality], [Bracelets], [TotalWin]) VALUES (8786, N'Men Nguyen', N'USA', 7, 11000000.0000)
INSERT [dbo].[Player] ([ID], [Name], [Nationality], [Bracelets], [TotalWin]) VALUES (9021, N'Michael Mizrachi', N'USA', 8, 17400000.0000)
INSERT [dbo].[Player] ([ID], [Name], [Nationality], [Bracelets], [TotalWin]) VALUES (11980, N'Shaun Deeb', N'USA', 8, 15000000.0000)
INSERT [dbo].[Player] ([ID], [Name], [Nationality], [Bracelets], [TotalWin]) VALUES (13903, N'Bryn Kenney', N'USA', 2, 80035495.0000)
INSERT [dbo].[Player] ([ID], [Name], [Nationality], [Bracelets], [TotalWin]) VALUES (13904, N'Phil Hellmuth', N'USA', 17, 23600000.0000)
INSERT [dbo].[Player] ([ID], [Name], [Nationality], [Bracelets], [TotalWin]) VALUES (13905, N'Stephen Chidwick', N'England', 0, 76001259.0000)
INSERT [dbo].[Player] ([ID], [Name], [Nationality], [Bracelets], [TotalWin]) VALUES (13906, N'Jason Koon', N'USA', 0, 69592656.0000)
INSERT [dbo].[Player] ([ID], [Name], [Nationality], [Bracelets], [TotalWin]) VALUES (13907, N'Mikita Bodyakovsky', N'Belarus', 0, 66405194.0000)
INSERT [dbo].[Player] ([ID], [Name], [Nationality], [Bracelets], [TotalWin]) VALUES (13908, N'Justin Bonomo', N'USA', 3, 65611097.0000)
INSERT [dbo].[Player] ([ID], [Name], [Nationality], [Bracelets], [TotalWin]) VALUES (13909, N'Isaac Haxton', N'USA', 0, 61565098.0000)
INSERT [dbo].[Player] ([ID], [Name], [Nationality], [Bracelets], [TotalWin]) VALUES (13910, N'Dan Smith', N'USA', 0, 60505639.0000)
INSERT [dbo].[Player] ([ID], [Name], [Nationality], [Bracelets], [TotalWin]) VALUES (13911, N'Daniel Negreanu', N'Canada', 7, 57608697.0000)
INSERT [dbo].[Player] ([ID], [Name], [Nationality], [Bracelets], [TotalWin]) VALUES (13912, N'Adrian Mateos', N'Spain', 5, 54768380.0000)
INSERT [dbo].[Player] ([ID], [Name], [Nationality], [Bracelets], [TotalWin]) VALUES (13913, N'Phil Ivey', N'USA', 11, 54493083.0000)
INSERT [dbo].[Player] ([ID], [Name], [Nationality], [Bracelets], [TotalWin]) VALUES (13914, N'Alex Foxen', N'USA', 0, 44000000.0000)
INSERT [dbo].[Player] ([ID], [Name], [Nationality], [Bracelets], [TotalWin]) VALUES (13915, N'David Peters', N'USA', 5, 45000000.0000)
INSERT [dbo].[Player] ([ID], [Name], [Nationality], [Bracelets], [TotalWin]) VALUES (13916, N'Erik Seidel', N'USA', 10, 47000000.0000)
INSERT [dbo].[Player] ([ID], [Name], [Nationality], [Bracelets], [TotalWin]) VALUES (13917, N'Steve ODwyer', N'USA', 0, 46400000.0000)
INSERT [dbo].[Player] ([ID], [Name], [Nationality], [Bracelets], [TotalWin]) VALUES (13918, N'Fedor Holz', N'Germany', 0, 49000000.0000)
INSERT [dbo].[Player] ([ID], [Name], [Nationality], [Bracelets], [TotalWin]) VALUES (13919, N'Sam Grennwood', N'Canada', 0, 22300000.0000)
INSERT [dbo].[Player] ([ID], [Name], [Nationality], [Bracelets], [TotalWin]) VALUES (13920, N'Sam Trickett', N'England', 0, 21700000.0000)
INSERT [dbo].[Player] ([ID], [Name], [Nationality], [Bracelets], [TotalWin]) VALUES (13921, N'Brian Rast', N'USA', 2, 21500000.0000)
INSERT [dbo].[Player] ([ID], [Name], [Nationality], [Bracelets], [TotalWin]) VALUES (13922, N'Rainer Kempe', N'Germany', 0, 21400000.0000)
INSERT [dbo].[Player] ([ID], [Name], [Nationality], [Bracelets], [TotalWin]) VALUES (13923, N'Jason Mercier', N'USA', 0, 19600000.0000)
INSERT [dbo].[Player] ([ID], [Name], [Nationality], [Bracelets], [TotalWin]) VALUES (13924, N'Paul Phua', N'Malaysia', 0, 19300000.0000)
INSERT [dbo].[Player] ([ID], [Name], [Nationality], [Bracelets], [TotalWin]) VALUES (13925, N'Thomas Marchese', N'USA', 0, 19000000.0000)
INSERT [dbo].[Player] ([ID], [Name], [Nationality], [Bracelets], [TotalWin]) VALUES (13926, N'Igor Kurganov', N'Russia', 0, 18600000.0000)
INSERT [dbo].[Player] ([ID], [Name], [Nationality], [Bracelets], [TotalWin]) VALUES (13934, N'Ben Heath', N'England', 1, 35828072.0000)
INSERT [dbo].[Player] ([ID], [Name], [Nationality], [Bracelets], [TotalWin]) VALUES (13935, N'Michael Watson', N'Canada', 1, 35273777.0000)
INSERT [dbo].[Player] ([ID], [Name], [Nationality], [Bracelets], [TotalWin]) VALUES (13936, N'Artur Martirosyan', N'Russia', 2, 29496591.0000)
SET IDENTITY_INSERT [dbo].[Player] OFF
GO
INSERT [dbo].[Player_WSOP_CareerStats] ([PlayerID], [WsopCashes], [WsopFinalTables], [WsopCareerEarnings], [WsopYearsCashed], [WsopFirstCashYear], [WsopLastCashYear]) VALUES (1332, 74, 31, 5650478.0000, NULL, NULL, NULL)
INSERT [dbo].[Player_WSOP_CareerStats] ([PlayerID], [WsopCashes], [WsopFinalTables], [WsopCareerEarnings], [WsopYearsCashed], [WsopFirstCashYear], [WsopLastCashYear]) VALUES (1383, 41, 18, 1739631.0000, NULL, NULL, NULL)
INSERT [dbo].[Player_WSOP_CareerStats] ([PlayerID], [WsopCashes], [WsopFinalTables], [WsopCareerEarnings], [WsopYearsCashed], [WsopFirstCashYear], [WsopLastCashYear]) VALUES (2184, 156, 46, 6670648.0000, NULL, NULL, NULL)
INSERT [dbo].[Player_WSOP_CareerStats] ([PlayerID], [WsopCashes], [WsopFinalTables], [WsopCareerEarnings], [WsopYearsCashed], [WsopFirstCashYear], [WsopLastCashYear]) VALUES (3696, 37, 26, 3050958.0000, NULL, NULL, NULL)
INSERT [dbo].[Player_WSOP_CareerStats] ([PlayerID], [WsopCashes], [WsopFinalTables], [WsopCareerEarnings], [WsopYearsCashed], [WsopFirstCashYear], [WsopLastCashYear]) VALUES (5808, 43, 23, 1526281.0000, NULL, NULL, NULL)
INSERT [dbo].[Player_WSOP_CareerStats] ([PlayerID], [WsopCashes], [WsopFinalTables], [WsopCareerEarnings], [WsopYearsCashed], [WsopFirstCashYear], [WsopLastCashYear]) VALUES (5883, 100, 28, 4583889.0000, NULL, NULL, NULL)
INSERT [dbo].[Player_WSOP_CareerStats] ([PlayerID], [WsopCashes], [WsopFinalTables], [WsopCareerEarnings], [WsopYearsCashed], [WsopFirstCashYear], [WsopLastCashYear]) VALUES (6404, 56, 21, 6197035.0000, NULL, NULL, NULL)
INSERT [dbo].[Player_WSOP_CareerStats] ([PlayerID], [WsopCashes], [WsopFinalTables], [WsopCareerEarnings], [WsopYearsCashed], [WsopFirstCashYear], [WsopLastCashYear]) VALUES (6543, 38, 27, 4251551.0000, 27, 1985, 2011)
INSERT [dbo].[Player_WSOP_CareerStats] ([PlayerID], [WsopCashes], [WsopFinalTables], [WsopCareerEarnings], [WsopYearsCashed], [WsopFirstCashYear], [WsopLastCashYear]) VALUES (6548, 27, 22, 834422.0000, NULL, NULL, NULL)
INSERT [dbo].[Player_WSOP_CareerStats] ([PlayerID], [WsopCashes], [WsopFinalTables], [WsopCareerEarnings], [WsopYearsCashed], [WsopFirstCashYear], [WsopLastCashYear]) VALUES (8786, 134, 53, 4299725.0000, NULL, NULL, NULL)
INSERT [dbo].[Player_WSOP_CareerStats] ([PlayerID], [WsopCashes], [WsopFinalTables], [WsopCareerEarnings], [WsopYearsCashed], [WsopFirstCashYear], [WsopLastCashYear]) VALUES (9021, 106, 29, 16000000.0000, 20, 2005, 2025)
INSERT [dbo].[Player_WSOP_CareerStats] ([PlayerID], [WsopCashes], [WsopFinalTables], [WsopCareerEarnings], [WsopYearsCashed], [WsopFirstCashYear], [WsopLastCashYear]) VALUES (11980, 231, 49, 13750949.0000, NULL, NULL, NULL)
INSERT [dbo].[Player_WSOP_CareerStats] ([PlayerID], [WsopCashes], [WsopFinalTables], [WsopCareerEarnings], [WsopYearsCashed], [WsopFirstCashYear], [WsopLastCashYear]) VALUES (13903, 42, 7, 6393835.0000, 13, 2009, 2023)
INSERT [dbo].[Player_WSOP_CareerStats] ([PlayerID], [WsopCashes], [WsopFinalTables], [WsopCareerEarnings], [WsopYearsCashed], [WsopFirstCashYear], [WsopLastCashYear]) VALUES (13904, 210, 65, 18215846.0000, 34, 1988, 2024)
INSERT [dbo].[Player_WSOP_CareerStats] ([PlayerID], [WsopCashes], [WsopFinalTables], [WsopCareerEarnings], [WsopYearsCashed], [WsopFirstCashYear], [WsopLastCashYear]) VALUES (13905, 80, 23, 6393835.0000, 13, 2009, 2023)
INSERT [dbo].[Player_WSOP_CareerStats] ([PlayerID], [WsopCashes], [WsopFinalTables], [WsopCareerEarnings], [WsopYearsCashed], [WsopFirstCashYear], [WsopLastCashYear]) VALUES (13906, 54, 15, 2847583.0000, 12, 2008, 2023)
INSERT [dbo].[Player_WSOP_CareerStats] ([PlayerID], [WsopCashes], [WsopFinalTables], [WsopCareerEarnings], [WsopYearsCashed], [WsopFirstCashYear], [WsopLastCashYear]) VALUES (13907, 32, 9, 7818858.0000, 8, 2013, 2023)
INSERT [dbo].[Player_WSOP_CareerStats] ([PlayerID], [WsopCashes], [WsopFinalTables], [WsopCareerEarnings], [WsopYearsCashed], [WsopFirstCashYear], [WsopLastCashYear]) VALUES (13908, 55, 14, 15374226.0000, 16, 2006, 2023)
INSERT [dbo].[Player_WSOP_CareerStats] ([PlayerID], [WsopCashes], [WsopFinalTables], [WsopCareerEarnings], [WsopYearsCashed], [WsopFirstCashYear], [WsopLastCashYear]) VALUES (13909, 32, 7, 9079155.0000, 10, 2007, 2023)
INSERT [dbo].[Player_WSOP_CareerStats] ([PlayerID], [WsopCashes], [WsopFinalTables], [WsopCareerEarnings], [WsopYearsCashed], [WsopFirstCashYear], [WsopLastCashYear]) VALUES (13910, 48, 10, 12356941.0000, 11, 2008, 2023)
INSERT [dbo].[Player_WSOP_CareerStats] ([PlayerID], [WsopCashes], [WsopFinalTables], [WsopCareerEarnings], [WsopYearsCashed], [WsopFirstCashYear], [WsopLastCashYear]) VALUES (13911, 236, 65, 22781216.0000, 26, 1998, 2024)
INSERT [dbo].[Player_WSOP_CareerStats] ([PlayerID], [WsopCashes], [WsopFinalTables], [WsopCareerEarnings], [WsopYearsCashed], [WsopFirstCashYear], [WsopLastCashYear]) VALUES (13912, 98, 18, 15089876.0000, NULL, 2013, 2025)
INSERT [dbo].[Player_WSOP_CareerStats] ([PlayerID], [WsopCashes], [WsopFinalTables], [WsopCareerEarnings], [WsopYearsCashed], [WsopFirstCashYear], [WsopLastCashYear]) VALUES (13913, 87, 25, 10215079.0000, 19, 2000, 2023)
INSERT [dbo].[Player_WSOP_CareerStats] ([PlayerID], [WsopCashes], [WsopFinalTables], [WsopCareerEarnings], [WsopYearsCashed], [WsopFirstCashYear], [WsopLastCashYear]) VALUES (13914, 59, 35, 18906287.0000, 11, 2012, 2023)
INSERT [dbo].[Player_WSOP_CareerStats] ([PlayerID], [WsopCashes], [WsopFinalTables], [WsopCareerEarnings], [WsopYearsCashed], [WsopFirstCashYear], [WsopLastCashYear]) VALUES (13915, 61, 13, 7026920.0000, 14, 2007, 2023)
INSERT [dbo].[Player_WSOP_CareerStats] ([PlayerID], [WsopCashes], [WsopFinalTables], [WsopCareerEarnings], [WsopYearsCashed], [WsopFirstCashYear], [WsopLastCashYear]) VALUES (13916, 134, 47, 9915762.0000, 30, 1988, 2024)
INSERT [dbo].[Player_WSOP_CareerStats] ([PlayerID], [WsopCashes], [WsopFinalTables], [WsopCareerEarnings], [WsopYearsCashed], [WsopFirstCashYear], [WsopLastCashYear]) VALUES (13917, 30, 6, 2100000.0000, 9, 2008, 2023)
INSERT [dbo].[Player_WSOP_CareerStats] ([PlayerID], [WsopCashes], [WsopFinalTables], [WsopCareerEarnings], [WsopYearsCashed], [WsopFirstCashYear], [WsopLastCashYear]) VALUES (13918, 16, 5, 3650000.0000, 6, 2014, 2023)
INSERT [dbo].[Player_WSOP_CareerStats] ([PlayerID], [WsopCashes], [WsopFinalTables], [WsopCareerEarnings], [WsopYearsCashed], [WsopFirstCashYear], [WsopLastCashYear]) VALUES (13919, 34, 8, 1340779.0000, 8, 2013, 2023)
INSERT [dbo].[Player_WSOP_CareerStats] ([PlayerID], [WsopCashes], [WsopFinalTables], [WsopCareerEarnings], [WsopYearsCashed], [WsopFirstCashYear], [WsopLastCashYear]) VALUES (13920, 17, 7, 11681942.0000, NULL, NULL, NULL)
INSERT [dbo].[Player_WSOP_CareerStats] ([PlayerID], [WsopCashes], [WsopFinalTables], [WsopCareerEarnings], [WsopYearsCashed], [WsopFirstCashYear], [WsopLastCashYear]) VALUES (13921, 94, 23, 12361393.0000, NULL, NULL, NULL)
INSERT [dbo].[Player_WSOP_CareerStats] ([PlayerID], [WsopCashes], [WsopFinalTables], [WsopCareerEarnings], [WsopYearsCashed], [WsopFirstCashYear], [WsopLastCashYear]) VALUES (13922, 94, 8, 2806194.0000, NULL, NULL, NULL)
INSERT [dbo].[Player_WSOP_CareerStats] ([PlayerID], [WsopCashes], [WsopFinalTables], [WsopCareerEarnings], [WsopYearsCashed], [WsopFirstCashYear], [WsopLastCashYear]) VALUES (13923, 88, 27, 6415192.0000, NULL, NULL, NULL)
INSERT [dbo].[Player_WSOP_CareerStats] ([PlayerID], [WsopCashes], [WsopFinalTables], [WsopCareerEarnings], [WsopYearsCashed], [WsopFirstCashYear], [WsopLastCashYear]) VALUES (13924, 2, 1, 659910.0000, NULL, NULL, NULL)
INSERT [dbo].[Player_WSOP_CareerStats] ([PlayerID], [WsopCashes], [WsopFinalTables], [WsopCareerEarnings], [WsopYearsCashed], [WsopFirstCashYear], [WsopLastCashYear]) VALUES (13925, 37, 6, 1598038.0000, NULL, NULL, NULL)
INSERT [dbo].[Player_WSOP_CareerStats] ([PlayerID], [WsopCashes], [WsopFinalTables], [WsopCareerEarnings], [WsopYearsCashed], [WsopFirstCashYear], [WsopLastCashYear]) VALUES (13926, 12, 4, 2090719.0000, NULL, NULL, NULL)
INSERT [dbo].[Player_WSOP_CareerStats] ([PlayerID], [WsopCashes], [WsopFinalTables], [WsopCareerEarnings], [WsopYearsCashed], [WsopFirstCashYear], [WsopLastCashYear]) VALUES (13934, 34, 4, 2174640.0000, 6, 2016, 2023)
INSERT [dbo].[Player_WSOP_CareerStats] ([PlayerID], [WsopCashes], [WsopFinalTables], [WsopCareerEarnings], [WsopYearsCashed], [WsopFirstCashYear], [WsopLastCashYear]) VALUES (13935, 49, 7, 3530025.0000, 12, 2009, 2023)
INSERT [dbo].[Player_WSOP_CareerStats] ([PlayerID], [WsopCashes], [WsopFinalTables], [WsopCareerEarnings], [WsopYearsCashed], [WsopFirstCashYear], [WsopLastCashYear]) VALUES (13936, 29, 6, 3112841.0000, 5, 2019, 2023)
GO
SET IDENTITY_INSERT [dbo].[Results] ON 

INSERT [dbo].[Results] ([ID], [Position], [Win], [Player_Id], [Tournament_Id]) VALUES (5129823, 180, CAST(42285 AS Decimal(10, 0)), 6543, 20097)
INSERT [dbo].[Results] ([ID], [Position], [Win], [Player_Id], [Tournament_Id]) VALUES (5130217, 1271, CAST(15000 AS Decimal(10, 0)), 5883, 20086)
INSERT [dbo].[Results] ([ID], [Position], [Win], [Player_Id], [Tournament_Id]) VALUES (5130371, 27, CAST(45000 AS Decimal(10, 0)), 13904, 20114)
INSERT [dbo].[Results] ([ID], [Position], [Win], [Player_Id], [Tournament_Id]) VALUES (5130531, 11, CAST(526778 AS Decimal(10, 0)), 13911, 20127)
INSERT [dbo].[Results] ([ID], [Position], [Win], [Player_Id], [Tournament_Id]) VALUES (5130734, 319, CAST(32871 AS Decimal(10, 0)), 11980, 20117)
INSERT [dbo].[Results] ([ID], [Position], [Win], [Player_Id], [Tournament_Id]) VALUES (5130957, 5, CAST(27000 AS Decimal(10, 0)), 6548, 20103)
INSERT [dbo].[Results] ([ID], [Position], [Win], [Player_Id], [Tournament_Id]) VALUES (5131082, 561, CAST(23196 AS Decimal(10, 0)), 2184, 20109)
INSERT [dbo].[Results] ([ID], [Position], [Win], [Player_Id], [Tournament_Id]) VALUES (5131279, 25, CAST(45000 AS Decimal(10, 0)), 8786, 20114)
INSERT [dbo].[Results] ([ID], [Position], [Win], [Player_Id], [Tournament_Id]) VALUES (5131307, 229, CAST(42882 AS Decimal(10, 0)), 13911, 20085)
INSERT [dbo].[Results] ([ID], [Position], [Win], [Player_Id], [Tournament_Id]) VALUES (5131708, 3, CAST(109500 AS Decimal(10, 0)), 5808, 20128)
INSERT [dbo].[Results] ([ID], [Position], [Win], [Player_Id], [Tournament_Id]) VALUES (5131812, 28, CAST(255242 AS Decimal(10, 0)), 13903, 20130)
INSERT [dbo].[Results] ([ID], [Position], [Win], [Player_Id], [Tournament_Id]) VALUES (5131940, 660, CAST(19359 AS Decimal(10, 0)), 13906, 20111)
INSERT [dbo].[Results] ([ID], [Position], [Win], [Player_Id], [Tournament_Id]) VALUES (5132518, 1, CAST(625000 AS Decimal(10, 0)), 6543, 20089)
INSERT [dbo].[Results] ([ID], [Position], [Win], [Player_Id], [Tournament_Id]) VALUES (5132526, 194, CAST(44200 AS Decimal(10, 0)), 13906, 20137)
INSERT [dbo].[Results] ([ID], [Position], [Win], [Player_Id], [Tournament_Id]) VALUES (5132588, 1, CAST(160000 AS Decimal(10, 0)), 6548, 20129)
INSERT [dbo].[Results] ([ID], [Position], [Win], [Player_Id], [Tournament_Id]) VALUES (5132787, 26, CAST(10000 AS Decimal(10, 0)), 6548, 20089)
INSERT [dbo].[Results] ([ID], [Position], [Win], [Player_Id], [Tournament_Id]) VALUES (5132825, 13, CAST(29680 AS Decimal(10, 0)), 5808, 20087)
INSERT [dbo].[Results] ([ID], [Position], [Win], [Player_Id], [Tournament_Id]) VALUES (5133041, 1, CAST(10000000 AS Decimal(10, 0)), 9021, 20119)
INSERT [dbo].[Results] ([ID], [Position], [Win], [Player_Id], [Tournament_Id]) VALUES (5133183, 10, CAST(82700 AS Decimal(10, 0)), 13913, 20114)
INSERT [dbo].[Results] ([ID], [Position], [Win], [Player_Id], [Tournament_Id]) VALUES (5133324, 560, CAST(24560 AS Decimal(10, 0)), 6543, 20086)
INSERT [dbo].[Results] ([ID], [Position], [Win], [Player_Id], [Tournament_Id]) VALUES (5133926, 440, CAST(37500 AS Decimal(10, 0)), 13906, 20102)
INSERT [dbo].[Results] ([ID], [Position], [Win], [Player_Id], [Tournament_Id]) VALUES (5134215, 960, CAST(17000 AS Decimal(10, 0)), 1332, 20099)
INSERT [dbo].[Results] ([ID], [Position], [Win], [Player_Id], [Tournament_Id]) VALUES (5134449, 612, CAST(21750 AS Decimal(10, 0)), 6543, 20093)
INSERT [dbo].[Results] ([ID], [Position], [Win], [Player_Id], [Tournament_Id]) VALUES (5134516, 544, CAST(23940 AS Decimal(10, 0)), 8786, 20093)
INSERT [dbo].[Results] ([ID], [Position], [Win], [Player_Id], [Tournament_Id]) VALUES (5134565, 40, CAST(211945 AS Decimal(10, 0)), 13914, 20086)
INSERT [dbo].[Results] ([ID], [Position], [Win], [Player_Id], [Tournament_Id]) VALUES (5134625, 4, CAST(73000 AS Decimal(10, 0)), 6548, 20128)
INSERT [dbo].[Results] ([ID], [Position], [Win], [Player_Id], [Tournament_Id]) VALUES (5134946, 33, CAST(7500 AS Decimal(10, 0)), 13904, 20105)
INSERT [dbo].[Results] ([ID], [Position], [Win], [Player_Id], [Tournament_Id]) VALUES (5135128, 121, CAST(62500 AS Decimal(10, 0)), 13910, 20099)
INSERT [dbo].[Results] ([ID], [Position], [Win], [Player_Id], [Tournament_Id]) VALUES (5135309, 26, CAST(120000 AS Decimal(10, 0)), 2184, 20090)
INSERT [dbo].[Results] ([ID], [Position], [Win], [Player_Id], [Tournament_Id]) VALUES (5135373, 20, CAST(304680 AS Decimal(10, 0)), 13913, 20101)
INSERT [dbo].[Results] ([ID], [Position], [Win], [Player_Id], [Tournament_Id]) VALUES (5135467, 455, CAST(24480 AS Decimal(10, 0)), 13909, 20104)
INSERT [dbo].[Results] ([ID], [Position], [Win], [Player_Id], [Tournament_Id]) VALUES (5135634, 94, CAST(67535 AS Decimal(10, 0)), 13909, 20135)
INSERT [dbo].[Results] ([ID], [Position], [Win], [Player_Id], [Tournament_Id]) VALUES (5135891, 547, CAST(23940 AS Decimal(10, 0)), 13913, 20093)
INSERT [dbo].[Results] ([ID], [Position], [Win], [Player_Id], [Tournament_Id]) VALUES (5135892, 317, CAST(45000 AS Decimal(10, 0)), 13912, 20100)
INSERT [dbo].[Results] ([ID], [Position], [Win], [Player_Id], [Tournament_Id]) VALUES (5136121, 1, CAST(700000 AS Decimal(10, 0)), 6543, 20105)
INSERT [dbo].[Results] ([ID], [Position], [Win], [Player_Id], [Tournament_Id]) VALUES (5136250, 211, CAST(40433 AS Decimal(10, 0)), 8786, 20127)
INSERT [dbo].[Results] ([ID], [Position], [Win], [Player_Id], [Tournament_Id]) VALUES (5136374, 2, CAST(146000 AS Decimal(10, 0)), 3696, 20128)
INSERT [dbo].[Results] ([ID], [Position], [Win], [Player_Id], [Tournament_Id]) VALUES (5136433, 353, CAST(32871 AS Decimal(10, 0)), 6543, 20117)
INSERT [dbo].[Results] ([ID], [Position], [Win], [Player_Id], [Tournament_Id]) VALUES (5136461, 134, CAST(62500 AS Decimal(10, 0)), 13921, 20099)
INSERT [dbo].[Results] ([ID], [Position], [Win], [Player_Id], [Tournament_Id]) VALUES (5136624, 136, CAST(57102 AS Decimal(10, 0)), 13915, 20130)
INSERT [dbo].[Results] ([ID], [Position], [Win], [Player_Id], [Tournament_Id]) VALUES (5137037, 15, CAST(12500 AS Decimal(10, 0)), 5808, 20105)
INSERT [dbo].[Results] ([ID], [Position], [Win], [Player_Id], [Tournament_Id]) VALUES (5137139, 479, CAST(24480 AS Decimal(10, 0)), 13905, 20104)
INSERT [dbo].[Results] ([ID], [Position], [Win], [Player_Id], [Tournament_Id]) VALUES (5137177, 3, CAST(108000 AS Decimal(10, 0)), 3696, 20134)
INSERT [dbo].[Results] ([ID], [Position], [Win], [Player_Id], [Tournament_Id]) VALUES (5137398, 436, CAST(25027 AS Decimal(10, 0)), 13904, 20109)
INSERT [dbo].[Results] ([ID], [Position], [Win], [Player_Id], [Tournament_Id]) VALUES (5137474, 2, CAST(0 AS Decimal(10, 0)), 6548, 20133)
INSERT [dbo].[Results] ([ID], [Position], [Win], [Player_Id], [Tournament_Id]) VALUES (5137511, 14, CAST(12500 AS Decimal(10, 0)), 5808, 20084)
INSERT [dbo].[Results] ([ID], [Position], [Win], [Player_Id], [Tournament_Id]) VALUES (5137989, 221, CAST(42285 AS Decimal(10, 0)), 11980, 20097)
INSERT [dbo].[Results] ([ID], [Position], [Win], [Player_Id], [Tournament_Id]) VALUES (5138123, 19, CAST(27950 AS Decimal(10, 0)), 6404, 20108)
INSERT [dbo].[Results] ([ID], [Position], [Win], [Player_Id], [Tournament_Id]) VALUES (5138188, 329, CAST(32166 AS Decimal(10, 0)), 6543, 20124)
INSERT [dbo].[Results] ([ID], [Position], [Win], [Player_Id], [Tournament_Id]) VALUES (5138432, 105, CAST(57010 AS Decimal(10, 0)), 11980, 20093)
INSERT [dbo].[Results] ([ID], [Position], [Win], [Player_Id], [Tournament_Id]) VALUES (5138821, 417, CAST(21786 AS Decimal(10, 0)), 13904, 20127)
INSERT [dbo].[Results] ([ID], [Position], [Win], [Player_Id], [Tournament_Id]) VALUES (5138908, 7, CAST(42000 AS Decimal(10, 0)), 6548, 20125)
INSERT [dbo].[Results] ([ID], [Position], [Win], [Player_Id], [Tournament_Id]) VALUES (5138968, 230, CAST(33197 AS Decimal(10, 0)), 9021, 20101)
INSERT [dbo].[Results] ([ID], [Position], [Win], [Player_Id], [Tournament_Id]) VALUES (5139266, 1067, CAST(17500 AS Decimal(10, 0)), 6543, 20102)
INSERT [dbo].[Results] ([ID], [Position], [Win], [Player_Id], [Tournament_Id]) VALUES (5139722, 109, CAST(49108 AS Decimal(10, 0)), 13914, 20097)
INSERT [dbo].[Results] ([ID], [Position], [Win], [Player_Id], [Tournament_Id]) VALUES (5139831, 1, CAST(755000 AS Decimal(10, 0)), 13904, 20084)
INSERT [dbo].[Results] ([ID], [Position], [Win], [Player_Id], [Tournament_Id]) VALUES (5140059, 1036, CAST(17000 AS Decimal(10, 0)), 13903, 20099)
INSERT [dbo].[Results] ([ID], [Position], [Win], [Player_Id], [Tournament_Id]) VALUES (5140371, 156, CAST(57102 AS Decimal(10, 0)), 6543, 20130)
INSERT [dbo].[Results] ([ID], [Position], [Win], [Player_Id], [Tournament_Id]) VALUES (5140850, 4, CAST(52000 AS Decimal(10, 0)), 3696, 20122)
INSERT [dbo].[Results] ([ID], [Position], [Win], [Player_Id], [Tournament_Id]) VALUES (5141098, 560, CAST(21495 AS Decimal(10, 0)), 13916, 20104)
INSERT [dbo].[Results] ([ID], [Position], [Win], [Player_Id], [Tournament_Id]) VALUES (5141326, 340, CAST(45000 AS Decimal(10, 0)), 13913, 20100)
INSERT [dbo].[Results] ([ID], [Position], [Win], [Player_Id], [Tournament_Id]) VALUES (5141591, 1369, CAST(15000 AS Decimal(10, 0)), 13916, 20100)
INSERT [dbo].[Results] ([ID], [Position], [Win], [Player_Id], [Tournament_Id]) VALUES (5141837, 23, CAST(40000 AS Decimal(10, 0)), 13913, 20106)
INSERT [dbo].[Results] ([ID], [Position], [Win], [Player_Id], [Tournament_Id]) VALUES (5141857, 241, CAST(40181 AS Decimal(10, 0)), 13909, 20091)
INSERT [dbo].[Results] ([ID], [Position], [Win], [Player_Id], [Tournament_Id]) VALUES (5141974, 1, CAST(220000 AS Decimal(10, 0)), 3696, 20126)
INSERT [dbo].[Results] ([ID], [Position], [Win], [Player_Id], [Tournament_Id]) VALUES (5142039, 7, CAST(1404014 AS Decimal(10, 0)), 13913, 20109)
INSERT [dbo].[Results] ([ID], [Position], [Win], [Player_Id], [Tournament_Id]) VALUES (5142090, 5, CAST(303705 AS Decimal(10, 0)), 13904, 20132)
INSERT [dbo].[Results] ([ID], [Position], [Win], [Player_Id], [Tournament_Id]) VALUES (5142186, 37, CAST(20000 AS Decimal(10, 0)), 1383, 20132)
INSERT [dbo].[Results] ([ID], [Position], [Win], [Player_Id], [Tournament_Id]) VALUES (5143203, 136, CAST(58570 AS Decimal(10, 0)), 1383, 20135)
INSERT [dbo].[Results] ([ID], [Position], [Win], [Player_Id], [Tournament_Id]) VALUES (5143346, 21, CAST(21200 AS Decimal(10, 0)), 13904, 20087)
INSERT [dbo].[Results] ([ID], [Position], [Win], [Player_Id], [Tournament_Id]) VALUES (5143348, 11, CAST(11500 AS Decimal(10, 0)), 5808, 20131)
INSERT [dbo].[Results] ([ID], [Position], [Win], [Player_Id], [Tournament_Id]) VALUES (5143531, 651, CAST(21230 AS Decimal(10, 0)), 8786, 20124)
INSERT [dbo].[Results] ([ID], [Position], [Win], [Player_Id], [Tournament_Id]) VALUES (5143657, 1468, CAST(15000 AS Decimal(10, 0)), 13911, 20100)
INSERT [dbo].[Results] ([ID], [Position], [Win], [Player_Id], [Tournament_Id]) VALUES (5143694, 53, CAST(45000 AS Decimal(10, 0)), 3696, 20090)
INSERT [dbo].[Results] ([ID], [Position], [Win], [Player_Id], [Tournament_Id]) VALUES (5143697, 442, CAST(25027 AS Decimal(10, 0)), 13908, 20109)
INSERT [dbo].[Results] ([ID], [Position], [Win], [Player_Id], [Tournament_Id]) VALUES (5143700, 940, CAST(22500 AS Decimal(10, 0)), 13923, 20102)
INSERT [dbo].[Results] ([ID], [Position], [Win], [Player_Id], [Tournament_Id]) VALUES (5143769, 11, CAST(12500 AS Decimal(10, 0)), 5808, 20089)
INSERT [dbo].[Results] ([ID], [Position], [Win], [Player_Id], [Tournament_Id]) VALUES (5143806, 22, CAST(21200 AS Decimal(10, 0)), 1383, 20087)
INSERT [dbo].[Results] ([ID], [Position], [Win], [Player_Id], [Tournament_Id]) VALUES (5143978, 11, CAST(63940 AS Decimal(10, 0)), 13911, 20132)
INSERT [dbo].[Results] ([ID], [Position], [Win], [Player_Id], [Tournament_Id]) VALUES (5144122, 25, CAST(262574 AS Decimal(10, 0)), 13918, 20127)
INSERT [dbo].[Results] ([ID], [Position], [Win], [Player_Id], [Tournament_Id]) VALUES (5144145, 473, CAST(24480 AS Decimal(10, 0)), 9021, 20104)
INSERT [dbo].[Results] ([ID], [Position], [Win], [Player_Id], [Tournament_Id]) VALUES (5144294, 430, CAST(25756 AS Decimal(10, 0)), 13913, 20113)
INSERT [dbo].[Results] ([ID], [Position], [Win], [Player_Id], [Tournament_Id]) VALUES (5144364, 541, CAST(22449 AS Decimal(10, 0)), 13915, 20091)
INSERT [dbo].[Results] ([ID], [Position], [Win], [Player_Id], [Tournament_Id]) VALUES (5144628, 707, CAST(25000 AS Decimal(10, 0)), 13923, 20119)
INSERT [dbo].[Results] ([ID], [Position], [Win], [Player_Id], [Tournament_Id]) VALUES (5144631, 16, CAST(25440 AS Decimal(10, 0)), 3696, 20087)
INSERT [dbo].[Results] ([ID], [Position], [Win], [Player_Id], [Tournament_Id]) VALUES (5144636, 160, CAST(52718 AS Decimal(10, 0)), 13911, 20117)
INSERT [dbo].[Results] ([ID], [Position], [Win], [Player_Id], [Tournament_Id]) VALUES (5144730, 596, CAST(32500 AS Decimal(10, 0)), 9021, 20102)
INSERT [dbo].[Results] ([ID], [Position], [Win], [Player_Id], [Tournament_Id]) VALUES (5144920, 532, CAST(35000 AS Decimal(10, 0)), 6404, 20100)
INSERT [dbo].[Results] ([ID], [Position], [Win], [Player_Id], [Tournament_Id]) VALUES (5145364, 399, CAST(28530 AS Decimal(10, 0)), 13915, 20117)
INSERT [dbo].[Results] ([ID], [Position], [Win], [Player_Id], [Tournament_Id]) VALUES (5145732, 26, CAST(10000 AS Decimal(10, 0)), 6548, 20115)
INSERT [dbo].[Results] ([ID], [Position], [Win], [Player_Id], [Tournament_Id]) VALUES (5145908, 24, CAST(350000 AS Decimal(10, 0)), 13921, 20100)
INSERT [dbo].[Results] ([ID], [Position], [Win], [Player_Id], [Tournament_Id]) VALUES (5145922, 20, CAST(286900 AS Decimal(10, 0)), 13910, 20113)
INSERT [dbo].[Results] ([ID], [Position], [Win], [Player_Id], [Tournament_Id]) VALUES (5145967, 456, CAST(37500 AS Decimal(10, 0)), 13914, 20102)
INSERT [dbo].[Results] ([ID], [Position], [Win], [Player_Id], [Tournament_Id]) VALUES (5146326, 463, CAST(24480 AS Decimal(10, 0)), 13903, 20104)
INSERT [dbo].[Results] ([ID], [Position], [Win], [Player_Id], [Tournament_Id]) VALUES (5146528, 211, CAST(47107 AS Decimal(10, 0)), 13911, 20111)
INSERT [dbo].[Results] ([ID], [Position], [Win], [Player_Id], [Tournament_Id]) VALUES (5146534, 1, CAST(340000 AS Decimal(10, 0)), 3696, 20098)
INSERT [dbo].[Results] ([ID], [Position], [Win], [Player_Id], [Tournament_Id]) VALUES (5146658, 1, CAST(30000 AS Decimal(10, 0)), 6548, 20121)
INSERT [dbo].[Results] ([ID], [Position], [Win], [Player_Id], [Tournament_Id]) VALUES (5146781, 409, CAST(28063 AS Decimal(10, 0)), 3696, 20104)
INSERT [dbo].[Results] ([ID], [Position], [Win], [Player_Id], [Tournament_Id]) VALUES (5146809, 2, CAST(302000 AS Decimal(10, 0)), 6543, 20084)
GO
INSERT [dbo].[Results] ([ID], [Position], [Win], [Player_Id], [Tournament_Id]) VALUES (5147354, 606, CAST(30000 AS Decimal(10, 0)), 13905, 20102)
INSERT [dbo].[Results] ([ID], [Position], [Win], [Player_Id], [Tournament_Id]) VALUES (5147441, 993, CAST(17000 AS Decimal(10, 0)), 13912, 20099)
INSERT [dbo].[Results] ([ID], [Position], [Win], [Player_Id], [Tournament_Id]) VALUES (5147596, 659, CAST(19227 AS Decimal(10, 0)), 13923, 20117)
INSERT [dbo].[Results] ([ID], [Position], [Win], [Player_Id], [Tournament_Id]) VALUES (5147722, 17, CAST(659730 AS Decimal(10, 0)), 5883, 20085)
INSERT [dbo].[Results] ([ID], [Position], [Win], [Player_Id], [Tournament_Id]) VALUES (5147779, 2, CAST(280000 AS Decimal(10, 0)), 13916, 20105)
INSERT [dbo].[Results] ([ID], [Position], [Win], [Player_Id], [Tournament_Id]) VALUES (5147889, 89, CAST(68900 AS Decimal(10, 0)), 13905, 20137)
INSERT [dbo].[Results] ([ID], [Position], [Win], [Player_Id], [Tournament_Id]) VALUES (5148000, 64, CAST(96445 AS Decimal(10, 0)), 13908, 20127)
INSERT [dbo].[Results] ([ID], [Position], [Win], [Player_Id], [Tournament_Id]) VALUES (5148199, 4, CAST(195000 AS Decimal(10, 0)), 8786, 20096)
INSERT [dbo].[Results] ([ID], [Position], [Win], [Player_Id], [Tournament_Id]) VALUES (5148584, 463, CAST(27519 AS Decimal(10, 0)), 13923, 20130)
INSERT [dbo].[Results] ([ID], [Position], [Win], [Player_Id], [Tournament_Id]) VALUES (5148625, 7, CAST(25250 AS Decimal(10, 0)), 6543, 20118)
INSERT [dbo].[Results] ([ID], [Position], [Win], [Player_Id], [Tournament_Id]) VALUES (5148848, 733, CAST(17500 AS Decimal(10, 0)), 1383, 20137)
INSERT [dbo].[Results] ([ID], [Position], [Win], [Player_Id], [Tournament_Id]) VALUES (5148911, 750, CAST(15000 AS Decimal(10, 0)), 13912, 20127)
INSERT [dbo].[Results] ([ID], [Position], [Win], [Player_Id], [Tournament_Id]) VALUES (5149011, 1, CAST(1500000 AS Decimal(10, 0)), 2184, 20116)
INSERT [dbo].[Results] ([ID], [Position], [Win], [Player_Id], [Tournament_Id]) VALUES (5149069, 45, CAST(154400 AS Decimal(10, 0)), 13904, 20124)
INSERT [dbo].[Results] ([ID], [Position], [Win], [Player_Id], [Tournament_Id]) VALUES (5149121, 785, CAST(19000 AS Decimal(10, 0)), 13915, 20099)
INSERT [dbo].[Results] ([ID], [Position], [Win], [Player_Id], [Tournament_Id]) VALUES (5149275, 6, CAST(30000 AS Decimal(10, 0)), 5808, 20120)
INSERT [dbo].[Results] ([ID], [Position], [Win], [Player_Id], [Tournament_Id]) VALUES (5149519, 383, CAST(31170 AS Decimal(10, 0)), 5883, 20091)
INSERT [dbo].[Results] ([ID], [Position], [Win], [Player_Id], [Tournament_Id]) VALUES (5149702, 537, CAST(24079 AS Decimal(10, 0)), 13921, 20130)
INSERT [dbo].[Results] ([ID], [Position], [Win], [Player_Id], [Tournament_Id]) VALUES (5149715, 4, CAST(279500 AS Decimal(10, 0)), 13916, 20108)
INSERT [dbo].[Results] ([ID], [Position], [Win], [Player_Id], [Tournament_Id]) VALUES (5149858, 5, CAST(2332992 AS Decimal(10, 0)), 9021, 20130)
SET IDENTITY_INSERT [dbo].[Results] OFF
GO
SET IDENTITY_INSERT [dbo].[Tournament] ON 

INSERT [dbo].[Tournament] ([ID], [Country], [Num_Of_Players], [Buy_In], [Prize_Pool], [Edition_Year], [Tournament_Name]) VALUES (20084, N'USA', 178, CAST(10000 AS Decimal(10, 0)), CAST(1795100 AS Decimal(20, 0)), 1989, N'WSOP Main Event')
INSERT [dbo].[Tournament] ([ID], [Country], [Num_Of_Players], [Buy_In], [Prize_Pool], [Edition_Year], [Tournament_Name]) VALUES (20085, N'USA', 8773, CAST(10000 AS Decimal(10, 0)), CAST(82512162 AS Decimal(20, 0)), 2006, N'WSOP Main Event')
INSERT [dbo].[Tournament] ([ID], [Country], [Num_Of_Players], [Buy_In], [Prize_Pool], [Edition_Year], [Tournament_Name]) VALUES (20086, N'USA', 8569, CAST(10000 AS Decimal(10, 0)), CAST(80548604 AS Decimal(20, 0)), 2019, N'WSOP Main Event')
INSERT [dbo].[Tournament] ([ID], [Country], [Num_Of_Players], [Buy_In], [Prize_Pool], [Edition_Year], [Tournament_Name]) VALUES (20087, N'USA', 312, CAST(10000 AS Decimal(10, 0)), CAST(3120000 AS Decimal(20, 0)), 1997, N'WSOP Main Event')
INSERT [dbo].[Tournament] ([ID], [Country], [Num_Of_Players], [Buy_In], [Prize_Pool], [Edition_Year], [Tournament_Name]) VALUES (20088, N'USA', 8, CAST(10000 AS Decimal(10, 0)), CAST(80000 AS Decimal(20, 0)), 1972, N'WSOP Main Event')
INSERT [dbo].[Tournament] ([ID], [Country], [Num_Of_Players], [Buy_In], [Prize_Pool], [Edition_Year], [Tournament_Name]) VALUES (20089, N'USA', 152, CAST(10000 AS Decimal(10, 0)), CAST(1520000 AS Decimal(20, 0)), 1987, N'WSOP Main Event')
INSERT [dbo].[Tournament] ([ID], [Country], [Num_Of_Players], [Buy_In], [Prize_Pool], [Edition_Year], [Tournament_Name]) VALUES (20090, N'USA', 2576, CAST(10000 AS Decimal(10, 0)), CAST(24224400 AS Decimal(20, 0)), 2004, N'WSOP Main Event')
INSERT [dbo].[Tournament] ([ID], [Country], [Num_Of_Players], [Buy_In], [Prize_Pool], [Edition_Year], [Tournament_Name]) VALUES (20091, N'USA', 7221, CAST(10000 AS Decimal(10, 0)), CAST(67877400 AS Decimal(20, 0)), 2017, N'WSOP Main Event')
INSERT [dbo].[Tournament] ([ID], [Country], [Num_Of_Players], [Buy_In], [Prize_Pool], [Edition_Year], [Tournament_Name]) VALUES (20092, N'USA', 273, CAST(10000 AS Decimal(10, 0)), CAST(2730000 AS Decimal(20, 0)), 1995, N'WSOP Main Event')
INSERT [dbo].[Tournament] ([ID], [Country], [Num_Of_Players], [Buy_In], [Prize_Pool], [Edition_Year], [Tournament_Name]) VALUES (20093, N'USA', 7874, CAST(10000 AS Decimal(10, 0)), CAST(74015600 AS Decimal(20, 0)), 2018, N'WSOP Main Event')
INSERT [dbo].[Tournament] ([ID], [Country], [Num_Of_Players], [Buy_In], [Prize_Pool], [Edition_Year], [Tournament_Name]) VALUES (20094, N'USA', 42, CAST(10000 AS Decimal(10, 0)), CAST(420000 AS Decimal(20, 0)), 1978, N'WSOP Main Event')
INSERT [dbo].[Tournament] ([ID], [Country], [Num_Of_Players], [Buy_In], [Prize_Pool], [Edition_Year], [Tournament_Name]) VALUES (20095, N'USA', 231, CAST(10000 AS Decimal(10, 0)), CAST(2308000 AS Decimal(20, 0)), 1993, N'WSOP Main Event')
INSERT [dbo].[Tournament] ([ID], [Country], [Num_Of_Players], [Buy_In], [Prize_Pool], [Edition_Year], [Tournament_Name]) VALUES (20096, N'USA', 295, CAST(10000 AS Decimal(10, 0)), CAST(2950000 AS Decimal(20, 0)), 1996, N'WSOP Main Event')
INSERT [dbo].[Tournament] ([ID], [Country], [Num_Of_Players], [Buy_In], [Prize_Pool], [Edition_Year], [Tournament_Name]) VALUES (20097, N'USA', 6737, CAST(10000 AS Decimal(10, 0)), CAST(63340268 AS Decimal(20, 0)), 2016, N'WSOP Main Event')
INSERT [dbo].[Tournament] ([ID], [Country], [Num_Of_Players], [Buy_In], [Prize_Pool], [Edition_Year], [Tournament_Name]) VALUES (20098, N'USA', 34, CAST(10000 AS Decimal(10, 0)), CAST(340000 AS Decimal(20, 0)), 1977, N'WSOP Main Event')
INSERT [dbo].[Tournament] ([ID], [Country], [Num_Of_Players], [Buy_In], [Prize_Pool], [Edition_Year], [Tournament_Name]) VALUES (20099, N'USA', 8663, CAST(10000 AS Decimal(10, 0)), CAST(80782475 AS Decimal(20, 0)), 2022, N'WSOP Main Event')
INSERT [dbo].[Tournament] ([ID], [Country], [Num_Of_Players], [Buy_In], [Prize_Pool], [Edition_Year], [Tournament_Name]) VALUES (20100, N'USA', 10112, CAST(10000 AS Decimal(10, 0)), CAST(94041600 AS Decimal(20, 0)), 2024, N'WSOP Main Event')
INSERT [dbo].[Tournament] ([ID], [Country], [Num_Of_Players], [Buy_In], [Prize_Pool], [Edition_Year], [Tournament_Name]) VALUES (20101, N'USA', 5619, CAST(10000 AS Decimal(10, 0)), CAST(52818610 AS Decimal(20, 0)), 2005, N'WSOP Main Event')
INSERT [dbo].[Tournament] ([ID], [Country], [Num_Of_Players], [Buy_In], [Prize_Pool], [Edition_Year], [Tournament_Name]) VALUES (20102, N'USA', 10043, CAST(10000 AS Decimal(10, 0)), CAST(93399900 AS Decimal(20, 0)), 2023, N'WSOP Main Event')
INSERT [dbo].[Tournament] ([ID], [Country], [Num_Of_Players], [Buy_In], [Prize_Pool], [Edition_Year], [Tournament_Name]) VALUES (20103, N'USA', 54, CAST(10000 AS Decimal(10, 0)), CAST(540000 AS Decimal(20, 0)), 1979, N'WSOP Main Event')
INSERT [dbo].[Tournament] ([ID], [Country], [Num_Of_Players], [Buy_In], [Prize_Pool], [Edition_Year], [Tournament_Name]) VALUES (20104, N'USA', 6352, CAST(10000 AS Decimal(10, 0)), CAST(59714169 AS Decimal(20, 0)), 2013, N'WSOP Main Event')
INSERT [dbo].[Tournament] ([ID], [Country], [Num_Of_Players], [Buy_In], [Prize_Pool], [Edition_Year], [Tournament_Name]) VALUES (20105, N'USA', 167, CAST(10000 AS Decimal(10, 0)), CAST(1670000 AS Decimal(20, 0)), 1988, N'WSOP Main Event')
INSERT [dbo].[Tournament] ([ID], [Country], [Num_Of_Players], [Buy_In], [Prize_Pool], [Edition_Year], [Tournament_Name]) VALUES (20106, N'USA', 631, CAST(10000 AS Decimal(10, 0)), CAST(6310000 AS Decimal(20, 0)), 2002, N'WSOP Main Event')
INSERT [dbo].[Tournament] ([ID], [Country], [Num_Of_Players], [Buy_In], [Prize_Pool], [Edition_Year], [Tournament_Name]) VALUES (20107, N'USA', 194, CAST(10000 AS Decimal(10, 0)), CAST(1940000 AS Decimal(20, 0)), 1990, N'WSOP Main Event')
INSERT [dbo].[Tournament] ([ID], [Country], [Num_Of_Players], [Buy_In], [Prize_Pool], [Edition_Year], [Tournament_Name]) VALUES (20108, N'USA', 393, CAST(10000 AS Decimal(10, 0)), CAST(3930000 AS Decimal(20, 0)), 1999, N'WSOP Main Event')
INSERT [dbo].[Tournament] ([ID], [Country], [Num_Of_Players], [Buy_In], [Prize_Pool], [Edition_Year], [Tournament_Name]) VALUES (20109, N'USA', 6494, CAST(10000 AS Decimal(10, 0)), CAST(61044921 AS Decimal(20, 0)), 2009, N'WSOP Main Event')
INSERT [dbo].[Tournament] ([ID], [Country], [Num_Of_Players], [Buy_In], [Prize_Pool], [Edition_Year], [Tournament_Name]) VALUES (20110, N'USA', 268, CAST(10000 AS Decimal(10, 0)), CAST(2680000 AS Decimal(20, 0)), 1994, N'WSOP Main Event')
INSERT [dbo].[Tournament] ([ID], [Country], [Num_Of_Players], [Buy_In], [Prize_Pool], [Edition_Year], [Tournament_Name]) VALUES (20111, N'USA', 6865, CAST(10000 AS Decimal(10, 0)), CAST(64540858 AS Decimal(20, 0)), 2011, N'WSOP Main Event')
INSERT [dbo].[Tournament] ([ID], [Country], [Num_Of_Players], [Buy_In], [Prize_Pool], [Edition_Year], [Tournament_Name]) VALUES (20112, N'USA', 132, CAST(10000 AS Decimal(10, 0)), CAST(1320000 AS Decimal(20, 0)), 1984, N'WSOP Main Event')
INSERT [dbo].[Tournament] ([ID], [Country], [Num_Of_Players], [Buy_In], [Prize_Pool], [Edition_Year], [Tournament_Name]) VALUES (20113, N'USA', 6683, CAST(10000 AS Decimal(10, 0)), CAST(62825752 AS Decimal(20, 0)), 2014, N'WSOP Main Event')
INSERT [dbo].[Tournament] ([ID], [Country], [Num_Of_Players], [Buy_In], [Prize_Pool], [Edition_Year], [Tournament_Name]) VALUES (20114, N'USA', 839, CAST(10000 AS Decimal(10, 0)), CAST(7802700 AS Decimal(20, 0)), 2003, N'WSOP Main Event')
INSERT [dbo].[Tournament] ([ID], [Country], [Num_Of_Players], [Buy_In], [Prize_Pool], [Edition_Year], [Tournament_Name]) VALUES (20115, N'USA', 141, CAST(10000 AS Decimal(10, 0)), CAST(1410000 AS Decimal(20, 0)), 1986, N'WSOP Main Event')
INSERT [dbo].[Tournament] ([ID], [Country], [Num_Of_Players], [Buy_In], [Prize_Pool], [Edition_Year], [Tournament_Name]) VALUES (20116, N'USA', 512, CAST(10000 AS Decimal(10, 0)), CAST(5120000 AS Decimal(20, 0)), 2000, N'WSOP Main Event')
INSERT [dbo].[Tournament] ([ID], [Country], [Num_Of_Players], [Buy_In], [Prize_Pool], [Edition_Year], [Tournament_Name]) VALUES (20117, N'USA', 6598, CAST(10000 AS Decimal(10, 0)), CAST(62031385 AS Decimal(20, 0)), 2012, N'WSOP Main Event')
INSERT [dbo].[Tournament] ([ID], [Country], [Num_Of_Players], [Buy_In], [Prize_Pool], [Edition_Year], [Tournament_Name]) VALUES (20118, N'USA', 201, CAST(10000 AS Decimal(10, 0)), CAST(2010000 AS Decimal(20, 0)), 1992, N'WSOP Main Event')
INSERT [dbo].[Tournament] ([ID], [Country], [Num_Of_Players], [Buy_In], [Prize_Pool], [Edition_Year], [Tournament_Name]) VALUES (20119, N'USA', 9735, CAST(10000 AS Decimal(10, 0)), CAST(90535500 AS Decimal(20, 0)), 2025, N'WSOP Main Event')
INSERT [dbo].[Tournament] ([ID], [Country], [Num_Of_Players], [Buy_In], [Prize_Pool], [Edition_Year], [Tournament_Name]) VALUES (20120, N'USA', 75, CAST(10000 AS Decimal(10, 0)), CAST(750000 AS Decimal(20, 0)), 1981, N'WSOP Main Event')
INSERT [dbo].[Tournament] ([ID], [Country], [Num_Of_Players], [Buy_In], [Prize_Pool], [Edition_Year], [Tournament_Name]) VALUES (20121, N'USA', 6, CAST(5000 AS Decimal(10, 0)), CAST(30000 AS Decimal(20, 0)), 1971, N'WSOP Main Event')
INSERT [dbo].[Tournament] ([ID], [Country], [Num_Of_Players], [Buy_In], [Prize_Pool], [Edition_Year], [Tournament_Name]) VALUES (20122, N'USA', 104, CAST(10000 AS Decimal(10, 0)), CAST(1040000 AS Decimal(20, 0)), 1982, N'WSOP Main Event')
INSERT [dbo].[Tournament] ([ID], [Country], [Num_Of_Players], [Buy_In], [Prize_Pool], [Edition_Year], [Tournament_Name]) VALUES (20123, N'USA', 21, CAST(10000 AS Decimal(10, 0)), CAST(210000 AS Decimal(20, 0)), 1975, N'WSOP Main Event')
INSERT [dbo].[Tournament] ([ID], [Country], [Num_Of_Players], [Buy_In], [Prize_Pool], [Edition_Year], [Tournament_Name]) VALUES (20124, N'USA', 6844, CAST(10000 AS Decimal(10, 0)), CAST(64431779 AS Decimal(20, 0)), 2008, N'WSOP Main Event')
INSERT [dbo].[Tournament] ([ID], [Country], [Num_Of_Players], [Buy_In], [Prize_Pool], [Edition_Year], [Tournament_Name]) VALUES (20125, N'USA', 140, CAST(10000 AS Decimal(10, 0)), CAST(1400000 AS Decimal(20, 0)), 1985, N'WSOP Main Event')
INSERT [dbo].[Tournament] ([ID], [Country], [Num_Of_Players], [Buy_In], [Prize_Pool], [Edition_Year], [Tournament_Name]) VALUES (20126, N'USA', 22, CAST(10000 AS Decimal(10, 0)), CAST(220000 AS Decimal(20, 0)), 1976, N'WSOP Main Event')
INSERT [dbo].[Tournament] ([ID], [Country], [Num_Of_Players], [Buy_In], [Prize_Pool], [Edition_Year], [Tournament_Name]) VALUES (20127, N'USA', 6420, CAST(10000 AS Decimal(10, 0)), CAST(60355858 AS Decimal(20, 0)), 2015, N'WSOP Main Event')
INSERT [dbo].[Tournament] ([ID], [Country], [Num_Of_Players], [Buy_In], [Prize_Pool], [Edition_Year], [Tournament_Name]) VALUES (20128, N'USA', 73, CAST(10000 AS Decimal(10, 0)), CAST(730000 AS Decimal(20, 0)), 1980, N'WSOP Main Event')
INSERT [dbo].[Tournament] ([ID], [Country], [Num_Of_Players], [Buy_In], [Prize_Pool], [Edition_Year], [Tournament_Name]) VALUES (20129, N'USA', 16, CAST(10000 AS Decimal(10, 0)), CAST(160000 AS Decimal(20, 0)), 1974, N'WSOP Main Event')
INSERT [dbo].[Tournament] ([ID], [Country], [Num_Of_Players], [Buy_In], [Prize_Pool], [Edition_Year], [Tournament_Name]) VALUES (20130, N'USA', 7319, CAST(10000 AS Decimal(10, 0)), CAST(68799059 AS Decimal(20, 0)), 2010, N'WSOP Main Event')
INSERT [dbo].[Tournament] ([ID], [Country], [Num_Of_Players], [Buy_In], [Prize_Pool], [Edition_Year], [Tournament_Name]) VALUES (20131, N'USA', 215, CAST(10000 AS Decimal(10, 0)), CAST(2150000 AS Decimal(20, 0)), 1991, N'WSOP Main Event')
INSERT [dbo].[Tournament] ([ID], [Country], [Num_Of_Players], [Buy_In], [Prize_Pool], [Edition_Year], [Tournament_Name]) VALUES (20132, N'USA', 613, CAST(10000 AS Decimal(10, 0)), CAST(6130000 AS Decimal(20, 0)), 2001, N'WSOP Main Event')
INSERT [dbo].[Tournament] ([ID], [Country], [Num_Of_Players], [Buy_In], [Prize_Pool], [Edition_Year], [Tournament_Name]) VALUES (20133, N'USA', 13, CAST(10000 AS Decimal(10, 0)), CAST(130000 AS Decimal(20, 0)), 1973, N'WSOP Main Event')
INSERT [dbo].[Tournament] ([ID], [Country], [Num_Of_Players], [Buy_In], [Prize_Pool], [Edition_Year], [Tournament_Name]) VALUES (20134, N'USA', 108, CAST(10000 AS Decimal(10, 0)), CAST(1080000 AS Decimal(20, 0)), 1983, N'WSOP Main Event')
INSERT [dbo].[Tournament] ([ID], [Country], [Num_Of_Players], [Buy_In], [Prize_Pool], [Edition_Year], [Tournament_Name]) VALUES (20135, N'USA', 6358, CAST(10000 AS Decimal(10, 0)), CAST(59784954 AS Decimal(20, 0)), 2007, N'WSOP Main Event')
INSERT [dbo].[Tournament] ([ID], [Country], [Num_Of_Players], [Buy_In], [Prize_Pool], [Edition_Year], [Tournament_Name]) VALUES (20136, N'USA', 350, CAST(10000 AS Decimal(10, 0)), CAST(3500000 AS Decimal(20, 0)), 1998, N'WSOP Main Event')
INSERT [dbo].[Tournament] ([ID], [Country], [Num_Of_Players], [Buy_In], [Prize_Pool], [Edition_Year], [Tournament_Name]) VALUES (20137, N'USA', 6650, CAST(10000 AS Decimal(10, 0)), CAST(62011250 AS Decimal(20, 0)), 2021, N'WSOP Main Event')
SET IDENTITY_INSERT [dbo].[Tournament] OFF
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [uq_player_name]    Script Date: 29/12/2025 13:52:12 ******/
ALTER TABLE [dbo].[Player] ADD  CONSTRAINT [uq_player_name] UNIQUE NONCLUSTERED 
(
	[Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [UQ_Results_Player_Tournament]    Script Date: 29/12/2025 13:52:12 ******/
ALTER TABLE [dbo].[Results] ADD  CONSTRAINT [UQ_Results_Player_Tournament] UNIQUE NONCLUSTERED 
(
	[Player_Id] ASC,
	[Tournament_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Player] ADD  CONSTRAINT [DF_Player_Bracelets]  DEFAULT ((0)) FOR [Bracelets]
GO
ALTER TABLE [dbo].[Player_WSOP_CareerStats]  WITH CHECK ADD  CONSTRAINT [FK_Player_WSOP_CareerStats_Player] FOREIGN KEY([PlayerID])
REFERENCES [dbo].[Player] ([ID])
GO
ALTER TABLE [dbo].[Player_WSOP_CareerStats] CHECK CONSTRAINT [FK_Player_WSOP_CareerStats_Player]
GO
ALTER TABLE [dbo].[Results]  WITH CHECK ADD  CONSTRAINT [FK_RESULTS_PLAYER] FOREIGN KEY([Player_Id])
REFERENCES [dbo].[Player] ([ID])
GO
ALTER TABLE [dbo].[Results] CHECK CONSTRAINT [FK_RESULTS_PLAYER]
GO
ALTER TABLE [dbo].[Results]  WITH CHECK ADD  CONSTRAINT [FK_RESULTS_TOURNAMENT] FOREIGN KEY([Tournament_Id])
REFERENCES [dbo].[Tournament] ([ID])
GO
ALTER TABLE [dbo].[Results] CHECK CONSTRAINT [FK_RESULTS_TOURNAMENT]
GO
ALTER TABLE [dbo].[Player_WSOP_CareerStats]  WITH CHECK ADD  CONSTRAINT [CK_WSOP_NonNegative] CHECK  ((([WsopCashes] IS NULL OR [WsopCashes]>=(0)) AND ([WsopFinalTables] IS NULL OR [WsopFinalTables]>=(0)) AND ([WsopCareerEarnings] IS NULL OR [WsopCareerEarnings]>=(0)) AND ([WsopYearsCashed] IS NULL OR [WsopYearsCashed]>=(0)) AND ([WsopFirstCashYear] IS NULL OR [WsopFirstCashYear]>=(1970)) AND ([WsopLastCashYear] IS NULL OR [WsopLastCashYear]>=(1970))))
GO
ALTER TABLE [dbo].[Player_WSOP_CareerStats] CHECK CONSTRAINT [CK_WSOP_NonNegative]
GO
ALTER TABLE [dbo].[Results]  WITH CHECK ADD  CONSTRAINT [CK_Results_Position_Positive] CHECK  (([Position]>(0)))
GO
ALTER TABLE [dbo].[Results] CHECK CONSTRAINT [CK_Results_Position_Positive]
GO
ALTER TABLE [dbo].[Results]  WITH CHECK ADD  CONSTRAINT [CK_Results_Win_NonNegative] CHECK  (([Win]>=(0)))
GO
ALTER TABLE [dbo].[Results] CHECK CONSTRAINT [CK_Results_Win_NonNegative]
GO
ALTER TABLE [dbo].[Tournament]  WITH CHECK ADD  CONSTRAINT [CK_Tournament_BuyIn] CHECK  (([Buy_In] IS NULL OR [Buy_In]>=(0)))
GO
ALTER TABLE [dbo].[Tournament] CHECK CONSTRAINT [CK_Tournament_BuyIn]
GO
ALTER TABLE [dbo].[Tournament]  WITH CHECK ADD  CONSTRAINT [CK_Tournament_NumPlayers] CHECK  (([Num_Of_Players]>=(2)))
GO
ALTER TABLE [dbo].[Tournament] CHECK CONSTRAINT [CK_Tournament_NumPlayers]
GO
ALTER TABLE [dbo].[Tournament]  WITH CHECK ADD  CONSTRAINT [CK_Tournament_PrizePool] CHECK  (([Prize_Pool] IS NULL OR [Prize_Pool]>=(0)))
GO
ALTER TABLE [dbo].[Tournament] CHECK CONSTRAINT [CK_Tournament_PrizePool]
GO
ALTER TABLE [dbo].[Tournament]  WITH CHECK ADD  CONSTRAINT [CK_Tournament_Year] CHECK  (([Edition_Year]>=(1970) AND [Edition_Year]<=datepart(year,getdate())))
GO
ALTER TABLE [dbo].[Tournament] CHECK CONSTRAINT [CK_Tournament_Year]
GO

