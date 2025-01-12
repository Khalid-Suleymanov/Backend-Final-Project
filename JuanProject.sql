USE [master]
GO
/****** Object:  Database [FinalProject]    Script Date: 17.07.2023 20:48:27 ******/
CREATE DATABASE [FinalProject]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'FinalProject', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.SQLEXPRESS\MSSQL\DATA\FinalProject.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'FinalProject_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.SQLEXPRESS\MSSQL\DATA\FinalProject_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT, LEDGER = OFF
GO
ALTER DATABASE [FinalProject] SET COMPATIBILITY_LEVEL = 160
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [FinalProject].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [FinalProject] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [FinalProject] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [FinalProject] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [FinalProject] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [FinalProject] SET ARITHABORT OFF 
GO
ALTER DATABASE [FinalProject] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [FinalProject] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [FinalProject] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [FinalProject] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [FinalProject] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [FinalProject] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [FinalProject] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [FinalProject] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [FinalProject] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [FinalProject] SET  ENABLE_BROKER 
GO
ALTER DATABASE [FinalProject] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [FinalProject] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [FinalProject] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [FinalProject] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [FinalProject] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [FinalProject] SET READ_COMMITTED_SNAPSHOT ON 
GO
ALTER DATABASE [FinalProject] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [FinalProject] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [FinalProject] SET  MULTI_USER 
GO
ALTER DATABASE [FinalProject] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [FinalProject] SET DB_CHAINING OFF 
GO
ALTER DATABASE [FinalProject] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [FinalProject] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [FinalProject] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [FinalProject] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [FinalProject] SET QUERY_STORE = ON
GO
ALTER DATABASE [FinalProject] SET QUERY_STORE (OPERATION_MODE = READ_WRITE, CLEANUP_POLICY = (STALE_QUERY_THRESHOLD_DAYS = 30), DATA_FLUSH_INTERVAL_SECONDS = 900, INTERVAL_LENGTH_MINUTES = 60, MAX_STORAGE_SIZE_MB = 1000, QUERY_CAPTURE_MODE = AUTO, SIZE_BASED_CLEANUP_MODE = AUTO, MAX_PLANS_PER_QUERY = 200, WAIT_STATS_CAPTURE_MODE = ON)
GO
USE [FinalProject]
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 17.07.2023 20:48:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[__EFMigrationsHistory](
	[MigrationId] [nvarchar](150) NOT NULL,
	[ProductVersion] [nvarchar](32) NOT NULL,
 CONSTRAINT [PK___EFMigrationsHistory] PRIMARY KEY CLUSTERED 
(
	[MigrationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetRoleClaims]    Script Date: 17.07.2023 20:48:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoleClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[RoleId] [nvarchar](450) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetRoleClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetRoles]    Script Date: 17.07.2023 20:48:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoles](
	[Id] [nvarchar](450) NOT NULL,
	[Name] [nvarchar](256) NULL,
	[NormalizedName] [nvarchar](256) NULL,
	[ConcurrencyStamp] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetRoles] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserClaims]    Script Date: 17.07.2023 20:48:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [nvarchar](450) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetUserClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserLogins]    Script Date: 17.07.2023 20:48:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserLogins](
	[LoginProvider] [nvarchar](450) NOT NULL,
	[ProviderKey] [nvarchar](450) NOT NULL,
	[ProviderDisplayName] [nvarchar](max) NULL,
	[UserId] [nvarchar](450) NOT NULL,
 CONSTRAINT [PK_AspNetUserLogins] PRIMARY KEY CLUSTERED 
(
	[LoginProvider] ASC,
	[ProviderKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserRoles]    Script Date: 17.07.2023 20:48:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserRoles](
	[UserId] [nvarchar](450) NOT NULL,
	[RoleId] [nvarchar](450) NOT NULL,
 CONSTRAINT [PK_AspNetUserRoles] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUsers]    Script Date: 17.07.2023 20:48:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUsers](
	[Id] [nvarchar](450) NOT NULL,
	[Discriminator] [nvarchar](max) NOT NULL,
	[FullName] [nvarchar](max) NULL,
	[UserName] [nvarchar](256) NULL,
	[NormalizedUserName] [nvarchar](256) NULL,
	[Email] [nvarchar](256) NULL,
	[NormalizedEmail] [nvarchar](256) NULL,
	[EmailConfirmed] [bit] NOT NULL,
	[PasswordHash] [nvarchar](max) NULL,
	[SecurityStamp] [nvarchar](max) NULL,
	[ConcurrencyStamp] [nvarchar](max) NULL,
	[PhoneNumber] [nvarchar](max) NULL,
	[PhoneNumberConfirmed] [bit] NOT NULL,
	[TwoFactorEnabled] [bit] NOT NULL,
	[LockoutEnd] [datetimeoffset](7) NULL,
	[LockoutEnabled] [bit] NOT NULL,
	[AccessFailedCount] [int] NOT NULL,
 CONSTRAINT [PK_AspNetUsers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserTokens]    Script Date: 17.07.2023 20:48:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserTokens](
	[UserId] [nvarchar](450) NOT NULL,
	[LoginProvider] [nvarchar](450) NOT NULL,
	[Name] [nvarchar](450) NOT NULL,
	[Value] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetUserTokens] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[LoginProvider] ASC,
	[Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BasketItems]    Script Date: 17.07.2023 20:48:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BasketItems](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Count] [int] NOT NULL,
	[ProductId] [int] NOT NULL,
	[AppUserId] [nvarchar](450) NULL,
 CONSTRAINT [PK_BasketItems] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Brands]    Script Date: 17.07.2023 20:48:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Brands](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Brands] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Categories]    Script Date: 17.07.2023 20:48:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Categories](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](45) NOT NULL,
 CONSTRAINT [PK_Categories] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Colors]    Script Date: 17.07.2023 20:48:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Colors](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](25) NOT NULL,
 CONSTRAINT [PK_Colors] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Features]    Script Date: 17.07.2023 20:48:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Features](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Title] [nvarchar](25) NOT NULL,
	[Desc] [nvarchar](50) NULL,
	[Icon] [nvarchar](50) NOT NULL,
	[BackgroundColor] [nvarchar](80) NOT NULL,
 CONSTRAINT [PK_Features] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FourBrands]    Script Date: 17.07.2023 20:48:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FourBrands](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Image] [nvarchar](100) NULL,
 CONSTRAINT [PK_FourBrands] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Images]    Script Date: 17.07.2023 20:48:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Images](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ImageName] [nvarchar](120) NOT NULL,
	[ImageStatus] [bit] NOT NULL,
	[ProductId] [int] NOT NULL,
 CONSTRAINT [PK_Images] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OrderItems]    Script Date: 17.07.2023 20:48:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrderItems](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Count] [int] NOT NULL,
	[UnitSalePrice] [decimal](18, 2) NOT NULL,
	[UnitCostPrice] [decimal](18, 2) NOT NULL,
	[DiscountedPrice] [decimal](18, 2) NOT NULL,
	[OrderId] [int] NOT NULL,
	[ProductId] [int] NOT NULL,
 CONSTRAINT [PK_OrderItems] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Orders]    Script Date: 17.07.2023 20:48:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Orders](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[FullName] [nvarchar](40) NULL,
	[Email] [nvarchar](50) NULL,
	[Phone] [nvarchar](20) NULL,
	[Address] [nvarchar](150) NULL,
	[TotalAmount] [decimal](18, 2) NOT NULL,
	[Note] [nvarchar](300) NULL,
	[CreatedAt] [datetime2](7) NOT NULL,
	[AppUserId] [nvarchar](450) NULL,
	[Status] [tinyint] NOT NULL,
 CONSTRAINT [PK_Orders] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProductReviews]    Script Date: 17.07.2023 20:48:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductReviews](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[AppUserId] [nvarchar](450) NULL,
	[ProductId] [int] NOT NULL,
	[Rate] [tinyint] NOT NULL,
	[Text] [nvarchar](500) NULL,
	[CreatedAt] [datetime2](7) NOT NULL,
 CONSTRAINT [PK_ProductReviews] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Products]    Script Date: 17.07.2023 20:48:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Products](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](80) NOT NULL,
	[SalePrice] [decimal](18, 2) NOT NULL,
	[CostPrice] [decimal](18, 2) NOT NULL,
	[DiscountedPrice] [decimal](18, 2) NOT NULL,
	[Description] [text] NOT NULL,
	[StockStatus] [bit] NOT NULL,
	[CategoryId] [int] NOT NULL,
	[BrandId] [int] NOT NULL,
	[ColorId] [int] NOT NULL,
	[Status] [tinyint] NOT NULL,
	[IsNew] [bit] NOT NULL,
	[IsDeleted] [bit] NOT NULL,
	[Rate] [tinyint] NOT NULL,
 CONSTRAINT [PK_Products] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProductSizes]    Script Date: 17.07.2023 20:48:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductSizes](
	[SizeId] [int] NOT NULL,
	[ProductId] [int] NOT NULL,
 CONSTRAINT [PK_ProductSizes] PRIMARY KEY CLUSTERED 
(
	[ProductId] ASC,
	[SizeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Settings]    Script Date: 17.07.2023 20:48:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Settings](
	[Key] [nvarchar](450) NOT NULL,
	[Value] [nvarchar](100) NOT NULL,
 CONSTRAINT [PK_Settings] PRIMARY KEY CLUSTERED 
(
	[Key] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Sizes]    Script Date: 17.07.2023 20:48:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Sizes](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](30) NOT NULL,
 CONSTRAINT [PK_Sizes] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Sliders]    Script Date: 17.07.2023 20:48:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Sliders](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Order] [int] NOT NULL,
	[Title1] [nvarchar](50) NOT NULL,
	[Title2] [nvarchar](50) NOT NULL,
	[Desc] [nvarchar](150) NOT NULL,
	[BtnText] [nvarchar](150) NOT NULL,
	[BtnUrl] [nvarchar](150) NOT NULL,
	[Image] [nvarchar](100) NULL,
 CONSTRAINT [PK_Sliders] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SportOffs]    Script Date: 17.07.2023 20:48:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SportOffs](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Title] [nvarchar](25) NOT NULL,
	[Desc2] [nvarchar](50) NULL,
	[Image] [nvarchar](150) NULL,
	[Desc1] [nvarchar](50) NULL,
	[Order] [tinyint] NOT NULL,
 CONSTRAINT [PK_SportOffs] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UserContacts]    Script Date: 17.07.2023 20:48:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserContacts](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[AppUserId] [nvarchar](450) NULL,
	[FullName] [nvarchar](25) NOT NULL,
	[Phone] [nvarchar](15) NOT NULL,
	[Email] [nvarchar](100) NOT NULL,
	[Subject] [nvarchar](80) NOT NULL,
	[Text] [nvarchar](200) NULL,
 CONSTRAINT [PK_UserContacts] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20230706205301_addSliderTableInDatabase', N'6.0.19')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20230706212224_addFeaturesTableDatabase', N'6.0.19')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20230708160333_upt', N'6.0.19')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20230710101532_newColumAddData', N'6.0.19')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20230710132825_isNew', N'6.0.19')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20230710144454_createNewBranbdLogo', N'6.0.19')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20230710151101_datasol', N'6.0.19')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20230712104455_isdeleted', N'6.0.19')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20230712184636_newTableSportOff', N'6.0.19')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20230712185114_newTablefor', N'6.0.19')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20230712185818_addTableDate', N'6.0.19')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20230713114511_identityCreatedTable', N'6.0.19')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20230714125205_basketItemsTableMigratio', N'6.0.19')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20230715162144_orderStatusOrderInDatabase', N'6.0.19')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20230715214626_ratebyProduct', N'6.0.19')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20230715220134_review', N'6.0.19')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20230715222419_boorevi', N'6.0.19')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20230716122616_orderintable', N'6.0.19')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20230716184235_dataTablePost', N'6.0.19')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20230716185827_settingTableAddDatabase', N'6.0.19')
