USE [master]
GO
/****** Object:  Database [WebBanHang]    Script Date: 07/07/2023 10:14:52 AM ******/
CREATE DATABASE [WebBanHang]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'WebBanHang', FILENAME = N'C:\Users\Acer\WebBanHang.mdf' , SIZE = 73728KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'WebBanHang_log', FILENAME = N'C:\Users\Acer\WebBanHang_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [WebBanHang] SET COMPATIBILITY_LEVEL = 100
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [WebBanHang].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [WebBanHang] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [WebBanHang] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [WebBanHang] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [WebBanHang] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [WebBanHang] SET ARITHABORT OFF 
GO
ALTER DATABASE [WebBanHang] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [WebBanHang] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [WebBanHang] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [WebBanHang] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [WebBanHang] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [WebBanHang] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [WebBanHang] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [WebBanHang] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [WebBanHang] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [WebBanHang] SET  ENABLE_BROKER 
GO
ALTER DATABASE [WebBanHang] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [WebBanHang] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [WebBanHang] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [WebBanHang] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [WebBanHang] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [WebBanHang] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [WebBanHang] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [WebBanHang] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [WebBanHang] SET  MULTI_USER 
GO
ALTER DATABASE [WebBanHang] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [WebBanHang] SET DB_CHAINING OFF 
GO
ALTER DATABASE [WebBanHang] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [WebBanHang] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [WebBanHang] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [WebBanHang] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [WebBanHang] SET QUERY_STORE = OFF
GO
USE [WebBanHang]
GO
/****** Object:  User [sa1]    Script Date: 07/07/2023 10:14:52 AM ******/
CREATE USER [sa1] FOR LOGIN [sa1] WITH DEFAULT_SCHEMA=[dbo]
GO
ALTER ROLE [db_owner] ADD MEMBER [sa1]
GO
/****** Object:  Table [dbo].[chitiethoadon]    Script Date: 07/07/2023 10:14:52 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[chitiethoadon](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[soluong] [int] NOT NULL,
	[id_hoadon] [bigint] NOT NULL,
	[id_sanpham] [bigint] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[chitietsanpham]    Script Date: 07/07/2023 10:14:52 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[chitietsanpham](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[anhchitiet] [ntext] NOT NULL,
	[id_sanpham] [bigint] NOT NULL,
 CONSTRAINT [PK_chitietsanpham] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[district]    Script Date: 07/07/2023 10:14:52 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[district](
	[districtid] [nvarchar](20) NOT NULL,
	[name] [nvarchar](191) NOT NULL,
	[provinceid] [nvarchar](20) NOT NULL,
 CONSTRAINT [district$district_districtid_unique] UNIQUE CLUSTERED 
(
	[districtid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[hoadon]    Script Date: 07/07/2023 10:14:52 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[hoadon](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[hoten] [nvarchar](191) NOT NULL,
	[sonha] [nvarchar](191) NOT NULL,
	[diachi] [nvarchar](191) NOT NULL,
	[dienthoai] [nvarchar](191) NOT NULL,
	[email] [nvarchar](191) NOT NULL,
	[ghichu] [ntext] NULL,
	[trangthai] [int] NOT NULL,
	[ngaydat] [datetime2](6) NULL,
	[total] [nvarchar](50) NULL,
 CONSTRAINT [PK__hoadon__3213E83F465669A4] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[loaisanpham]    Script Date: 07/07/2023 10:14:52 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[loaisanpham](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[tenloai] [nvarchar](191) NOT NULL,
	[theloai] [nchar](10) NULL,
 CONSTRAINT [PK_loaisanpham] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[province]    Script Date: 07/07/2023 10:14:52 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[province](
	[provinceid] [nvarchar](20) NOT NULL,
	[name] [nvarchar](191) NOT NULL,
 CONSTRAINT [province$province_provinceid_unique] UNIQUE CLUSTERED 
(
	[provinceid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[quan_huyens]    Script Date: 07/07/2023 10:14:52 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[quan_huyens](
	[id] [int] NOT NULL,
	[ten] [nvarchar](250) NOT NULL,
	[donvi] [nvarchar](250) NOT NULL,
	[tenkhongdau] [nvarchar](250) NOT NULL,
	[tendaydu] [nvarchar](250) NOT NULL,
	[tenthuong] [nvarchar](250) NOT NULL,
	[tenhanhchinh] [nvarchar](250) NOT NULL,
	[code] [int] NOT NULL,
	[id_tinhthanhpho] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[sanpham]    Script Date: 07/07/2023 10:14:52 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[sanpham](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[tensanpham] [ntext] NULL,
	[mota] [ntext] NULL,
	[giagoc] [float] NULL,
	[khuyenmai] [int] NULL,
	[anhchinh] [ntext] NULL,
	[tinhtrang] [int] NULL,
	[idTh] [int] NULL,
	[id_loaisp] [bigint] NULL,
	[startdate] [varchar](50) NULL,
	[enddate] [varchar](50) NULL,
	[phongcach] [varchar](50) NULL,
	[diachi] [ntext] NULL,
	[soluong] [int] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[taikhoan]    Script Date: 07/07/2023 10:14:52 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[taikhoan](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[tentaikhoan] [nvarchar](191) NOT NULL,
	[email] [nvarchar](191) NOT NULL,
	[matkhau] [nvarchar](191) NOT NULL,
	[phanquyen] [nvarchar](191) NOT NULL,
	[tenhienthi] [nvarchar](191) NOT NULL,
	[hinhanh] [ntext] NULL,
	[gioitinh] [nvarchar](191) NULL,
	[diachi] [nvarchar](191) NULL,
	[ngaysinh] [nvarchar](191) NULL,
 CONSTRAINT [PK__taikhoan__3213E83F7EA3F463] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tinh_thanh_phos]    Script Date: 07/07/2023 10:14:52 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tinh_thanh_phos](
	[id] [int] NULL,
	[ten] [nvarchar](50) NULL,
	[tenkhongdau] [nvarchar](50) NULL,
	[donvi] [nvarchar](50) NULL,
	[tendaydu] [nvarchar](50) NULL,
	[code] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[village]    Script Date: 07/07/2023 10:14:52 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[village](
	[villageid] [nvarchar](20) NOT NULL,
	[name] [nvarchar](191) NOT NULL,
	[wardid] [nvarchar](20) NOT NULL,
 CONSTRAINT [village$village_villageid_unique] UNIQUE CLUSTERED 
(
	[villageid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ward]    Script Date: 07/07/2023 10:14:52 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ward](
	[wardid] [nvarchar](20) NOT NULL,
	[name] [nvarchar](191) NOT NULL,
	[districtid] [nvarchar](20) NOT NULL,
 CONSTRAINT [ward$ward_wardid_unique] UNIQUE CLUSTERED 
(
	[wardid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[xa_phuongs]    Script Date: 07/07/2023 10:14:52 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[xa_phuongs](
	[id] [int] NULL,
	[ten] [nvarchar](250) NULL,
	[donvi] [nvarchar](250) NULL,
	[tenkhongdau] [nvarchar](250) NULL,
	[tendaydu] [nvarchar](250) NULL,
	[tenthuong] [nvarchar](250) NULL,
	[tenhanhchinh] [nvarchar](250) NULL,
	[code] [int] NULL,
	[id_quanhuyen] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Index [chitiethoadon_id_hoadon_foreign]    Script Date: 07/07/2023 10:14:52 AM ******/
