USE [master]
GO
/****** Object:  Database [BanVeMayBay]    Script Date: 07/01/2018 4:37:18 PM ******/
CREATE DATABASE [BanVeMayBay]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'BanVeMayBay', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.SQLEXPRESS\MSSQL\DATA\BanVeMayBay.mdf' , SIZE = 5120KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'BanVeMayBay_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.SQLEXPRESS\MSSQL\DATA\BanVeMayBay_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [BanVeMayBay] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [BanVeMayBay].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [BanVeMayBay] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [BanVeMayBay] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [BanVeMayBay] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [BanVeMayBay] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [BanVeMayBay] SET ARITHABORT OFF 
GO
ALTER DATABASE [BanVeMayBay] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [BanVeMayBay] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [BanVeMayBay] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [BanVeMayBay] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [BanVeMayBay] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [BanVeMayBay] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [BanVeMayBay] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [BanVeMayBay] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [BanVeMayBay] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [BanVeMayBay] SET  DISABLE_BROKER 
GO
ALTER DATABASE [BanVeMayBay] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [BanVeMayBay] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [BanVeMayBay] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [BanVeMayBay] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [BanVeMayBay] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [BanVeMayBay] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [BanVeMayBay] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [BanVeMayBay] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [BanVeMayBay] SET  MULTI_USER 
GO
ALTER DATABASE [BanVeMayBay] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [BanVeMayBay] SET DB_CHAINING OFF 
GO
ALTER DATABASE [BanVeMayBay] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [BanVeMayBay] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [BanVeMayBay] SET DELAYED_DURABILITY = DISABLED 
GO
USE [BanVeMayBay]
GO
/****** Object:  Table [dbo].[Login]    Script Date: 07/01/2018 4:37:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Login](
	[USERNAME] [varchar](50) NOT NULL,
	[PASSWORD] [varchar](50) NULL,
 CONSTRAINT [PK_Login] PRIMARY KEY CLUSTERED 
(
	[USERNAME] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tb_CTHD]    Script Date: 07/01/2018 4:37:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tb_CTHD](
	[MaHD] [varchar](10) NOT NULL,
	[MaHH] [varchar](10) NOT NULL,
	[SoLuong] [int] NULL,
	[DonGia] [int] NULL,
 CONSTRAINT [PK_tb_CTHD] PRIMARY KEY CLUSTERED 
(
	[MaHD] ASC,
	[MaHH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tb_HoaDon]    Script Date: 07/01/2018 4:37:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tb_HoaDon](
	[MaHD] [varchar](10) NOT NULL,
	[NgayLap] [date] NULL,
	[NguoiLap] [varchar](10) NULL,
	[KhachHang] [varchar](30) NULL,
 CONSTRAINT [PK_tb_HoaDon] PRIMARY KEY CLUSTERED 
(
	[MaHD] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tb_KhachHang]    Script Date: 07/01/2018 4:37:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tb_KhachHang](
	[MaKH] [varchar](30) NOT NULL,
	[TenKH] [nvarchar](50) NULL,
	[GioiTinh] [nvarchar](5) NULL,
	[NamSinh] [date] NULL,
	[SDT] [varchar](20) NULL,
	[DiaChi] [nvarchar](50) NULL,
	[Diem] [int] NULL,
	[Email] [varchar](30) NULL,
 CONSTRAINT [PK_tb_KhachHan] PRIMARY KEY CLUSTERED 
(
	[MaKH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tb_MayBay]    Script Date: 07/01/2018 4:37:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tb_MayBay](
	[MaMB] [varchar](10) NOT NULL,
	[TenMB] [nvarchar](30) NULL,
	[DonGia] [int] NULL,
	[SoLuong] [int] NULL,
 CONSTRAINT [PK_tb_MayBay] PRIMARY KEY CLUSTERED 
(
	[MaMB] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tb_NhanVien]    Script Date: 07/01/2018 4:37:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tb_NhanVien](
	[MaNV] [varchar](10) NOT NULL,
	[TenNV] [nvarchar](30) NULL,
	[GioiTinh] [nvarchar](5) NULL,
	[NamSinh] [date] NULL,
	[DiaChi] [nvarchar](50) NULL,
	[SDT] [varchar](21) NULL,
	[MatKhau] [varchar](20) NULL,
 CONSTRAINT [PK_tb_NhanVien] PRIMARY KEY CLUSTERED 
(
	[MaNV] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[Login] ([USERNAME], [PASSWORD]) VALUES (N'lehoang09', N'lehoang09')
INSERT [dbo].[tb_HoaDon] ([MaHD], [NgayLap], [NguoiLap], [KhachHang]) VALUES (N'HD001', CAST(N'2013-01-24' AS Date), N'NV001', N'KH001')
INSERT [dbo].[tb_HoaDon] ([MaHD], [NgayLap], [NguoiLap], [KhachHang]) VALUES (N'HD003', CAST(N'2017-12-29' AS Date), N'NV002', N'KH001')
INSERT [dbo].[tb_KhachHang] ([MaKH], [TenKH], [GioiTinh], [NamSinh], [SDT], [DiaChi], [Diem], [Email]) VALUES (N'KH001', N'Lê Milu', N'Nữ', CAST(N'1998-06-10' AS Date), N'0938782321', N'TPHCM', 0, N'Milu90@gmail.com')
INSERT [dbo].[tb_KhachHang] ([MaKH], [TenKH], [GioiTinh], [NamSinh], [SDT], [DiaChi], [Diem], [Email]) VALUES (N'KH002', N'Lê Mai', N'Nam', CAST(N'1997-05-10' AS Date), N'093878232', N'LongAn', 0, NULL)
INSERT [dbo].[tb_MayBay] ([MaMB], [TenMB], [DonGia], [SoLuong]) VALUES (N'MB001', N'HNYB', 156666, 1)
INSERT [dbo].[tb_MayBay] ([MaMB], [TenMB], [DonGia], [SoLuong]) VALUES (N'MB002', N'HCMHN', 160000, 1)
INSERT [dbo].[tb_MayBay] ([MaMB], [TenMB], [DonGia], [SoLuong]) VALUES (N'MB003', N'HCMLA', 170000, 1)
INSERT [dbo].[tb_MayBay] ([MaMB], [TenMB], [DonGia], [SoLuong]) VALUES (N'MB004', N'HCMDN', 180000, 1)
INSERT [dbo].[tb_MayBay] ([MaMB], [TenMB], [DonGia], [SoLuong]) VALUES (N'MB005', N'HNYB', 19000, 1)
INSERT [dbo].[tb_MayBay] ([MaMB], [TenMB], [DonGia], [SoLuong]) VALUES (N'MB006', N'HCMHUE', 20000, 1)
INSERT [dbo].[tb_MayBay] ([MaMB], [TenMB], [DonGia], [SoLuong]) VALUES (N'MB007', N'HUEHN', 18000, 1)
INSERT [dbo].[tb_MayBay] ([MaMB], [TenMB], [DonGia], [SoLuong]) VALUES (N'MB008', N'HNLA', 19000, 1)
INSERT [dbo].[tb_NhanVien] ([MaNV], [TenNV], [GioiTinh], [NamSinh], [DiaChi], [SDT], [MatKhau]) VALUES (N'NV001', N'Lê Hoàng Anh Minh', N'Nam', CAST(N'2017-12-23' AS Date), N'Hutech', N'0987878', N'khongbiet1')
INSERT [dbo].[tb_NhanVien] ([MaNV], [TenNV], [GioiTinh], [NamSinh], [DiaChi], [SDT], [MatKhau]) VALUES (N'NV002', N'Minh Anh Lê', N'Nam', CAST(N'2017-12-23' AS Date), N'Long An', N'0938782342', N'khongbiet2')
INSERT [dbo].[tb_NhanVien] ([MaNV], [TenNV], [GioiTinh], [NamSinh], [DiaChi], [SDT], [MatKhau]) VALUES (N'NV003', N'Lê Hoàng Anh Em', N'Nam', CAST(N'2017-12-22' AS Date), N'Hà Nam', N'093547443', N'')
INSERT [dbo].[tb_NhanVien] ([MaNV], [TenNV], [GioiTinh], [NamSinh], [DiaChi], [SDT], [MatKhau]) VALUES (N'NV-004', N'Lê Lan', N'Nữ', CAST(N'1997-06-11' AS Date), N'yên bái', N'0938782332', N'')
ALTER TABLE [dbo].[tb_CTHD]  WITH CHECK ADD  CONSTRAINT [FK_tb_CTHD_tb_HoaDon] FOREIGN KEY([MaHD])
REFERENCES [dbo].[tb_HoaDon] ([MaHD])
GO
ALTER TABLE [dbo].[tb_CTHD] CHECK CONSTRAINT [FK_tb_CTHD_tb_HoaDon]
GO
ALTER TABLE [dbo].[tb_CTHD]  WITH CHECK ADD  CONSTRAINT [FK_tb_CTHD_tb_MayBay] FOREIGN KEY([MaHH])
REFERENCES [dbo].[tb_MayBay] ([MaMB])
GO
ALTER TABLE [dbo].[tb_CTHD] CHECK CONSTRAINT [FK_tb_CTHD_tb_MayBay]
GO
ALTER TABLE [dbo].[tb_HoaDon]  WITH CHECK ADD  CONSTRAINT [FK_tb_HoaDon_tb_KhachHang] FOREIGN KEY([KhachHang])
REFERENCES [dbo].[tb_KhachHang] ([MaKH])
GO
ALTER TABLE [dbo].[tb_HoaDon] CHECK CONSTRAINT [FK_tb_HoaDon_tb_KhachHang]
GO
ALTER TABLE [dbo].[tb_HoaDon]  WITH CHECK ADD  CONSTRAINT [FK_tb_HoaDon_tb_NhanVien1] FOREIGN KEY([NguoiLap])
REFERENCES [dbo].[tb_NhanVien] ([MaNV])
GO
ALTER TABLE [dbo].[tb_HoaDon] CHECK CONSTRAINT [FK_tb_HoaDon_tb_NhanVien1]
GO
USE [master]
GO
ALTER DATABASE [BanVeMayBay] SET  READ_WRITE 
GO