GO
INSERT [dbo].[AspNetRoles] ([Id], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (N'7231b5f9-cb65-4020-b260-124eb3f7b5f3', N'Member', N'MEMBER', N'a9af343a-8da7-49cd-aae7-7e6be479a380')
INSERT [dbo].[AspNetRoles] ([Id], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (N'ca70d530-b7bb-4cac-9fea-f08ce5eb851c', N'SuperAdmin', N'SUPERADMIN', N'e5896562-2223-46b4-b8fe-b9cf9b40eec8')
INSERT [dbo].[AspNetRoles] ([Id], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (N'd016c771-214d-4ae9-a455-b5eb349a6b0d', N'Admin', N'ADMIN', N'8e46630c-c4e3-4248-bd3c-6654b5ae8090')
GO
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'1e8698b8-d067-4054-955b-dea5358bf667', N'7231b5f9-cb65-4020-b260-124eb3f7b5f3')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'efaf498f-6afb-43d3-a692-20427bcb5044', N'7231b5f9-cb65-4020-b260-124eb3f7b5f3')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'19021a28-343b-4606-b95d-f31e2599b3f6', N'ca70d530-b7bb-4cac-9fea-f08ce5eb851c')
GO
INSERT [dbo].[AspNetUsers] ([Id], [Discriminator], [FullName], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'19021a28-343b-4606-b95d-f31e2599b3f6', N'AppUser', N'Super Admin', N'SuperAdmin', N'SUPERADMIN', NULL, NULL, 0, N'AQAAAAEAACcQAAAAEJJPmdJ0jeMQ1nauiN6CsoXxJs4MyXvQb3bA5fjcvGzwQIjG614Ihgjeo6a78I/ueQ==', N'UWMSRJYV3OWXKRMSGG3JQHCCHRASYXPC', N'5f6f10ba-9199-498a-9575-0c5f2a3be642', NULL, 0, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [Discriminator], [FullName], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'1e8698b8-d067-4054-955b-dea5358bf667', N'AppUser', N'Khalid Suleymanov', N'Xalid', N'XALID', N'khalid@gmail.com', N'KHALID@GMAIL.COM', 0, N'AQAAAAEAACcQAAAAEG38aBzJOkJPFL/t9QZj1wv3pJ57QMfJzSG8XmHkCbneRA59FaQ0pEHvBLLUNzFehQ==', N'QMXNI4SHCAOP5SZE7P67ZX7XIIF3PQJB', N'39c9d7d8-2d3c-4ead-84cd-d02f4f434672', N'0774690703', 0, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [Discriminator], [FullName], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'efaf498f-6afb-43d3-a692-20427bcb5044', N'AppUser', N'Nigar', N'Nigar', N'NIGAR', N'nigar@gmail.com', N'NIGAR@GMAIL.COM', 0, N'AQAAAAEAACcQAAAAEPABARHnHoEEh8OrkWsx6PWRoXuDzW7Ks6Nzs5+lJOxBnrg3MWOrz/CKlKdZ0rKtcA==', N'7KHSRXP7PTMKQ33QZKGJTEGHPXAX5B6Q', N'692912e4-3c6e-488a-a282-29457069e2b5', N'055-555-55-55', 0, 0, NULL, 1, 0)
GO
SET IDENTITY_INSERT [dbo].[Brands] ON 

