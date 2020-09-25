USE [master]
GO
/****** Object:  Database [Marina_Auth_Added]    Script Date: 2020-09-19 7:56:26 PM ******/
CREATE DATABASE [Marina_Auth_Added]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Marina_Auth_Added', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\Marina_Auth_Added.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'Marina_Auth_Added_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\Marina_Auth_Added_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [Marina_Auth_Added] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Marina_Auth_Added].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Marina_Auth_Added] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Marina_Auth_Added] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Marina_Auth_Added] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Marina_Auth_Added] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Marina_Auth_Added] SET ARITHABORT OFF 
GO
ALTER DATABASE [Marina_Auth_Added] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Marina_Auth_Added] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Marina_Auth_Added] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Marina_Auth_Added] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Marina_Auth_Added] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Marina_Auth_Added] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Marina_Auth_Added] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Marina_Auth_Added] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Marina_Auth_Added] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Marina_Auth_Added] SET  ENABLE_BROKER 
GO
ALTER DATABASE [Marina_Auth_Added] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Marina_Auth_Added] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Marina_Auth_Added] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Marina_Auth_Added] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Marina_Auth_Added] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Marina_Auth_Added] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Marina_Auth_Added] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Marina_Auth_Added] SET RECOVERY FULL 
GO
ALTER DATABASE [Marina_Auth_Added] SET  MULTI_USER 
GO
ALTER DATABASE [Marina_Auth_Added] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Marina_Auth_Added] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Marina_Auth_Added] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Marina_Auth_Added] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [Marina_Auth_Added] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'Marina_Auth_Added', N'ON'
GO
ALTER DATABASE [Marina_Auth_Added] SET QUERY_STORE = OFF
GO
USE [Marina_Auth_Added]
GO
/****** Object:  Table [dbo].[Authentication]    Script Date: 2020-09-19 7:56:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Authentication](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Username] [varchar](16) NOT NULL,
	[Password] [varchar](16) NOT NULL,
	[CustomerID] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY],
 CONSTRAINT [UC_Auth] UNIQUE NONCLUSTERED 
(
	[Username] ASC,
	[Password] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Customer]    Script Date: 2020-09-19 7:56:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Customer](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[FirstName] [varchar](30) NOT NULL,
	[LastName] [varchar](30) NOT NULL,
	[Phone] [varchar](14) NOT NULL,
	[City] [varchar](30) NOT NULL,
 CONSTRAINT [PK_Customer] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Dock]    Script Date: 2020-09-19 7:56:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Dock](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](50) NOT NULL,
	[WaterService] [bit] NOT NULL,
	[ElectricalService] [bit] NOT NULL,
 CONSTRAINT [PK_Dock] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Lease]    Script Date: 2020-09-19 7:56:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Lease](
	[ID] [int] IDENTITY(1000,1) NOT NULL,
	[SlipID] [int] NOT NULL,
	[CustomerID] [int] NOT NULL,
 CONSTRAINT [PK_Lease] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Slip]    Script Date: 2020-09-19 7:56:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Slip](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Width] [int] NOT NULL,
	[Length] [int] NOT NULL,
	[DockID] [int] NOT NULL,
 CONSTRAINT [PK_Slip] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Authentication]  WITH CHECK ADD  CONSTRAINT [FK_AuthenticationCustomer] FOREIGN KEY([CustomerID])
REFERENCES [dbo].[Customer] ([ID])
GO
ALTER TABLE [dbo].[Authentication] CHECK CONSTRAINT [FK_AuthenticationCustomer]
GO
ALTER TABLE [dbo].[Lease]  WITH CHECK ADD  CONSTRAINT [FK_LeaseCustomer] FOREIGN KEY([CustomerID])
REFERENCES [dbo].[Customer] ([ID])
GO
ALTER TABLE [dbo].[Lease] CHECK CONSTRAINT [FK_LeaseCustomer]
GO
ALTER TABLE [dbo].[Lease]  WITH CHECK ADD  CONSTRAINT [FK_LeaseSlip] FOREIGN KEY([SlipID])
REFERENCES [dbo].[Slip] ([ID])
GO
ALTER TABLE [dbo].[Lease] CHECK CONSTRAINT [FK_LeaseSlip]
GO
ALTER TABLE [dbo].[Slip]  WITH CHECK ADD  CONSTRAINT [FK_SlipDock] FOREIGN KEY([DockID])
REFERENCES [dbo].[Dock] ([ID])
GO
ALTER TABLE [dbo].[Slip] CHECK CONSTRAINT [FK_SlipDock]
GO
USE [master]
GO
ALTER DATABASE [Marina_Auth_Added] SET  READ_WRITE 
GO

/**************************************** PART 2 INSERT DATA ******************************/

--INSERT INTO DOCK

