USE [master]
GO
/****** Object:  Database [DATABASE_WEB_JAVA4]    Script Date: 6/6/2022 8:34:00 AM ******/
CREATE DATABASE [DATABASE_WEB_JAVA4] 
GO
use [DATABASE_WEB_JAVA4] 
ALTER DATABASE [DATABASE_WEB_JAVA4] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [DATABASE_WEB_JAVA4] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [DATABASE_WEB_JAVA4] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [DATABASE_WEB_JAVA4] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [DATABASE_WEB_JAVA4] SET ARITHABORT OFF 
GO
ALTER DATABASE [DATABASE_WEB_JAVA4] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [DATABASE_WEB_JAVA4] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [DATABASE_WEB_JAVA4] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [DATABASE_WEB_JAVA4] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [DATABASE_WEB_JAVA4] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [DATABASE_WEB_JAVA4] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [DATABASE_WEB_JAVA4] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [DATABASE_WEB_JAVA4] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [DATABASE_WEB_JAVA4] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [DATABASE_WEB_JAVA4] SET  ENABLE_BROKER 
GO
ALTER DATABASE [DATABASE_WEB_JAVA4] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [DATABASE_WEB_JAVA4] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [DATABASE_WEB_JAVA4] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [DATABASE_WEB_JAVA4] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [DATABASE_WEB_JAVA4] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [DATABASE_WEB_JAVA4] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [DATABASE_WEB_JAVA4] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [DATABASE_WEB_JAVA4] SET  MULTI_USER 
GO
ALTER DATABASE [DATABASE_WEB_JAVA4] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [DATABASE_WEB_JAVA4] SET DB_CHAINING OFF 
GO
USE [DATABASE_WEB_JAVA4]
GO
/****** Object:  Table [dbo].[DANHMUC]    Script Date: 6/6/2022 8:34:00 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DANHMUC](
	[MADM] [varchar](10) NOT NULL,
	[TENDANHMUC] [nvarchar](20) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[MADM] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[GIOHANG]    Script Date: 6/6/2022 8:34:00 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GIOHANG](
	[IDGIOHANG] [int] IDENTITY(1,1) NOT NULL,
	[USERID] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[IDGIOHANG] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[GIOHANG_CT]    Script Date: 6/6/2022 8:34:00 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GIOHANG_CT](
	[IDCHITIET] [int] IDENTITY(1,1) NOT NULL,
	[IDGIOHANG] [int] NOT NULL,
	[MASP] [int] NOT NULL,
	[SOLUONG] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[IDCHITIET] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HOADON]    Script Date: 6/6/2022 8:34:00 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HOADON](
	[IDHD] [int] IDENTITY(10000,1) NOT NULL,
	[USERID] [int] NOT NULL,
	[DIACHI] [nvarchar](max) NOT NULL,
	[PHONE] [nvarchar](10) NOT NULL,
	[NGAYTAO] [datetime] NOT NULL,
	[THANHTIEN] float NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[IDHD] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HOADON_CHITIET]    Script Date: 6/6/2022 8:34:00 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HOADON_CHITIET](
	[ID_HDCT] [int] IDENTITY(1,1) NOT NULL,
	[MASP] [int] NOT NULL,
	[MAHD] [int] NOT NULL,
	[SOLUONG] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[ID_HDCT] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SANPHAM]    Script Date: 6/6/2022 8:34:00 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SANPHAM](
	[MASP] [int] IDENTITY(100,1) NOT NULL,
	[TENSP] [nvarchar](50) NOT NULL,
	[DANHMUC] [varchar](10) NOT NULL,
	[HINH] [nvarchar](max) NULL,
	[MOTA] [nvarchar](max) NULL,
	[GIASP] [decimal](8, 3) NOT NULL,
	[GIAMGIA] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[MASP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[USERS]    Script Date: 6/6/2022 8:34:00 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[USERS](
	[USERID] [int] IDENTITY(1000,1) NOT NULL,
	[HOTEN] [nvarchar](50) NOT NULL,
	[PASSWORD] [varchar](20) NOT NULL,
	[EMAIL] [varchar](50) NOT NULL,
	[ROLE] [bit] NOT NULL,
	[PHONE] [varchar](10) NOT NULL,
	[DIACHI] [nvarchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[USERID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[YEUTHICH]    Script Date: 6/6/2022 8:34:00 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[YEUTHICH](
	[YeuThichID] [int] IDENTITY(10000,1) NOT NULL,
	[MASP] [int] NOT NULL,
	[USERID] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[YeuThichID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[DANHMUC] ([MADM], [TENDANHMUC]) VALUES (N'cfcb', N'Cà Phê Cold Brew')
INSERT [dbo].[DANHMUC] ([MADM], [TENDANHMUC]) VALUES (N'coffee', N'Cà Phê Việt Nam')
INSERT [dbo].[DANHMUC] ([MADM], [TENDANHMUC]) VALUES (N'cream', N'Kem')
INSERT [dbo].[DANHMUC] ([MADM], [TENDANHMUC]) VALUES (N'daxay', N'Đá xay')
INSERT [dbo].[DANHMUC] ([MADM], [TENDANHMUC]) VALUES (N'mcake', N'Bánh mặn')
INSERT [dbo].[DANHMUC] ([MADM], [TENDANHMUC]) VALUES (N'ncake', N'Bánh ngọt')
INSERT [dbo].[DANHMUC] ([MADM], [TENDANHMUC]) VALUES (N'smth', N'Sinh tố')
INSERT [dbo].[DANHMUC] ([MADM], [TENDANHMUC]) VALUES (N'tea', N'Trà và trà trái cây')
INSERT [dbo].[DANHMUC] ([MADM], [TENDANHMUC]) VALUES (N'trasua', N'Trà sữa')
GO
SET IDENTITY_INSERT [dbo].[HOADON] ON 

INSERT [dbo].[HOADON] ([IDHD], [USERID], [DIACHI], [PHONE], [NGAYTAO], [THANHTIEN]) VALUES (10000, 1010, N'', N'', CAST(N'2022-01-02T13:20:00.000' AS DateTime), CAST(0.000 AS Decimal(8, 3)))
INSERT [dbo].[HOADON] ([IDHD], [USERID], [DIACHI], [PHONE], [NGAYTAO], [THANHTIEN]) VALUES (10001, 1010, N'', N'', CAST(N'2022-04-02T20:20:00.000' AS DateTime), CAST(0.000 AS Decimal(8, 3)))
INSERT [dbo].[HOADON] ([IDHD], [USERID], [DIACHI], [PHONE], [NGAYTAO], [THANHTIEN]) VALUES (10002, 1011, N'', N'', CAST(N'2022-05-20T20:20:00.000' AS DateTime), CAST(0.000 AS Decimal(8, 3)))
INSERT [dbo].[HOADON] ([IDHD], [USERID], [DIACHI], [PHONE], [NGAYTAO], [THANHTIEN]) VALUES (10003, 1012, N'', N'', CAST(N'2022-04-21T20:20:00.000' AS DateTime), CAST(0.000 AS Decimal(8, 3)))
INSERT [dbo].[HOADON] ([IDHD], [USERID], [DIACHI], [PHONE], [NGAYTAO], [THANHTIEN]) VALUES (10004, 1012, N'', N'', CAST(N'2022-03-11T10:20:00.000' AS DateTime), CAST(0.000 AS Decimal(8, 3)))
INSERT [dbo].[HOADON] ([IDHD], [USERID], [DIACHI], [PHONE], [NGAYTAO], [THANHTIEN]) VALUES (10005, 1014, N'', N'', CAST(N'2022-04-28T09:20:00.000' AS DateTime), CAST(0.000 AS Decimal(8, 3)))
INSERT [dbo].[HOADON] ([IDHD], [USERID], [DIACHI], [PHONE], [NGAYTAO], [THANHTIEN]) VALUES (10006, 1016, N'', N'', CAST(N'2022-05-15T08:25:00.000' AS DateTime), CAST(0.000 AS Decimal(8, 3)))
INSERT [dbo].[HOADON] ([IDHD], [USERID], [DIACHI], [PHONE], [NGAYTAO], [THANHTIEN]) VALUES (10007, 1017, N'', N'', CAST(N'2022-04-14T20:10:00.000' AS DateTime), CAST(0.000 AS Decimal(8, 3)))
INSERT [dbo].[HOADON] ([IDHD], [USERID], [DIACHI], [PHONE], [NGAYTAO], [THANHTIEN]) VALUES (10008, 1018, N'', N'', CAST(N'2022-03-12T11:20:00.000' AS DateTime), CAST(0.000 AS Decimal(8, 3)))
INSERT [dbo].[HOADON] ([IDHD], [USERID], [DIACHI], [PHONE], [NGAYTAO], [THANHTIEN]) VALUES (10009, 1018, N'', N'', CAST(N'2022-04-22T15:07:00.000' AS DateTime), CAST(0.000 AS Decimal(8, 3)))
INSERT [dbo].[HOADON] ([IDHD], [USERID], [DIACHI], [PHONE], [NGAYTAO], [THANHTIEN]) VALUES (10010, 1019, N'', N'', CAST(N'2022-04-02T20:20:00.000' AS DateTime), CAST(0.000 AS Decimal(8, 3)))
INSERT [dbo].[HOADON] ([IDHD], [USERID], [DIACHI], [PHONE], [NGAYTAO], [THANHTIEN]) VALUES (10011, 1020, N'', N'', CAST(N'2022-04-02T20:20:00.000' AS DateTime), CAST(0.000 AS Decimal(8, 3)))
SET IDENTITY_INSERT [dbo].[HOADON] OFF
GO
SET IDENTITY_INSERT [dbo].[HOADON_CHITIET] ON 

INSERT [dbo].[HOADON_CHITIET] ([ID_HDCT], [MASP], [MAHD], [SOLUONG]) VALUES (1, 100, 10000, 5)
INSERT [dbo].[HOADON_CHITIET] ([ID_HDCT], [MASP], [MAHD], [SOLUONG]) VALUES (2, 102, 10001, 20)
INSERT [dbo].[HOADON_CHITIET] ([ID_HDCT], [MASP], [MAHD], [SOLUONG]) VALUES (5, 103, 10011, 10)
INSERT [dbo].[HOADON_CHITIET] ([ID_HDCT], [MASP], [MAHD], [SOLUONG]) VALUES (6, 138, 10003, 2)
INSERT [dbo].[HOADON_CHITIET] ([ID_HDCT], [MASP], [MAHD], [SOLUONG]) VALUES (8, 141, 10000, 11)
INSERT [dbo].[HOADON_CHITIET] ([ID_HDCT], [MASP], [MAHD], [SOLUONG]) VALUES (9, 124, 10003, 2)
INSERT [dbo].[HOADON_CHITIET] ([ID_HDCT], [MASP], [MAHD], [SOLUONG]) VALUES (10, 100, 10003, 13)
INSERT [dbo].[HOADON_CHITIET] ([ID_HDCT], [MASP], [MAHD], [SOLUONG]) VALUES (11, 125, 10002, 10)
SET IDENTITY_INSERT [dbo].[HOADON_CHITIET] OFF
GO
SET IDENTITY_INSERT [dbo].[SANPHAM] ON 

INSERT [dbo].[SANPHAM] ([MASP], [TENSP], [DANHMUC], [HINH], [MOTA], [GIASP], [GIAMGIA]) VALUES (100, N'Cà phê sữa đá', N'coffee', N'Grass-Jelly-Milk-Coffee.png', N'', CAST(27000.000 AS Decimal(8, 3)), 0)
INSERT [dbo].[SANPHAM] ([MASP], [TENSP], [DANHMUC], [HINH], [MOTA], [GIASP], [GIAMGIA]) VALUES (101, N'Ngũ cốc kem cà phê', N'coffee', N'ngu-coc-kem-cafe.png', N'', CAST(30000.000 AS Decimal(8, 3)), 0)
INSERT [dbo].[SANPHAM] ([MASP], [TENSP], [DANHMUC], [HINH], [MOTA], [GIASP], [GIAMGIA]) VALUES (102, N'Ngũ cốc kem cà phê', N'coffee', N'ngu-coc-kem-cafe.png', N'', CAST(30000.000 AS Decimal(8, 3)), 0)
INSERT [dbo].[SANPHAM] ([MASP], [TENSP], [DANHMUC], [HINH], [MOTA], [GIASP], [GIAMGIA]) VALUES (103, N'Cà phê hoàng gia', N'coffee', N'Royal-Pearl-Milk-Coffee.png', N'', CAST(30000.000 AS Decimal(8, 3)), 0)
INSERT [dbo].[SANPHAM] ([MASP], [TENSP], [DANHMUC], [HINH], [MOTA], [GIASP], [GIAMGIA]) VALUES (104, N'Trà ngũ cốc kem cà phê', N'coffee', N'tra-ngucoc-kem-cafe.png', N'', CAST(30000.000 AS Decimal(8, 3)), 5)
INSERT [dbo].[SANPHAM] ([MASP], [TENSP], [DANHMUC], [HINH], [MOTA], [GIASP], [GIAMGIA]) VALUES (105, N'Latte', N'coffee', N'tra-ngucoc-kem-cafe.png', N'', CAST(30000.000 AS Decimal(8, 3)), 5)
INSERT [dbo].[SANPHAM] ([MASP], [TENSP], [DANHMUC], [HINH], [MOTA], [GIASP], [GIAMGIA]) VALUES (106, N'Cappuccino', N'coffee', N'cappuccino.jpg', N'', CAST(35000.000 AS Decimal(8, 3)), 10)
INSERT [dbo].[SANPHAM] ([MASP], [TENSP], [DANHMUC], [HINH], [MOTA], [GIASP], [GIAMGIA]) VALUES (107, N'Frappuccino', N'coffee', N'drink_sample.png', N'', CAST(35000.000 AS Decimal(8, 3)), 10)
INSERT [dbo].[SANPHAM] ([MASP], [TENSP], [DANHMUC], [HINH], [MOTA], [GIASP], [GIAMGIA]) VALUES (108, N'Americano', N'cfcb', N'drink_sample.png', N'', CAST(33000.000 AS Decimal(8, 3)), 0)
INSERT [dbo].[SANPHAM] ([MASP], [TENSP], [DANHMUC], [HINH], [MOTA], [GIASP], [GIAMGIA]) VALUES (109, N'Cold Brew Kem Caramel Muối', N'cfcb', N'salted-caramel.jpg', N'', CAST(45000.000 AS Decimal(8, 3)), 5)
INSERT [dbo].[SANPHAM] ([MASP], [TENSP], [DANHMUC], [HINH], [MOTA], [GIASP], [GIAMGIA]) VALUES (110, N'Espresso Đá', N'cfcb', N'Espresso_hot.jpg', N'', CAST(40000.000 AS Decimal(8, 3)), 0)
INSERT [dbo].[SANPHAM] ([MASP], [TENSP], [DANHMUC], [HINH], [MOTA], [GIASP], [GIAMGIA]) VALUES (111, N'Espresso Nóng', N'cfcb', N'Espresso_cold.jpg', N'', CAST(25000.000 AS Decimal(8, 3)), 10)
INSERT [dbo].[SANPHAM] ([MASP], [TENSP], [DANHMUC], [HINH], [MOTA], [GIASP], [GIAMGIA]) VALUES (112, N'Macchiato Đá', N'cfcb', N'drink_sample.png', N'', CAST(50000.000 AS Decimal(8, 3)), 0)
INSERT [dbo].[SANPHAM] ([MASP], [TENSP], [DANHMUC], [HINH], [MOTA], [GIASP], [GIAMGIA]) VALUES (113, N'Espresso kem sữa hạnh nhân', N'cfcb', N'espresso_oat.jpg', N'', CAST(55000.000 AS Decimal(8, 3)), 5)
INSERT [dbo].[SANPHAM] ([MASP], [TENSP], [DANHMUC], [HINH], [MOTA], [GIASP], [GIAMGIA]) VALUES (114, N'Cold Brew Vanilla', N'cfcb', N'drink_sample.png', N'', CAST(48000.000 AS Decimal(8, 3)), 0)
INSERT [dbo].[SANPHAM] ([MASP], [TENSP], [DANHMUC], [HINH], [MOTA], [GIASP], [GIAMGIA]) VALUES (115, N'Cold Brew Kem Chocolate', N'cfcb', N'drink_sample.png', N'', CAST(50000.000 AS Decimal(8, 3)), 0)
INSERT [dbo].[SANPHAM] ([MASP], [TENSP], [DANHMUC], [HINH], [MOTA], [GIASP], [GIAMGIA]) VALUES (116, N'Trà dứa nhiệt đới', N'tea', N'tra-dua-nhietdoi.png', N'', CAST(33000.000 AS Decimal(8, 3)), 0)
INSERT [dbo].[SANPHAM] ([MASP], [TENSP], [DANHMUC], [HINH], [MOTA], [GIASP], [GIAMGIA]) VALUES (117, N'Trà ô long phô mai', N'tea', N'tra-olong-phomai.png', N'', CAST(35000.000 AS Decimal(8, 3)), 10)
INSERT [dbo].[SANPHAM] ([MASP], [TENSP], [DANHMUC], [HINH], [MOTA], [GIASP], [GIAMGIA]) VALUES (118, N'Trà xoài bưởi hồng', N'tea', N'tra-xoai-buoihong.png', N'', CAST(35000.000 AS Decimal(8, 3)), 10)
INSERT [dbo].[SANPHAM] ([MASP], [TENSP], [DANHMUC], [HINH], [MOTA], [GIASP], [GIAMGIA]) VALUES (119, N'Trà xoài bưởi hồng phô mai', N'tea', N'tra-xoai-buoihong-phomai.png', N'', CAST(40000.000 AS Decimal(8, 3)), 15)
INSERT [dbo].[SANPHAM] ([MASP], [TENSP], [DANHMUC], [HINH], [MOTA], [GIASP], [GIAMGIA]) VALUES (120, N'Trà vải hoa hồng', N'tea', N'travai.jpg', N'', CAST(40000.000 AS Decimal(8, 3)), 10)
INSERT [dbo].[SANPHAM] ([MASP], [TENSP], [DANHMUC], [HINH], [MOTA], [GIASP], [GIAMGIA]) VALUES (121, N'Trà đào Milk Foam', N'tea', N'tradao_milk.jpg', N'', CAST(40000.000 AS Decimal(8, 3)), 10)
INSERT [dbo].[SANPHAM] ([MASP], [TENSP], [DANHMUC], [HINH], [MOTA], [GIASP], [GIAMGIA]) VALUES (122, N'Trà chanh đào nhiệt đới', N'tea', N'chanh-dao.jpg', N'', CAST(45000.000 AS Decimal(8, 3)), 0)
INSERT [dbo].[SANPHAM] ([MASP], [TENSP], [DANHMUC], [HINH], [MOTA], [GIASP], [GIAMGIA]) VALUES (123, N'Trà cam bưởi lấp lánh', N'tea', N'drink_sample.png', N'', CAST(45000.000 AS Decimal(8, 3)), 0)
INSERT [dbo].[SANPHAM] ([MASP], [TENSP], [DANHMUC], [HINH], [MOTA], [GIASP], [GIAMGIA]) VALUES (124, N'Trà quất nha đam', N'tea', N'tra-quat.jpg', N'', CAST(35000.000 AS Decimal(8, 3)), 5)
INSERT [dbo].[SANPHAM] ([MASP], [TENSP], [DANHMUC], [HINH], [MOTA], [GIASP], [GIAMGIA]) VALUES (125, N'Trà sữa hoàng gia', N'trasua', N'tra-sua-hoanggia.jpg', N'', CAST(30000.000 AS Decimal(8, 3)), 5)
INSERT [dbo].[SANPHAM] ([MASP], [TENSP], [DANHMUC], [HINH], [MOTA], [GIASP], [GIAMGIA]) VALUES (126, N'Trà sữa panda', N'trasua', N'tra-sua-panda.jpg', N'', CAST(30000.000 AS Decimal(8, 3)), 5)
INSERT [dbo].[SANPHAM] ([MASP], [TENSP], [DANHMUC], [HINH], [MOTA], [GIASP], [GIAMGIA]) VALUES (127, N'Trà sữa panda', N'trasua', N'tra-sua-panda.jpg', N'', CAST(30000.000 AS Decimal(8, 3)), 5)
INSERT [dbo].[SANPHAM] ([MASP], [TENSP], [DANHMUC], [HINH], [MOTA], [GIASP], [GIAMGIA]) VALUES (128, N'Mousse Đào', N'ncake', N'mousse-dao.png', N'', CAST(30000.000 AS Decimal(8, 3)), 0)
INSERT [dbo].[SANPHAM] ([MASP], [TENSP], [DANHMUC], [HINH], [MOTA], [GIASP], [GIAMGIA]) VALUES (129, N'Mousse Chanh Dây', N'ncake', N'mousse-chanh.jpg', N'', CAST(30000.000 AS Decimal(8, 3)), 0)
INSERT [dbo].[SANPHAM] ([MASP], [TENSP], [DANHMUC], [HINH], [MOTA], [GIASP], [GIAMGIA]) VALUES (130, N'Mousse Cacao', N'ncake', N'mousse-choco.jpg', N'', CAST(15000.000 AS Decimal(8, 3)), 0)
INSERT [dbo].[SANPHAM] ([MASP], [TENSP], [DANHMUC], [HINH], [MOTA], [GIASP], [GIAMGIA]) VALUES (131, N'Bánh phô mai chanh dây', N'ncake', N'food_sample.png', N'', CAST(30000.000 AS Decimal(8, 3)), 0)
INSERT [dbo].[SANPHAM] ([MASP], [TENSP], [DANHMUC], [HINH], [MOTA], [GIASP], [GIAMGIA]) VALUES (132, N'Phô mai cà phê', N'ncake', N'food_sample.png', N'', CAST(30000.000 AS Decimal(8, 3)), 0)
INSERT [dbo].[SANPHAM] ([MASP], [TENSP], [DANHMUC], [HINH], [MOTA], [GIASP], [GIAMGIA]) VALUES (133, N'Tiramisu', N'ncake', N'tiramisu.jpg', N'', CAST(30000.000 AS Decimal(8, 3)), 0)
INSERT [dbo].[SANPHAM] ([MASP], [TENSP], [DANHMUC], [HINH], [MOTA], [GIASP], [GIAMGIA]) VALUES (134, N'Tart trứng', N'ncake', N'tart.jpg', N'', CAST(45000.000 AS Decimal(8, 3)), 0)
INSERT [dbo].[SANPHAM] ([MASP], [TENSP], [DANHMUC], [HINH], [MOTA], [GIASP], [GIAMGIA]) VALUES (135, N'Hot dog', N'mcake', N'hotdog.jpg', N'', CAST(25000.000 AS Decimal(8, 3)), 0)
INSERT [dbo].[SANPHAM] ([MASP], [TENSP], [DANHMUC], [HINH], [MOTA], [GIASP], [GIAMGIA]) VALUES (136, N'Sandwich', N'mcake', N'sandwich.jpg', N'', CAST(35000.000 AS Decimal(8, 3)), 5)
INSERT [dbo].[SANPHAM] ([MASP], [TENSP], [DANHMUC], [HINH], [MOTA], [GIASP], [GIAMGIA]) VALUES (137, N'Panini', N'mcake', N'panini.jpg', N'', CAST(35000.000 AS Decimal(8, 3)), 5)
INSERT [dbo].[SANPHAM] ([MASP], [TENSP], [DANHMUC], [HINH], [MOTA], [GIASP], [GIAMGIA]) VALUES (138, N'Bánh mì nướng tỏi', N'mcake', N'banh-mi-toi.jpg', N'', CAST(45000.000 AS Decimal(8, 3)), 5)
INSERT [dbo].[SANPHAM] ([MASP], [TENSP], [DANHMUC], [HINH], [MOTA], [GIASP], [GIAMGIA]) VALUES (139, N'Bánh mì thịt nướng', N'mcake', N'banh-mi.jpg', N'', CAST(25000.000 AS Decimal(8, 3)), 5)
INSERT [dbo].[SANPHAM] ([MASP], [TENSP], [DANHMUC], [HINH], [MOTA], [GIASP], [GIAMGIA]) VALUES (140, N'Kem thuyền chuối', N'cream', N'banana-split.jpg', N'', CAST(55000.000 AS Decimal(8, 3)), 0)
INSERT [dbo].[SANPHAM] ([MASP], [TENSP], [DANHMUC], [HINH], [MOTA], [GIASP], [GIAMGIA]) VALUES (141, N'Kem chocolate bạc hà ', N'cream', N'ic-mint.jpg', N'', CAST(60000.000 AS Decimal(8, 3)), 0)
INSERT [dbo].[SANPHAM] ([MASP], [TENSP], [DANHMUC], [HINH], [MOTA], [GIASP], [GIAMGIA]) VALUES (142, N'Kem cheesecake việt quất', N'cream', N'cheesecake-viet-quat.jpg', N'', CAST(45000.000 AS Decimal(8, 3)), 0)
INSERT [dbo].[SANPHAM] ([MASP], [TENSP], [DANHMUC], [HINH], [MOTA], [GIASP], [GIAMGIA]) VALUES (143, N'Kem cầu vồng', N'cream', N'food_sample.png', N'', CAST(55000.000 AS Decimal(8, 3)), 0)
INSERT [dbo].[SANPHAM] ([MASP], [TENSP], [DANHMUC], [HINH], [MOTA], [GIASP], [GIAMGIA]) VALUES (144, N'Đá xay matcha', N'daxay', N'daxay-matcha.jpg', N'', CAST(55000.000 AS Decimal(8, 3)), 0)
INSERT [dbo].[SANPHAM] ([MASP], [TENSP], [DANHMUC], [HINH], [MOTA], [GIASP], [GIAMGIA]) VALUES (145, N'Đá xay chocolate', N'daxay', N'daxay-coffee.jpg', N'', CAST(40000.000 AS Decimal(8, 3)), 10)
INSERT [dbo].[SANPHAM] ([MASP], [TENSP], [DANHMUC], [HINH], [MOTA], [GIASP], [GIAMGIA]) VALUES (146, N'Sinh tố bơ bền bỉ', N'smth', N'sinhto-bo.jpg', N'', CAST(35000.000 AS Decimal(8, 3)), 0)
INSERT [dbo].[SANPHAM] ([MASP], [TENSP], [DANHMUC], [HINH], [MOTA], [GIASP], [GIAMGIA]) VALUES (147, N'Sinh tố xoài xinh xắn', N'smth', N'sinhto-xoai.jpg', N'', CAST(30000.000 AS Decimal(8, 3)), 5)
INSERT [dbo].[SANPHAM] ([MASP], [TENSP], [DANHMUC], [HINH], [MOTA], [GIASP], [GIAMGIA]) VALUES (148, N'Sinh tố ổi đằm thắm', N'smth', N'sinhto-oi.jpg', N'', CAST(32000.000 AS Decimal(8, 3)), 5)
SET IDENTITY_INSERT [dbo].[SANPHAM] OFF
GO
SET IDENTITY_INSERT [dbo].[USERS] ON 

INSERT [dbo].[USERS] ([USERID], [HOTEN], [PASSWORD], [EMAIL], [ROLE], [PHONE], [DIACHI]) VALUES (1000, N'Huỳnh Văn Vọng', N'lwd6PNBmw', N'vonghuynh@example.com', 1, N'0987122367', N'9 Roxbury Road')
INSERT [dbo].[USERS] ([USERID], [HOTEN], [PASSWORD], [EMAIL], [ROLE], [PHONE], [DIACHI]) VALUES (1001, N'Trần Hoàng Thúy Vân', N'nUfjW8VF0xLX', N'van@4shared.com', 1, N'0467749341', N'34991 Basil Road')
INSERT [dbo].[USERS] ([USERID], [HOTEN], [PASSWORD], [EMAIL], [ROLE], [PHONE], [DIACHI]) VALUES (1002, N'Hoàng Văn Hiếu', N'lwd6PNBmw', N'hieuhoang@example.com', 1, N'0987122369', N'9 Roxbury Road')
INSERT [dbo].[USERS] ([USERID], [HOTEN], [PASSWORD], [EMAIL], [ROLE], [PHONE], [DIACHI]) VALUES (1003, N'Trương Hoàng Long', N'nUfjW8VF0xLX', N'longtruong@example.com', 1, N'0467749314', N'34991 Basil Road')
INSERT [dbo].[USERS] ([USERID], [HOTEN], [PASSWORD], [EMAIL], [ROLE], [PHONE], [DIACHI]) VALUES (1004, N'Wake O''Lagene', N'D28expoK8qyd', N'wolagene2@bloglines.com', 0, N'2414616448', N'6360 John Wall Way')
INSERT [dbo].[USERS] ([USERID], [HOTEN], [PASSWORD], [EMAIL], [ROLE], [PHONE], [DIACHI]) VALUES (1005, N'Dannie Hek', N'fWphrdbk', N'dhek3@joomla.org', 0, N'8284295742', N'64 Rowland Plaza')
INSERT [dbo].[USERS] ([USERID], [HOTEN], [PASSWORD], [EMAIL], [ROLE], [PHONE], [DIACHI]) VALUES (1006, N'Vassili Jarvis', N'g3jgm2XuZ9', N'vjarvis4@nydailynews.com', 0, N'8447278600', N'10842 Lerdahl Hill')
INSERT [dbo].[USERS] ([USERID], [HOTEN], [PASSWORD], [EMAIL], [ROLE], [PHONE], [DIACHI]) VALUES (1007, N'Thornie Cawthron', N'5oV192GN5XV', N'tcawthron5@sun.com', 0, N'8842826352', N'1 Luster Drive')
INSERT [dbo].[USERS] ([USERID], [HOTEN], [PASSWORD], [EMAIL], [ROLE], [PHONE], [DIACHI]) VALUES (1008, N'Ermengarde Lafoy', N'BAHEY8GTkb', N'elafoy6@opera.com', 0, N'9426422773', N'4 Kenwood Lane')
INSERT [dbo].[USERS] ([USERID], [HOTEN], [PASSWORD], [EMAIL], [ROLE], [PHONE], [DIACHI]) VALUES (1009, N'Franni Hanscomb', N'YNZSYYlAzX8', N'fhanscomb7@bbb.org', 0, N'1381486091', N'1 Vermont Way')
INSERT [dbo].[USERS] ([USERID], [HOTEN], [PASSWORD], [EMAIL], [ROLE], [PHONE], [DIACHI]) VALUES (1010, N'Bartel Feveryear', N'Ztl9LO', N'bfeveryear8@dailymail.co.uk', 0, N'6854203449', N'78884 Delladonna Drive')
INSERT [dbo].[USERS] ([USERID], [HOTEN], [PASSWORD], [EMAIL], [ROLE], [PHONE], [DIACHI]) VALUES (1011, N'Shaw Handover', N'viQGCr', N'shandover9@foxnews.com', 0, N'7485518285', N'588 Truax Circle')
INSERT [dbo].[USERS] ([USERID], [HOTEN], [PASSWORD], [EMAIL], [ROLE], [PHONE], [DIACHI]) VALUES (1012, N'Taddeo Soule', N'9VItFnUKUi', N'tsoulea@github.io', 0, N'8868849141', N'25 Mcguire Avenue')
INSERT [dbo].[USERS] ([USERID], [HOTEN], [PASSWORD], [EMAIL], [ROLE], [PHONE], [DIACHI]) VALUES (1013, N'Darcie Ramsbotham', N'PjrAYFBABig', N'dramsbothamb@4shared.com', 0, N'7478499742', N'0029 Monica Pass')
INSERT [dbo].[USERS] ([USERID], [HOTEN], [PASSWORD], [EMAIL], [ROLE], [PHONE], [DIACHI]) VALUES (1014, N'Jo Dockreay', N'MsulmXZXp', N'jdockreayc@domainmarket.com', 0, N'3614122257', N'7583 Superior Circle')
INSERT [dbo].[USERS] ([USERID], [HOTEN], [PASSWORD], [EMAIL], [ROLE], [PHONE], [DIACHI]) VALUES (1015, N'Madelon Birbeck', N'0l9InQ4MH7', N'mbirbeckd@disqus.com', 0, N'2015320889', N'2769 Florence Circle')
INSERT [dbo].[USERS] ([USERID], [HOTEN], [PASSWORD], [EMAIL], [ROLE], [PHONE], [DIACHI]) VALUES (1016, N'Amelia Pardie', N'Qq3LKF', N'apardiee@clickbank.net', 0, N'9716477226', N'79193 Toban Hill')
INSERT [dbo].[USERS] ([USERID], [HOTEN], [PASSWORD], [EMAIL], [ROLE], [PHONE], [DIACHI]) VALUES (1017, N'Jobi Tattoo', N'zofNq2', N'jtattoof@wiley.com', 0, N'9262660767', N'2120 Mesta Lane')
INSERT [dbo].[USERS] ([USERID], [HOTEN], [PASSWORD], [EMAIL], [ROLE], [PHONE], [DIACHI]) VALUES (1018, N'Roddie Titchener', N'EhVBeCpr', N'rtitchenerg@nbcnews.com', 0, N'7543762820', N'47 Tennessee Plaza')
INSERT [dbo].[USERS] ([USERID], [HOTEN], [PASSWORD], [EMAIL], [ROLE], [PHONE], [DIACHI]) VALUES (1019, N'Fanchette Kelley', N'AcQuymx', N'fkelleyh@engadget.com', 0, N'1948968775', N'6762 Hauk Road')
INSERT [dbo].[USERS] ([USERID], [HOTEN], [PASSWORD], [EMAIL], [ROLE], [PHONE], [DIACHI]) VALUES (1020, N'Ronni Sallings', N'7n8cvm', N'rsallingsi@ebay.com', 0, N'2478316899', N'14422 Caliangt Point')
INSERT [dbo].[USERS] ([USERID], [HOTEN], [PASSWORD], [EMAIL], [ROLE], [PHONE], [DIACHI]) VALUES (1021, N'Godart Devonport', N'UNcx37Sa', N'gdevonportj@apache.org', 0, N'6969882646', N'8 Susan Way')
SET IDENTITY_INSERT [dbo].[USERS] OFF
GO
SET IDENTITY_INSERT [dbo].[YEUTHICH] ON 

INSERT [dbo].[YEUTHICH] ([YeuThichID], [MASP], [USERID]) VALUES (10000, 134, 1018)
INSERT [dbo].[YEUTHICH] ([YeuThichID], [MASP], [USERID]) VALUES (10001, 136, 1018)
INSERT [dbo].[YEUTHICH] ([YeuThichID], [MASP], [USERID]) VALUES (10002, 138, 1018)
INSERT [dbo].[YEUTHICH] ([YeuThichID], [MASP], [USERID]) VALUES (10003, 140, 1018)
INSERT [dbo].[YEUTHICH] ([YeuThichID], [MASP], [USERID]) VALUES (10004, 142, 1018)
INSERT [dbo].[YEUTHICH] ([YeuThichID], [MASP], [USERID]) VALUES (10005, 101, 1004)
INSERT [dbo].[YEUTHICH] ([YeuThichID], [MASP], [USERID]) VALUES (10006, 111, 1004)
INSERT [dbo].[YEUTHICH] ([YeuThichID], [MASP], [USERID]) VALUES (10007, 121, 1004)
INSERT [dbo].[YEUTHICH] ([YeuThichID], [MASP], [USERID]) VALUES (10008, 131, 1004)
INSERT [dbo].[YEUTHICH] ([YeuThichID], [MASP], [USERID]) VALUES (10009, 141, 1004)
INSERT [dbo].[YEUTHICH] ([YeuThichID], [MASP], [USERID]) VALUES (10010, 148, 1004)
INSERT [dbo].[YEUTHICH] ([YeuThichID], [MASP], [USERID]) VALUES (10011, 103, 1005)
INSERT [dbo].[YEUTHICH] ([YeuThichID], [MASP], [USERID]) VALUES (10012, 104, 1005)
INSERT [dbo].[YEUTHICH] ([YeuThichID], [MASP], [USERID]) VALUES (10013, 106, 1005)
INSERT [dbo].[YEUTHICH] ([YeuThichID], [MASP], [USERID]) VALUES (10014, 107, 1005)
INSERT [dbo].[YEUTHICH] ([YeuThichID], [MASP], [USERID]) VALUES (10015, 117, 1005)
INSERT [dbo].[YEUTHICH] ([YeuThichID], [MASP], [USERID]) VALUES (10016, 118, 1005)
INSERT [dbo].[YEUTHICH] ([YeuThichID], [MASP], [USERID]) VALUES (10017, 103, 1012)
INSERT [dbo].[YEUTHICH] ([YeuThichID], [MASP], [USERID]) VALUES (10018, 104, 1012)
INSERT [dbo].[YEUTHICH] ([YeuThichID], [MASP], [USERID]) VALUES (10019, 106, 1012)
INSERT [dbo].[YEUTHICH] ([YeuThichID], [MASP], [USERID]) VALUES (10020, 107, 1013)
INSERT [dbo].[YEUTHICH] ([YeuThichID], [MASP], [USERID]) VALUES (10021, 133, 1013)
INSERT [dbo].[YEUTHICH] ([YeuThichID], [MASP], [USERID]) VALUES (10022, 134, 1013)
INSERT [dbo].[YEUTHICH] ([YeuThichID], [MASP], [USERID]) VALUES (10023, 104, 1006)
INSERT [dbo].[YEUTHICH] ([YeuThichID], [MASP], [USERID]) VALUES (10024, 124, 1006)
INSERT [dbo].[YEUTHICH] ([YeuThichID], [MASP], [USERID]) VALUES (10025, 143, 1007)
INSERT [dbo].[YEUTHICH] ([YeuThichID], [MASP], [USERID]) VALUES (10026, 144, 1008)
INSERT [dbo].[YEUTHICH] ([YeuThichID], [MASP], [USERID]) VALUES (10027, 104, 1009)
INSERT [dbo].[YEUTHICH] ([YeuThichID], [MASP], [USERID]) VALUES (10028, 114, 1010)
INSERT [dbo].[YEUTHICH] ([YeuThichID], [MASP], [USERID]) VALUES (10029, 138, 1011)
INSERT [dbo].[YEUTHICH] ([YeuThichID], [MASP], [USERID]) VALUES (10030, 112, 1013)
INSERT [dbo].[YEUTHICH] ([YeuThichID], [MASP], [USERID]) VALUES (10031, 134, 1014)
INSERT [dbo].[YEUTHICH] ([YeuThichID], [MASP], [USERID]) VALUES (10032, 134, 1015)
INSERT [dbo].[YEUTHICH] ([YeuThichID], [MASP], [USERID]) VALUES (10033, 135, 1015)
INSERT [dbo].[YEUTHICH] ([YeuThichID], [MASP], [USERID]) VALUES (10034, 137, 1015)
INSERT [dbo].[YEUTHICH] ([YeuThichID], [MASP], [USERID]) VALUES (10035, 138, 1016)
INSERT [dbo].[YEUTHICH] ([YeuThichID], [MASP], [USERID]) VALUES (10036, 110, 1017)
INSERT [dbo].[YEUTHICH] ([YeuThichID], [MASP], [USERID]) VALUES (10037, 117, 1017)
INSERT [dbo].[YEUTHICH] ([YeuThichID], [MASP], [USERID]) VALUES (10038, 105, 1020)
INSERT [dbo].[YEUTHICH] ([YeuThichID], [MASP], [USERID]) VALUES (10039, 119, 1020)
SET IDENTITY_INSERT [dbo].[YEUTHICH] OFF
GO
/****** Object:  Index [UQ__GIOHANG__7B9E7F341A278360]    Script Date: 6/6/2022 8:34:00 AM ******/
ALTER TABLE [dbo].[GIOHANG] ADD UNIQUE NONCLUSTERED 
(
	[USERID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__USERS__161CF724BE6EA5F3]    Script Date: 6/6/2022 8:34:00 AM ******/
ALTER TABLE [dbo].[USERS] ADD UNIQUE NONCLUSTERED 
(
	[EMAIL] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__USERS__D4FA0A26C27F0AC0]    Script Date: 6/6/2022 8:34:00 AM ******/
ALTER TABLE [dbo].[USERS] ADD UNIQUE NONCLUSTERED 
(
	[PHONE] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[GIOHANG]  WITH CHECK ADD  CONSTRAINT [FK_GIOHANG] FOREIGN KEY([USERID])
REFERENCES [dbo].[USERS] ([USERID])
GO
ALTER TABLE [dbo].[GIOHANG] CHECK CONSTRAINT [FK_GIOHANG]
GO
ALTER TABLE [dbo].[GIOHANG_CT]  WITH CHECK ADD  CONSTRAINT [FK_GIOHANG_CT] FOREIGN KEY([IDGIOHANG])
REFERENCES [dbo].[GIOHANG] ([IDGIOHANG])
GO
ALTER TABLE [dbo].[GIOHANG_CT] CHECK CONSTRAINT [FK_GIOHANG_CT]
GO
ALTER TABLE [dbo].[GIOHANG_CT]  WITH CHECK ADD  CONSTRAINT [FK_GIOHANG_CT2] FOREIGN KEY([MASP])
REFERENCES [dbo].[SANPHAM] ([MASP])
GO
ALTER TABLE [dbo].[GIOHANG_CT] CHECK CONSTRAINT [FK_GIOHANG_CT2]
GO
ALTER TABLE [dbo].[HOADON]  WITH CHECK ADD  CONSTRAINT [FK_HoaDon] FOREIGN KEY([USERID])
REFERENCES [dbo].[USERS] ([USERID])
GO
ALTER TABLE [dbo].[HOADON] CHECK CONSTRAINT [FK_HoaDon]
GO
ALTER TABLE [dbo].[HOADON_CHITIET]  WITH CHECK ADD  CONSTRAINT [FK_HoaDonChiTiet1] FOREIGN KEY([MASP])
REFERENCES [dbo].[SANPHAM] ([MASP])
GO
ALTER TABLE [dbo].[HOADON_CHITIET] CHECK CONSTRAINT [FK_HoaDonChiTiet1]
GO
ALTER TABLE [dbo].[HOADON_CHITIET]  WITH CHECK ADD  CONSTRAINT [FK_HoaDonChiTiet2] FOREIGN KEY([MAHD])
REFERENCES [dbo].[HOADON] ([IDHD])
GO
ALTER TABLE [dbo].[HOADON_CHITIET] CHECK CONSTRAINT [FK_HoaDonChiTiet2]
GO
ALTER TABLE [dbo].[SANPHAM]  WITH CHECK ADD  CONSTRAINT [FK_SANPHAM] FOREIGN KEY([DANHMUC])
REFERENCES [dbo].[DANHMUC] ([MADM])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[SANPHAM] CHECK CONSTRAINT [FK_SANPHAM]
GO
ALTER TABLE [dbo].[YEUTHICH]  WITH CHECK ADD  CONSTRAINT [FK_YeuThich1] FOREIGN KEY([MASP])
REFERENCES [dbo].[SANPHAM] ([MASP])
GO
ALTER TABLE [dbo].[YEUTHICH] CHECK CONSTRAINT [FK_YeuThich1]
GO
ALTER TABLE [dbo].[YEUTHICH]  WITH CHECK ADD  CONSTRAINT [FK_YeuThich2] FOREIGN KEY([USERID])
REFERENCES [dbo].[USERS] ([USERID])
GO
ALTER TABLE [dbo].[YEUTHICH] CHECK CONSTRAINT [FK_YeuThich2]
GO
USE [master]
GO
ALTER DATABASE [DATABASE_WEB_JAVA4] SET  READ_WRITE 
GO

USE [DATABASE_WEB_JAVA4]
GO

/****** Object:  StoredProcedure [dbo].[sp_ThongKeDoanhThuTheoThang]    Script Date: 6/13/2022 7:08:22 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE PROC [dbo].[sp_ThongKeDoanhThuTheoThang]
as
begin
SET NOCOUNT ON

	declare @dem int = 1;
	declare @rt table(
		tien float
	)
	while @dem < 13
			begin
				declare @table table(
				tien float
			);
			insert into @table
			SELECT (GIASP*SUM(SOLUONG)) AS TONGTIEN FROM  HOADON_CHITIET hdct join HOADON hd
			on hdct.MAHD = hd.IDHD join SANPHAM sp
			on sp.MASP = hdct.MASP WHERE MONTH(NGAYTAO) = @dem group by GIASP
	
			declare @i float  = (select sum(tien) as tien from @table)
				if(select @i) is null
					begin
						insert into @rt
						select 0
					end
				else
					begin
						insert into @rt
						select @i 
					end
			delete @table
			set @dem = @dem + 1;
	end;
	select tien from @rt

end
GO


SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

create proc [dbo].[sp_ThongKeTheoLoaiSP]
as
begin
SET NOCOUNT ON
	--Tổng tiền
	DECLARE @table table(
	tongtien float
);
		insert into @table
		SELECT (GIASP*SUM(SOLUONG)) AS TONGTIEN
		FROM HOADON_CHITIET hdct join SANPHAM sp on hdct.MASP = sp.MASP
		group by hdct.MASP,GIASP
	declare @tongtien  float = (select	sum(tongtien)  from @table)


		--tổng tiền đồ uống
		DECLARE @tableDrink table(
		tongtien float
	);
	insert into @tableDrink
		SELECT (GIASP*SUM(SOLUONG)) AS TONGTIEN
		FROM HOADON_CHITIET hdct join SANPHAM sp on hdct.MASP = sp.MASP
		WHERE sp.DANHMUC in (select MADM from DANHMUC where MADM not in ('mcake','ncake'))
		group by hdct.MASP,GIASP
	declare @drink float = (select	sum(tongtien) from @tableDrink)


		--tổng tiền đồ ăn
		DECLARE @tableFood table(
		tongtien float
	);
	insert into @tableFood
		SELECT (GIASP*SUM(SOLUONG)) AS TONGTIEN
		FROM HOADON_CHITIET hdct join SANPHAM sp on hdct.MASP = sp.MASP
		WHERE sp.DANHMUC not in (select MADM from DANHMUC where MADM not in ('mcake','ncake'))
		group by hdct.MASP,GIASP
	declare @food float = (select	sum(tongtien)  from @tableFood)
	
			select round((@food/@tongtien)*100,0) as food, round((@drink/@tongtien)*100,0) as drink

end
GO