INSERT [dbo].[Brands] ([Id], [Name]) VALUES (8, N'Nike')
INSERT [dbo].[Brands] ([Id], [Name]) VALUES (9, N'Adidas')
INSERT [dbo].[Brands] ([Id], [Name]) VALUES (10, N'Marshall')
INSERT [dbo].[Brands] ([Id], [Name]) VALUES (11, N'Reebok')
INSERT [dbo].[Brands] ([Id], [Name]) VALUES (12, N'Vans')
INSERT [dbo].[Brands] ([Id], [Name]) VALUES (13, N'Puma')
INSERT [dbo].[Brands] ([Id], [Name]) VALUES (15, N'Under Armour')
SET IDENTITY_INSERT [dbo].[Brands] OFF
GO
SET IDENTITY_INSERT [dbo].[Categories] ON 

INSERT [dbo].[Categories] ([Id], [Name]) VALUES (9, N'Mens')
INSERT [dbo].[Categories] ([Id], [Name]) VALUES (10, N'Womens')
INSERT [dbo].[Categories] ([Id], [Name]) VALUES (11, N'Sports')
INSERT [dbo].[Categories] ([Id], [Name]) VALUES (12, N'Fabric')
INSERT [dbo].[Categories] ([Id], [Name]) VALUES (13, N'Leather')
SET IDENTITY_INSERT [dbo].[Categories] OFF
GO
SET IDENTITY_INSERT [dbo].[Colors] ON 

INSERT [dbo].[Colors] ([Id], [Name]) VALUES (8, N'Gold')
INSERT [dbo].[Colors] ([Id], [Name]) VALUES (9, N'Green')
INSERT [dbo].[Colors] ([Id], [Name]) VALUES (10, N'Blue')
INSERT [dbo].[Colors] ([Id], [Name]) VALUES (11, N'White')
INSERT [dbo].[Colors] ([Id], [Name]) VALUES (12, N'Red')
INSERT [dbo].[Colors] ([Id], [Name]) VALUES (13, N'Black')
SET IDENTITY_INSERT [dbo].[Colors] OFF
GO
SET IDENTITY_INSERT [dbo].[Features] ON 

INSERT [dbo].[Features] ([Id], [Title], [Desc], [Icon], [BackgroundColor]) VALUES (1, N'FREE SHIPPING', N'Free shipping on all order', N'policy-1.png', N'bg-1')
INSERT [dbo].[Features] ([Id], [Title], [Desc], [Icon], [BackgroundColor]) VALUES (2, N'ONLINE SUPPORT', N'Online support 24 hours a day', N'policy-2.png', N'bg-2')
INSERT [dbo].[Features] ([Id], [Title], [Desc], [Icon], [BackgroundColor]) VALUES (3, N'MONEY RETURN', N'Back guarantee under 5 days', N'policy-3.png', N'bg-3')
SET IDENTITY_INSERT [dbo].[Features] OFF
GO
SET IDENTITY_INSERT [dbo].[FourBrands] ON 

INSERT [dbo].[FourBrands] ([Id], [Image]) VALUES (1, N'd159f1c7-09e4-46db-8df0-64c08636ca5cBrandLogo-1.png')
INSERT [dbo].[FourBrands] ([Id], [Image]) VALUES (2, N'3911eb18-f8a1-40a7-9a19-fef64f064f76BrandLogo-2.png')
INSERT [dbo].[FourBrands] ([Id], [Image]) VALUES (3, N'b2802b43-2b1b-45c3-8610-f72a9740141aBrandLogo-3.png')
INSERT [dbo].[FourBrands] ([Id], [Image]) VALUES (5, N'907450b7-f8a0-4f80-be22-aedf9192c0acBrandLogo-4.png')
INSERT [dbo].[FourBrands] ([Id], [Image]) VALUES (6, N'ead70880-5b01-4d7e-ae58-de51125a756dBrandLogo-2.png')
SET IDENTITY_INSERT [dbo].[FourBrands] OFF
GO
SET IDENTITY_INSERT [dbo].[Images] ON 