INSERT INTO Dock([Name], WaterService, ElectricalService) VALUES('Dock A', 1, 1)
INSERT INTO Dock([Name], WaterService, ElectricalService) VALUES('Dock B', 1, 0)
INSERT INTO Dock([Name], WaterService, ElectricalService) VALUES('Dock C', 0, 1)
GO


--INSERT INTO SLIP

-- Dock A slips

INSERT INTO SLIP(Width, [Length], DockId) VALUES(8,16,1)
INSERT INTO SLIP(Width, [Length], DockId) VALUES(8,16,1)
INSERT INTO SLIP(Width, [Length], DockId) VALUES(8,16,1)
INSERT INTO SLIP(Width, [Length], DockId) VALUES(8,16,1)
INSERT INTO SLIP(Width, [Length], DockId) VALUES(8,16,1)
INSERT INTO SLIP(Width, [Length], DockId) VALUES(8,16,1)
INSERT INTO SLIP(Width, [Length], DockId) VALUES(8,20,1)
INSERT INTO SLIP(Width, [Length], DockId) VALUES(8,20,1)
INSERT INTO SLIP(Width, [Length], DockId) VALUES(8,20,1)
INSERT INTO SLIP(Width, [Length], DockId) VALUES(8,20,1)
INSERT INTO SLIP(Width, [Length], DockId) VALUES(8,20,1)
INSERT INTO SLIP(Width, [Length], DockId) VALUES(8,22,1)
INSERT INTO SLIP(Width, [Length], DockId) VALUES(8,22,1)
INSERT INTO SLIP(Width, [Length], DockId) VALUES(8,22,1)
INSERT INTO SLIP(Width, [Length], DockId) VALUES(8,22,1)
INSERT INTO SLIP(Width, [Length], DockId) VALUES(8,24,1)
INSERT INTO SLIP(Width, [Length], DockId) VALUES(8,24,1)
INSERT INTO SLIP(Width, [Length], DockId) VALUES(8,24,1)
INSERT INTO SLIP(Width, [Length], DockId) VALUES(8,24,1)
INSERT INTO SLIP(Width, [Length], DockId) VALUES(8,26,1)
INSERT INTO SLIP(Width, [Length], DockId) VALUES(8,26,1)
INSERT INTO SLIP(Width, [Length], DockId) VALUES(8,20,1)
INSERT INTO SLIP(Width, [Length], DockId) VALUES(8,26,1)
INSERT INTO SLIP(Width, [Length], DockId) VALUES(8,26,1)
INSERT INTO SLIP(Width, [Length], DockId) VALUES(8,26,1)
INSERT INTO SLIP(Width, [Length], DockId) VALUES(8,28,1)
INSERT INTO SLIP(Width, [Length], DockId) VALUES(8,28,1)
INSERT INTO SLIP(Width, [Length], DockId) VALUES(8,28,1)
INSERT INTO SLIP(Width, [Length], DockId) VALUES(8,28,1)
INSERT INTO SLIP(Width, [Length], DockId) VALUES(8,28,1)
GO

-- Dock B slips

INSERT INTO SLIP(Width, [Length], DockId) VALUES(8,18,2)
INSERT INTO SLIP(Width, [Length], DockId) VALUES(8,18,2)
INSERT INTO SLIP(Width, [Length], DockId) VALUES(8,18,2)
INSERT INTO SLIP(Width, [Length], DockId) VALUES(8,18,2)
INSERT INTO SLIP(Width, [Length], DockId) VALUES(8,18,2)
INSERT INTO SLIP(Width, [Length], DockId) VALUES(8,18,2)
INSERT INTO SLIP(Width, [Length], DockId) VALUES(8,20,2)
INSERT INTO SLIP(Width, [Length], DockId) VALUES(8,20,2)
INSERT INTO SLIP(Width, [Length], DockId) VALUES(8,20,2)
INSERT INTO SLIP(Width, [Length], DockId) VALUES(8,22,2)
INSERT INTO SLIP(Width, [Length], DockId) VALUES(8,22,2)
INSERT INTO SLIP(Width, [Length], DockId) VALUES(8,22,2)
INSERT INTO SLIP(Width, [Length], DockId) VALUES(8,22,2)
INSERT INTO SLIP(Width, [Length], DockId) VALUES(8,24,2)
INSERT INTO SLIP(Width, [Length], DockId) VALUES(8,24,2)
INSERT INTO SLIP(Width, [Length], DockId) VALUES(8,24,2)
INSERT INTO SLIP(Width, [Length], DockId) VALUES(8,24,2)
INSERT INTO SLIP(Width, [Length], DockId) VALUES(8,28,2)
INSERT INTO SLIP(Width, [Length], DockId) VALUES(8,28,2)
INSERT INTO SLIP(Width, [Length], DockId) VALUES(8,28,2)
INSERT INTO SLIP(Width, [Length], DockId) VALUES(8,30,2)
INSERT INTO SLIP(Width, [Length], DockId) VALUES(8,30,2)
INSERT INTO SLIP(Width, [Length], DockId) VALUES(8,30,2)
INSERT INTO SLIP(Width, [Length], DockId) VALUES(8,30,2)
INSERT INTO SLIP(Width, [Length], DockId) VALUES(8,30,2)
INSERT INTO SLIP(Width, [Length], DockId) VALUES(8,32,2)
INSERT INTO SLIP(Width, [Length], DockId) VALUES(8,32,2)
INSERT INTO SLIP(Width, [Length], DockId) VALUES(8,32,2)
INSERT INTO SLIP(Width, [Length], DockId) VALUES(8,32,2)
INSERT INTO SLIP(Width, [Length], DockId) VALUES(8,32,2)
GO

