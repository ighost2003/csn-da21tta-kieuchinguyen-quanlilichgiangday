use master
CREATE DATABASE [QLGD]
GO
USE [QLGD]
GO
/****** Object:  Table [dbo].[CTDT]    Script Date: 1/4/2024 3:44:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CTDT](
	[maMon] [varchar](30) NOT NULL,
	[soTinChi] [int] NULL,
	[soTCLT] [int] NULL,
	[soTCTH] [int] NULL,
	[hocKy] [int] NULL,
 CONSTRAINT [PK_CTDT] PRIMARY KEY CLUSTERED 
(
	[maMon] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[GSGD]    Script Date: 1/4/2024 3:44:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GSGD](
	[maGV] [varchar](30) NOT NULL,
	[soTietNghi] [int] NULL,
	[ngayNghi] [datetime] NULL,
	[soTietBu] [int] NULL,
	[ngayBu] [datetime] NOT NULL,
 CONSTRAINT [PK_GIAMSATGD] PRIMARY KEY CLUSTERED 
(
	[maGV] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HSGV]    Script Date: 1/4/2024 3:44:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HSGV](
	[maGV] [varchar](30) NOT NULL,
	[tenGV] [nvarchar](30) NOT NULL,
	[ngaySinh] [datetime] NULL,
	[gioiTinh] [nvarchar](30) NULL,
	[diaChi] [nvarchar](30) NULL,
	[dienThoai] [varchar](30) NULL,
	[chucVu] [nvarchar](30) NULL,
	[maToMon] [varchar](30) NULL,
 CONSTRAINT [PK_HSGV] PRIMARY KEY CLUSTERED 
(
	[maGV] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[KHOA]    Script Date: 1/4/2024 3:44:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KHOA](
	[maKhoa] [nvarchar](50) NOT NULL,
	[tenKhoa] [nvarchar](30) NOT NULL,
 CONSTRAINT [PK_KHOA] PRIMARY KEY CLUSTERED 
(
	[maKhoa] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LOP]    Script Date: 1/4/2024 3:44:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LOP](
	[maLop] [varchar](30) NOT NULL,
	[tenLop] [nvarchar](30) NOT NULL,
	[soSV] [int] NULL,
 CONSTRAINT [PK_LOP] PRIMARY KEY CLUSTERED 
(
	[maLop] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MONHOC]    Script Date: 1/4/2024 3:44:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MONHOC](
	[maMon] [varchar](30) NOT NULL,
	[tenMon] [nvarchar](30) NULL,
 CONSTRAINT [PK_MONHOC] PRIMARY KEY CLUSTERED 
(
	[maMon] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ND]    Script Date: 1/4/2024 3:44:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ND](
	[taiKhoan] [varchar](30) NOT NULL,
	[paSs] [varchar](50) NULL,
	[maNhom] [int] NULL,
 CONSTRAINT [PK_ND] PRIMARY KEY CLUSTERED 
(
	[taiKhoan] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NGANH]    Script Date: 1/4/2024 3:44:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NGANH](
	[maNganh] [nvarchar](30) NOT NULL,
	[maKhoa] [nvarchar](30) NOT NULL,
	[tenNganh] [nvarchar](30) NOT NULL,
 CONSTRAINT [PK_NGANH] PRIMARY KEY CLUSTERED 
(
	[maNganh] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NHOMND]    Script Date: 1/4/2024 3:44:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NHOMND](
	[maNhom] [int] NOT NULL,
	[tenNhom] [varchar](30) NULL,
 CONSTRAINT [PK_NHOMND] PRIMARY KEY CLUSTERED 
(
	[maNhom] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PCGD]    Script Date: 1/4/2024 3:44:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PCGD](
	[MaPCGD] [varchar](30) NOT NULL,
	[maLop] [varchar](30) NULL,
	[maGV] [varchar](30) NULL,
	[maHocPhan] [varchar](30) NULL,
	[ngayBatDau] [datetime] NULL,
	[ngayKetThuc] [datetime] NULL,
	[maPhong] [varchar](30) NULL,
 CONSTRAINT [PK_PCGD] PRIMARY KEY CLUSTERED 
(
	[MaPCGD] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PHONGHOC]    Script Date: 1/4/2024 3:44:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PHONGHOC](
	[maPhong] [varchar](30) NOT NULL,
	[tenPhong] [varchar](30) NULL,
	[soBan] [varchar](30) NULL,
 CONSTRAINT [PK_PHONGHOC] PRIMARY KEY CLUSTERED 
(
	[maPhong] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[CTDT] ([maMon], [soTinChi], [soTCLT], [soTCTH], [hocKy]) VALUES (N'01', 3, 1, 2, 1)
INSERT [dbo].[CTDT] ([maMon], [soTinChi], [soTCLT], [soTCTH], [hocKy]) VALUES (N'02', 3, 1, 2, 1)
INSERT [dbo].[CTDT] ([maMon], [soTinChi], [soTCLT], [soTCTH], [hocKy]) VALUES (N'03', 3, 1, 2, 1)
INSERT [dbo].[CTDT] ([maMon], [soTinChi], [soTCLT], [soTCTH], [hocKy]) VALUES (N'04', 3, 1, 2, 2)
GO
INSERT [dbo].[GSGD] ([maGV], [soTietNghi], [ngayNghi], [soTietBu], [ngayBu]) VALUES (N'100', 10, CAST(N'2023-02-01T00:00:00.000' AS DateTime), 0, CAST(N'2023-04-01T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[HSGV] ([maGV], [tenGV], [ngaySinh], [gioiTinh], [diaChi], [dienThoai], [chucVu], [maToMon]) VALUES (N'1', N'Dương Ngọc Vân Khanh', CAST(N'1990-01-01T00:00:00.000' AS DateTime), N'Nam', N'Trà vinh', N'0988332008', N'Giảng Viên', '01')
INSERT [dbo].[HSGV] ([maGV], [tenGV], [ngaySinh], [gioiTinh], [diaChi], [dienThoai], [chucVu], [maToMon]) VALUES (N'10', N'Nguyễn H.D.Thiện', CAST(N'1990-01-01T00:00:00.000' AS DateTime), N'Nam', N'Trà Vinh', N'0989274222', N'Giảng viên', '01')
INSERT [dbo].[HSGV] ([maGV], [tenGV], [ngaySinh], [gioiTinh], [diaChi], [dienThoai], [chucVu], [maToMon]) VALUES (N'11', N'Nguyễn Khắc Quốc', CAST(N'1990-01-01T00:00:00.000' AS DateTime), N'Nam', N'Trà Vinh', N'0918085180', N'Giảng Viên', '01')
INSERT [dbo].[HSGV] ([maGV], [tenGV], [ngaySinh], [gioiTinh], [diaChi], [dienThoai], [chucVu], [maToMon]) VALUES (N'12', N'Nguyễn Mộng Hiền', CAST(N'1990-01-01T00:00:00.000' AS DateTime), N'Nam', N'Trà Vinh', N'0975999579', N'Giảng Viên', '01')
INSERT [dbo].[HSGV] ([maGV], [tenGV], [ngaySinh], [gioiTinh], [diaChi], [dienThoai], [chucVu], [maToMon]) VALUES (N'13', N'Nguyễn Ngọc Đan Thanh ', CAST(N'2023-11-28T00:00:00.000' AS DateTime), N'Nữ', N'Trà Vinh', N'0916741252', N'Giảng viên', '01')
INSERT [dbo].[HSGV] ([maGV], [tenGV], [ngaySinh], [gioiTinh], [diaChi], [dienThoai], [chucVu], [maToMon]) VALUES (N'14', N'Nguyễn Nhứt Lam', CAST(N'1990-01-01T00:00:00.000' AS DateTime), N'Nam', N'Trà vinh', N'0919556441', N'Trưởng Ban', '01')
INSERT [dbo].[HSGV] ([maGV], [tenGV], [ngaySinh], [gioiTinh], [diaChi], [dienThoai], [chucVu], [maToMon]) VALUES (N'15', N'Nguyễn Thừa Phát Tài', CAST(N'1990-01-01T00:00:00.000' AS DateTime), N'Nam', N'Trà Vinh', N'0988345131', N'Giảng Viên', '01')
INSERT [dbo].[HSGV] ([maGV], [tenGV], [ngaySinh], [gioiTinh], [diaChi], [dienThoai], [chucVu], [maToMon]) VALUES (N'16', N'Nguyễn Trần Diễm Hạnh', CAST(N'1990-01-01T00:00:00.000' AS DateTime), N'Nữ', N'Trà Vinh', N'0842250996', N'Giảng Viên', '01')
INSERT [dbo].[HSGV] ([maGV], [tenGV], [ngaySinh], [gioiTinh], [diaChi], [dienThoai], [chucVu], [maToMon]) VALUES (N'17', N'Phạm Minh Đương', CAST(N'1990-01-01T00:00:00.000' AS DateTime), N'Nam', N'Trà Vinh', N'0868 567 268', N'Giảng Viên', '01')
INSERT [dbo].[HSGV] ([maGV], [tenGV], [ngaySinh], [gioiTinh], [diaChi], [dienThoai], [chucVu], [maToMon]) VALUES (N'18', N'Phạm Thị Trúc Mai', CAST(N'1990-01-01T00:00:00.000' AS DateTime), N'Nữ', N'Trà Vinh', N'0936010206', N'Giảng Viên', '01')
INSERT [dbo].[HSGV] ([maGV], [tenGV], [ngaySinh], [gioiTinh], [diaChi], [dienThoai], [chucVu], [maToMon]) VALUES (N'19', N'Phan Thị Phương Nam', CAST(N'1990-01-01T00:00:00.000' AS DateTime), N'Nữ', N'Trà Vinh', N'0989236166', N'Giảng Viên', '01')
INSERT [dbo].[HSGV] ([maGV], [tenGV], [ngaySinh], [gioiTinh], [diaChi], [dienThoai], [chucVu], [maToMon]) VALUES (N'2', N'Đoàn Phước Miền', CAST(N'1990-01-01T00:00:00.000' AS DateTime), N'Nam', N'Trà vinh', N'0978962954', N'Giảng Viên', '01')
INSERT [dbo].[HSGV] ([maGV], [tenGV], [ngaySinh], [gioiTinh], [diaChi], [dienThoai], [chucVu], [maToMon]) VALUES (N'20', N'Trầm Hoàng Nam', CAST(N'1990-01-01T00:00:00.000' AS DateTime), N'Nam', N'Trà Vinh', N'0977810235', N'Giảng Viên', '01')
INSERT [dbo].[HSGV] ([maGV], [tenGV], [ngaySinh], [gioiTinh], [diaChi], [dienThoai], [chucVu], [maToMon]) VALUES (N'21', N'Trần Văn Nam', CAST(N'1990-01-01T00:00:00.000' AS DateTime), N'Nam', N'Trà vinh', N'0365583414', N'Giảng Viên', '01')
INSERT [dbo].[HSGV] ([maGV], [tenGV], [ngaySinh], [gioiTinh], [diaChi], [dienThoai], [chucVu], [maToMon]) VALUES (N'22', N'Trịnh Quốc Việt', CAST(N'1990-01-01T00:00:00.000' AS DateTime), N'Nam', N'Trà Vinh', N'0354696999', N'Giảng Viên', '01')
INSERT [dbo].[HSGV] ([maGV], [tenGV], [ngaySinh], [gioiTinh], [diaChi], [dienThoai], [chucVu], [maToMon]) VALUES (N'23', N'Võ Thành C', CAST(N'1990-01-01T00:00:00.000' AS DateTime), N'Nam', N'Trà Vinh', N'0909119657', NULL, NULL)
INSERT [dbo].[HSGV] ([maGV], [tenGV], [ngaySinh], [gioiTinh], [diaChi], [dienThoai], [chucVu], [maToMon]) VALUES (N'3', N'Hà Thị Thúy Vi', CAST(N'1990-01-01T00:00:00.000' AS DateTime), N'Nữ', N'Trà vinh', N'0983001084', N'Giảng Viên', '01')
INSERT [dbo].[HSGV] ([maGV], [tenGV], [ngaySinh], [gioiTinh], [diaChi], [dienThoai], [chucVu], [maToMon]) VALUES (N'4', N'Huỳnh Văn Thanh', CAST(N'1990-01-01T00:00:00.000' AS DateTime), N'Nam', N'Trà Vinh', N'0977654181', N'Giảng Viên', '01')
INSERT [dbo].[HSGV] ([maGV], [tenGV], [ngaySinh], [gioiTinh], [diaChi], [dienThoai], [chucVu], [maToMon]) VALUES (N'5', N'Khấu Văn Nhựt', CAST(N'1990-01-01T00:00:00.000' AS DateTime), N'Nam', N'Trà Vinh', N'0979748090', N'Giảng viên', '01')
INSERT [dbo].[HSGV] ([maGV], [tenGV], [ngaySinh], [gioiTinh], [diaChi], [dienThoai], [chucVu], [maToMon]) VALUES (N'6', N'Lê Minh Tự', CAST(N'1990-01-01T00:00:00.000' AS DateTime), N'Nam', N'Trà Vinh', N'0918677326', N'Giảng viên', '01')
INSERT [dbo].[HSGV] ([maGV], [tenGV], [ngaySinh], [gioiTinh], [diaChi], [dienThoai], [chucVu], [maToMon]) VALUES (N'7', N'Ngô Thanh Huy', CAST(N'1990-01-01T00:00:00.000' AS DateTime), N'Nam', N'Trà Vinh', N'0989623237', N'Giảng viên', '01')
INSERT [dbo].[HSGV] ([maGV], [tenGV], [ngaySinh], [gioiTinh], [diaChi], [dienThoai], [chucVu], [maToMon]) VALUES (N'8', N'Nguyễn Bá Nhiệm', CAST(N'1990-01-01T00:00:00.000' AS DateTime), N'Nam', N'Trà Vinh', N'0983303609', N'Giảng viên', '01')
INSERT [dbo].[HSGV] ([maGV], [tenGV], [ngaySinh], [gioiTinh], [diaChi], [dienThoai], [chucVu], [maToMon]) VALUES (N'9', N'Nguyễn Bảo Ân', CAST(N'1990-01-01T00:00:00.000' AS DateTime), N'Nam', N'Trà Vinh', N'0907966998', N'Giảng Viên', '01')
GO
INSERT [dbo].[KHOA] ([maKhoa], [tenKhoa]) VALUES (N'KTCN', N'KTCN')
GO
INSERT [dbo].[LOP] ([maLop], [tenLop], [soSV]) VALUES ('DA20TTA', N'DA20TTA', 35)
INSERT [dbo].[LOP] ([maLop], [tenLop], [soSV]) VALUES ('DA20TTB', N'DA20TTB', 37)
INSERT [dbo].[LOP] ([maLop], [tenLop], [soSV]) VALUES ('DA20TTC', N'DA20TTC', 33)
INSERT [dbo].[LOP] ([maLop], [tenLop], [soSV]) VALUES ('DA21TTA', N'DA21TTA', 40)
INSERT [dbo].[LOP] ([maLop], [tenLop], [soSV]) VALUES ('DA21TTB', N'DA21TTB', 41)
INSERT [dbo].[LOP] ([maLop], [tenLop], [soSV]) VALUES ('DA21TTC', N'DA21TTC', 40)
INSERT [dbo].[LOP] ([maLop], [tenLop], [soSV]) VALUES ('DA22TTA', N'DA22TTA', 39)
INSERT [dbo].[LOP] ([maLop], [tenLop], [soSV]) VALUES ('DA22TTB', N'DA22TTB', 40)
INSERT [dbo].[LOP] ([maLop], [tenLop], [soSV]) VALUES ('DA22TTC', N'DA22TTC', 41)
INSERT [dbo].[LOP] ([maLop], [tenLop], [soSV]) VALUES ('DA23TTA', N'DA23TTA', 36)
INSERT [dbo].[LOP] ([maLop], [tenLop], [soSV]) VALUES ('DA23TTB', N'DA23TTB', 38)
GO
INSERT [dbo].[MONHOC] ([maMon], [tenMon]) VALUES ('01', N'Kĩ Thuật Lập Trình')
INSERT [dbo].[MONHOC] ([maMon], [tenMon]) VALUES ('02', N'Mạng Máy Tính')
INSERT [dbo].[MONHOC] ([maMon], [tenMon]) VALUES ('03 ', N'Điện Toán Đám Mây')
INSERT [dbo].[MONHOC] ([maMon], [tenMon]) VALUES ('04', N'Lập trình ứng dụng trên Window')
INSERT [dbo].[MONHOC] ([maMon], [tenMon]) VALUES ('05', N'Cấu trúc dữ liệu & giải thuật')
INSERT [dbo].[MONHOC] ([maMon], [tenMon]) VALUES ('06', N'Cơ Sở Dữ Liệu')
INSERT [dbo].[MONHOC] ([maMon], [tenMon]) VALUES ('07', N'Kiến Trúc Máy Tính')
INSERT [dbo].[MONHOC] ([maMon], [tenMon]) VALUES ('08', N'Lập Trình Hướng Đối Tượng')
INSERT [dbo].[MONHOC] ([maMon], [tenMon]) VALUES ('09', N'Thiết kế Web')
INSERT [dbo].[MONHOC] ([maMon], [tenMon]) VALUES ('10', N'Hệ Điều Hành')
INSERT [dbo].[MONHOC] ([maMon], [tenMon]) VALUES ('11', N'Chuyên đề Linux')
INSERT [dbo].[MONHOC] ([maMon], [tenMon]) VALUES ('12', N'Thống kê và Phân tích dữ liệu')
INSERT [dbo].[MONHOC] ([maMon], [tenMon]) VALUES ('13', N'Thương mại điện tử')
INSERT [dbo].[MONHOC] ([maMon], [tenMon]) VALUES ('14', N'Đồ họa ứng dụng')
INSERT [dbo].[MONHOC] ([maMon], [tenMon]) VALUES ('15', N'An toàn và bảo mật thông tin')
INSERT [dbo].[MONHOC] ([maMon], [tenMon]) VALUES ('16', N'Công nghệ phần mềm')
INSERT [dbo].[MONHOC] ([maMon], [tenMon]) VALUES ('17', N'Lập trình thiết bị di động')
INSERT [dbo].[MONHOC] ([maMon], [tenMon]) VALUES ('18', N'Khai khoáng dữ liệu')
INSERT [dbo].[MONHOC] ([maMon], [tenMon]) VALUES ('19', N'Cơ sở trí tuệ nhân tạo')
INSERT [dbo].[MONHOC] ([maMon], [tenMon]) VALUES ('20', N'Hệ quản trị cơ sở dữ liệu')
INSERT [dbo].[MONHOC] ([maMon], [tenMon]) VALUES ('21', N'Phát triển ứng dụng web')
INSERT [dbo].[MONHOC] ([maMon], [tenMon]) VALUES ('22', N'Xây dựng phần mềm ')
INSERT [dbo].[MONHOC] ([maMon], [tenMon]) VALUES ('23', N'Xử lí ảnh')
INSERT [dbo].[MONHOC] ([maMon], [tenMon]) VALUES ('24', N'Tương tác người máy')
INSERT [dbo].[MONHOC] ([maMon], [tenMon]) VALUES ('25', N'Hệ hỗ trợ ra quyết định')
INSERT [dbo].[MONHOC] ([maMon], [tenMon]) VALUES ('26', N'Chuyên đề ASP.NET')
INSERT [dbo].[MONHOC] ([maMon], [tenMon]) VALUES ('27', N'Blockchan')
GO
INSERT [dbo].[ND] ([taiKhoan], [paSs], [maNhom]) VALUES (N'admin', N'123', 1)
INSERT [dbo].[ND] ([taiKhoan], [paSs], [maNhom]) VALUES (N'giangvien', N'giangvien', 2)
INSERT [dbo].[ND] ([taiKhoan], [paSs], [maNhom]) VALUES (N'quanly', N'quanly', 1)
GO
INSERT [dbo].[NHOMND] ([maNhom], [tenNhom]) VALUES (N'001', N'admin')
INSERT [dbo].[NHOMND] ([maNhom], [tenNhom]) VALUES (N'002', N'user')
GO
--INSERT [dbo].[PCGD] ([MaPCGD], [maLop], [maGV], [maHocPhan], [ngayBatDau], [ngayKetThuc], [tietDay], [maPhong]) VALUES (N'PCGD192', N'DA20TTC', N'11', N'03 ', CAST(N'2023-12-25T17:20:43.023' AS DateTime), CAST(N'2023-12-25T17:20:43.017' AS DateTime), N'1', N'B21.204')
--INSERT [dbo].[PCGD] ([MaPCGD], [maLop], [maGV], [maHocPhan], [ngayBatDau], [ngayKetThuc], [tietDay], [maPhong]) VALUES (N'PCGD218', N'DA20TTB', N'10', N'02', CAST(N'2023-12-27T00:56:44.710' AS DateTime), CAST(N'2023-12-27T00:56:44.710' AS DateTime), N'6', N'B21.203')
--INSERT [dbo].[PCGD] ([MaPCGD], [maLop], [maGV], [maHocPhan], [ngayBatDau], [ngayKetThuc], [tietDay], [maPhong]) VALUES (N'PCGD362', N'DA20TTB', N'10', N'02', CAST(N'2023-12-28T14:20:30.610' AS DateTime), CAST(N'2023-12-28T14:20:30.603' AS DateTime), N'8', N'B21.203')
--INSERT [dbo].[PCGD] ([MaPCGD], [maLop], [maGV], [maHocPhan], [ngayBatDau], [ngayKetThuc], [tietDay], [maPhong]) VALUES (N'PCGD526', N'DA20TTA', N'1', N'01', CAST(N'2023-12-28T14:20:30.610' AS DateTime), CAST(N'2023-12-28T14:20:30.603' AS DateTime), N'2', N'B21.202')
--INSERT [dbo].[PCGD] ([MaPCGD], [maLop], [maGV], [maHocPhan], [ngayBatDau], [ngayKetThuc], [tietDay], [maPhong]) VALUES (N'PCGD576', N'DA20TTC', N'11', N'03 ', CAST(N'2023-12-27T00:56:44.710' AS DateTime), CAST(N'2023-12-27T00:56:44.710' AS DateTime), N'3', N'B21.204')
--INSERT [dbo].[PCGD] ([MaPCGD], [maLop], [maGV], [maHocPhan], [ngayBatDau], [ngayKetThuc], [tietDay], [maPhong]) VALUES (N'PCGD659', N'DA20TTA', N'1', N'01', CAST(N'2023-12-25T17:20:43.023' AS DateTime), CAST(N'2023-12-25T17:20:43.017' AS DateTime), N'11', N'B21.202')
--INSERT [dbo].[PCGD] ([MaPCGD], [maLop], [maGV], [maHocPhan], [ngayBatDau], [ngayKetThuc], [tietDay], [maPhong]) VALUES (N'PCGD745', N'DA21TTA', N'12', N'04', CAST(N'2023-12-27T00:56:44.710' AS DateTime), CAST(N'2023-12-27T00:56:44.710' AS DateTime), N'2', N'B31.204')
--INSERT [dbo].[PCGD] ([MaPCGD], [maLop], [maGV], [maHocPhan], [ngayBatDau], [ngayKetThuc], [tietDay], [maPhong]) VALUES (N'PCGD754', N'DA20TTA', N'1', N'01', CAST(N'2023-12-25T17:05:31.640' AS DateTime), CAST(N'2023-12-25T17:05:31.633' AS DateTime), N'10', N'B21.202')
--INSERT [dbo].[PCGD] ([MaPCGD], [maLop], [maGV], [maHocPhan], [ngayBatDau], [ngayKetThuc], [tietDay], [maPhong]) VALUES (N'PCGD854', N'DA20TTB', N'10', N'02', CAST(N'2023-12-25T17:20:43.023' AS DateTime), CAST(N'2023-12-25T17:20:43.017' AS DateTime), N'5', N'B21.203')
--INSERT [dbo].[PCGD] ([MaPCGD], [maLop], [maGV], [maHocPhan], [ngayBatDau], [ngayKetThuc], [tietDay], [maPhong]) VALUES (N'PCGD858', N'DA20TTA', N'1', N'01', CAST(N'2023-12-27T00:56:44.710' AS DateTime), CAST(N'2023-12-27T00:56:44.710' AS DateTime), N'12', N'B21.202')
GO
INSERT [dbo].[PHONGHOC] ([maPhong], [tenPhong], [soBan]) VALUES ('B21.202', N'LT', N'17')
INSERT [dbo].[PHONGHOC] ([maPhong], [tenPhong], [soBan]) VALUES ('B21.203', N'LT', N'19')
INSERT [dbo].[PHONGHOC] ([maPhong], [tenPhong], [soBan]) VALUES ('B21.204', N'LT', N'15')
INSERT [dbo].[PHONGHOC] ([maPhong], [tenPhong], [soBan]) VALUES ('B31.204', N'LT', N'12')
INSERT [dbo].[PHONGHOC] ([maPhong], [tenPhong], [soBan]) VALUES ('D71.106', N'TH', N'4')
INSERT [dbo].[PHONGHOC] ([maPhong], [tenPhong], [soBan]) VALUES ('D71.107', N'TH', N'13')
INSERT [dbo].[PHONGHOC] ([maPhong], [tenPhong], [soBan]) VALUES ('D71.108', N'TH', N'13')
INSERT [dbo].[PHONGHOC] ([maPhong], [tenPhong], [soBan]) VALUES ('D71.109', N'TH', N'14')
INSERT [dbo].[PHONGHOC] ([maPhong], [tenPhong], [soBan]) VALUES ('D71.110', N'TH', N'13')
INSERT [dbo].[PHONGHOC] ([maPhong], [tenPhong], [soBan]) VALUES ('D71.111', N'TH', N'14')
GO


create procedure spCheckLogin
(
		@username		varchar(100),
		@password		varchar(250)
)
	as
	Begin
				select	* from ND
				where	taiKhoan= @username
				and		paSs=@password				
	End
Go

	
ALTER TABLE ND ALTER COLUMN maNhom INT;

GO

create view XemPhanCong as
select MaPCGD,tenGV,maPhong,maHocPhan,maLop,ngayBatDau,ngayKetThuc from PCGD,HSGV
where PCGD.maGV=HSGV.maGV

GO

select*from ND

select*from XemPhanCong

GO
	
ALTER TABLE HSGV
ADD CONSTRAINT FK_HSGV_maNhom
    FOREIGN KEY (maToMon)
    REFERENCES MONHOC(maMon);

GO
select*from HSGV
GO

ALTER TABLE ND
ADD CONSTRAINT FK_ND_NhomND
    FOREIGN KEY (maNhom)
    REFERENCES NHOMND(maNhom);

GO

ALTER TABLE CTDT
ADD CONSTRAINT FK_maMon_CTDT
    FOREIGN KEY (maMon)
    REFERENCES MONHOC(maMon);

GO

ALTER TABLE PCGD
ADD CONSTRAINT FK_monHoc_PCGD
    FOREIGN KEY (maHocPhan)
    REFERENCES MONHOC(maMon);

GO

ALTER TABLE PCGD
ADD CONSTRAINT FK_maGV_PCGD
    FOREIGN KEY (maGV)
    REFERENCES HSGV(maGV);

GO

ALTER TABLE PCGD
ADD CONSTRAINT FK_maLop_PCGD
    FOREIGN KEY (maLop)
    REFERENCES LOP(maLop);

GO

ALTER TABLE PCGD
ADD CONSTRAINT FK_maPhong_PCGD
    FOREIGN KEY (maPhong)
    REFERENCES PHONGHOC(maPhong);