INSERT [dbo].[Images] ([Id], [ImageName], [ImageStatus], [ProductId]) VALUES (11, N'7eae8db6-8f33-4530-9137-04cf7fc9ff98SaveProduct-1.png', 1, 7)
INSERT [dbo].[Images] ([Id], [ImageName], [ImageStatus], [ProductId]) VALUES (12, N'417d04b7-0dd1-4d4b-bb1c-4a615c89ecb7SaveProduct-2.png', 1, 8)
INSERT [dbo].[Images] ([Id], [ImageName], [ImageStatus], [ProductId]) VALUES (13, N'e6e130d9-c614-4215-9efb-58181216718bSaveProduct-3.png', 1, 9)
INSERT [dbo].[Images] ([Id], [ImageName], [ImageStatus], [ProductId]) VALUES (14, N'8ecfb518-42ea-444e-9ef4-e07e2bd21804SaveProduct-4.png', 1, 10)
INSERT [dbo].[Images] ([Id], [ImageName], [ImageStatus], [ProductId]) VALUES (15, N'a3e0dce7-e365-4ab1-bd80-314dd3513d70SaveProduct-5.png', 1, 11)
INSERT [dbo].[Images] ([Id], [ImageName], [ImageStatus], [ProductId]) VALUES (16, N'f68e8410-18b7-4ffd-8f75-036c603df30dSaveProduct-4.png', 1, 12)
INSERT [dbo].[Images] ([Id], [ImageName], [ImageStatus], [ProductId]) VALUES (17, N'efffa65d-b6d7-49e7-ba1e-60df15a26b75product-details-img2.jpg', 1, 13)
INSERT [dbo].[Images] ([Id], [ImageName], [ImageStatus], [ProductId]) VALUES (18, N'4d756566-d45d-4689-b76e-a8a5ac054b20Shop-2.png', 1, 14)
INSERT [dbo].[Images] ([Id], [ImageName], [ImageStatus], [ProductId]) VALUES (19, N'ed33a8f5-7a63-4e36-9108-9fa33cd4d2f8Shop-11.png', 1, 15)
INSERT [dbo].[Images] ([Id], [ImageName], [ImageStatus], [ProductId]) VALUES (20, N'8a615657-f246-4e5b-a956-4105a216feb8Shop-7.png', 1, 16)
INSERT [dbo].[Images] ([Id], [ImageName], [ImageStatus], [ProductId]) VALUES (21, N'5d983f37-c933-4a20-acca-a60f8c814a70shop-6.png', 1, 17)
INSERT [dbo].[Images] ([Id], [ImageName], [ImageStatus], [ProductId]) VALUES (22, N'2e83158b-10cb-4753-b5f5-cc64fe3e8c47Shop-4.png', 1, 18)
INSERT [dbo].[Images] ([Id], [ImageName], [ImageStatus], [ProductId]) VALUES (23, N'f288de05-1809-41a4-978a-d7071adebb15shop-6.png', 1, 19)
INSERT [dbo].[Images] ([Id], [ImageName], [ImageStatus], [ProductId]) VALUES (24, N'f09ca25d-90c6-42f5-8671-7ee8340ec5fcShop-7.png', 1, 20)
INSERT [dbo].[Images] ([Id], [ImageName], [ImageStatus], [ProductId]) VALUES (25, N'c6893cad-1c7d-4646-b058-e021a7ae19b4Shop-10.png', 1, 21)
INSERT [dbo].[Images] ([Id], [ImageName], [ImageStatus], [ProductId]) VALUES (26, N'43da1ff0-1e1a-4481-aeef-134f3acde450Shop-12.png', 1, 22)
INSERT [dbo].[Images] ([Id], [ImageName], [ImageStatus], [ProductId]) VALUES (27, N'0bbbc0a6-188e-4df4-ba64-9a17ac61fd67Shop-9.png', 1, 23)
INSERT [dbo].[Images] ([Id], [ImageName], [ImageStatus], [ProductId]) VALUES (28, N'6851709e-a140-4b96-b27f-b9b6234b3570SaveProduct-2.png', 1, 24)
SET IDENTITY_INSERT [dbo].[Images] OFF
GO
SET IDENTITY_INSERT [dbo].[OrderItems] ON 

INSERT [dbo].[OrderItems] ([Id], [Count], [UnitSalePrice], [UnitCostPrice], [DiscountedPrice], [OrderId], [ProductId]) VALUES (1, 1, CAST(80.00 AS Decimal(18, 2)), CAST(75.00 AS Decimal(18, 2)), CAST(35.00 AS Decimal(18, 2)), 1, 9)
INSERT [dbo].[OrderItems] ([Id], [Count], [UnitSalePrice], [UnitCostPrice], [DiscountedPrice], [OrderId], [ProductId]) VALUES (2, 1, CAST(80.00 AS Decimal(18, 2)), CAST(45.00 AS Decimal(18, 2)), CAST(70.00 AS Decimal(18, 2)), 1, 8)
INSERT [dbo].[OrderItems] ([Id], [Count], [UnitSalePrice], [UnitCostPrice], [DiscountedPrice], [OrderId], [ProductId]) VALUES (3, 1, CAST(80.00 AS Decimal(18, 2)), CAST(75.00 AS Decimal(18, 2)), CAST(35.00 AS Decimal(18, 2)), 3, 9)
INSERT [dbo].[OrderItems] ([Id], [Count], [UnitSalePrice], [UnitCostPrice], [DiscountedPrice], [OrderId], [ProductId]) VALUES (4, 1, CAST(80.00 AS Decimal(18, 2)), CAST(50.00 AS Decimal(18, 2)), CAST(30.00 AS Decimal(18, 2)), 3, 10)
SET IDENTITY_INSERT [dbo].[OrderItems] OFF
GO
SET IDENTITY_INSERT [dbo].[Orders] ON 

INSERT [dbo].[Orders] ([Id], [FullName], [Email], [Phone], [Address], [TotalAmount], [Note], [CreatedAt], [AppUserId], [Status]) VALUES (1, N'Khalid Suleymanov', N'khalid@gmail.com', N'0774690703', N'Nizami203B', CAST(105.00 AS Decimal(18, 2)), NULL, CAST(N'2023-07-15T23:31:37.4760679' AS DateTime2), N'1e8698b8-d067-4054-955b-dea5358bf667', 1)
INSERT [dbo].[Orders] ([Id], [FullName], [Email], [Phone], [Address], [TotalAmount], [Note], [CreatedAt], [AppUserId], [Status]) VALUES (2, N'Khalid Suleymanov', N'khalid@gmail.com', N'0774690703', N'Nizami203B', CAST(0.00 AS Decimal(18, 2)), NULL, CAST(N'2023-07-15T23:50:40.4870434' AS DateTime2), N'1e8698b8-d067-4054-955b-dea5358bf667', 1)
INSERT [dbo].[Orders] ([Id], [FullName], [Email], [Phone], [Address], [TotalAmount], [Note], [CreatedAt], [AppUserId], [Status]) VALUES (3, N'Khalid Suleymanov', N'khalid@gmail.com', N'0774690703', N'Nizami203B', CAST(65.00 AS Decimal(18, 2)), NULL, CAST(N'2023-07-15T23:52:39.3332109' AS DateTime2), N'1e8698b8-d067-4054-955b-dea5358bf667', 3)
INSERT [dbo].[Orders] ([Id], [FullName], [Email], [Phone], [Address], [TotalAmount], [Note], [CreatedAt], [AppUserId], [Status]) VALUES (4, N'Khalid Suleymanov', N'khalid@gmail.com', N'0774690703', N'Nizami203B', CAST(0.00 AS Decimal(18, 2)), NULL, CAST(N'2023-07-15T23:54:29.8809601' AS DateTime2), N'1e8698b8-d067-4054-955b-dea5358bf667', 2)
SET IDENTITY_INSERT [dbo].[Orders] OFF
GO
SET IDENTITY_INSERT [dbo].[ProductReviews] ON 