-- Dock C slips

INSERT INTO SLIP(Width, [Length], DockId) VALUES(10,22,3)
INSERT INTO SLIP(Width, [Length], DockId) VALUES(10,22,3)
INSERT INTO SLIP(Width, [Length], DockId) VALUES(10,22,3)
INSERT INTO SLIP(Width, [Length], DockId) VALUES(10,22,3)
INSERT INTO SLIP(Width, [Length], DockId) VALUES(10,22,3)
INSERT INTO SLIP(Width, [Length], DockId) VALUES(10,22,3)
INSERT INTO SLIP(Width, [Length], DockId) VALUES(10,22,3)
INSERT INTO SLIP(Width, [Length], DockId) VALUES(10,22,3)
INSERT INTO SLIP(Width, [Length], DockId) VALUES(10,22,3)
INSERT INTO SLIP(Width, [Length], DockId) VALUES(10,22,3)
INSERT INTO SLIP(Width, [Length], DockId) VALUES(10,24,3)
INSERT INTO SLIP(Width, [Length], DockId) VALUES(10,24,3)
INSERT INTO SLIP(Width, [Length], DockId) VALUES(10,24,3)
INSERT INTO SLIP(Width, [Length], DockId) VALUES(10,24,3)
INSERT INTO SLIP(Width, [Length], DockId) VALUES(10,24,3)
INSERT INTO SLIP(Width, [Length], DockId) VALUES(10,24,3)
INSERT INTO SLIP(Width, [Length], DockId) VALUES(10,24,3)
INSERT INTO SLIP(Width, [Length], DockId) VALUES(10,24,3)
INSERT INTO SLIP(Width, [Length], DockId) VALUES(10,24,3)
INSERT INTO SLIP(Width, [Length], DockId) VALUES(10,24,3)
INSERT INTO SLIP(Width, [Length], DockId) VALUES(12,28,3)
INSERT INTO SLIP(Width, [Length], DockId) VALUES(12,28,3)
INSERT INTO SLIP(Width, [Length], DockId) VALUES(12,28,3)
INSERT INTO SLIP(Width, [Length], DockId) VALUES(12,28,3)
INSERT INTO SLIP(Width, [Length], DockId) VALUES(12,28,3)
INSERT INTO SLIP(Width, [Length], DockId) VALUES(12,28,3)
INSERT INTO SLIP(Width, [Length], DockId) VALUES(12,28,3)
INSERT INTO SLIP(Width, [Length], DockId) VALUES(12,28,3)
INSERT INTO SLIP(Width, [Length], DockId) VALUES(12,28,3)
INSERT INTO SLIP(Width, [Length], DockId) VALUES(12,28,3)
GO


-- INSERT CUSTOMER
INSERT INTO Customer(FirstName,LastName,Phone,City) VALUES('John','Doe','265-555-1212','Phoenix');
INSERT INTO Customer(FirstName,LastName,Phone,City) VALUES('Sara','Williams','403-555-9585','Calgary');
INSERT INTO Customer(FirstName,LastName,Phone,City) VALUES('Ken','Wong','802-555-3214','Kansas City');
GO

-- INSERT LEASE
INSERT INTO Lease(SlipID,CustomerID) VALUES(20,1)
INSERT INTO Lease(SlipID,CustomerID) VALUES(42,2)
INSERT INTO Lease(SlipID,CustomerID) VALUES(88,3)
GO

-- INSERT AUTHENTICATION
INSERT INTO Authentication(Username,Password,CustomerID) VALUES('test','password',1)
GO

---EXECUTE TEST SQL STATEMENT

SELECT c.FirstName, c.LastName, s.Length, d.Name 
FROM   Customer c inner join Lease l on c.ID = l.CustomerID
                  inner join Slip s on l.SlipID = s.ID
                  inner join Dock d on s.DockID = d.ID
GO