CREATE NONCLUSTERED INDEX [chitiethoadon_id_hoadon_foreign] ON [dbo].[chitiethoadon]
(
	[id_hoadon] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [chitiethoadon_id_sanpham_foreign]    Script Date: 07/07/2023 10:14:52 AM ******/
CREATE NONCLUSTERED INDEX [chitiethoadon_id_sanpham_foreign] ON [dbo].[chitiethoadon]
(
	[id_sanpham] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [chitietsanpham_id_sanpham_foreign]    Script Date: 07/07/2023 10:14:52 AM ******/
CREATE NONCLUSTERED INDEX [chitietsanpham_id_sanpham_foreign] ON [dbo].[chitietsanpham]
(
	[id_sanpham] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [FK6j13cntyo84kql99wpntb7skt]    Script Date: 07/07/2023 10:14:52 AM ******/
CREATE NONCLUSTERED INDEX [FK6j13cntyo84kql99wpntb7skt] ON [dbo].[district]
(
	[provinceid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [sanpham_id_loaisp_foreign]    Script Date: 07/07/2023 10:14:52 AM ******/
CREATE NONCLUSTERED INDEX [sanpham_id_loaisp_foreign] ON [dbo].[sanpham]
(
	[id_loaisp] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [taikhoan_email_unique]    Script Date: 07/07/2023 10:14:52 AM ******/
CREATE UNIQUE NONCLUSTERED INDEX [taikhoan_email_unique] ON [dbo].[taikhoan]
(
	[email] ASC
)
WHERE ([email] IS NOT NULL)
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [FKhocg4f7ydelp8nep8x3kp3rue]    Script Date: 07/07/2023 10:14:52 AM ******/
CREATE NONCLUSTERED INDEX [FKhocg4f7ydelp8nep8x3kp3rue] ON [dbo].[village]
(
	[wardid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [FKs037di3y5m79w99livdyahsj8]    Script Date: 07/07/2023 10:14:52 AM ******/
CREATE NONCLUSTERED INDEX [FKs037di3y5m79w99livdyahsj8] ON [dbo].[ward]
(
	[districtid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
ALTER TABLE [dbo].[chitiethoadon]  WITH CHECK ADD  CONSTRAINT [FK__chitietho__id_ho__02084FDA] FOREIGN KEY([id_hoadon])
REFERENCES [dbo].[hoadon] ([id])
GO
ALTER TABLE [dbo].[chitiethoadon] CHECK CONSTRAINT [FK__chitietho__id_ho__02084FDA]
GO
ALTER TABLE [dbo].[chitiethoadon]  WITH CHECK ADD  CONSTRAINT [FK_chitiethoadon_hoadon] FOREIGN KEY([id_hoadon])
REFERENCES [dbo].[hoadon] ([id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[chitiethoadon] CHECK CONSTRAINT [FK_chitiethoadon_hoadon]
GO
ALTER TABLE [dbo].[district]  WITH NOCHECK ADD  CONSTRAINT [district$FK6j13cntyo84kql99wpntb7skt] FOREIGN KEY([provinceid])
REFERENCES [dbo].[province] ([provinceid])
GO
ALTER TABLE [dbo].[district] CHECK CONSTRAINT [district$FK6j13cntyo84kql99wpntb7skt]
GO
ALTER TABLE [dbo].[village]  WITH NOCHECK ADD  CONSTRAINT [village$FKhocg4f7ydelp8nep8x3kp3rue] FOREIGN KEY([wardid])
REFERENCES [dbo].[ward] ([wardid])
GO
ALTER TABLE [dbo].[village] CHECK CONSTRAINT [village$FKhocg4f7ydelp8nep8x3kp3rue]
GO
ALTER TABLE [dbo].[ward]  WITH NOCHECK ADD  CONSTRAINT [ward$FKs037di3y5m79w99livdyahsj8] FOREIGN KEY([districtid])
REFERENCES [dbo].[district] ([districtid])
GO
ALTER TABLE [dbo].[ward] CHECK CONSTRAINT [ward$FKs037di3y5m79w99livdyahsj8]
GO
USE [master]
GO
ALTER DATABASE [WebBanHang] SET  READ_WRITE 
GO