INSERT [dbo].[ProductReviews] ([Id], [AppUserId], [ProductId], [Rate], [Text], [CreatedAt]) VALUES (1, N'1e8698b8-d067-4054-955b-dea5358bf667', 8, 0, N'nnjnjnj', CAST(N'2023-07-16T11:29:10.5123619' AS DateTime2))
INSERT [dbo].[ProductReviews] ([Id], [AppUserId], [ProductId], [Rate], [Text], [CreatedAt]) VALUES (2, N'1e8698b8-d067-4054-955b-dea5358bf667', 8, 0, N'bjbjb', CAST(N'2023-07-16T11:29:30.8354251' AS DateTime2))
INSERT [dbo].[ProductReviews] ([Id], [AppUserId], [ProductId], [Rate], [Text], [CreatedAt]) VALUES (3, N'1e8698b8-d067-4054-955b-dea5358bf667', 9, 0, N'Xalid', CAST(N'2023-07-16T11:42:53.5023578' AS DateTime2))
INSERT [dbo].[ProductReviews] ([Id], [AppUserId], [ProductId], [Rate], [Text], [CreatedAt]) VALUES (4, N'1e8698b8-d067-4054-955b-dea5358bf667', 9, 0, N'XalidMuellim', CAST(N'2023-07-16T11:54:14.1117972' AS DateTime2))
SET IDENTITY_INSERT [dbo].[ProductReviews] OFF
GO
SET IDENTITY_INSERT [dbo].[Products] ON 

