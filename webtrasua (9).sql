-- phpMyAdmin SQL Dump
-- version 5.2.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Sep 16, 2026 at 12:01 PM
-- Server version: 8.0.30
-- PHP Version: 8.5.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `webtrasua`
--

-- --------------------------------------------------------

--
-- Table structure for table `binh_luans`
--

CREATE TABLE `binh_luans` (
  `id` int NOT NULL,
  `san_pham_id` int NOT NULL,
  `tai_khoan_id` int NOT NULL,
  `noi_dung` text NOT NULL,
  `ngay_dang` date NOT NULL,
  `trang_thai` tinyint(1) DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `binh_luans`
--

INSERT INTO `binh_luans` (`id`, `san_pham_id`, `tai_khoan_id`, `noi_dung`, `ngay_dang`, `trang_thai`) VALUES
(2, 6, 4, 'trà sữa ngon, mọi người nên thử', '2026-04-02', 1),
(3, 8, 4, 'ok', '2026-04-03', 1),
(4, 22, 4, 'ok', '2026-04-06', 1),
(6, 14, 4, 'tesst', '2026-04-20', 2),
(7, 14, 4, 'tesst', '2026-04-20', 1);

-- --------------------------------------------------------

--
-- Table structure for table `chi_tiet_don_hangs`
--

CREATE TABLE `chi_tiet_don_hangs` (
  `id` int NOT NULL,
  `don_hang_id` int NOT NULL,
  `san_pham_id` int NOT NULL,
  `don_gia` decimal(10,2) NOT NULL,
  `so_luong` int NOT NULL,
  `thanh_tien` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `chi_tiet_don_hangs`
--

INSERT INTO `chi_tiet_don_hangs` (`id`, `don_hang_id`, `san_pham_id`, `don_gia`, `so_luong`, `thanh_tien`) VALUES
(8, 12, 6, 30000.00, 1, 30000.00),
(9, 13, 8, 35000.00, 1, 35000.00),
(10, 14, 14, 55000.00, 1, 55000.00),
(11, 15, 16, 40000.00, 1, 40000.00),
(12, 15, 14, 55000.00, 1, 55000.00),
(13, 15, 20, 50000.00, 1, 50000.00),
(14, 16, 14, 55000.00, 4, 220000.00),
(15, 17, 14, 55000.00, 5, 275000.00),
(16, 18, 14, 55000.00, 10, 550000.00),
(17, 19, 7, 30000.00, 1, 30000.00),
(18, 20, 9, 25000.00, 2, 50000.00),
(19, 21, 6, 30000.00, 4, 120000.00),
(20, 22, 16, 40000.00, 7, 280000.00),
(21, 23, 14, 55000.00, 1, 55000.00),
(22, 24, 16, 40000.00, 1, 40000.00),
(23, 25, 14, 55000.00, 1, 55000.00),
(24, 26, 6, 30000.00, 1, 30000.00),
(25, 26, 14, 55000.00, 1, 55000.00),
(26, 27, 14, 55000.00, 1, 55000.00),
(28, 29, 16, 40000.00, 6, 240000.00),
(29, 29, 6, 30000.00, 4, 120000.00),
(30, 30, 14, 55000.00, 6, 330000.00),
(31, 31, 16, 40000.00, 1, 40000.00);

-- --------------------------------------------------------

--
-- Table structure for table `chi_tiet_gio_hangs`
--

CREATE TABLE `chi_tiet_gio_hangs` (
  `id` int NOT NULL,
  `gio_hang_id` int NOT NULL,
  `san_pham_id` int NOT NULL,
  `so_luong` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `chuc_vus`
--

CREATE TABLE `chuc_vus` (
  `id` int NOT NULL,
  `ten_chuc_vu` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `chuc_vus`
--

INSERT INTO `chuc_vus` (`id`, `ten_chuc_vu`) VALUES
(1, 'Quản trị viên'),
(2, 'Khách hàng');

-- --------------------------------------------------------

--
-- Table structure for table `danh_mucs`
--

CREATE TABLE `danh_mucs` (
  `id` int NOT NULL,
  `ten_danh_muc` varchar(255) NOT NULL,
  `mo_ta` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `danh_mucs`
--

INSERT INTO `danh_mucs` (`id`, `ten_danh_muc`, `mo_ta`) VALUES
(1, 'Trà sữa truyền thống', NULL),
(2, 'Trà trái cây', NULL),
(3, 'Trà sữa đặc biệt', NULL),
(4, 'Đồ uống đá xay', NULL),
(5, 'Topping', NULL),
(6, 'Combo', NULL),
(7, 'Đồ ăn vặt (tùy chọn)', 'Ga ran kfc');

-- --------------------------------------------------------

--
-- Table structure for table `don_hangs`
--

CREATE TABLE `don_hangs` (
  `id` int NOT NULL,
  `ma_don_hang` varchar(50) NOT NULL,
  `tai_khoan_id` int NOT NULL,
  `ten_nguoi_nhan` varchar(255) NOT NULL,
  `email_nguoi_nhan` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `sdt_nguoi_nhan` varchar(15) NOT NULL,
  `dia_chi_nguoi_nhan` text NOT NULL,
  `ngay_dat` datetime NOT NULL,
  `tong_tien` decimal(10,2) NOT NULL,
  `ghi_chu` text,
  `phuong_thuc_thanh_toan_id` int NOT NULL,
  `trang_thai_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `don_hangs`
--

INSERT INTO `don_hangs` (`id`, `ma_don_hang`, `tai_khoan_id`, `ten_nguoi_nhan`, `email_nguoi_nhan`, `sdt_nguoi_nhan`, `dia_chi_nguoi_nhan`, `ngay_dat`, `tong_tien`, `ghi_chu`, `phuong_thuc_thanh_toan_id`, `trang_thai_id`) VALUES
(1, 'TE-123', 4, 'Nguyễn Văn Nam', 'group5@gmail.com', '0987654321', '13 Trịnh Văn Bô, Hà Nội', '2026-03-14 00:00:00', 50000.00, 'Tra sua ban chay nhat the gioi', 1, 9),
(2, 'TE-125', 4, 'Nguyễn Văn Nam', 'group5@gmail.com', '0987654321', '13 Trịnh Văn Bô, Hà Nội', '2026-03-14 00:00:00', 100000.00, 'Tra sua ban chay nhat the gioi by group5', 1, 9),
(4, 'DH3111', 4, 'thang ', 'vandt8@gmail.com', '238423980', 'Hà Nội', '2026-03-25 00:00:00', 55555.00, 'thangbrrrr', 1, 11),
(5, 'DH3998', 4, 'thang ', 'vandt8@gmail.com', '238423980', 'Hà Nội', '2026-03-25 00:00:00', 55555.00, 'thangbrrrr', 1, 11),
(6, 'DH3563', 4, 'thang  1234567', 'vandt8@gmail.com', '238423980', 'Hà Nội', '2026-03-25 00:00:00', 55555.00, '122221212121212', 1, 11),
(7, 'DH6334', 4, 'thang  1234567', 'vandt8@gmail.com', '238423980', 'Hà Nội', '2026-03-25 00:00:00', 55555.00, '122221212121212', 1, 11),
(8, 'DH2041', 4, 'thang  1234567', 'vandt8@gmail.com', '238423980', 'Hà Nội', '2026-03-25 00:00:00', 55555.00, '122221212121212', 1, 9),
(9, 'DH5456', 4, 'thang  838666', 'vandt8@gmail.com', '238423980', 'Hà Nội', '2026-03-25 00:00:00', 55555.00, 'goodddddd', 2, 9),
(10, 'DH7135', 4, 'thang  838666', 'vandt8@gmail.com', '238423980', 'Hà Nội', '2026-03-25 00:00:00', 55555.00, 'goodddddd', 2, 9),
(11, 'DH6593', 4, 'Nguyễn Văn Văn', 'vandt8@gmail.com', '238423980', 'Hà Nội', '2026-03-27 00:00:00', 30000.00, 'fdfdfdf', 1, 9),
(12, 'DH3833', 4, 'Nguyễn Văn Văn', 'client@fpt.edu.vn', '3434343434', 'Hà Nội', '2026-04-02 00:00:00', 60000.00, '', 2, 9),
(13, 'DH1300', 4, 'Nguyễn Văn Văn', 'client@fpt.edu.vn', '3434343434', 'Hà Nội', '2026-04-03 00:00:00', 65000.00, '', 2, 1),
(14, 'DH1990', 4, 'Nguyễn Văn Văn', 'client@fpt.edu.vn', '667667', 'Hà Nội', '2026-04-03 00:00:00', 85000.00, '', 1, 11),
(15, 'DH6742', 4, 'Nguyễn Văn Văn', 'client@fpt.edu.vn', '667667', 'Hà Nội', '2026-04-03 00:00:00', 175000.00, '', 1, 1),
(16, 'DH9105', 4, 'Nguyễn Văn Văn', 'client@fpt.edu.vn', '667667', 'Hà Nội', '2026-04-03 00:00:00', 250000.00, '', 1, 1),
(17, 'DH5596', 4, 'Nguyễn Văn Văn', 'client@fpt.edu.vn', '667667', 'Hà Nội', '2026-04-03 00:00:00', 305000.00, '', 1, 9),
(18, 'DH2675', 4, 'Nguyễn Văn Văn', 'client@fpt.edu.vn', '667667', 'Hà Nội', '2026-04-03 00:00:00', 580000.00, '', 1, 9),
(19, 'DH6797', 4, 'Nguyễn Văn Văn', 'client@fpt.edu.vn', '667667', 'Hà Nội', '2026-04-03 00:00:00', 60000.00, '', 1, 1),
(20, 'DH3047', 4, 'Nguyễn Văn Văn', 'client@fpt.edu.vn', '667667', 'Hà Nội', '2026-04-03 00:00:00', 80000.00, '', 1, 9),
(21, 'DH9159', 4, 'Nguyễn Văn Văn', 'client@fpt.edu.vn', '667667', 'Hà Nội', '2026-04-03 22:14:29', 150000.00, '', 1, 1),
(22, 'DH4102', 4, 'Nguyễn Văn Văn', 'client@fpt.edu.vn', '667667', 'Hà Nội', '2026-04-03 22:14:44', 310000.00, '', 1, 2),
(23, 'DH2716', 4, 'Nguyễn Văn Văn', 'client@fpt.edu.vn', '667667', 'Hà Nội', '2026-04-06 16:20:14', 85000.00, '', 1, 1),
(24, 'DH9483', 4, 'Nguyễn Văn Văn', 'client@fpt.edu.vn', '667667', 'Hà Nội', '2026-04-06 16:34:41', 70000.00, '', 1, 1),
(25, 'DH1394', 4, 'Nguyễn Văn Văn', 'client@fpt.edu.vn', 'ẻererer', 'Hà Nội', '2026-04-06 16:37:56', 85000.00, '', 1, 1),
(26, 'DH7267', 4, 'Nguyễn Văn Văn', 'client@fpt.edu.vn', '667667', 'Hà Nội', '2026-04-06 16:45:06', 115000.00, '', 1, 9),
(27, 'DH3158', 4, 'Nguyễn Văn Văn', 'client@fpt.edu.vn', '667667', 'Hà Nội', '2026-04-07 21:10:46', 85000.00, '', 1, 11),
(29, 'DH8006', 4, 'Nguyễn Văn Văn', 'client@fpt.edu.vn', '667667', 'Hà Nội', '2026-04-20 15:43:25', 390000.00, 'thth', 1, 11),
(30, 'DH9961', 4, 'Nguyễn Văn B', 'client@fpt.edu.vn', '667667', 'Hà Nội', '2026-04-20 19:44:24', 360000.00, 'th', 1, 9),
(31, 'DH9767', 4, 'Nguyễn Văn B', 'client@fpt.edu.vn', '667667', 'Hà Nội', '2026-06-16 14:27:05', 70000.00, 'jj', 1, 11);

-- --------------------------------------------------------

--
-- Table structure for table `gio_hangs`
--

CREATE TABLE `gio_hangs` (
  `id` int NOT NULL,
  `tai_khoan_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `hinh_anh_san_phams`
--

CREATE TABLE `hinh_anh_san_phams` (
  `id` int NOT NULL,
  `san_pham_id` int NOT NULL,
  `link_hinh_anh` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `hinh_anh_san_phams`
--

INSERT INTO `hinh_anh_san_phams` (`id`, `san_pham_id`, `link_hinh_anh`) VALUES
(7, 6, './uploads/1774862317Tra-Sua-Mochi-Triple-Cheese-550x550.png'),
(8, 7, './uploads/1774862375Trà-Sữa-Phô-Mai-Nhung-Lụa-v2-550x550.png'),
(9, 8, './uploads/1774862386Trà-Lựu-Trân-Châu-Lộc-Dỏ-v2-550x550.png'),
(10, 9, './uploads/1774862397tra-tacm-550x550.png'),
(11, 10, './uploads/1774862415Tra-Sua-Mochi-Triple-Cheese-550x550.png'),
(12, 22, './uploads/1775151214tra-sua-khoai-mon-1-550x550.png'),
(13, 14, './uploads/1775151238tiramisu-550x550.png'),
(14, 16, './uploads/1775151253ts-truyen-thong-550x550.png'),
(15, 19, './uploads/1775151278tra-oi-hong-1-550x550.png'),
(16, 13, './uploads/1775151292tra-chanh-thanh-xuan-mat-ong-550x550.png'),
(17, 11, './uploads/1775151304tra-sua-matcha-dau-do-550x550.png'),
(18, 20, './uploads/1775151326tra-chanh-thanh-xuan-mat-ong-550x550.png'),
(19, 15, './uploads/1775151346hong-tra-sua-tay-con-linh-550x550.png'),
(20, 12, './uploads/1775151367tra-chanh-thanh-xuan-mat-ong-550x550.png'),
(21, 17, './uploads/1775151384tra-chanh-thanh-xuan-mat-ong-550x550.png'),
(22, 18, './uploads/1775151395tra-thom-1-550x550.png'),
(23, 21, './uploads/1775151404tra-sua-socola-1-550x550.png'),
(24, 14, './uploads/1775480774tra-thom-1-550x550.png'),
(25, 14, './uploads/1775480774tra-sua-socola-1-550x550.png'),
(26, 16, './uploads/1775480785tiramisu-550x550.png'),
(27, 16, './uploads/1775480785tra-vai-1-550x550.png'),
(28, 6, './uploads/1775480797tra-thom-1-550x550.png'),
(29, 6, './uploads/1775480797tra-sua-matcha-dau-do-550x550.png'),
(30, 7, './uploads/1775480812tra-chanh-thanh-xuan-2-550x550.png'),
(31, 7, './uploads/1775480812tra-vai-1-550x550.png'),
(32, 8, './uploads/1775480825tiramisu-550x550.png'),
(33, 8, './uploads/1775480825ts-matcha-kem-trung-khe-550x550.png'),
(34, 9, './uploads/1775480839Tra-Sua-Song-Hy-Khoai-Mon-550x550.png'),
(35, 9, './uploads/1775480839tra-lai-mat-ong-vang-sua-550x550.png'),
(36, 10, './uploads/1775480853tra-sua-khoai-mon-1-550x550.png'),
(37, 10, './uploads/1775480853tra-sua-socola-1-550x550.png'),
(38, 11, './uploads/1775480865ts-truyen-thong-550x550.png'),
(39, 11, './uploads/1775480865ts-matcha-kem-trung-khe-550x550.png'),
(40, 13, './uploads/1775480876ts-truyen-thong-550x550.png'),
(41, 13, './uploads/1775480876ts-matcha-kem-trung-khe-550x550.png'),
(42, 19, './uploads/1775480892tra-dau-550x550.png'),
(43, 19, './uploads/1775480892hong-tra-sua-tay-con-linh-550x550.png'),
(44, 20, './uploads/1775480911tra-tacm-550x550.png'),
(45, 20, './uploads/1775480911Trà-Lựu-Trân-Châu-Lộc-Dỏ-v2-550x550.png'),
(46, 15, './uploads/1775480933tra-dau-550x550.png'),
(47, 15, './uploads/1775480933tra-vai-1-550x550.png'),
(48, 22, './uploads/1775480945tra-chanh-thanh-xuan-2-550x550.png'),
(49, 22, './uploads/1775480945ts-matcha-kem-trung-khe-550x550.png'),
(50, 12, './uploads/1775480965tra-dau-550x550.png'),
(51, 12, './uploads/1775480965ts-matcha-kem-trung-khe-550x550.png'),
(52, 17, './uploads/1775480978tiramisu-550x550.png'),
(53, 17, './uploads/1775480978ts-truyen-thong-550x550.png'),
(54, 18, './uploads/1775480997ts-truyen-thong-550x550.png'),
(55, 18, './uploads/1775480997TS-Dao-PM-Dao-550x550.png'),
(56, 21, './uploads/1775481011tiramisu-550x550.png'),
(57, 21, './uploads/1775481011TS-Dao-PM-Dao-550x550.png');

-- --------------------------------------------------------

--
-- Table structure for table `phuong_thuc_thanh_toans`
--

CREATE TABLE `phuong_thuc_thanh_toans` (
  `id` int NOT NULL,
  `ten_phuong_thuc` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `phuong_thuc_thanh_toans`
--

INSERT INTO `phuong_thuc_thanh_toans` (`id`, `ten_phuong_thuc`) VALUES
(1, 'COD(Thanh toán khi nhận hàng)'),
(2, 'Thanh toán VNpay');

-- --------------------------------------------------------

--
-- Table structure for table `san_phams`
--

CREATE TABLE `san_phams` (
  `id` int NOT NULL,
  `ten_san_pham` varchar(255) NOT NULL,
  `gia_san_pham` decimal(10,2) NOT NULL,
  `gia_khuyen_mai` decimal(10,2) DEFAULT NULL,
  `hinh_anh` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  `so_luong` int NOT NULL,
  `luot_xem` int DEFAULT '0',
  `ngay_nhap` date NOT NULL,
  `mo_ta` text,
  `danh_muc_id` int NOT NULL,
  `trang_thai` tinyint NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `san_phams`
--

INSERT INTO `san_phams` (`id`, `ten_san_pham`, `gia_san_pham`, `gia_khuyen_mai`, `hinh_anh`, `so_luong`, `luot_xem`, `ngay_nhap`, `mo_ta`, `danh_muc_id`, `trang_thai`) VALUES
(6, 'Trà Đào', 35000.00, 30000.00, './uploads/1774612028TS-Dao-PM-Dao-550x550.png', 7, 0, '2026-03-27', '', 2, 1),
(7, 'Trà sữa phô mai', 35000.00, 30000.00, './uploads/1774612075Trà-Sữa-Phô-Mai-Nhung-Lụa-v2-550x550.png', 7, 0, '2026-03-27', '', 3, 1),
(8, 'Trà Lựu Trân Châu', 40000.00, 35000.00, './uploads/1774612149Trà-Lựu-Trân-Châu-Lộc-Dỏ-v2-550x550.png', 3, 0, '2026-03-27', '', 3, 1),
(9, 'Trà sữa trân châu', 35000.00, 25000.00, './uploads/1774612192tra-tacm-550x550.png', 8, 0, '2026-03-27', '', 3, 1),
(10, 'Trà sũa mô chi', 30000.00, 25000.00, './uploads/1774612242Tra-Sua-Mochi-Triple-Cheese-550x550.png', 5, 0, '2026-03-27', '', 3, 1),
(11, 'Matcha kem', 35000.00, 40000.00, './uploads/1775150710ts-matcha-kem-trung-khe-550x550.png', 6, 0, '2026-04-03', 'Tra sua ngon nhat the gioi', 3, 1),
(12, 'Trà sữa đặc biệt', 40000.00, 45000.00, './uploads/1775150765TSKTK-1-550x550.png', 6, 0, '2026-04-02', 'Tra sua ngon nhat the gioi', 6, 1),
(13, 'Trà dâu', 35000.00, 40000.00, './uploads/1775150795tra-dau-550x550.png', 6, 0, '2026-04-03', 'Tra sua ngon nhat the gioi', 4, 1),
(14, 'Tiramisu', 50000.00, 55000.00, './uploads/1775150834tiramisu-550x550.png', 6, 0, '2026-04-03', 'Tra sua ngon nhat the gioi', 1, 1),
(15, 'Hồng trà sữa ', 45000.00, 50000.00, './uploads/1775150878hong-tra-sua-tay-con-linh-550x550.png', 6, 0, '2026-04-03', 'Tra sua ngon nhat the gioi', 5, 1),
(16, 'Trà sữa truyền thống', 35000.00, 40000.00, './uploads/1775150921ts-truyen-thong-550x550.png', 6, 0, '2026-04-03', 'Tra sua ngon nhat the gioi', 1, 1),
(17, 'Trà vải', 45000.00, 55000.00, './uploads/1775150949tra-vai-1-550x550.png', 6, 0, '2026-04-03', 'Tra sua ngon nhat the gioi', 6, 1),
(18, 'Trà thơm', 45000.00, 50000.00, './uploads/1775150975tra-thom-1-550x550.png', 6, 0, '2026-04-03', 'Tra sua ngon nhat the gioi', 7, 1),
(19, 'Trà ổi hồng', 45000.00, 50000.00, './uploads/1775151067tra-oi-hong-1-550x550.png', 6, 0, '2026-04-03', 'Tra sua ngon nhat the gioi', 4, 1),
(20, 'Trà chanh thanh xuan mat ong', 45000.00, 50000.00, './uploads/1775151111tra-chanh-thanh-xuan-mat-ong-550x550.png', 6, 0, '2026-04-03', 'Tra sua ngon nhat the gioi', 4, 1),
(21, 'Trà sữa socola', 55000.00, 60000.00, './uploads/1775151176tra-sua-socola-1-550x550.png', 6, 0, '2026-04-03', 'Tra sua ngon nhat the gioi', 7, 1),
(22, 'Tra sua khoai mon', 45000.00, 55000.00, './uploads/1775151214tra-sua-khoai-mon-1-550x550.png', 6, 0, '2026-04-03', 'Tra sua ngon nhat the gioi', 5, 1);

-- --------------------------------------------------------

--
-- Table structure for table `tai_khoans`
--

CREATE TABLE `tai_khoans` (
  `id` int NOT NULL,
  `ho_ten` varchar(255) NOT NULL,
  `anh_dai_dien` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  `ngay_sinh` date DEFAULT NULL,
  `email` varchar(255) NOT NULL,
  `so_dien_thoai` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `gioi_tinh` tinyint(1) NOT NULL DEFAULT '1',
  `dia_chi` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  `mat_khau` varchar(255) NOT NULL,
  `chuc_vu_id` int NOT NULL,
  `trang_thai` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `tai_khoans`
--

INSERT INTO `tai_khoans` (`id`, `ho_ten`, `anh_dai_dien`, `ngay_sinh`, `email`, `so_dien_thoai`, `gioi_tinh`, `dia_chi`, `mat_khau`, `chuc_vu_id`, `trang_thai`) VALUES
(1, 'Nguyễn Văn Leo Messi', NULL, '1999-08-17', 'group5@fpt.edu.vn', '034343422', 1, 'Số 1 Tp.HCM', '$2y$10$.ZOZZUbwhES4wvt.Awn.nO1/fF0GVC4yXw8d88dU9FHIi6xF7zuyO', 1, 1),
(2, 'Nguyễn Văn Tú', NULL, '2010-12-08', 'tu@gmail.com', '', 1, '', '123456', 1, 1),
(4, 'Nguyễn Văn B', 'uploads/1775034339_avt2.jpg', '1999-03-08', 'client@fpt.edu.vn', '667667', 1, 'Hà Nội', '$2y$10$ZOv7qA9V1MQRyyOLNjVkHuCrgjkUj62UbspvzlNbybW.qUaJ86yBy', 2, 1),
(5, 'Nguyễn Văn Đinh', NULL, NULL, 'đinhv7@gmail.com', NULL, 1, NULL, '$2y$10$yzPmmCoNopc.b.UCGaVOMOb8.T8exv7O2pvEhS72CtenSzmrmal8O', 1, 1),
(7, 'Nguyễn Văn An', NULL, NULL, 'sv6@gmail.com', '', 1, NULL, '$2y$10$ZOv7qA9V1MQRyyOLNjVkHuCrgjkUj62UbspvzlNbybW.qUaJ86yBy', 1, 1),
(9, 'Nguyễn Văn A', './uploads/1776268343avt4.jpg', '2026-04-23', 'sv122229@gmail.com', '3434343434', 1, 'Hà Nội', '$2y$10$SoLf82wfkOhReVYLREc/nuI4qOc5oIIENtGFG4uCfBF9WOB5Gycjq', 2, 1),
(10, 'Nguyễn Văn An', './uploads/1776268362avt3.jpg', '2026-04-24', 'sv1eeee@gmail.com', '3434343434', 1, 'Hà Nội', '$2y$10$2MDzCnu5N8EPWfExBmfFW.SWCxfmO0GmyBLVN5O1H5QvXK7e.W8tS', 2, 1),
(16, 'Nguyễn Văn Đinh', '1785525448_banner4.jpg', '2026-08-07', 'sv2226@gmail.com', '3434343434', 1, 'Hà Nội', '$2y$12$2PskvD5XSx7ZCJkmtnfeA.pSzzFrmJeVS1OTAqEBUey0/HAntHNVS', 2, 1);

-- --------------------------------------------------------

--
-- Table structure for table `trang_thai_don_hangs`
--

CREATE TABLE `trang_thai_don_hangs` (
  `id` int NOT NULL,
  `ten_trang_thai` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `trang_thai_don_hangs`
--

INSERT INTO `trang_thai_don_hangs` (`id`, `ten_trang_thai`) VALUES
(1, 'Chưa xác nhận'),
(2, 'đã xác nhận'),
(3, 'Chưa thanh toán'),
(4, 'Đã thanh toán'),
(5, 'Đang chuẩn bị hàng'),
(6, 'Đang giao'),
(7, 'Đã giao'),
(8, 'Đã nhận'),
(9, 'Thành công'),
(10, 'Hoàn hàng'),
(11, 'Hủy đơn');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `binh_luans`
--
ALTER TABLE `binh_luans`
  ADD PRIMARY KEY (`id`),
  ADD KEY `lk_binhluan_taikhoan` (`tai_khoan_id`),
  ADD KEY `lk_binhluan_sanpham` (`san_pham_id`);

--
-- Indexes for table `chi_tiet_don_hangs`
--
ALTER TABLE `chi_tiet_don_hangs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `lk_ctdonhang_donhang` (`don_hang_id`),
  ADD KEY `lk_ctdonhang_sanpham` (`san_pham_id`);

--
-- Indexes for table `chi_tiet_gio_hangs`
--
ALTER TABLE `chi_tiet_gio_hangs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `lk_ctgiohang_giohang` (`gio_hang_id`),
  ADD KEY `lk_ctgiohang_sanpham` (`san_pham_id`);

--
-- Indexes for table `chuc_vus`
--
ALTER TABLE `chuc_vus`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `danh_mucs`
--
ALTER TABLE `danh_mucs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `don_hangs`
--
ALTER TABLE `don_hangs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `lk_donhang_taikhoan` (`tai_khoan_id`),
  ADD KEY `lk_donhang_trangthaidonhang` (`trang_thai_id`);

--
-- Indexes for table `gio_hangs`
--
ALTER TABLE `gio_hangs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `lk_giohang_tk` (`tai_khoan_id`);

--
-- Indexes for table `hinh_anh_san_phams`
--
ALTER TABLE `hinh_anh_san_phams`
  ADD PRIMARY KEY (`id`),
  ADD KEY `lk_hinhanhsp_sanpham` (`san_pham_id`);

--
-- Indexes for table `phuong_thuc_thanh_toans`
--
ALTER TABLE `phuong_thuc_thanh_toans`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `san_phams`
--
ALTER TABLE `san_phams`
  ADD PRIMARY KEY (`id`),
  ADD KEY `lk_sanpham_danhmuc` (`danh_muc_id`);

--
-- Indexes for table `tai_khoans`
--
ALTER TABLE `tai_khoans`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`),
  ADD KEY `lk_tk_chucvu` (`chuc_vu_id`);

--
-- Indexes for table `trang_thai_don_hangs`
--
ALTER TABLE `trang_thai_don_hangs`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `binh_luans`
--
ALTER TABLE `binh_luans`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `chi_tiet_don_hangs`
--
ALTER TABLE `chi_tiet_don_hangs`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `chi_tiet_gio_hangs`
--
ALTER TABLE `chi_tiet_gio_hangs`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT for table `chuc_vus`
--
ALTER TABLE `chuc_vus`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `danh_mucs`
--
ALTER TABLE `danh_mucs`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `don_hangs`
--
ALTER TABLE `don_hangs`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `gio_hangs`
--
ALTER TABLE `gio_hangs`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `hinh_anh_san_phams`
--
ALTER TABLE `hinh_anh_san_phams`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=58;

--
-- AUTO_INCREMENT for table `phuong_thuc_thanh_toans`
--
ALTER TABLE `phuong_thuc_thanh_toans`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `san_phams`
--
ALTER TABLE `san_phams`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `tai_khoans`
--
ALTER TABLE `tai_khoans`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `trang_thai_don_hangs`
--
ALTER TABLE `trang_thai_don_hangs`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `binh_luans`
--
ALTER TABLE `binh_luans`
  ADD CONSTRAINT `lk_binhluan_sanpham` FOREIGN KEY (`san_pham_id`) REFERENCES `san_phams` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  ADD CONSTRAINT `lk_binhluan_taikhoan` FOREIGN KEY (`tai_khoan_id`) REFERENCES `tai_khoans` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT;

--
-- Constraints for table `chi_tiet_don_hangs`
--
ALTER TABLE `chi_tiet_don_hangs`
  ADD CONSTRAINT `lk_ctdonhang_donhang` FOREIGN KEY (`don_hang_id`) REFERENCES `don_hangs` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  ADD CONSTRAINT `lk_ctdonhang_sanpham` FOREIGN KEY (`san_pham_id`) REFERENCES `san_phams` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT;

--
-- Constraints for table `chi_tiet_gio_hangs`
--
ALTER TABLE `chi_tiet_gio_hangs`
  ADD CONSTRAINT `lk_ctgiohang_giohang` FOREIGN KEY (`gio_hang_id`) REFERENCES `gio_hangs` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  ADD CONSTRAINT `lk_ctgiohang_sanpham` FOREIGN KEY (`san_pham_id`) REFERENCES `san_phams` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT;

--
-- Constraints for table `don_hangs`
--
ALTER TABLE `don_hangs`
  ADD CONSTRAINT `lk_donhang_taikhoan` FOREIGN KEY (`tai_khoan_id`) REFERENCES `tai_khoans` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  ADD CONSTRAINT `lk_donhang_trangthaidonhang` FOREIGN KEY (`trang_thai_id`) REFERENCES `trang_thai_don_hangs` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT;

--
-- Constraints for table `gio_hangs`
--
ALTER TABLE `gio_hangs`
  ADD CONSTRAINT `lk_giohang_tk` FOREIGN KEY (`tai_khoan_id`) REFERENCES `tai_khoans` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT;

--
-- Constraints for table `hinh_anh_san_phams`
--
ALTER TABLE `hinh_anh_san_phams`
  ADD CONSTRAINT `lk_hinhanhsp_sanpham` FOREIGN KEY (`san_pham_id`) REFERENCES `san_phams` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT;

--
-- Constraints for table `san_phams`
--
ALTER TABLE `san_phams`
  ADD CONSTRAINT `lk_sanpham_danhmuc` FOREIGN KEY (`danh_muc_id`) REFERENCES `danh_mucs` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT;

--
-- Constraints for table `tai_khoans`
--
ALTER TABLE `tai_khoans`
  ADD CONSTRAINT `lk_tk_chucvu` FOREIGN KEY (`chuc_vu_id`) REFERENCES `chuc_vus` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
