-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th3 05, 2024 lúc 02:20 AM
-- Phiên bản máy phục vụ: 10.4.28-MariaDB
-- Phiên bản PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `php2`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `user` varchar(100) NOT NULL,
  `password` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Đang đổ dữ liệu cho bảng `admin`
--

INSERT INTO `admin` (`id`, `user`, `password`) VALUES
(1, 'Nguyenducanh', '123123123');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `binhluan1`
--

CREATE TABLE `binhluan1` (
  `mabl` int(11) NOT NULL,
  `mahh` int(11) NOT NULL,
  `makh` int(11) NOT NULL,
  `ngaybl` date NOT NULL,
  `noidung` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Đang đổ dữ liệu cho bảng `binhluan1`
--

INSERT INTO `binhluan1` (`mabl`, `mahh`, `makh`, `ngaybl`, `noidung`) VALUES
(1, 10, 8, '2023-03-15', 'Đẹp'),
(27, 2, 19, '2023-02-13', 'Tốt'),
(28, 2, 19, '2023-02-13', 'Đẹp'),
(29, 2, 19, '2023-02-13', 'Đẹp'),
(30, 2, 19, '2023-02-13', 'Đẹp'),
(31, 2, 19, '2023-02-13', 'dá'),
(32, 2, 19, '2023-02-13', 'Đẹp'),
(33, 3, 8, '2023-03-15', 'Đẹp'),
(34, 3, 8, '2023-03-15', 'Đẹp');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `cthoadon1`
--

CREATE TABLE `cthoadon1` (
  `masohd` int(11) NOT NULL,
  `mahh` int(11) NOT NULL,
  `soluongmua` int(11) NOT NULL,
  `maloai` varchar(10) NOT NULL,
  `thanhtien` int(11) NOT NULL,
  `tinhtrang` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Đang đổ dữ liệu cho bảng `cthoadon1`
--

INSERT INTO `cthoadon1` (`masohd`, `mahh`, `soluongmua`, `maloai`, `thanhtien`, `tinhtrang`) VALUES
(1, 2, 1, '1', 15000000, 0),
(2, 2, 1, '1', 8900000, 0),
(3, 2, 1, '1', 10200000, 0),
(4, 4, 12, '3', 10000000, 0),
(4, 5, 2, '4', 10000000, 0),
(5, 2, 3, '1', 15500000, 0),
(6, 2, 3, '1', 0, 0),
(7, 2, 3, '1', 0, 0),
(8, 1, 50, '6', 4500000, 0),
(8, 2, 3, '1', 48000000, 0),
(9, 1, 50, '6', 4500000, 0),
(9, 2, 3, '1', 5000000, 0),
(10, 1, 111, '6', 10500000, 0),
(11, 9, 2, '5', 30000000, 0),
(12, 3, 2, '3', 226000000, 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `hanghoa`
--

CREATE TABLE `hanghoa` (
  `mahh` int(11) NOT NULL,
  `tenhh` varchar(60) NOT NULL,
  `dongia` float NOT NULL,
  `giamgia` float NOT NULL,
  `hinh` varchar(250) NOT NULL,
  `Nhom` int(4) NOT NULL,
  `maloai` int(11) NOT NULL,
  `soluotxem` int(11) NOT NULL,
  `ngaylap` date NOT NULL,
  `mota` varchar(2000) NOT NULL,
  `soluongton` int(11) NOT NULL,
  `tinhtrang` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Đang đổ dữ liệu cho bảng `hanghoa`
--

INSERT INTO `hanghoa` (`mahh`, `tenhh`, `dongia`, `giamgia`, `hinh`, `Nhom`, `maloai`, `soluotxem`, `ngaylap`, `mota`, `soluongton`, `tinhtrang`) VALUES

(2, 'Samsung A15', 8600000, 0, '2.jpg', 0, 1, 3, '2020-08-08', 'máy nổi bật với camera 200 MP chất lượng, hiệu năng mạnh mẽ nhờ tích hợp con chip Snapdragon 8 Gen 2 và được trang bị thêm nhiều công nghệ hàng đầu trong giới smartphone.', 112, 1),
(3, 'Samsung S22 Ultra', 113000000, 2, '4.jpg', 0, 3, 4, '2020-08-08', 'máy nổi bật với camera 200 MP chất lượng, hiệu năng mạnh mẽ nhờ tích hợp con chip Snapdragon 8 Gen 2 và được trang bị thêm nhiều công nghệ hàng đầu trong giới smartphone.', 0, 1),
(4, 'Samsung A10', 15000000, 0, '3.jpg', 1, 3, 1, '2020-08-08', 'máy nổi bật với camera 200 MP chất lượng, hiệu năng mạnh mẽ nhờ tích hợp con chip Snapdragon 8 Gen 2 và được trang bị thêm nhiều công nghệ hàng đầu trong giới smartphone.', 50, 0),
(5, 'Samsung S22  do', 25000000, 0, '5.jpg', 1, 4, 0, '2020-08-08', 'máy nổi bật với camera 200 MP chất lượng, hiệu năng mạnh mẽ nhờ tích hợp con chip Snapdragon 8 Gen 2 và được trang bị thêm nhiều công nghệ hàng đầu trong giới smartphone.', 50, 0),
(9, 'Samsung S10 ', 15000000, 0, '6.jpg', 2, 5, 1, '2020-08-08', 'trang bị vi xử lý mạnh mẽ cho các tác vụ sử dụng vô cùng mượt mà và nổi bật hơn với cụm camera không viền độc đáo mang đậm dấu ấn riêng.', 0, 1),
(10, 'Iphone 10', 21500000, 0, '7.jpg', 2, 5, 1, '2020-08-08', 'Mẫu smartphone đến từ nhà Apple được mong đợi nhất năm 2022, lần này nhà Táo mang đến cho chúng ta một phiên bản với kiểu thiết kế hình notch mới, cấu hình mạnh mẽ', 50, 0),
(11, 'Iphone 12', 17000000, 0, '9.jpg', 3, 1, 1, '2020-08-08', 'Mẫu smartphone đến từ nhà Apple được mong đợi nhất năm 2022, lần này nhà Táo mang đến cho chúng ta một phiên bản với kiểu thiết kế hình notch mới, cấu hình mạnh mẽ', 50, 0),
(12, 'Iphone 13', 25000000, 1, '10.jpg', 0, 10, 2, '2020-08-08', 'Mẫu smartphone đến từ nhà Apple được mong đợi nhất năm 2022, lần này nhà Táo mang đến cho chúng ta một phiên bản với kiểu thiết kế hình notch mới, cấu hình mạnh mẽ', 50, 0),
(15, 'Iphone 14', 30500000, 0, '11.jpg', 4, 6, 1, '2020-08-08', 'Mẫu smartphone đến từ nhà Apple được mong đợi nhất năm 2022, lần này nhà Táo mang đến cho chúng ta một phiên bản với kiểu thiết kế hình notch mới, cấu hình mạnh mẽ', 50, 0),
(16, 'Nokia B10', 5500000, 1, '12.jpg', 4, 7, 2, '2020-08-08', 'Tiếp nối sự thành công của những sản phẩm gần đây tại thị trường Việt Nam, lần này hãng Nokia đã mang đến mẫu điện thoại Nokia C21 Plus - sở hữu trong mình viên pin mang lại thời gian trải nghiệm lâu dài và sử', 50, 0),
(18, 'Nokia B20', 8900000, 0.8, '13.jpg', 5, 3, 1, '2020-08-08', 'Tiếp nối sự thành công của những sản phẩm gần đây tại thị trường Việt Nam, lần này hãng Nokia đã mang đến mẫu điện thoại Nokia C21 Plus - sở hữu trong mình viên pin mang lại thời gian trải nghiệm lâu dài và sử', 50, 0),
(19, 'Nokia 524', 15000000, 0, '15.jpg', 5, 8, 1, '2020-08-08', 'Tiếp nối sự thành công của những sản phẩm gần đây tại thị trường Việt Nam, lần này hãng Nokia đã mang đến mẫu điện thoại Nokia C21 Plus - sở hữu trong mình viên pin mang lại thời gian trải nghiệm lâu dài và sử\r\n', 50, 0),
(20, 'Nokia 3A', 10200000, 0, '14.JPG', 5, 8, 1, '2020-08-08', 'Tiếp nối sự thành công của những sản phẩm gần đây tại thị trường Việt Nam, lần này hãng Nokia đã mang đến mẫu điện thoại Nokia C21 Plus - sở hữu trong mình viên pin mang lại thời gian trải nghiệm lâu dài và sử', 50, 0),
(21, 'Nokia m15', 11500000, 0, '16.jpg', 4, 4, 1, '2020-08-15', 'Thành công của những sản phẩm gần đây tại thị trường Việt Nam, lần này hãng Nokia đã mang đến mẫu điện thoại Nokia C21 Plus - sở hữu trong mình viên pin mang lại thời gian trải nghiệm lâu dài và sử', 50, 0),
(22, 'Nokia C21', 9900000, 0.8, '21.jpg', 1, 4, 1, '2020-08-04', 'Sản phẩm gần đây tại thị trường Việt Nam, lần này hãng Nokia đã mang đến mẫu điện thoại Nokia C21 Plus - sở hữu trong mình viên pin mang lại thời gian trải nghiệm lâu dài và sử', 23, 0),
(24, 'Nokia c22', 7800000, 0, '22.jpg', 3, 7, 1, '2020-07-04', 'Nokia C22 Plus - sở hữu trong mình viên pin mang lại thời gian trải nghiệm lâu dài và sử', 12, 0),
(25, 'Oppo A15', 8900000, 0, '24.jpg', 3, 7, 1, '2020-07-04', 'Lần này hãng Nokia đã mang đến mẫu điện thoại Oppo C21 Plus - sở hữu trong mình viên pin mang lại thời gian trải nghiệm lâu dài và sử', 12, 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `hoadon1`
--

CREATE TABLE `hoadon1` (
  `masohd` int(11) NOT NULL,
  `makh` int(11) NOT NULL,
  `ngaydat` date NOT NULL,
  `tongtien` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Đang đổ dữ liệu cho bảng `hoadon1`
--

INSERT INTO `hoadon1` (`masohd`, `makh`, `ngaydat`, `tongtien`) VALUES
(1, 19, '2023-05-30', 15000000),
(2, 19, '2023-01-30', 8900000),
(3, 19, '2023-01-30', 10200000),
(4, 19, '2023-01-30', 20000000),
(5, 19, '2023-02-27', 15500000),
(6, 19, '2023-03-14', 0),
(7, 19, '2023-03-14', 0),
(8, 19, '2023-03-14', 9300000),
(9, 19, '2023-03-14', 9900000),
(10, 19, '2023-03-14', 10000000),
(11, 8, '2023-03-15', 30000000),
(12, 22, '2024-03-05', 226000000);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `khachhang1`
--

CREATE TABLE `khachhang1` (
  `makh` int(11) NOT NULL,
  `tenkh` varchar(50) NOT NULL,
  `username` varchar(25) NOT NULL,
  `matkhau` varchar(100) NOT NULL,
  `email` varchar(50) NOT NULL,
  `diachi` text NOT NULL,
  `sodienthoai` varchar(12) NOT NULL,
  `vaitro` int(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Đang đổ dữ liệu cho bảng `khachhang1`
--

INSERT INTO `khachhang1` (`makh`, `tenkh`, `username`, `matkhau`, `email`, `diachi`, `sodienthoai`, `vaitro`) VALUES
(1, 'phat', 'nguyenminhphat', '123456', 'phatla@gmail.com', 'Thái Bình', '0857973867', 0),
(5, 'an', 'an', '202cb962ac59075b964b07152d234b70', 'an@gmail.com', '', '', 0),
(7, 'Nguyên', 'nguyen', '202cb962ac59075b964b07152d234b70', 'nguyen@gmail.com', '', '', 0),
(8, 'ducle', 'ducle', 'e10adc3949ba59abbe56e057f20f883e', 'ducle@gmail.com', 'Thai binh', '0857973867', 0),
(19, 'Vylo', 'vylo', '28b0eabea47989fb3ed291075d733424', 'choemodo@gmail.com', 'HCM', '12321321312', 0),
(20, 'nguyenducanh', '78py', 'e10adc3949ba59abbe56e057f20f883e', 'bien77@gmail.com', 'thaibinh', '0857973867', 0),
(22, 'admin', 'admin', 'f5bb0c8de146c67b44babbf4e6584cc0', 'anhnguyen241004@gmail.com', '12321', '0928483664', 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `loai`
--

CREATE TABLE `loai` (
  `maloai` int(11) NOT NULL,
  `tenloai` varchar(50) NOT NULL,
  `idmenu` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Đang đổ dữ liệu cho bảng `loai`
--

INSERT INTO `loai` (`maloai`, `tenloai`, `idmenu`) VALUES
(1, 'Samsung', 3),
(3, 'Iphone', 3),
(4, 'Nokia', 3),
(5, 'Oppo', 3),
(6, 'Vivo', 3),
(7, 'Xiaomi', 3),
(8, 'Mastel', 3),
(10, 'Mobel', 4),
(11, 'Motel', 5),
(12, 'Motorola', 5);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `menu`
--

CREATE TABLE `menu` (
  `idmenu` int(11) NOT NULL,
  `name` varchar(30) NOT NULL,
  `link` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Đang đổ dữ liệu cho bảng `menu`
--

INSERT INTO `menu` (`idmenu`, `name`, `link`) VALUES
(1, 'Trang Chủ', 'index.php'),
(3, 'Sushi', ''),
(4, 'Túi Xách', 'View/sanphamtui.php'),
(5, 'Liên Hệ', 'View/lienhe.php'),
(6, 'Tài Khoản', 'View/gioithieu.php');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `user1`
--

CREATE TABLE `user1` (
  `makh` int(11) NOT NULL,
  `tenkh` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `diachi` varchar(255) NOT NULL,
  `sodienthoai` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Đang đổ dữ liệu cho bảng `user1`
--

INSERT INTO `user1` (`makh`, `tenkh`, `email`, `diachi`, `sodienthoai`) VALUES
(1, 'Phat', 'phatnguyen@gmail.com', 'HCM', '12321321312'),
(0, 'NguyenDucAnh', 'anhnguyen@gmail.com', 'Phú Yên ', '0857973867');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `binhluan1`
--
ALTER TABLE `binhluan1`
  ADD PRIMARY KEY (`mabl`),
  ADD KEY `fk_bl_mahh` (`mahh`),
  ADD KEY `fk_bl_kh` (`makh`);

--
-- Chỉ mục cho bảng `cthoadon1`
--
ALTER TABLE `cthoadon1`
  ADD PRIMARY KEY (`masohd`,`mahh`),
  ADD KEY `fk_cthd_mahh` (`mahh`);

--
-- Chỉ mục cho bảng `hanghoa`
--
ALTER TABLE `hanghoa`
  ADD PRIMARY KEY (`mahh`),
  ADD KEY `FK_hanghoa_maloai` (`maloai`);

--
-- Chỉ mục cho bảng `hoadon1`
--
ALTER TABLE `hoadon1`
  ADD PRIMARY KEY (`masohd`),
  ADD KEY `fk_hoadon_kh` (`makh`);

--
-- Chỉ mục cho bảng `khachhang1`
--
ALTER TABLE `khachhang1`
  ADD PRIMARY KEY (`makh`);

--
-- Chỉ mục cho bảng `loai`
--
ALTER TABLE `loai`
  ADD PRIMARY KEY (`maloai`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `binhluan1`
--
ALTER TABLE `binhluan1`
  MODIFY `mabl` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT cho bảng `hoadon1`
--
ALTER TABLE `hoadon1`
  MODIFY `masohd` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT cho bảng `khachhang1`
--
ALTER TABLE `khachhang1`
  MODIFY `makh` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT cho bảng `loai`
--
ALTER TABLE `loai`
  MODIFY `maloai` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