INSERT [dbo].[Products] ([Id], [Name], [SalePrice], [CostPrice], [DiscountedPrice], [Description], [StockStatus], [CategoryId], [BrandId], [ColorId], [Status], [IsNew], [IsDeleted], [Rate]) VALUES (7, N'Loafers', CAST(45.00 AS Decimal(18, 2)), CAST(80.00 AS Decimal(18, 2)), CAST(35.00 AS Decimal(18, 2)), N'Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua.', 1, 9, 10, 11, 1, 0, 0, 1)
INSERT [dbo].[Products] ([Id], [Name], [SalePrice], [CostPrice], [DiscountedPrice], [Description], [StockStatus], [CategoryId], [BrandId], [ColorId], [Status], [IsNew], [IsDeleted], [Rate]) VALUES (8, N'Wingtips', CAST(80.00 AS Decimal(18, 2)), CAST(45.00 AS Decimal(18, 2)), CAST(70.00 AS Decimal(18, 2)), N'Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua.', 1, 9, 13, 10, 2, 0, 0, 0)
INSERT [dbo].[Products] ([Id], [Name], [SalePrice], [CostPrice], [DiscountedPrice], [Description], [StockStatus], [CategoryId], [BrandId], [ColorId], [Status], [IsNew], [IsDeleted], [Rate]) VALUES (9, N'Tassel loafers', CAST(80.00 AS Decimal(18, 2)), CAST(75.00 AS Decimal(18, 2)), CAST(35.00 AS Decimal(18, 2)), N'Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua.', 1, 9, 11, 9, 3, 0, 0, 0)
INSERT [dbo].[Products] ([Id], [Name], [SalePrice], [CostPrice], [DiscountedPrice], [Description], [StockStatus], [CategoryId], [BrandId], [ColorId], [Status], [IsNew], [IsDeleted], [Rate]) VALUES (10, N'Penny loafers', CAST(80.00 AS Decimal(18, 2)), CAST(50.00 AS Decimal(18, 2)), CAST(30.00 AS Decimal(18, 2)), N'Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua.', 1, 10, 15, 9, 2, 0, 0, 5)
INSERT [dbo].[Products] ([Id], [Name], [SalePrice], [CostPrice], [DiscountedPrice], [Description], [StockStatus], [CategoryId], [BrandId], [ColorId], [Status], [IsNew], [IsDeleted], [Rate]) VALUES (11, N'Wingtips', CAST(50.00 AS Decimal(18, 2)), CAST(30.00 AS Decimal(18, 2)), CAST(45.00 AS Decimal(18, 2)), N'Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua.', 0, 11, 12, 10, 1, 0, 0, 3)
INSERT [dbo].[Products] ([Id], [Name], [SalePrice], [CostPrice], [DiscountedPrice], [Description], [StockStatus], [CategoryId], [BrandId], [ColorId], [Status], [IsNew], [IsDeleted], [Rate]) VALUES (12, N'Abarka', CAST(50.00 AS Decimal(18, 2)), CAST(90.00 AS Decimal(18, 2)), CAST(56.00 AS Decimal(18, 2)), N'Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua.', 1, 10, 10, 10, 2, 1, 0, 1)
INSERT [dbo].[Products] ([Id], [Name], [SalePrice], [CostPrice], [DiscountedPrice], [Description], [StockStatus], [CategoryId], [BrandId], [ColorId], [Status], [IsNew], [IsDeleted], [Rate]) VALUES (13, N'Ballet flat', CAST(80.00 AS Decimal(18, 2)), CAST(120.00 AS Decimal(18, 2)), CAST(66.00 AS Decimal(18, 2)), N'Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua.', 0, 11, 11, 11, 3, 1, 0, 5)
INSERT [dbo].[Products] ([Id], [Name], [SalePrice], [CostPrice], [DiscountedPrice], [Description], [StockStatus], [CategoryId], [BrandId], [ColorId], [Status], [IsNew], [IsDeleted], [Rate]) VALUES (14, N'Bakya', CAST(60.00 AS Decimal(18, 2)), CAST(50.00 AS Decimal(18, 2)), CAST(88.00 AS Decimal(18, 2)), N'Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua.', 1, 11, 9, 8, 1, 1, 0, 3)
INSERT [dbo].[Products] ([Id], [Name], [SalePrice], [CostPrice], [DiscountedPrice], [Description], [StockStatus], [CategoryId], [BrandId], [ColorId], [Status], [IsNew], [IsDeleted], [Rate]) VALUES (15, N'Balgha', CAST(80.00 AS Decimal(18, 2)), CAST(60.00 AS Decimal(18, 2)), CAST(80.00 AS Decimal(18, 2)), N'Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua.', 1, 12, 15, 11, 1, 1, 0, 2)
INSERT [dbo].[Products] ([Id], [Name], [SalePrice], [CostPrice], [DiscountedPrice], [Description], [StockStatus], [CategoryId], [BrandId], [ColorId], [Status], [IsNew], [IsDeleted], [Rate]) VALUES (16, N'Boat shoe', CAST(50.00 AS Decimal(18, 2)), CAST(30.00 AS Decimal(18, 2)), CAST(90.00 AS Decimal(18, 2)), N'Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua.', 1, 11, 13, 11, 3, 1, 0, 4)
INSERT [dbo].[Products] ([Id], [Name], [SalePrice], [CostPrice], [DiscountedPrice], [Description], [StockStatus], [CategoryId], [BrandId], [ColorId], [Status], [IsNew], [IsDeleted], [Rate]) VALUES (17, N'Beatle', CAST(50.00 AS Decimal(18, 2)), CAST(20.00 AS Decimal(18, 2)), CAST(44.00 AS Decimal(18, 2)), N'Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua.', 0, 13, 12, 11, 2, 1, 0, 3)
INSERT [dbo].[Products] ([Id], [Name], [SalePrice], [CostPrice], [DiscountedPrice], [Description], [StockStatus], [CategoryId], [BrandId], [ColorId], [Status], [IsNew], [IsDeleted], [Rate]) VALUES (18, N'Loafers', CAST(50.00 AS Decimal(18, 2)), CAST(40.00 AS Decimal(18, 2)), CAST(45.00 AS Decimal(18, 2)), N'Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua.', 1, 13, 13, 12, 0, 0, 0, 1)
INSERT [dbo].[Products] ([Id], [Name], [SalePrice], [CostPrice], [DiscountedPrice], [Description], [StockStatus], [CategoryId], [BrandId], [ColorId], [Status], [IsNew], [IsDeleted], [Rate]) VALUES (19, N'Wingtips', CAST(50.00 AS Decimal(18, 2)), CAST(30.00 AS Decimal(18, 2)), CAST(40.00 AS Decimal(18, 2)), N'Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua.', 0, 10, 12, 10, 0, 0, 0, 4)
INSERT [dbo].[Products] ([Id], [Name], [SalePrice], [CostPrice], [DiscountedPrice], [Description], [StockStatus], [CategoryId], [BrandId], [ColorId], [Status], [IsNew], [IsDeleted], [Rate]) VALUES (20, N'Venda Armour', CAST(30.00 AS Decimal(18, 2)), CAST(10.00 AS Decimal(18, 2)), CAST(25.00 AS Decimal(18, 2)), N'Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua.', 1, 9, 10, 10, 0, 0, 0, 2)
INSERT [dbo].[Products] ([Id], [Name], [SalePrice], [CostPrice], [DiscountedPrice], [Description], [StockStatus], [CategoryId], [BrandId], [ColorId], [Status], [IsNew], [IsDeleted], [Rate]) VALUES (21, N'Merro Avent', CAST(100.00 AS Decimal(18, 2)), CAST(80.00 AS Decimal(18, 2)), CAST(80.00 AS Decimal(18, 2)), N'Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua.', 0, 11, 13, 8, 0, 0, 0, 5)
INSERT [dbo].[Products] ([Id], [Name], [SalePrice], [CostPrice], [DiscountedPrice], [Description], [StockStatus], [CategoryId], [BrandId], [ColorId], [Status], [IsNew], [IsDeleted], [Rate]) VALUES (22, N'Resson', CAST(80.00 AS Decimal(18, 2)), CAST(80.00 AS Decimal(18, 2)), CAST(60.00 AS Decimal(18, 2)), N'Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua.', 1, 12, 12, 9, 0, 0, 0, 4)
INSERT [dbo].[Products] ([Id], [Name], [SalePrice], [CostPrice], [DiscountedPrice], [Description], [StockStatus], [CategoryId], [BrandId], [ColorId], [Status], [IsNew], [IsDeleted], [Rate]) VALUES (23, N'Horr Merri', CAST(50.00 AS Decimal(18, 2)), CAST(45.00 AS Decimal(18, 2)), CAST(48.00 AS Decimal(18, 2)), N'Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua.', 0, 13, 11, 8, 0, 0, 0, 2)
INSERT [dbo].[Products] ([Id], [Name], [SalePrice], [CostPrice], [DiscountedPrice], [Description], [StockStatus], [CategoryId], [BrandId], [ColorId], [Status], [IsNew], [IsDeleted], [Rate]) VALUES (24, N'Loafers', CAST(70.00 AS Decimal(18, 2)), CAST(80.00 AS Decimal(18, 2)), CAST(50.00 AS Decimal(18, 2)), N'Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua.', 1, 11, 11, 8, 0, 0, 0, 1)
SET IDENTITY_INSERT [dbo].[Products] OFF
GO
INSERT [dbo].[ProductSizes] ([SizeId], [ProductId]) VALUES (11, 22)
INSERT [dbo].[ProductSizes] ([SizeId], [ProductId]) VALUES (11, 23)
INSERT [dbo].[ProductSizes] ([SizeId], [ProductId]) VALUES (12, 8)
INSERT [dbo].[ProductSizes] ([SizeId], [ProductId]) VALUES (12, 11)
INSERT [dbo].[ProductSizes] ([SizeId], [ProductId]) VALUES (12, 14)
INSERT [dbo].[ProductSizes] ([SizeId], [ProductId]) VALUES (12, 21)
INSERT [dbo].[ProductSizes] ([SizeId], [ProductId]) VALUES (13, 7)
INSERT [dbo].[ProductSizes] ([SizeId], [ProductId]) VALUES (13, 9)
INSERT [dbo].[ProductSizes] ([SizeId], [ProductId]) VALUES (13, 12)
INSERT [dbo].[ProductSizes] ([SizeId], [ProductId]) VALUES (13, 13)
INSERT [dbo].[ProductSizes] ([SizeId], [ProductId]) VALUES (13, 15)
INSERT [dbo].[ProductSizes] ([SizeId], [ProductId]) VALUES (13, 16)
INSERT [dbo].[ProductSizes] ([SizeId], [ProductId]) VALUES (13, 17)
INSERT [dbo].[ProductSizes] ([SizeId], [ProductId]) VALUES (13, 18)
INSERT [dbo].[ProductSizes] ([SizeId], [ProductId]) VALUES (14, 10)
INSERT [dbo].[ProductSizes] ([SizeId], [ProductId]) VALUES (14, 19)
INSERT [dbo].[ProductSizes] ([SizeId], [ProductId]) VALUES (14, 20)
INSERT [dbo].[ProductSizes] ([SizeId], [ProductId]) VALUES (14, 24)
GO
SET IDENTITY_INSERT [dbo].[Sizes] ON 

