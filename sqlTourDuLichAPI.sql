CREATE DATABASE QLTOURDL_API
USE [QLTOURDL_API]
GO
/****** Object:  Table [dbo].[AnhTin]    Script Date: 4/18/2023 11:03:15 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AnhTin](
	[TenFileAnh] [nvarchar](50) NOT NULL,
	[ViTri] [nvarchar](50) NULL,
	[MaTin] [nvarchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[TenFileAnh] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Booking]    Script Date: 4/18/2023 11:03:15 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Booking](
	[MaBK] [nvarchar](50) NOT NULL,
	[NgayDi] [date] NOT NULL,
	[SoChoBooking] [int] NOT NULL,
	[NgayDat] [date] NOT NULL,
	[MaTour] [nvarchar](50) NOT NULL,
	[MaKH] [nvarchar](50) NOT NULL,
	[MaNV] [nvarchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[MaBK] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DiaDiemTour]    Script Date: 4/18/2023 11:03:15 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DiaDiemTour](
	[MaDD] [nvarchar](50) NOT NULL,
	[ViTriAnh] [nvarchar](50) NOT NULL,
	[MaTour] [nvarchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[MaDD] ASC,
	[MaTour] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DiemThamQuan]    Script Date: 4/18/2023 11:03:15 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DiemThamQuan](
	[Tendiadiem] [nvarchar](50) NOT NULL,
	[MaDD] [nvarchar](50) NOT NULL,
	[Mien] [nvarchar](50) NOT NULL,
	[TenFileAnh] [nvarchar](50) NOT NULL,
	[MoTa] [nvarchar](4000) NULL,
PRIMARY KEY CLUSTERED 
(
	[MaDD] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[KhachHang]    Script Date: 4/18/2023 11:03:15 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KhachHang](
	[NgaySinh] [date] NOT NULL,
	[SDT] [nvarchar](50) NOT NULL,
	[MaKH] [nvarchar](50) NOT NULL,
	[TenKH] [nvarchar](50) NOT NULL,
	[DiaChi] [nvarchar](50) NOT NULL,
	[GioiTinh] [nvarchar](50) NOT NULL,
	[Email] [nvarchar](50) NOT NULL,
	[UserName] [nvarchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[MaKH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[KhachSan]    Script Date: 4/18/2023 11:03:15 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KhachSan](
	[MaKS] [nvarchar](50) NOT NULL,
	[TenKS] [nvarchar](50) NOT NULL,
	[DiaChi] [nvarchar](50) NOT NULL,
	[SDT] [nvarchar](50) NOT NULL,
	[XepHang_KS] [int] NOT NULL,
	[TenFileAnh] [nvarchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[MaKS] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[KhachSanTour]    Script Date: 4/18/2023 11:03:15 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KhachSanTour](
	[ViTriAnh] [nvarchar](50) NULL,
	[MaKS] [nvarchar](50) NOT NULL,
	[MaTour] [nvarchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[MaKS] ASC,
	[MaTour] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NhanVien]    Script Date: 4/18/2023 11:03:15 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NhanVien](
	[GioiTinh] [nvarchar](50) NOT NULL,
	[MaNV] [nvarchar](50) NOT NULL,
	[TenNV] [nvarchar](50) NOT NULL,
	[SoDienThoai] [nvarchar](50) NOT NULL,
	[DiaChi] [nvarchar](50) NOT NULL,
	[UserName] [nvarchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[MaNV] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TaiKhoan]    Script Date: 4/18/2023 11:03:15 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TaiKhoan](
	[UserName] [nvarchar](50) NOT NULL,
	[Password] [nvarchar](50) NOT NULL,
	[Loai] [int] NOT NULL,
	[ConfirmPassword] [nvarchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[UserName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TinTuc]    Script Date: 4/18/2023 11:03:15 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TinTuc](
	[MaTin] [nvarchar](50) NOT NULL,
	[Anh] [nvarchar](50) NOT NULL,
	[MoTa] [varchar](4000) NOT NULL,
	[NoiDung] [varchar](4000) NOT NULL,
	[MaNV] [nvarchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[MaTin] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tour]    Script Date: 4/18/2023 11:03:15 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tour](
	[MaTour] [nvarchar](50) NOT NULL,
	[TenTour] [nvarchar](50) NOT NULL,
	[GiaCho] [int] NOT NULL,
	[Anh] [nvarchar](50) NOT NULL,
	[DiemXuatPhat] [nvarchar](50) NOT NULL,
	[XepHangTour] [int] NOT NULL,
	[SoNgayDL] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[MaTour] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[AnhTin] ([TenFileAnh], [ViTri], [MaTin]) VALUES (N'anhtt10.jpg', NULL, N'TT10')
INSERT [dbo].[AnhTin] ([TenFileAnh], [ViTri], [MaTin]) VALUES (N'anhtt5.jpg', NULL, N'TT05')
INSERT [dbo].[AnhTin] ([TenFileAnh], [ViTri], [MaTin]) VALUES (N'anhtt6.jpg', NULL, N'TT06')
INSERT [dbo].[AnhTin] ([TenFileAnh], [ViTri], [MaTin]) VALUES (N'anhtt7.jpg', NULL, N'TT07')
INSERT [dbo].[AnhTin] ([TenFileAnh], [ViTri], [MaTin]) VALUES (N'anhtt8.jpg', NULL, N'TT08')
INSERT [dbo].[AnhTin] ([TenFileAnh], [ViTri], [MaTin]) VALUES (N'anhtt9.jpg', NULL, N'TT09')
GO
INSERT [dbo].[Booking] ([MaBK], [NgayDi], [SoChoBooking], [NgayDat], [MaTour], [MaKH], [MaNV]) VALUES (N'BK03', CAST(N'2022-12-23' AS Date), 6, CAST(N'2022-12-23' AS Date), N'MT03', N'KH03', N'NV03')
INSERT [dbo].[Booking] ([MaBK], [NgayDi], [SoChoBooking], [NgayDat], [MaTour], [MaKH], [MaNV]) VALUES (N'BK04', CAST(N'2022-12-23' AS Date), 7, CAST(N'2022-12-23' AS Date), N'MT04', N'KH04', N'NV04')
INSERT [dbo].[Booking] ([MaBK], [NgayDi], [SoChoBooking], [NgayDat], [MaTour], [MaKH], [MaNV]) VALUES (N'BK05', CAST(N'2022-12-23' AS Date), 5, CAST(N'2022-12-23' AS Date), N'MT05', N'KH05', N'NV05')
INSERT [dbo].[Booking] ([MaBK], [NgayDi], [SoChoBooking], [NgayDat], [MaTour], [MaKH], [MaNV]) VALUES (N'BK06', CAST(N'2022-12-23' AS Date), 7, CAST(N'2022-12-23' AS Date), N'MT06', N'KH06', N'NV06')
INSERT [dbo].[Booking] ([MaBK], [NgayDi], [SoChoBooking], [NgayDat], [MaTour], [MaKH], [MaNV]) VALUES (N'BK07', CAST(N'2022-12-23' AS Date), 6, CAST(N'2022-12-23' AS Date), N'MT07', N'KH07', N'NV07')
INSERT [dbo].[Booking] ([MaBK], [NgayDi], [SoChoBooking], [NgayDat], [MaTour], [MaKH], [MaNV]) VALUES (N'BK08', CAST(N'2022-12-23' AS Date), 5, CAST(N'2022-12-23' AS Date), N'MT08', N'KH08', N'NV08')
INSERT [dbo].[Booking] ([MaBK], [NgayDi], [SoChoBooking], [NgayDat], [MaTour], [MaKH], [MaNV]) VALUES (N'BK09', CAST(N'2022-12-23' AS Date), 7, CAST(N'2022-12-23' AS Date), N'MT09', N'KH09', N'NV09')
INSERT [dbo].[Booking] ([MaBK], [NgayDi], [SoChoBooking], [NgayDat], [MaTour], [MaKH], [MaNV]) VALUES (N'BK10', CAST(N'2022-12-23' AS Date), 4, CAST(N'2022-12-23' AS Date), N'MT10', N'KH10', N'NV10')
GO
INSERT [dbo].[DiaDiemTour] ([MaDD], [ViTriAnh], [MaTour]) VALUES (N'DD01', N'khong', N'MT01')
INSERT [dbo].[DiaDiemTour] ([MaDD], [ViTriAnh], [MaTour]) VALUES (N'DD02', N'khong', N'MT01')
INSERT [dbo].[DiaDiemTour] ([MaDD], [ViTriAnh], [MaTour]) VALUES (N'DD03', N'khong', N'MT02')
INSERT [dbo].[DiaDiemTour] ([MaDD], [ViTriAnh], [MaTour]) VALUES (N'DD04', N'khong', N'MT02')
INSERT [dbo].[DiaDiemTour] ([MaDD], [ViTriAnh], [MaTour]) VALUES (N'DD05', N'khong', N'MT03')
INSERT [dbo].[DiaDiemTour] ([MaDD], [ViTriAnh], [MaTour]) VALUES (N'DD06', N'khong', N'MT03')
INSERT [dbo].[DiaDiemTour] ([MaDD], [ViTriAnh], [MaTour]) VALUES (N'DD07', N'khong', N'MT04')
INSERT [dbo].[DiaDiemTour] ([MaDD], [ViTriAnh], [MaTour]) VALUES (N'DD08', N'khong', N'MT04')
INSERT [dbo].[DiaDiemTour] ([MaDD], [ViTriAnh], [MaTour]) VALUES (N'DD09', N'khong', N'MT05')
INSERT [dbo].[DiaDiemTour] ([MaDD], [ViTriAnh], [MaTour]) VALUES (N'DD10', N'khong', N'MT05')
INSERT [dbo].[DiaDiemTour] ([MaDD], [ViTriAnh], [MaTour]) VALUES (N'DD11', N'khong', N'MT06')
INSERT [dbo].[DiaDiemTour] ([MaDD], [ViTriAnh], [MaTour]) VALUES (N'DD12', N'khong', N'MT06')
INSERT [dbo].[DiaDiemTour] ([MaDD], [ViTriAnh], [MaTour]) VALUES (N'DD13', N'khong', N'MT07')
INSERT [dbo].[DiaDiemTour] ([MaDD], [ViTriAnh], [MaTour]) VALUES (N'DD14', N'khong', N'MT07')
INSERT [dbo].[DiaDiemTour] ([MaDD], [ViTriAnh], [MaTour]) VALUES (N'DD15', N'khong', N'MT08')
INSERT [dbo].[DiaDiemTour] ([MaDD], [ViTriAnh], [MaTour]) VALUES (N'DD16', N'khong', N'MT08')
INSERT [dbo].[DiaDiemTour] ([MaDD], [ViTriAnh], [MaTour]) VALUES (N'DD17', N'khong', N'MT09')
INSERT [dbo].[DiaDiemTour] ([MaDD], [ViTriAnh], [MaTour]) VALUES (N'DD18', N'khong', N'MT09')
INSERT [dbo].[DiaDiemTour] ([MaDD], [ViTriAnh], [MaTour]) VALUES (N'DD19', N'khong', N'MT10')
INSERT [dbo].[DiaDiemTour] ([MaDD], [ViTriAnh], [MaTour]) VALUES (N'DD20', N'khong', N'MT10')
GO
INSERT [dbo].[DiemThamQuan] ([Tendiadiem], [MaDD], [Mien], [TenFileAnh], [MoTa]) VALUES (N'Tràng An', N'DD01', N'Bắc', N'trangan1.jpg', N'Khu du lịch sinh thái Tràng An là một khu du lịch sinh thái nằm trong Quần thể di sản thế giới Tràng An thuộc tỉnh Ninh Bình. Nơi đây đã được Chính phủ Việt Nam xếp hạng di tích quốc gia đặc biệt quan trọng và UNESCO công nhận là di sản thế giới kép từ năm 2014.')
INSERT [dbo].[DiemThamQuan] ([Tendiadiem], [MaDD], [Mien], [TenFileAnh], [MoTa]) VALUES (N'Chùa Bái Đính', N'DD02', N'Bắc', N'baidinh1.jpg', N'Chùa Bái Đính là một quần thể chùa lớn với nhiều kỷ lục châu Á và Việt Nam được xác lập như chùa có tượng Phật bằng đồng dát vàng lớn nhất châu Á, chùa có hành lang La Hán dài nhất châu Á, có tượng Di lặc bằng đồng lớn nhất Đông Nam Á... Đây là ngôi chùa lớn nhất và sở hữu nhiều kỷ lục nhất ở Việt Nam.')
INSERT [dbo].[DiemThamQuan] ([Tendiadiem], [MaDD], [Mien], [TenFileAnh], [MoTa]) VALUES (N'Vịnh Hạ Long', N'DD03', N'Bắc', N'vinhhalong1.jpg', N'Vịnh Hạ Long là một vịnh nhỏ thuộc phần bờ tây vịnh Bắc Bộ tại khu vực biển Đông Bắc Việt Nam, bao gồm vùng biển đảo của thành phố Hạ Long thuộc tỉnh Quảng Ninh')
INSERT [dbo].[DiemThamQuan] ([Tendiadiem], [MaDD], [Mien], [TenFileAnh], [MoTa]) VALUES (N'Tuần Châu', N'DD04', N'Bắc', N'tuanchau1.jpg', N'Tuần Châu là một phường đảo thuộc thành phố Hạ Long, Quảng Ninh, Việt Nam. Tuần Châu hiện trở thành một khu du lịch, nghỉ dưỡng của Hạ Long, Hòn đảo đang phát triển với các điểm thu hút khách du lịch, bãi biển và các hoạt động vui chơi giải trí.')
INSERT [dbo].[DiemThamQuan] ([Tendiadiem], [MaDD], [Mien], [TenFileAnh], [MoTa]) VALUES (N'Thung Lũng Mường Hoa - Swing Sapa', N'DD05', N'Bắc', N'thunglungmuonghoa1.jpg', N'Thung lũng Mường Hoa nằm ở xã Hầu Thào, cách trung tâm thị trấn Sapa chừng 10km theo hướng Đông Nam. Đây là nơi sinh sống của các đồng bào người dân tộc H’Mông đen, Dao đỏ, người Giáy…
Để đến được Mường Hoa bạn sẽ phải vượt qua các dãy núi cao. Tuy đường ngoằn ngoèo, không hề dễ đi xong giá trị mà bạn nhận được lại vô cùng tuyệt vời.')
INSERT [dbo].[DiemThamQuan] ([Tendiadiem], [MaDD], [Mien], [TenFileAnh], [MoTa]) VALUES (N'Bản Tả Van - Bản Sín Chải', N'DD06', N'Bắc', N'bantava1.jpg', N'Bản Tả Van , một trong số ít các bản của người dân tộc miền núi tại Sapa mà ta có thể dễ dàng đến được. Tại Tả Van cuộc sống người dẫn vẫn rất bình dị , yên ả, không ồn ào và bị đô thị hóa như các bản khác. Hãy dành vài phút ngắn ngủ cùng Cuồng tìm hiểu về Tả Van cùng nét văn hóa của người dân tộc nơi đây nhé.')
INSERT [dbo].[DiemThamQuan] ([Tendiadiem], [MaDD], [Mien], [TenFileAnh], [MoTa]) VALUES (N'Thác Bản Dốc - Đèo Mã Phục', N'DD07', N'Bắc', N'thacbandoc1.jpg', N'Theo quan điểm của Trung Quốc thì thác chính và thác phụ là hai thác riêng biệt, thác chính (Đức Thiên) có chiều rộng 100 m, độ sâu 60 m và độ cao là 70 m. Theo quan điểm của phía Việt Nam, thác Bản Giốc bao gồm cả thác chính và phụ với tổng chiều rộng là 208 m.[2] Thác Bản Giốc được chia thành hai phần, phần ở phía Nam gọi là thác Cao, đây là thác phụ vì lượng nước không lớn. Thác Thấp là thác chính nằm ở phía Bắc trên biên giới Việt Trung.')
INSERT [dbo].[DiemThamQuan] ([Tendiadiem], [MaDD], [Mien], [TenFileAnh], [MoTa]) VALUES (N'Hồ Thang Hen - Động Ngườm Ngao', N'DD08', N'Bắc', N'dongnguomngao1.jpg', N'Từ Thành phố Cao Bằng dọc theo quốc lộ 3 đến địa phận đèo Mã Phục, theo tỉnh lộ 205 về huyện Trà Lĩnh gần 10 km, du khách đến hồ Thang Hen sẽ được chiêm ngưỡng cảnh sắc thiên nhiên tuyệt đẹp. Với vách đá dựng đứng thuộc địa hình cacxtơ của những dãy núi trùng điệp bao quanh hồ, nhiều khối đá bị xẻ tạo thành những chiếc răng bừa khổng lồ. Có nơi, núi lô xô một sườn dựng đứng, một sườn thoai thoải tạo cảm giác như những dãy nhà một mái nối tiếp nhau. Hồ Thang Hen là một chuỗi liên hoàn các hồ nhỏ chạy dọc theo thung lũng đá vôi. Do quá trình đá trên trần kênh động ngầm của con sông Trà Lĩnh bị sụt xuống tạo thành hồ.')
INSERT [dbo].[DiemThamQuan] ([Tendiadiem], [MaDD], [Mien], [TenFileAnh], [MoTa]) VALUES (N'Đỉnh Pha Luông - Đồi Chè Trái Tim', N'DD09', N'Bắc', N'dinhphaluong1.jpg', N'Được mệnh danh là cổng trời của Mộc Châu, đỉnh Pha Luông nằm giữa biên giới Việt - Lào. Chẳng thể nào tả hết nổi cảm xúc khi leo lên đây cả Đỉnh Pha Luông có độ cao gần 2.000m so với mực nước biển, nằm cách Mộc Châu khoảng 40km, thuộc xã Tân Xuân, Chiềng Xuân. Núi Pha Luông hay còn gọi là Bờ Lung, tiếp giáp với biên giới Việt  Lào về phái đông và thuộc huyện Mộc Châu, tỉnh Sơn La.')
INSERT [dbo].[DiemThamQuan] ([Tendiadiem], [MaDD], [Mien], [TenFileAnh], [MoTa]) VALUES (N'Cao Nguyên Mộc Châu ', N'DD10', N'Bắc', N'mocchau1.jpg', N'Cao nguyên Mộc Châu thuộc huyện Mộc Châu, tỉnh Sơn La. Cao nguyên Mộc Châu có độ cao trung bình 1.050 m so với mực nước biển, mang đặc trưng của khí hậu cận ôn đới, đất đai màu mỡ phì nhiêu, thuận lợi cho phát triển cây chè, cây ăn quả (mận, đào) và chăn nuôi bò sữa. 

Cao nguyên Mộc Châu cách Hà Nội khoảng 200 km theo quốc lộ 6. Người Thái, người Mông là các dân tộc thiểu số chiếm số đông ở Mộc Châu. Vào ngày 1 tháng 9 hằng năm, người Mông từ khắp vùng Tây Bắc tập trung về Mộc Châu và biến thị trấn này thành một ngày hội đặc biệt. Ở Mộc Châu, các dịch vụ du lịch còn chưa phát triển, nếu không còn khách sạn có thể thuê nhà để ở với giá rẻ.')
INSERT [dbo].[DiemThamQuan] ([Tendiadiem], [MaDD], [Mien], [TenFileAnh], [MoTa]) VALUES (N'Pa A Chải - Mường Nhé', N'DD11', N'Bắc', N'paachai1.jpg', N'Nằm ở phía Tây Bắc, bản A Pa Chải đi khoảng 8km theo đường thẳng là đỉnh Khoan La San cao 1864 m so với mực nước biển. Đây đồng thời cũng là điểm đặt cột mốc biên giới của 3 nước Việt Nam, Trung Quốc và Lào (cột mốc số 0). Nơi này được mệnh danh là “nơi một con gà gáy cả ba nước đều nghe“. Cột mốc này cách tỉnh Điện Biên Phủ khoảng 250km. 

Nơi đây chủ yếu là người Hà Nhì (hay còn gọi là Ha Ni, U Ní, Xá U Ní) – một dân tộc sống ở Đông Nam Á và lân cận bên Trung Quốc. Họ cùng chung sống với các  dân tộc thiểu số khác ở A Pa Chải. Cái tên A Pa Chải trong tiếng Hà Nhì có nghĩa là vùng đất bằng phẳng và rộng lớn.')
INSERT [dbo].[DiemThamQuan] ([Tendiadiem], [MaDD], [Mien], [TenFileAnh], [MoTa]) VALUES (N'Đèo Pha Đin', N'DD12', N'Bắc', N'deophadin1.jpg', N'Tên gọi đèo Pha Đin nguyên gốc xuất xứ từ tiếng Thái, Pha đin, trong đó Pha nghĩa là "Trời", Đin là "Đất" hàm nghĩa nơi đây là chỗ nơi đất trời gặp nhau.

Người Lai Châu cũ (nay là Điện Biên) và Sơn La từ xa xưa còn lưu truyền câu chuyện kể về cuộc bàn thảo tìm cách vạch định ranh giới của hai địa phương bằng một cuộc đua ngựa vượt dốc Pha Đin. Người và ngựa của cả hai phía đều đồng thời xuất phát từ hai dốc đèo. Hai dũng sĩ và hai con tuấn mã đều có sức mạnh và ý chí như nhau nên khoảng cách mà họ đi được cho tới địa điểm gặp nhau trên đèo không chênh lệch bao nhiêu. Tuy vậy, phần ngựa Lai Châu phi nhanh hơn nên phần đèo thuộc về Lai Châu dài hơn một chút so với phần phía Sơn La[4].')
INSERT [dbo].[DiemThamQuan] ([Tendiadiem], [MaDD], [Mien], [TenFileAnh], [MoTa]) VALUES (N'Thành Nhà Mạc - Thành Cổ Lạng Sơn', N'DD13', N'Bắc', N'thanhnhacmac1.jpg', N'Thành nhà Mạc ở tỉnh Lạng Sơn là một di tích lịch sử văn hóa ở phường Tam Thanh, thành phố Lạng Sơn, tỉnh Lạng Sơn, Việt Nam. Đây là một trong số khá ít di tích còn lại của thời kỳ nhà Mạc trong lịch sử Việt Nam. Thành nhà Mạc cùng với núi Tô Thị được xem là hai di tích bộ mặt của tỉnh Lạng Sơn, Dấu tích hiện nay còn lại gồm 2 đoạn tường thành xây bằng đá giữa hẻm núi giữa ba ngọn núi cao, trong đó gồm hai ngọn núi Tô Thị và núi Lô Cốt. Bức tường thành phía tây bắc, xây bằng đá hộc miết mạch vôi cát có chiều dài 65m, chiều cao 4m, có cửa công, lỗ châu mai, cửa ra vào. Bức phía đông dài 75 m cũng có cổng ra vào, 15 lỗ châu mai, 7 cửa công.')
INSERT [dbo].[DiemThamQuan] ([Tendiadiem], [MaDD], [Mien], [TenFileAnh], [MoTa]) VALUES (N'Núi Tô Thị - Ải Chi Lăng', N'DD14', N'Bắc', N'nuitothi1.jpg', N'Núi Tô Thị (còn gọi là núi Vọng Phu) là một ngọn núi tại phường Tam Thanh, thành phố Lạng Sơn, tỉnh Lạng Sơn. Trên đỉnh núi có tảng đá tự nhiên giống hình người phụ nữ bồng con nhìn về phương xa. Núi Tô Thị không chỉ nổi bật ở cảnh quan tự nhiên, kiến trúc ngôi chùa động linh thiêng, độc đáo mà còn lưu giữ trong mình nhiều giá trị đặc biệt quan trọng về văn hóa, nghệ thuật và lịch sử gắn liền với các văn sĩ nổi tiếng như Ngô Thì Sĩ, Nguyễn Du. 

Gần núi Tô Thị có các địa điểm tham quan nổi tiếng như: Chùa Thành, đền Kỳ Cùng, chùa Tiên, chợ Kỳ Lừa...')
INSERT [dbo].[DiemThamQuan] ([Tendiadiem], [MaDD], [Mien], [TenFileAnh], [MoTa]) VALUES (N'Quần thể các Lăng vua nhà Nguyễn', N'DD15', N'Trung', N'langvua1.jpg', N'Nhắc đến lăng tẩm Huế, chúng ta không thể bỏ qua lăng Gia Long. Nằm trong quần thể hệ thống lăng tẩm ở Huế, lăng Gia Long được xây dựng trong vòng 6 năm và có chu vi rộng đến gần 12.000 mét. Vì tọa lạc tại quần sơn Đại Thiên Thọ nên lăng Gia Long còn có tên gọi khác là Thiên Thọ Lăng. 

Bao quanh lăng là những thế núi hùng vĩ, tráng lệ với ngọn Đại Thiên Thọ “bảo vệ” phía trước cùng 28 dáng núi nhỏ bao bọc tả hữu xung quanh. Không gian quanh lăng xanh mát và yên tĩnh, gợi nên nét trang nghiêm, uy nghi của vị vua nhà Nguyễn đầu tiên của Việt Nam.')
INSERT [dbo].[DiemThamQuan] ([Tendiadiem], [MaDD], [Mien], [TenFileAnh], [MoTa]) VALUES (N'Kinh Thành Huế', N'DD16', N'Trung', N'kinhthanhhue1.jpg', N'Kinh thành Huế được vua Gia Long tiến hành khảo sát từ năm 1803, khởi công xây dựng từ 1805 và hoàn chỉnh vào năm 1832 dưới triều vua Minh Mạng. Hiện nay, Kinh thành Huế thuộc địa phận bốn phường Đông Ba, Tây Lộc, Thuận Hòa, Thuận Lộc của thành phố Huế, có ranh giới như sau: phía nam giáp đường Trần Hưng Đạo và đường Lê Duẩn; phía tây giáp đường Lê Duẩn; phía bắc giáp đường Tăng Bạt Hổ và đường Đào Duy Anh; phía đông giáp đường Phan Đăng Lưu và đường Huỳnh Thúc Kháng.')
INSERT [dbo].[DiemThamQuan] ([Tendiadiem], [MaDD], [Mien], [TenFileAnh], [MoTa]) VALUES (N'Bán Đảo Sơn Trà', N'DD17', N'Trung', N'bandaosontra1.jpg', N'Bán đảo Sơn Trà nằm cách trung tâm thành phố Đà Nẵng chừng 10 km về hướng Đông Bắc. Sơn Trà có diện tích 60 kilômét vuông (23 dặm vuông Anh), chiều dài 13 kilômét (8,1 mi), chiều rộng 5 kilômét (3,1 mi), nơi hẹp nhất 2 kilômét (1,2 mi). Bán đảo Sơn Trà cùng với đèo Hải Vân bao bọc thành phố Đà Nẵng và vịnh Đà Nẵng. Cầu Thuận Phước - cầu treo đẹp nhất Đà Nẵng và kỷ lục của Việt Nam được bắc qua bán đảo này. Bán đảo Sơn Trà nhiều thắng cảnh thiên nhiên và trong tương lai không xa sẽ trở thành khu du lịch nổi tiếng của thành phố và của cả nước.')
INSERT [dbo].[DiemThamQuan] ([Tendiadiem], [MaDD], [Mien], [TenFileAnh], [MoTa]) VALUES (N'Những bãi biển đẹp ở Đá nẵng', N'DD18', N'Trung', N'baibiendep1.jpg', N'Bãi biển Mỹ Khê Đà Nẵng cách trung tâm thành phố Đà Nẵng hơn 10km về phía Đông, cạnh bờ sông Kinh. Biển nổi tiếng với vẻ đẹp thơ mộng có biển xanh, cát trắng và nắng vàng. Bên cạnh đó, thiên nhiên cũng ưu ái ban tặng cho Mỹ Khê cánh rừng dương xanh ngát & hàng dừa thẳng tắp sừng sững giữa trời.

Chính vẻ đẹp nên thơ ấy đã đưa biển Mỹ Khê góp mặt trong danh sách “6 bãi biển quyến rũ nhất hành tinh” - theo tờ Forbes, tạp chí kinh tế hàng đầu tại Mỹ. Tờ “Sunday Herald Sun” từ Australia cũng từng khẳng định Mỹ Khê là một trong 10 bãi biển châu Á được yêu thích nhất trên thế giới.')
INSERT [dbo].[DiemThamQuan] ([Tendiadiem], [MaDD], [Mien], [TenFileAnh], [MoTa]) VALUES (N'Chợ nổi Cái Răng', N'DD19', N'Nam', N'chonoicairang1.jpg', N'Chợ nổi Cái Răng là loại hình chợ độc đáo và đặc trưng của vùng đồng bằng sông Cửu Long mà không nơi nào trên đất nước Việt Nam có được. Và đây cũng là khu chợ tiêu biểu, sầm uất, nổi tiếng nhất cho nét văn hóa sông nước miền Tây.')
INSERT [dbo].[DiemThamQuan] ([Tendiadiem], [MaDD], [Mien], [TenFileAnh], [MoTa]) VALUES (N'Giàn Gừa - Cần Thơ', N'DD20', N'Nam', N'giangua1.jpg', N'Khu di tích Giàn Gừa thuộc ấp Nhơn Khánh, xã Nhơn Nghĩa, huyện Phong Điền, thành phố Cần Thơ. Cách trung tâm thành phố Cần Thơ 14km, có 2 con đường để đến Di tích lịch sử Giàn Gừa: một là đi theo hướng lộ Vòng Cung trên địa bàn xã Mỹ Khánh, huyện Phong Điền, qua phà đến xã Nhơn Nghĩa rồi hỏi thăm đường đi; hai là đi từ Cần Thơ về Hậu Giang, rẽ vào quốc lộ 61B (đường đi Vị Thanh), đến gần chân cầu Rạch Sung, quẹo trái, có bảng chỉ dẫn đường vào di tích.')
GO
INSERT [dbo].[KhachHang] ([NgaySinh], [SDT], [MaKH], [TenKH], [DiaChi], [GioiTinh], [Email], [UserName]) VALUES (CAST(N'1998-12-02' AS Date), N'0988362445', N'KH01', N'Nguyen Van Manh', N'Ha Noi', N'Nam', N'asdasdas@gmail.com', N'Manh')
INSERT [dbo].[KhachHang] ([NgaySinh], [SDT], [MaKH], [TenKH], [DiaChi], [GioiTinh], [Email], [UserName]) VALUES (CAST(N'1998-12-02' AS Date), N'0654846845', N'KH02', N'Bui Van Tuan', N'Bac Giang', N'Nam', N'zxcxczxc@gmai.com', N'Tuan')
INSERT [dbo].[KhachHang] ([NgaySinh], [SDT], [MaKH], [TenKH], [DiaChi], [GioiTinh], [Email], [UserName]) VALUES (CAST(N'1994-10-02' AS Date), N'0468484968', N'KH03', N'Do Duc Viet', N'Hai Duong', N'Nam', N'czxc@gmail.com', N'Viet')
INSERT [dbo].[KhachHang] ([NgaySinh], [SDT], [MaKH], [TenKH], [DiaChi], [GioiTinh], [Email], [UserName]) VALUES (CAST(N'1994-10-25' AS Date), N'0687448114', N'KH04', N'Nguyen Huu But', N'Nam Dinh', N'Nam ', N'dsfmnn@gmail.com', N'But')
INSERT [dbo].[KhachHang] ([NgaySinh], [SDT], [MaKH], [TenKH], [DiaChi], [GioiTinh], [Email], [UserName]) VALUES (CAST(N'1994-10-29' AS Date), N'0564442145', N'KH05', N'Nguyen Ngoc Anh', N'Bac Ninh', N'Nu', N'savccv@gmail.com', N'Anh')
INSERT [dbo].[KhachHang] ([NgaySinh], [SDT], [MaKH], [TenKH], [DiaChi], [GioiTinh], [Email], [UserName]) VALUES (CAST(N'1994-10-20' AS Date), N'0456474874', N'KH06', N'Nguyen Hong ngoc', N'hai Duong', N'Nu', N'asaccxv@gmail.com', N'Ngoc')
INSERT [dbo].[KhachHang] ([NgaySinh], [SDT], [MaKH], [TenKH], [DiaChi], [GioiTinh], [Email], [UserName]) VALUES (CAST(N'1994-10-24' AS Date), N'0564844174', N'KH07', N'Bui Xuan Quynh', N'Vinh Phuc', N'Nu', N'sdvvcxb@gmail.com', N'Quynh')
INSERT [dbo].[KhachHang] ([NgaySinh], [SDT], [MaKH], [TenKH], [DiaChi], [GioiTinh], [Email], [UserName]) VALUES (CAST(N'1994-10-20' AS Date), N'0562548644', N'KH08', N'Nguyen Nam Tien', N'Nghe An', N'Nam', N'vfdgdg@gmail.com', N'Tien')
INSERT [dbo].[KhachHang] ([NgaySinh], [SDT], [MaKH], [TenKH], [DiaChi], [GioiTinh], [Email], [UserName]) VALUES (CAST(N'1994-10-20' AS Date), N'0356486487', N'KH09', N'Vu Trung Duc', N'Ha Tinh', N'Nam ', N'dfsvsdcv@gmail.com', N'Duc')
INSERT [dbo].[KhachHang] ([NgaySinh], [SDT], [MaKH], [TenKH], [DiaChi], [GioiTinh], [Email], [UserName]) VALUES (CAST(N'1994-10-20' AS Date), N'0564878944', N'KH10', N'Luu Van Vu', N'Thanh Hoa', N'Nam ', N'dsfvsjdf@gmail.com', N'Vu')
GO
INSERT [dbo].[KhachSan] ([MaKS], [TenKS], [DiaChi], [SDT], [XepHang_KS], [TenFileAnh]) VALUES (N'KS01', N'Khách sạn Ninh Bình', N'Ninh BÌnh', N'0998556221', 5, N'ksNinhBinh.jpg')
INSERT [dbo].[KhachSan] ([MaKS], [TenKS], [DiaChi], [SDT], [XepHang_KS], [TenFileAnh]) VALUES (N'KS02', N'Khách sạn Hạ Long', N'Hạ Long', N'0951256132', 5, N'ksHaLong.jpg')
INSERT [dbo].[KhachSan] ([MaKS], [TenKS], [DiaChi], [SDT], [XepHang_KS], [TenFileAnh]) VALUES (N'KS03', N'Khách sạn SaPa', N'SaPa', N'0955653135', 5, N'ksSaPa.jpg')
INSERT [dbo].[KhachSan] ([MaKS], [TenKS], [DiaChi], [SDT], [XepHang_KS], [TenFileAnh]) VALUES (N'KS04', N'Khashc sạn Cao Bằng', N'Cao bằng', N'0951655421', 4, N'ksCaoBang.jpg')
INSERT [dbo].[KhachSan] ([MaKS], [TenKS], [DiaChi], [SDT], [XepHang_KS], [TenFileAnh]) VALUES (N'KS05', N'Khách sạn Mộc Châu', N'Mộc Châu', N'0098956135', 4, N'ksMocChau.jpg')
INSERT [dbo].[KhachSan] ([MaKS], [TenKS], [DiaChi], [SDT], [XepHang_KS], [TenFileAnh]) VALUES (N'KS06', N'Khách sạn Điện Biên', N'Điện Biên', N'0941335444', 3, N'ksDienBien.jpg')
INSERT [dbo].[KhachSan] ([MaKS], [TenKS], [DiaChi], [SDT], [XepHang_KS], [TenFileAnh]) VALUES (N'KS07', N'Khách sạn Lạng Sơn', N'Lạng Sơn', N'0987554546', 5, N'ksLangSon.jpg')
INSERT [dbo].[KhachSan] ([MaKS], [TenKS], [DiaChi], [SDT], [XepHang_KS], [TenFileAnh]) VALUES (N'KS08', N'Khách sạn Huế', N'Huế', N'0098545644', 3, N'ksHue.jpg')
INSERT [dbo].[KhachSan] ([MaKS], [TenKS], [DiaChi], [SDT], [XepHang_KS], [TenFileAnh]) VALUES (N'KS09', N'Khách sạn Đà Nẵng', N'Đà Nẵng', N'0998486544', 3, N'KsDaNang.jpg')
INSERT [dbo].[KhachSan] ([MaKS], [TenKS], [DiaChi], [SDT], [XepHang_KS], [TenFileAnh]) VALUES (N'KS10', N'Khách sạn Cần Thơ', N'Cần Thơ', N'0985545466', 4, N'ksCanTho.jpg')
GO
INSERT [dbo].[KhachSanTour] ([ViTriAnh], [MaKS], [MaTour]) VALUES (NULL, N'KS01', N'MT01')
INSERT [dbo].[KhachSanTour] ([ViTriAnh], [MaKS], [MaTour]) VALUES (NULL, N'KS02', N'MT02')
INSERT [dbo].[KhachSanTour] ([ViTriAnh], [MaKS], [MaTour]) VALUES (NULL, N'KS03', N'MT03')
INSERT [dbo].[KhachSanTour] ([ViTriAnh], [MaKS], [MaTour]) VALUES (NULL, N'KS04', N'MT04')
INSERT [dbo].[KhachSanTour] ([ViTriAnh], [MaKS], [MaTour]) VALUES (NULL, N'KS05', N'MT05')
INSERT [dbo].[KhachSanTour] ([ViTriAnh], [MaKS], [MaTour]) VALUES (NULL, N'KS06', N'MT06')
INSERT [dbo].[KhachSanTour] ([ViTriAnh], [MaKS], [MaTour]) VALUES (NULL, N'KS07', N'MT07')
INSERT [dbo].[KhachSanTour] ([ViTriAnh], [MaKS], [MaTour]) VALUES (NULL, N'KS08', N'MT08')
INSERT [dbo].[KhachSanTour] ([ViTriAnh], [MaKS], [MaTour]) VALUES (NULL, N'KS09', N'MT09')
INSERT [dbo].[KhachSanTour] ([ViTriAnh], [MaKS], [MaTour]) VALUES (NULL, N'KS10', N'MT10')
GO
INSERT [dbo].[NhanVien] ([GioiTinh], [MaNV], [TenNV], [SoDienThoai], [DiaChi], [UserName]) VALUES (N'Nam', N'NV01', N'Nguyen Van Chung', N'0982254336', N'Hai Duong', N'Chung')
INSERT [dbo].[NhanVien] ([GioiTinh], [MaNV], [TenNV], [SoDienThoai], [DiaChi], [UserName]) VALUES (N'Nu', N'NV02', N'Bui Thi Giang', N'0654166848', N'Nam Dinh', N'Giang')
INSERT [dbo].[NhanVien] ([GioiTinh], [MaNV], [TenNV], [SoDienThoai], [DiaChi], [UserName]) VALUES (N'Nu', N'NV03', N'Vu Thi Ha', N'0546465488', N'Hai Duong', N'Ha')
INSERT [dbo].[NhanVien] ([GioiTinh], [MaNV], [TenNV], [SoDienThoai], [DiaChi], [UserName]) VALUES (N'Nu', N'NV04', N'Bui Thi Lien', N'0456464587', N'Ha Noi', N'Lien')
INSERT [dbo].[NhanVien] ([GioiTinh], [MaNV], [TenNV], [SoDienThoai], [DiaChi], [UserName]) VALUES (N'Nam', N'NV05', N'Nguyen Van Loi', N'0564641484', N'Hai Duong', N'Loi')
INSERT [dbo].[NhanVien] ([GioiTinh], [MaNV], [TenNV], [SoDienThoai], [DiaChi], [UserName]) VALUES (N'Nam', N'NV06', N'Bui Tien Nam', N'0454684884', N'Nam Dinh', N'Nam')
INSERT [dbo].[NhanVien] ([GioiTinh], [MaNV], [TenNV], [SoDienThoai], [DiaChi], [UserName]) VALUES (N'Nu', N'NV07', N'Nguyen Ngoc Hiep', N'0568789447', N'Hai Duong', N'Hiep')
INSERT [dbo].[NhanVien] ([GioiTinh], [MaNV], [TenNV], [SoDienThoai], [DiaChi], [UserName]) VALUES (N'Nu', N'NV08', N'Nguyen Van Anh', N'0648418884', N'Hung Yen', N'Van')
INSERT [dbo].[NhanVien] ([GioiTinh], [MaNV], [TenNV], [SoDienThoai], [DiaChi], [UserName]) VALUES (N'Nu', N'NV09', N'Nguyen Ngoc Huyen', N'0655484547', N'Bac Ninh', N'Huyen')
INSERT [dbo].[NhanVien] ([GioiTinh], [MaNV], [TenNV], [SoDienThoai], [DiaChi], [UserName]) VALUES (N'Nu', N'NV10', N'Nguyen Thi Bich', N'0068448488', N'Vinh Phuc', N'Bich')
GO
INSERT [dbo].[TaiKhoan] ([UserName], [Password], [Loai], [ConfirmPassword]) VALUES (N'Anh', N'1', 0, N'1')
INSERT [dbo].[TaiKhoan] ([UserName], [Password], [Loai], [ConfirmPassword]) VALUES (N'Bich', N'1', 1, N'1')
INSERT [dbo].[TaiKhoan] ([UserName], [Password], [Loai], [ConfirmPassword]) VALUES (N'But', N'1', 0, N'1')
INSERT [dbo].[TaiKhoan] ([UserName], [Password], [Loai], [ConfirmPassword]) VALUES (N'Chung', N'1', 1, N'1')
INSERT [dbo].[TaiKhoan] ([UserName], [Password], [Loai], [ConfirmPassword]) VALUES (N'Duc', N'1', 0, N'1')
INSERT [dbo].[TaiKhoan] ([UserName], [Password], [Loai], [ConfirmPassword]) VALUES (N'Giang', N'1', 1, N'1')
INSERT [dbo].[TaiKhoan] ([UserName], [Password], [Loai], [ConfirmPassword]) VALUES (N'Ha', N'1', 1, N'1')
INSERT [dbo].[TaiKhoan] ([UserName], [Password], [Loai], [ConfirmPassword]) VALUES (N'Hiep', N'1', 1, N'1')
INSERT [dbo].[TaiKhoan] ([UserName], [Password], [Loai], [ConfirmPassword]) VALUES (N'Huyen', N'1', 1, N'1')
INSERT [dbo].[TaiKhoan] ([UserName], [Password], [Loai], [ConfirmPassword]) VALUES (N'Lien', N'1', 1, N'1')
INSERT [dbo].[TaiKhoan] ([UserName], [Password], [Loai], [ConfirmPassword]) VALUES (N'Loi', N'1', 1, N'1')
INSERT [dbo].[TaiKhoan] ([UserName], [Password], [Loai], [ConfirmPassword]) VALUES (N'Manh', N'1', 0, N'1')
INSERT [dbo].[TaiKhoan] ([UserName], [Password], [Loai], [ConfirmPassword]) VALUES (N'Nam', N'1', 1, N'1')
INSERT [dbo].[TaiKhoan] ([UserName], [Password], [Loai], [ConfirmPassword]) VALUES (N'Ngoc', N'1', 0, N'1')
INSERT [dbo].[TaiKhoan] ([UserName], [Password], [Loai], [ConfirmPassword]) VALUES (N'nhubinh2002', N'22', 0, N'22')
INSERT [dbo].[TaiKhoan] ([UserName], [Password], [Loai], [ConfirmPassword]) VALUES (N'Quynh', N'1', 0, N'1')
INSERT [dbo].[TaiKhoan] ([UserName], [Password], [Loai], [ConfirmPassword]) VALUES (N'Tien', N'1', 0, N'1')
INSERT [dbo].[TaiKhoan] ([UserName], [Password], [Loai], [ConfirmPassword]) VALUES (N'Tuan', N'1', 0, N'1')
INSERT [dbo].[TaiKhoan] ([UserName], [Password], [Loai], [ConfirmPassword]) VALUES (N'Van', N'1', 1, N'1')
INSERT [dbo].[TaiKhoan] ([UserName], [Password], [Loai], [ConfirmPassword]) VALUES (N'Viet', N'1', 0, N'1')
INSERT [dbo].[TaiKhoan] ([UserName], [Password], [Loai], [ConfirmPassword]) VALUES (N'Vu', N'1', 0, N'1')
GO
INSERT [dbo].[TinTuc] ([MaTin], [Anh], [MoTa], [NoiDung], [MaNV]) VALUES (N'TT05', N'anhtt5.jpg', N'Quan h? B?c Ninh – di s?n van hóa phi v?t th?', N'Quan h? B?c Ninh là nh?ng làn di?u dân ca c?a vùng d?ng b?ng B?c B?, t?p trung ch? y?u ? vùng Kinh B?c (B?c Ninh và B?c Giang). Ðây là môn ngh? thu?t du?c h?p thành b?i nhi?u y?u t? nhu âm nh?c, l?i ca, ph?c trang, l? h?i … v?i m?t l?i hát giao duyên dân dã, th? hi?n m?i quan h? g?n bó tình nghia gi?a nh?ng “li?n anh”, “li?n ch?” hát quan h? và là nét van hóa tiêu bi?u c?a ngu?i dân vùng Kinh B?c.Quan h? là th? lo?i dân ca phong phú nh?t v? m?t giai di?u trong kho tàng dân ca Vi?t Nam và du?c luu truy?n t? d?i này sang d?i khác qua phuong th?c truy?n kh?u. Mu?n hát quan h? ph?i có “b?n”: “b?n nam” ho?c “b?n n?”. Vì v?y trong m?t làng quan h? thu?ng có nhi?u “b?n nam” và “b?n n?”. M?i “b?n” thu?ng có 4, 5, 6 ngu?i và du?c d?t tên theo th? t?: ch? Hai, Ba, Tu, Nam, Sáu ho?c anh Hai, Ba, Tu, Nam, Sáu. N?u s? ngu?i dông t?i 7, 8 ngu?i thì d?t tên là ch? Ba, ch? Tu (bé) ho?c anh Ba, anh Tu (bé)… mà không d?t ch? B?y, Tám hay anh B?y, Tám. Trong các sinh ho?t quan h?, các thành viên c?a “b?n” quan h? không g?i nhau b?ng tên th?t mà g?i theo tên d?t trong “b?n”.Hát quan h? là hình th?c hát d?i dáp gi?a “b?n nam” và “b?n n?”. M?t “b?n n?” c?a làng này hát v?i m?t “b?n nam” c?a làng kia v?i m?t bài hát cùng giai di?u, khác v? ca t? và d?i gi?ng. “B?n hát” phân công ngu?i hát d?n, ngu?i hát lu?n nhung gi?ng c?a hai ngu?i hát c?p v?i nhau ph?i tuong h?p thành m?t gi?ng d? t?o ra m?t âm thanh th?ng nh?t. Dân ca quan h? có 213 gi?ng khác nhau, v?i hon 400 bài ca. L?i m?t bài ca có hai ph?n: l?i chính và l?i ph?. L?i chính là th? tho và ca dao c?a Vi?t Nam, ph?n l?n là th? l?c bát, l?c bát bi?n th?, b?n t? ho?c b?n t? h?n h?p v?i t? ng? giàu tính ?n d?, trong sáng, m?u m?c. Ðây là ph?n c?t lõi, ph?n ánh n?i dung c?a bài ca là th? hi?n tình yêu l?a dôi. L?i ph? g?m t?t c? nh?ng ti?ng n?m ngoài l?i ca chính, là ti?ng d?m, ti?ng dua hoi nhu i hi,u hu, a ha v.v…Quan h? B?c Ninh t?n t?i trong m?t môi tru?ng van hóa v?i nh?ng t?p quán xã h?i riêng. Ð?u tiên là t?p quán “k?t ch?” gi?a các làng quan h?. T? t?c “k?t ch?”, trong các “b?n” quan h? xu?t hi?n m?t t?p quán xã h?i d?c bi?t là t?c k?t b?n quan h?. M?i “b?n” quan h? c?a m?t làng d?u k?t b?n v?i m?t “b?n” quan h? ? làng khác theo nguyên t?c quan h? nam k?t b?n v?i quan h? n? và ngu?c l?i. V?i các làng dã “k?t ch?”, trai gái trong các “b?n” quan h? dã k?t b?n không du?c cu?i nhau.H?i Lim là m?t l? h?i l?n d?u xuân vùng Kinh B?c du?c t? ch?c trên d?a bàn huy?n Tiên Du t?nh B?c Ninh. H?i Lim du?c m? t? ngày 12 d?n 14 tháng giêng Âm l?ch hàng nam, trong dó ngày 13 là chính h?i, thu?ng du?c kéo dài trong kho?ng th?i gian 3-5 ngày (11/1 – 15/1 Âm l?ch).
Ð?n h?i Lim, du khách du?c xem và nghe hát trên d?i, hát sau chùa, hát trên thuy?n và hát trong các tu gia (hát trong nhà); l?i có th? nghe hát d?i t?ng c?p (dôi nam, dôi n?), ho?c “b?n” nam, n?.
', N'NV05')
INSERT [dbo].[TinTuc] ([MaTin], [Anh], [MoTa], [NoiDung], [MaNV]) VALUES (N'TT06', N'anhtt6.jpg', N'Tín ngu?ng th? cúng Hùng Vuong – di s?n van hóa phi v?t th?', N'Tín ngu?ng th? cúng Hùng Vuong b?t ngu?n t? th?i d?i các Vua Hùng v?i ni?m tin c? dân t?c có cùng chung gi?ng nòi “con R?ng cháu Tiên”, cùng chung m?t ngu?n c?i (T?); d?ng th?i th? hi?n d?o lý “U?ng nu?c nh? ngu?n”, tinh th?n d?i doàn k?t dân t?c và g?n k?t c?ng d?ng.Theo truy?n thuy?t, L?c Long Quân – con trai c?a Kinh Duong Vuong L?c T?c l?y nàng Âu Co – con gái Vua Ð? Lai r?i sinh ra m?t b?c tram tr?ng, n? thành tram ngu?i con trai. Sau dó, nam muoi ngu?i con theo m? lên núi, nam muoi ngu?i theo cha xu?ng bi?n l?p nghi?p. Ngu?i con c? theo m? lên vùng d?t Phong Châu (nay là Phú Th?) l?p ra nu?c Van Lang và du?c tôn làm Vua Hùng. Van Lang là nhà nu?c d?u tiên trong l?ch s? c?a ngu?i Vi?t, du?c cai tr? b?i 18 d?i vua. Các Vua Hùng dã d?y dân tr?ng lúa nu?c và ch?n núi Nghia Linh, ng?n núi cao nh?t vùng d? th?c hi?n nh?ng nghi l? theo tín ngu?ng c?a cu dân nông nghi?p nhu th? th?n lúa, th?n m?t tr?i d? c?u mua thu?n gió hòa, mùa màng t?t tuoi, v?n v?t sinh sôi, n?y n?. Ð? ghi nh? công lao to l?n c?a các Vua Hùng, nhân dân dã l?p d?n th? tu?ng ni?m (khu di tích l?ch s? d?n Hùng) mà trung tâm là núi Nghia Linh và l?y ngày 10 tháng 3 âm l?ch hàng nam là ngày gi? T?. T? trung tâm th? t? d?u tiên này, Tín ngu?ng th? cúng Hùng Vuong d?n lan t?a, có s?c s?ng lâu b?n t? d?i này qua d?i khác, t? d?ng b?ng lên mi?n núi, t? B?c vào Nam, t? trong nu?c ra nu?c ngoài. Ð?t nu?c có lúc th?nh lúc suy, có lúc b? gi?c ngo?i xâm th?ng tr? nhung Tín ngu?ng th? cúng Hùng Vuong v?n du?c các th? h? duy trì d?n t?n ngày nay và còn mãi d?n muôn d?i sau.Các s? li?u cho th?y Tín ngu?ng th? cúng Hùng Vuong dã phát tri?n m?nh t? r?t lâu tru?c khi chính th?c du?c vinh danh vào th?i H?u Lê (1428 – 1788). Nh?ng tri?u d?i phong ki?n d?u r?t chú tr?ng và khuy?n khích ngu?i dân duy trì Tín ngu?ng th? cúng Hùng Vuong. Nhà H?u Lê, Tây Son và Nguy?n liên t?c s?c phong cho các d?n th? Vua Hùng t?i Phú Th?, pháp di?n hóa nghi th?c th? cúng, mi?n thu? và c?p ru?ng d?t t?i khu v?c xung quanh d?n d? ngu?i dân canh tác, thu hoa l?i và coi sóc d?n th?. Cho d?n nay, Ð?ng và Nhà nu?c d?u r?t quan tâm ', N'NV06')
INSERT [dbo].[TinTuc] ([MaTin], [Anh], [MoTa], [NoiDung], [MaNV]) VALUES (N'TT07', N'anhtt7.jpg', N'Th?ng nh?t l?a ch?n hình ?nh d? qu?ng bá du l?ch t?nh Thái Nguyên', N'Chi?u ngày 21/3, S? Van hóa, Th? thao và Du l?ch t?nh Thái Nguyên dã t? ch?c H?i ngh? th?ng nh?t l?a ch?n hình ?nh, s?n ph?m nông nghi?p tiêu bi?u ph?c v? qu?ng bá du l?ch t?nh Thái Nguyên. D? H?i ngh? có lãnh d?o m?t s? s?, ngành và các co quan thông t?n, báo chí c?a t?nh.T?i H?i ngh?, lãnh d?o S? Van hóa, Th? thao và Du l?ch dã trình chi?u và d? xu?t m?t s? hình ?nh theo các c?m ch? d? nhu: T?ng Bí thu tham t?nh Thái Nguyên t?i vùng chè Tân Cuong; du l?ch sinh thái c?ng d?ng g?n v?i trà; các h? nu?c và hang d?ng; du l?ch tâm linh, l?ch s?; du l?ch g?n v?i nông nghi?p. Bên c?nh dó, các d?i bi?u cung l?a ch?n ra các s?n ph?m nông nghi?p tiêu bi?u c?a t?nh g?m: Trà, xôi ngu s?c, bánh tr?ng ki?n, com lam Ð?nh Hóa, bánh trung B? Ð?u, tuong n?p Úc K?, na La Hiên…Thông qua nh?ng thông tin, hình ?nh v? thiên nhiên, con ngu?i, cùng b? dày van hóa, l?ch s?, truy?n th?ng s? lan t?a r?ng rãi trên các kênh truy?n thông, m?ng xã h?i, t? dó thu hút d?u tu vào các di?m du l?ch cung nhu du khách d?n tham quan, tr?i nghi?m các s?n ph?m du l?ch c?a t?nh.', N'NV07')
INSERT [dbo].[TinTuc] ([MaTin], [Anh], [MoTa], [NoiDung], [MaNV]) VALUES (N'TT08', N'anhtt8.jpg', N'Trung bày các giá tr?, s?n ph?m van hóa tiêu bi?u c?a Thang Long - Hà N?i', N'Ngày 21/3, trong khuôn kh? H?i th?o Phát huy các giá tr? và ngu?n l?c van hóa xây d?ng Th? dô “Van hi?n - Van minh - Hi?n d?i”, không gian trung bày các giá tr?, s?n ph?m van hóa tiêu bi?u c?a Thang Long - Hà N?i v?i nhi?u s?n ph?m d?c trung dã thu hút du?c s? quan tâm c?a nhi?u d?i bi?u.Các d?ng chí: ?y viên B? Chính tr?, Bí thu Thành ?y, Tru?ng doàn d?i bi?u Qu?c h?i thành ph? Hà N?i Ðinh Ti?n Dung; ?y viên Trung uong Ð?ng, Phó Bí thu Thu?ng tr?c Thành ?y Hà N?i Nguy?n Th? Tuy?n; ?y viên Trung uong Ð?ng, Phó Bí thu Thành ?y, Ch? t?ch UBND thành ph? Hà N?i Tr?n S? Thanh; Phó Bí thu Thành ?y, Ch? t?ch HÐND thành ph? Hà N?i Nguy?n Ng?c Tu?n; Phó Bí thu Thành ?y Hà N?i Nguy?n Van Phong dã t?i d? l? ra m?t và tham quan không gian trung bày.Không gian trung bày các giá tr?, s?n ph?m van hóa tiêu bi?u c?a Thang Long - Hà N?i du?c chia thành các không gian nh?, v?i nhi?u ch? d? riêng bi?t. Ðó là không gian van hóa c?a 6 làng ngh? tiêu bi?u, g?m: G?m Bát Tràng, kh?m trai Chuyên Ng?, nón Chuông, son mài H? Thái, mây tre dan Phú Vinh, l?a V?n Phúc.
Không gian trung bày sách, v?i trên 200 tu li?u du?c tuy?n ch?n cho 2 n?i dung chính, g?m: Quan di?m, du?ng l?i c?a Ð?ng v? xây d?ng và phát tri?n n?n van hóa Vi?t Nam và van hóa Thang Long - Hà N?i, giá tr? tinh th?n, ngu?n l?c phát tri?n Th? dô, gi?i thi?u quan di?m v? xây d?ng và phát tri?n van hóa c?a Ð?ng ta, c?a Ch? t?ch H? Chí Minh; kh?ng d?nh vai trò c?a van hóa trong d?i s?ng xã h?i - n?n t?ng tinh th?n, ngu?n l?c n?i sinh phát tri?n Th? dô và d?t nu?c trong giai do?n m?i.
? m?ng di tích l?ch s? - van hóa, Ban T? ch?c gi?i thi?u các giá tr? n?i b?t toàn c?u c?a Khu di s?n Hoàng thành Thang Long trong su?t chi?u dài l?ch s? v?i các hình ?nh tu li?u, hi?n v?t theo hai ch? d? chính: Các di tích còn trên m?t d?t nhu C?t c? Hà N?i, Ðoan Môn, th?m Ði?n Kính Thiên và m?t s? hi?n v?t tiêu bi?u du?c khai qu?t t?i khu kh?o c? h?c 18 Hoàng Di?u; các ho?t d?ng, nghi th?c l? h?i du?c b?o t?n, phát huy d?n ngày hôm nay t?i khu di s?n.
Ngoài ra, còn có không gian trung bày gi?i thi?u v? khu di tích Van Mi?u - Qu?c T? Giám, theo hai n?i dung là các s?n ph?m ?ng d?ng công ngh? 4.0 dang tri?n khai t?i khu di tích và các s?n ph?m luu ni?m dang ph?c v? du khách d? tham quan, tr?i nghi?m; không gian trung bày và trình di?n mô hình mô ph?ng n? th?n liên châu c?a An Duong Vuong. 
', N'NV08')
INSERT [dbo].[TinTuc] ([MaTin], [Anh], [MoTa], [NoiDung], [MaNV]) VALUES (N'TT09', N'anhtt9.jpg', N'Phú Qu?c Hòn d?o có thiên nhiên h?p d?n th? gi?i nam 2023', N'Theo t?p chí World Travel Awards 2022 dã xu?ng tên Phú Qu?c Hòn d?o có thiên nhiên h?p d?n th? gi?i nam 2023 .T?i 11/11, t?i Oman, trong khuôn kh? l? trao gi?i c?a Gi?i thu?ng du l?ch th? gi?i – World Travel Awards 2022, Phú Qu?c c?a Vi?t Nam dã vinh d? du?c xu?ng tên d?y t? hào v?i gi?i thu?ng “Hòn d?o có thiên nhiên h?p d?n hàng d?u th? gi?i”.Ðây là l?n d?u tiên, Vi?t Nam có hòn d?o du?c World Travel Awards (WTA) – Gi?i thu?ng du?c xem nhu “Oscar c?a ngành du l?ch th? gi?i” vinh danh. Và Phú Qu?c, Kiên Giang dã xu?t s?c vu?t qua 6 “d?i th?” d?n t? các châu l?c khác trên th? gi?i, trong dó có nhi?u hòn d?o t?ng du?c m?nh danh “thiên du?ng” nhu Zanzibar c?a Tanzania hay qu?n d?o Lofoten c?a Na Uy, d? d?t danh hi?u d?y t? hào này. Gi?i thu?ng cung kh?ng d?nh s?c h?p d?n d?c bi?t c?a Phú Qu?c, hòn d?o dang n?i lên nhu m?t di?m d?n không ch? có v? d?p hoang so mà còn vô cùng da d?ng tr?i nghi?m.Phú Qu?c là hòn d?o l?n nh?t nu?c ta (567 km2) và cung là hòn d?o d?u tiên trên c? nu?c chính th?c tr? thành thành ph? bi?n d?o vào nam 2021. Hòn d?o này s? h?u di?u ki?n t? nhiên vô giá d? phát tri?n du l?ch nhu khí h?u ôn hòa, n?ng ?m áp quanh nam, núi d?i trùng di?p và bi?n d?o r?ng l?n v?i 28 hòn d?o l?n nh?, 150 km du?ng b? bi?n, 14 bãi bi?n da d?ng cát vàng, cát tr?ng m?n nhu kem…. Trong dó, vu?n Qu?c gia Phú Qu?c, Khu b?o t?n bi?n Phú Qu?c chi?m hon 2/3 di?n tích t? nhiên là vùng lõi c?a Khu d? tr? sinh quy?n th? gi?i Kiên Giang.Ông Hu?nh Quang Hung – Ch? t?ch UBND TP Phú Qu?c cho bi?t: “Ðu?c nhi?u t? ch?c trong nu?c và qu?c t? bình ch?n Phú Qu?c là di?m d?n nh?t nhì trong khu v?c và th? gi?i, sánh v?i m?t s? d?o l?n trên th? gi?i, có th? nói là di?u ki?n thu?n l?i d? Phú Qu?c ti?p t?c phát huy nh?ng k?t qu?, d?c bi?t là t?o s?c c?nh tranh v? du l?ch, d?ch v?.”
L?y thiên nhiên làm g?c r? d? phát tri?n du l?ch 
V?i v? d?p t? nhiên du?c ví von nhu thiên du?ng h? gi?i c?a Phú Qu?c, g?n m?t th?p niên qua, Phú Qu?c dã không ch? phát huy ti?m nang t? nh?ng tài nguyên thiên nhiên s?n có, mà còn t?ng bu?c nâng t?m v? d?p tr?i ban, v?i nh?ng công trình và s?n ph?m du l?ch d?t phá, d? có nh?ng bu?c phát tri?n m?nh m? t? m?t huy?n d?o ít ti?ng tam thành ngôi sao sáng c?a ngành du l?ch Vi?t Nam.
', N'NV09')
INSERT [dbo].[TinTuc] ([MaTin], [Anh], [MoTa], [NoiDung], [MaNV]) VALUES (N'TT10', N'anhtt10.jpg', N'[Bình Ð?nh] Ngh? thu?t bài chòi – Di s?n van hóa phi v?t th? d?i di?n c?a nhân lo?i', N'Bài chòi là trò choi mang d?m tính gi?i trí và mang d?m tính ngh? thu?t c?a ngu?i dân Mi?n Trung. Ngh? thu?t bài chòi ra d?i t? nhu c?u liên l?c v?i nhau gi?a các chòi canh trên nuong r?y và dã tr? thành trò choi không th? thi?u trong các d?p l? h?i.Là di s?n chung c?a 9 t?nh Trung B? t? Qu?ng Bình d?n Ninh Thu?n, nhung Bình Ð?nh v?n du?c xem là cái nôi c?a ngh? thu?t bài chòi.
Theo nhu dân gian, thì bài chòi xu?t hi?n vào cu?i th? k? 16, d?u th? k? 17. Ð? canh gi? nuong r?y cung nhu d?i s?ng do b? các thú d? phá ho?i, ngu?i dân dã cho d?ng các chòi cao ? ven r?ng và cho m?t thanh niên canh gác m?i chòi. Ð? ti?n liên l?c khi có thú r?ng xu?t hi?n, các chòi s? t?o ra các âm thanh, dánh tr?ng, hô to…Và d? d? bu?n chán, h? dã c?t lên nh?ng câu hò, câu hát d? liên l?c. Sau dó còn sáng t?o nên hát – hò d?i dáp và choi bài, b?t ngu?n cho ngh? thu?t bài chòi sau này.
Bài chòi thu?ng du?c t? ch?c ? nh?ng kho?ng d?t r?ng hay sân dình, noi mà m?i ngu?i thu?n l?i di h?i ch?…Và d? d? d?ng lên 9 ho?c 11 chòi b?ng tre, l?p tranh, x?p theo hình ch? U, chòi ? dáy g?i là chòi Cái. Có ngu?i s? d?n d?t cu?c choi, ngu?i này s? rút con bài trong ?ng bài và hát nh?ng câu hát liên quan d?n con bài dó, g?i là Hô Thai. Nh?ng ngu?i choi s? ng?i trên chòi tre, mua 3 con bài và d?i. N?u trùng h?t 3 con bài mà ngu?i Hô Thai hát xu?ng d?u tiên s? là ngu?i th?ng cu?c. Lu?t choi k?t thúc và b?t d?u lu?t choi m?i.B? bài d? dánh g?m 33 lá, v?i nh?ng tên nhu là: nh?t n?c, nhì nghèo, lá li?u, ông ?m,…M?i lá d?u có nh?ng câu hát d? g?i tên, ch?ng h?n: “N?a dêm gà gáy le te/ Mu?n di rón rén d?ng nghe cái ?m” – ám ch? lá bài Ông ?m…
Ð? choi bài chòi thu?ng có các nh?c c? nhu: dàn nh?, song loan, kèn bóp và tr?ng chi?n. Khi ngu?i Hô Thái hát ph?i theo nh?p tr?ng, sanh,…Làm cho di?u hát tr? nên h?p d?n.', N'NV10')
GO
INSERT [dbo].[Tour] ([MaTour], [TenTour], [GiaCho], [Anh], [DiemXuatPhat], [XepHangTour], [SoNgayDL]) VALUES (N'MT01', N'Hà Nội - Ninh Bình', 1500000, N'anhMT01.jpg', N'Hà Nội', 5, 3)
INSERT [dbo].[Tour] ([MaTour], [TenTour], [GiaCho], [Anh], [DiemXuatPhat], [XepHangTour], [SoNgayDL]) VALUES (N'MT02', N'Hà Nội - Hạ Long', 2000000, N'anhMT02.jpg', N'Hà Nội', 5, 2)
INSERT [dbo].[Tour] ([MaTour], [TenTour], [GiaCho], [Anh], [DiemXuatPhat], [XepHangTour], [SoNgayDL]) VALUES (N'MT03', N'Hà Nội - Sa Pa', 3000000, N'anhMT03.jpg', N'Hà Nội', 4, 3)
INSERT [dbo].[Tour] ([MaTour], [TenTour], [GiaCho], [Anh], [DiemXuatPhat], [XepHangTour], [SoNgayDL]) VALUES (N'MT04', N'Hà Nội - Cao Bằng', 2500000, N'anhMT04.jpg', N'Hà Nội', 5, 2)
INSERT [dbo].[Tour] ([MaTour], [TenTour], [GiaCho], [Anh], [DiemXuatPhat], [XepHangTour], [SoNgayDL]) VALUES (N'MT05', N'Hà Nội - Mộc Châu', 2000000, N'anhMT05.jpg', N'Hà Nội', 4, 3)
INSERT [dbo].[Tour] ([MaTour], [TenTour], [GiaCho], [Anh], [DiemXuatPhat], [XepHangTour], [SoNgayDL]) VALUES (N'MT06', N'Sơn La - Điện Biên', 2000000, N'anhMT06.jpg', N'Sơn La', 5, 2)
INSERT [dbo].[Tour] ([MaTour], [TenTour], [GiaCho], [Anh], [DiemXuatPhat], [XepHangTour], [SoNgayDL]) VALUES (N'MT07', N'Cao Bằng-Lạng Sơn', 3000000, N'anhMT05.jpg', N'Cao Bằng', 4, 3)
INSERT [dbo].[Tour] ([MaTour], [TenTour], [GiaCho], [Anh], [DiemXuatPhat], [XepHangTour], [SoNgayDL]) VALUES (N'MT08', N'Hà Nội - Huế', 4000000, N'anhMT08.jpg', N'Hà Nội', 5, 3)
INSERT [dbo].[Tour] ([MaTour], [TenTour], [GiaCho], [Anh], [DiemXuatPhat], [XepHangTour], [SoNgayDL]) VALUES (N'MT09', N'Huế - Đà Nẵng', 2000000, N'anhMT09.jpg', N'Huế', 4, 2)
INSERT [dbo].[Tour] ([MaTour], [TenTour], [GiaCho], [Anh], [DiemXuatPhat], [XepHangTour], [SoNgayDL]) VALUES (N'MT10', N'TP Hồ Chí Minh - Cần Thơ', 2000000, N'anhMT10.jpg', N'TP Hồ Chí Minh', 5, 3)
INSERT [dbo].[Tour] ([MaTour], [TenTour], [GiaCho], [Anh], [DiemXuatPhat], [XepHangTour], [SoNgayDL]) VALUES (N'MT10067', N'Hà Nam - Hải Phòng', 40000, N'anhMT02.jpg', N'Hà Nam', 4, 2)
INSERT [dbo].[Tour] ([MaTour], [TenTour], [GiaCho], [Anh], [DiemXuatPhat], [XepHangTour], [SoNgayDL]) VALUES (N'MT10067565', N'Hà Nam - Hải Duong', 1, N'anhMT01.jpg', N'Hà Nam', 5, 2)
GO
ALTER TABLE [dbo].[AnhTin]  WITH CHECK ADD FOREIGN KEY([MaTin])
REFERENCES [dbo].[TinTuc] ([MaTin])
GO
ALTER TABLE [dbo].[Booking]  WITH CHECK ADD FOREIGN KEY([MaKH])
REFERENCES [dbo].[KhachHang] ([MaKH])
GO
ALTER TABLE [dbo].[Booking]  WITH CHECK ADD FOREIGN KEY([MaNV])
REFERENCES [dbo].[NhanVien] ([MaNV])
GO
ALTER TABLE [dbo].[Booking]  WITH CHECK ADD FOREIGN KEY([MaTour])
REFERENCES [dbo].[Tour] ([MaTour])
GO
ALTER TABLE [dbo].[DiaDiemTour]  WITH CHECK ADD FOREIGN KEY([MaTour])
REFERENCES [dbo].[Tour] ([MaTour])
GO
ALTER TABLE [dbo].[DiaDiemTour]  WITH CHECK ADD FOREIGN KEY([MaDD])
REFERENCES [dbo].[DiemThamQuan] ([MaDD])
GO
ALTER TABLE [dbo].[KhachHang]  WITH CHECK ADD FOREIGN KEY([UserName])
REFERENCES [dbo].[TaiKhoan] ([UserName])
GO
ALTER TABLE [dbo].[KhachSanTour]  WITH CHECK ADD FOREIGN KEY([MaTour])
REFERENCES [dbo].[Tour] ([MaTour])
GO
ALTER TABLE [dbo].[KhachSanTour]  WITH CHECK ADD FOREIGN KEY([MaKS])
REFERENCES [dbo].[KhachSan] ([MaKS])
GO
ALTER TABLE [dbo].[NhanVien]  WITH CHECK ADD FOREIGN KEY([UserName])
REFERENCES [dbo].[TaiKhoan] ([UserName])
GO
ALTER TABLE [dbo].[TinTuc]  WITH CHECK ADD FOREIGN KEY([MaNV])
REFERENCES [dbo].[NhanVien] ([MaNV])
GO
