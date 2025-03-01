USE [project]
GO
/****** Object:  Table [dbo].[BaoCao]    Script Date: 03/11/2024 10:21:55 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BaoCao](
	[MaBaoCao] [int] NOT NULL,
	[MaNguoiDung] [int] NULL,
	[MaChuong] [int] NULL,
	[MaTruyen] [int] NULL,
	[LyDo] [nvarchar](255) NULL,
	[NgayBaoCao] [datetime] NULL,
	[TrangThaiXuLy] [nvarchar](50) NULL,
 CONSTRAINT [PK_BaoCao] PRIMARY KEY CLUSTERED 
(
	[MaBaoCao] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BinhLuan]    Script Date: 03/11/2024 10:21:55 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BinhLuan](
	[MaBinhLuan] [int] NOT NULL,
	[MaChuong] [int] NULL,
	[MaNguoiDung] [int] NULL,
	[NoiDungBinhLuan] [nvarchar](max) NULL,
	[NgayBinhLuan] [datetime] NULL,
	[TrangThai] [nvarchar](50) NULL,
 CONSTRAINT [PK_BinhLuan] PRIMARY KEY CLUSTERED 
(
	[MaBinhLuan] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Chuong]    Script Date: 03/11/2024 10:21:55 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Chuong](
	[MaChuong] [int] NOT NULL,
	[MaTruyen] [int] NULL,
	[TenChuong] [nvarchar](255) NULL,
	[NoiDung] [nvarchar](max) NULL,
	[NgayCapNhat] [date] NULL,
	[SoThuTu] [int] NULL,
 CONSTRAINT [PK_Chuong] PRIMARY KEY CLUSTERED 
(
	[MaChuong] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DanhGia]    Script Date: 03/11/2024 10:21:55 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DanhGia](
	[MaDanhGia] [int] NOT NULL,
	[MaNguoiDung] [int] NULL,
	[MaTruyen] [int] NULL,
	[DiemDanhGia] [int] NULL,
	[NoiDungDanhGia] [nvarchar](max) NULL,
	[NgayDanhGia] [date] NULL,
 CONSTRAINT [PK_DanhGia] PRIMARY KEY CLUSTERED 
(
	[MaDanhGia] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DiemDanh]    Script Date: 03/11/2024 10:21:55 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DiemDanh](
	[MaDiemDanh] [int] NOT NULL,
	[MaNguoiDung] [int] NULL,
	[NgayDiemDanh] [date] NULL,
	[DiemThuong] [int] NULL,
 CONSTRAINT [PK_DiemDanh] PRIMARY KEY CLUSTERED 
(
	[MaDiemDanh] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LichSuDoc]    Script Date: 03/11/2024 10:21:55 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LichSuDoc](
	[MaLichSu] [int] NOT NULL,
	[MaNguoiDung] [int] NULL,
	[MaTruyen] [int] NULL,
	[MaChuongCuoi] [int] NULL,
	[ThoiGianDoc] [datetime] NULL,
 CONSTRAINT [PK_LichSuDoc] PRIMARY KEY CLUSTERED 
(
	[MaLichSu] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NguoiDung]    Script Date: 03/11/2024 10:21:55 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NguoiDung](
	[MaNguoiDung] [int] NOT NULL,
	[TenDangNhap] [nvarchar](100) NULL,
	[MatKhau] [nvarchar](100) NULL,
	[Email] [nvarchar](255) NULL,
	[NgayDangKy] [date] NULL,
	[TrangThai] [nvarchar](50) NULL,
 CONSTRAINT [PK_NguoiDung] PRIMARY KEY CLUSTERED 
(
	[MaNguoiDung] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NguoiDung_Quyen]    Script Date: 03/11/2024 10:21:55 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NguoiDung_Quyen](
	[MaNguoiDung] [int] NULL,
	[MaQuyen] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Quyen]    Script Date: 03/11/2024 10:21:55 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Quyen](
	[MaQuyen] [int] NOT NULL,
	[TenQuyen] [nvarchar](100) NULL,
	[MoTa] [nvarchar](255) NULL,
 CONSTRAINT [PK_Quyen] PRIMARY KEY CLUSTERED 
(
	[MaQuyen] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TheLoai]    Script Date: 03/11/2024 10:21:55 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TheLoai](
	[MaTheLoai] [int] NOT NULL,
	[TenTheLoai] [nvarchar](100) NULL,
 CONSTRAINT [PK_TheLoai] PRIMARY KEY CLUSTERED 
(
	[MaTheLoai] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ThongBao]    Script Date: 03/11/2024 10:21:55 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ThongBao](
	[MaThongBao] [int] NOT NULL,
	[MaNguoiDung] [int] NULL,
	[NoiDungThongBao] [nvarchar](500) NULL,
	[NgayGui] [datetime] NULL,
	[DaDoc] [bit] NULL,
 CONSTRAINT [PK_ThongBao] PRIMARY KEY CLUSTERED 
(
	[MaThongBao] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Truyen]    Script Date: 03/11/2024 10:21:55 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Truyen](
	[MaTruyen] [int] NOT NULL,
	[TenTruyen] [nvarchar](255) NULL,
	[TacGia] [nvarchar](255) NULL,
	[MoTa] [nvarchar](max) NULL,
	[NgayDang] [date] NULL,
	[TrangThai] [nvarchar](50) NULL,
	[LuotXem] [int] NULL,
 CONSTRAINT [PK_Truyen] PRIMARY KEY CLUSTERED 
(
	[MaTruyen] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Truyen_TheLoai]    Script Date: 03/11/2024 10:21:55 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Truyen_TheLoai](
	[MaTruyen] [int] NULL,
	[MaTheLoai] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[YenThich]    Script Date: 03/11/2024 10:21:55 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[YenThich](
	[MaYeuThich] [int] NOT NULL,
	[MaNguoiDung] [int] NULL,
	[MaTruyen] [int] NULL,
	[NgayThem] [date] NULL,
 CONSTRAINT [PK_YenThich] PRIMARY KEY CLUSTERED 
(
	[MaYeuThich] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