INSERT [dbo].[Sizes] ([Id], [Name]) VALUES (11, N'L')
INSERT [dbo].[Sizes] ([Id], [Name]) VALUES (12, N'M')
INSERT [dbo].[Sizes] ([Id], [Name]) VALUES (13, N'S')
INSERT [dbo].[Sizes] ([Id], [Name]) VALUES (14, N'XL')
SET IDENTITY_INSERT [dbo].[Sizes] OFF
GO
SET IDENTITY_INSERT [dbo].[Sliders] ON 

INSERT [dbo].[Sliders] ([Id], [Order], [Title1], [Title2], [Desc], [BtnText], [BtnUrl], [Image]) VALUES (1, 1, N'Top Selling!', N'New Collection', N' Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incidid', N'SHOP NOW', N'shop.html', N'slider-1.jpg')
INSERT [dbo].[Sliders] ([Id], [Order], [Title1], [Title2], [Desc], [BtnText], [BtnUrl], [Image]) VALUES (2, 2, N'Best Selling!', N'Top Collection', N' Lorem ipsum dolor sit amet, consectetur adipisicing
                                        elit, sed do eiusmod tempor incidid', N'SHOP NOW', N'shop.html', N'slider-2.jpg')
SET IDENTITY_INSERT [dbo].[Sliders] OFF
GO
SET IDENTITY_INSERT [dbo].[SportOffs] ON 

INSERT [dbo].[SportOffs] ([Id], [Title], [Desc2], [Image], [Desc1], [Order]) VALUES (1, N'Sports shoes', N'For Sports men', N'banner-1.jpg', N'20% Off', 1)
INSERT [dbo].[SportOffs] ([Id], [Title], [Desc2], [Image], [Desc1], [Order]) VALUES (3, N'Sports shoes', N'For Sports men', N'banner-2.jpg', N'20% Off', 2)
SET IDENTITY_INSERT [dbo].[SportOffs] OFF
GO
SET IDENTITY_INSERT [dbo].[UserContacts] ON 

INSERT [dbo].[UserContacts] ([Id], [AppUserId], [FullName], [Phone], [Email], [Subject], [Text]) VALUES (1, NULL, N'Khalid Suleymanov', N'0774690703', N'khalid@gmail.com', N'Gozel kitabdir', N'Men ve qardasim bunu beyendi')
SET IDENTITY_INSERT [dbo].[UserContacts] OFF
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetRoleClaims_RoleId]    Script Date: 17.07.2023 20:48:28 ******/
CREATE NONCLUSTERED INDEX [IX_AspNetRoleClaims_RoleId] ON [dbo].[AspNetRoleClaims]
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [RoleNameIndex]    Script Date: 17.07.2023 20:48:28 ******/
CREATE UNIQUE NONCLUSTERED INDEX [RoleNameIndex] ON [dbo].[AspNetRoles]
(
	[NormalizedName] ASC
)
WHERE ([NormalizedName] IS NOT NULL)
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetUserClaims_UserId]    Script Date: 17.07.2023 20:48:28 ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUserClaims_UserId] ON [dbo].[AspNetUserClaims]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetUserLogins_UserId]    Script Date: 17.07.2023 20:48:28 ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUserLogins_UserId] ON [dbo].[AspNetUserLogins]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetUserRoles_RoleId]    Script Date: 17.07.2023 20:48:28 ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUserRoles_RoleId] ON [dbo].[AspNetUserRoles]
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [EmailIndex]    Script Date: 17.07.2023 20:48:28 ******/
CREATE NONCLUSTERED INDEX [EmailIndex] ON [dbo].[AspNetUsers]
(
	[NormalizedEmail] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UserNameIndex]    Script Date: 17.07.2023 20:48:28 ******/
CREATE UNIQUE NONCLUSTERED INDEX [UserNameIndex] ON [dbo].[AspNetUsers]
(
	[NormalizedUserName] ASC
)
WHERE ([NormalizedUserName] IS NOT NULL)
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_BasketItems_AppUserId]    Script Date: 17.07.2023 20:48:28 ******/
CREATE NONCLUSTERED INDEX [IX_BasketItems_AppUserId] ON [dbo].[BasketItems]
(
	[AppUserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_BasketItems_ProductId]    Script Date: 17.07.2023 20:48:28 ******/
CREATE NONCLUSTERED INDEX [IX_BasketItems_ProductId] ON [dbo].[BasketItems]
(
	[ProductId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_Images_ProductId]    Script Date: 17.07.2023 20:48:28 ******/
CREATE NONCLUSTERED INDEX [IX_Images_ProductId] ON [dbo].[Images]
(
	[ProductId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_OrderItems_OrderId]    Script Date: 17.07.2023 20:48:28 ******/
CREATE NONCLUSTERED INDEX [IX_OrderItems_OrderId] ON [dbo].[OrderItems]
(
	[OrderId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_OrderItems_ProductId]    Script Date: 17.07.2023 20:48:28 ******/
CREATE NONCLUSTERED INDEX [IX_OrderItems_ProductId] ON [dbo].[OrderItems]
(
	[ProductId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_Orders_AppUserId]    Script Date: 17.07.2023 20:48:28 ******/
CREATE NONCLUSTERED INDEX [IX_Orders_AppUserId] ON [dbo].[Orders]
(
	[AppUserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_ProductReviews_AppUserId]    Script Date: 17.07.2023 20:48:28 ******/
CREATE NONCLUSTERED INDEX [IX_ProductReviews_AppUserId] ON [dbo].[ProductReviews]
(
	[AppUserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_ProductReviews_ProductId]    Script Date: 17.07.2023 20:48:28 ******/
CREATE NONCLUSTERED INDEX [IX_ProductReviews_ProductId] ON [dbo].[ProductReviews]
(
	[ProductId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_Products_BrandId]    Script Date: 17.07.2023 20:48:28 ******/
CREATE NONCLUSTERED INDEX [IX_Products_BrandId] ON [dbo].[Products]
(
	[BrandId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_Products_CategoryId]    Script Date: 17.07.2023 20:48:28 ******/
CREATE NONCLUSTERED INDEX [IX_Products_CategoryId] ON [dbo].[Products]
(
	[CategoryId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_Products_ColorId]    Script Date: 17.07.2023 20:48:28 ******/
CREATE NONCLUSTERED INDEX [IX_Products_ColorId] ON [dbo].[Products]
(
	[ColorId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_ProductSizes_SizeId]    Script Date: 17.07.2023 20:48:28 ******/
CREATE NONCLUSTERED INDEX [IX_ProductSizes_SizeId] ON [dbo].[ProductSizes]
(
	[SizeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_UserContacts_AppUserId]    Script Date: 17.07.2023 20:48:28 ******/
CREATE NONCLUSTERED INDEX [IX_UserContacts_AppUserId] ON [dbo].[UserContacts]
(
	[AppUserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Features] ADD  DEFAULT (N'') FOR [BackgroundColor]
GO
ALTER TABLE [dbo].[Products] ADD  DEFAULT (CONVERT([bit],(0))) FOR [IsNew]
GO
ALTER TABLE [dbo].[Products] ADD  DEFAULT (CONVERT([bit],(0))) FOR [IsDeleted]
GO
ALTER TABLE [dbo].[Products] ADD  DEFAULT (CONVERT([tinyint],(0))) FOR [Rate]
GO
ALTER TABLE [dbo].[Sliders] ADD  DEFAULT (N'') FOR [Title1]
GO
ALTER TABLE [dbo].[Sliders] ADD  DEFAULT (N'') FOR [Title2]
GO
ALTER TABLE [dbo].[Sliders] ADD  DEFAULT (N'') FOR [Desc]
GO
ALTER TABLE [dbo].[Sliders] ADD  DEFAULT (N'') FOR [BtnText]
GO
ALTER TABLE [dbo].[Sliders] ADD  DEFAULT (N'') FOR [BtnUrl]
GO
ALTER TABLE [dbo].[SportOffs] ADD  DEFAULT (CONVERT([tinyint],(0))) FOR [Order]
GO
ALTER TABLE [dbo].[AspNetRoleClaims]  WITH CHECK ADD  CONSTRAINT [FK_AspNetRoleClaims_AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetRoleClaims] CHECK CONSTRAINT [FK_AspNetRoleClaims_AspNetRoles_RoleId]
GO
ALTER TABLE [dbo].[AspNetUserClaims]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserClaims_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserClaims] CHECK CONSTRAINT [FK_AspNetUserClaims_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserLogins]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserLogins_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserLogins] CHECK CONSTRAINT [FK_AspNetUserLogins_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserRoles_AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_AspNetUserRoles_AspNetRoles_RoleId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserRoles_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_AspNetUserRoles_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserTokens]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserTokens_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserTokens] CHECK CONSTRAINT [FK_AspNetUserTokens_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[BasketItems]  WITH CHECK ADD  CONSTRAINT [FK_BasketItems_AspNetUsers_AppUserId] FOREIGN KEY([AppUserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[BasketItems] CHECK CONSTRAINT [FK_BasketItems_AspNetUsers_AppUserId]
GO
ALTER TABLE [dbo].[BasketItems]  WITH CHECK ADD  CONSTRAINT [FK_BasketItems_Products_ProductId] FOREIGN KEY([ProductId])
REFERENCES [dbo].[Products] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[BasketItems] CHECK CONSTRAINT [FK_BasketItems_Products_ProductId]
GO
ALTER TABLE [dbo].[Images]  WITH CHECK ADD  CONSTRAINT [FK_Images_Products_ProductId] FOREIGN KEY([ProductId])
REFERENCES [dbo].[Products] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Images] CHECK CONSTRAINT [FK_Images_Products_ProductId]
GO
ALTER TABLE [dbo].[OrderItems]  WITH CHECK ADD  CONSTRAINT [FK_OrderItems_Orders_OrderId] FOREIGN KEY([OrderId])
REFERENCES [dbo].[Orders] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[OrderItems] CHECK CONSTRAINT [FK_OrderItems_Orders_OrderId]
GO
ALTER TABLE [dbo].[OrderItems]  WITH CHECK ADD  CONSTRAINT [FK_OrderItems_Products_ProductId] FOREIGN KEY([ProductId])
REFERENCES [dbo].[Products] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[OrderItems] CHECK CONSTRAINT [FK_OrderItems_Products_ProductId]
GO
ALTER TABLE [dbo].[Orders]  WITH CHECK ADD  CONSTRAINT [FK_Orders_AspNetUsers_AppUserId] FOREIGN KEY([AppUserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[Orders] CHECK CONSTRAINT [FK_Orders_AspNetUsers_AppUserId]
GO
ALTER TABLE [dbo].[ProductReviews]  WITH CHECK ADD  CONSTRAINT [FK_ProductReviews_AspNetUsers_AppUserId] FOREIGN KEY([AppUserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[ProductReviews] CHECK CONSTRAINT [FK_ProductReviews_AspNetUsers_AppUserId]
GO
ALTER TABLE [dbo].[ProductReviews]  WITH CHECK ADD  CONSTRAINT [FK_ProductReviews_Products_ProductId] FOREIGN KEY([ProductId])
REFERENCES [dbo].[Products] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ProductReviews] CHECK CONSTRAINT [FK_ProductReviews_Products_ProductId]
GO
ALTER TABLE [dbo].[Products]  WITH CHECK ADD  CONSTRAINT [FK_Products_Brands_BrandId] FOREIGN KEY([BrandId])
REFERENCES [dbo].[Brands] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Products] CHECK CONSTRAINT [FK_Products_Brands_BrandId]
GO
ALTER TABLE [dbo].[Products]  WITH CHECK ADD  CONSTRAINT [FK_Products_Categories_CategoryId] FOREIGN KEY([CategoryId])
REFERENCES [dbo].[Categories] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Products] CHECK CONSTRAINT [FK_Products_Categories_CategoryId]
GO
ALTER TABLE [dbo].[Products]  WITH CHECK ADD  CONSTRAINT [FK_Products_Colors_ColorId] FOREIGN KEY([ColorId])
REFERENCES [dbo].[Colors] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Products] CHECK CONSTRAINT [FK_Products_Colors_ColorId]
GO
ALTER TABLE [dbo].[ProductSizes]  WITH CHECK ADD  CONSTRAINT [FK_ProductSizes_Products_ProductId] FOREIGN KEY([ProductId])
REFERENCES [dbo].[Products] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ProductSizes] CHECK CONSTRAINT [FK_ProductSizes_Products_ProductId]
GO
ALTER TABLE [dbo].[ProductSizes]  WITH CHECK ADD  CONSTRAINT [FK_ProductSizes_Sizes_SizeId] FOREIGN KEY([SizeId])
REFERENCES [dbo].[Sizes] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ProductSizes] CHECK CONSTRAINT [FK_ProductSizes_Sizes_SizeId]
GO
ALTER TABLE [dbo].[UserContacts]  WITH CHECK ADD  CONSTRAINT [FK_UserContacts_AspNetUsers_AppUserId] FOREIGN KEY([AppUserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[UserContacts] CHECK CONSTRAINT [FK_UserContacts_AspNetUsers_AppUserId]
GO
USE [master]
GO
ALTER DATABASE [FinalProject] SET  READ_WRITE 
GO
