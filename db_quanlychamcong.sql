-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th10 03, 2024 lúc 05:46 AM
-- Phiên bản máy phục vụ: 10.4.32-MariaDB
-- Phiên bản PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `db_quanlychamcong`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `calamviec`
--

CREATE TABLE `calamviec` (
  `MaCa` varchar(11) NOT NULL,
  `TenCa` varchar(40) NOT NULL,
  `BatDau` time NOT NULL,
  `KetThuc` time NOT NULL,
  `NgayLamViec` date NOT NULL,
  `SoLuongMax` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `calamviec`
--

INSERT INTO `calamviec` (`MaCa`, `TenCa`, `BatDau`, `KetThuc`, `NgayLamViec`, `SoLuongMax`) VALUES
('CA0001C1', 'CaSang', '08:00:00', '12:00:00', '2024-11-03', 0),
('CA0001C2', 'CaChieu', '13:00:00', '17:00:00', '2024-11-03', 0),
('CA0002C1', 'CaSang', '08:00:00', '12:00:00', '2024-11-04', 0),
('CA0002C2', 'CaChieu', '13:00:00', '17:00:00', '2024-11-04', 0),
('CA0003C1', 'CaSang', '08:00:00', '12:00:00', '2024-11-05', 0),
('CA0003C2', 'CaChieu', '13:00:00', '17:00:00', '2024-11-05', 0),
('CA0004C1', 'CaSang', '08:00:00', '12:00:00', '2024-11-06', 0),
('CA0004C2', 'CaChieu', '13:00:00', '17:00:00', '2024-11-06', 0),
('CA0005C1', 'CaSang', '08:00:00', '12:00:00', '2024-11-07', 0),
('CA0005C2', 'CaChieu', '13:00:00', '17:00:00', '2024-11-07', 0),
('CA0006C1', 'CaSang', '08:00:00', '12:00:00', '2024-11-08', 0),
('CA0006C2', 'CaChieu', '13:00:00', '17:00:00', '2024-11-08', 0),
('CA0007C1', 'CaSang', '08:00:00', '12:00:00', '2024-11-09', 0),
('CA0007C2', 'CaChieu', '13:00:00', '17:00:00', '2024-11-09', 0),
('CA0008C1', 'CaSang', '08:00:00', '12:00:00', '2024-11-10', 0),
('CA0008C2', 'CaChieu', '13:00:00', '17:00:00', '2024-11-10', 0),
('CA0009C1', 'CaSang', '08:00:00', '12:00:00', '2024-11-11', 0),
('CA0009C2', 'CaChieu', '13:00:00', '17:00:00', '2024-11-11', 0),
('CA0010C1', 'CaSang', '08:00:00', '12:00:00', '2024-11-12', 0),
('CA0010C2', 'CaChieu', '13:00:00', '17:00:00', '2024-11-12', 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `diemdanh_chamcong`
--

CREATE TABLE `diemdanh_chamcong` (
  `MaQLCa` varchar(40) NOT NULL,
  `MaNV` varchar(40) NOT NULL,
  `MaCa` varchar(40) NOT NULL,
  `ThoiGianDiemDanh` datetime NOT NULL,
  `ThoiGianChamCong` datetime NOT NULL,
  `TrangThaiDD` varchar(40) NOT NULL,
  `TrangThaiCC` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `diemdanh_chamcong`
--

INSERT INTO `diemdanh_chamcong` (`MaQLCa`, `MaNV`, `MaCa`, `ThoiGianDiemDanh`, `ThoiGianChamCong`, `TrangThaiDD`, `TrangThaiCC`) VALUES
('QLC001', 'NV0001', 'CA001C1', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', 'none'),
('QLC002', 'NV0001', 'CA001C2', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', 'none'),
('QLC003', 'NV0002', 'CA001C1', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', 'none'),
('QLC004', 'NV0002', 'CA001C2', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', 'none'),
('QLC005', 'NV0003', 'CA001C1', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', 'none'),
('QLC006', 'NV0003', 'CA001C2', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', 'none'),
('QLC007', 'NV0004', 'CA001C1', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', 'none'),
('QLC008', 'NV0004', 'CA001C2', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', 'none'),
('QLC009', 'NV0005', 'CA001C1', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', 'none'),
('QLC010', 'NV0005', 'CA001C2', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', 'none'),
('QLC011', 'NV0006', 'CA001C1', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', 'none'),
('QLC012', 'NV0006', 'CA001C2', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', 'none'),
('QLC013', 'NV0007', 'CA001C1', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', 'none'),
('QLC014', 'NV0007', 'CA001C2', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', 'none'),
('QLC015', 'NV0008', 'CA001C1', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', 'none'),
('QLC016', 'NV0008', 'CA001C2', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', 'none'),
('QLC017', 'NV0009', 'CA001C1', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', 'none'),
('QLC018', 'NV0009', 'CA001C2', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', 'none'),
('QLC019', 'NV0010', 'CA001C1', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', 'none'),
('QLC020', 'NV0010', 'CA001C2', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', 'none'),
('QLC021', 'NV0001', 'CA002C1', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', 'none'),
('QLC022', 'NV0001', 'CA002C2', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', 'none'),
('QLC023', 'NV0002', 'CA002C1', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', 'none'),
('QLC024', 'NV0002', 'CA002C2', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', 'none'),
('QLC025', 'NV0003', 'CA002C1', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', 'none'),
('QLC026', 'NV0003', 'CA002C2', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', 'none'),
('QLC027', 'NV0004', 'CA002C1', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', 'none'),
('QLC028', 'NV0004', 'CA002C2', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', 'none'),
('QLC029', 'NV0005', 'CA002C1', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', 'none'),
('QLC030', 'NV0005', 'CA002C2', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', 'none'),
('QLC031', 'NV0006', 'CA002C1', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', 'none'),
('QLC032', 'NV0006', 'CA002C2', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', 'none'),
('QLC033', 'NV0007', 'CA002C1', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', 'none'),
('QLC034', 'NV0007', 'CA002C2', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', 'none'),
('QLC035', 'NV0008', 'CA002C1', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', 'none'),
('QLC036', 'NV0008', 'CA002C2', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', 'none'),
('QLC037', 'NV0009', 'CA002C1', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', 'none'),
('QLC038', 'NV0009', 'CA002C2', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', 'none'),
('QLC039', 'NV0010', 'CA002C1', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', 'none'),
('QLC040', 'NV0010', 'CA002C2', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', 'none'),
('QLC041', 'NV0001', 'CA003C1', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', 'none'),
('QLC042', 'NV0001', 'CA003C2', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', 'none'),
('QLC043', 'NV0002', 'CA003C1', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', 'none'),
('QLC044', 'NV0002', 'CA003C2', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', 'none'),
('QLC045', 'NV0003', 'CA003C1', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', 'none'),
('QLC046', 'NV0003', 'CA003C2', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', 'none'),
('QLC047', 'NV0004', 'CA003C1', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', 'none'),
('QLC048', 'NV0004', 'CA003C2', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', 'none'),
('QLC049', 'NV0005', 'CA003C1', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', 'none'),
('QLC050', 'NV0005', 'CA003C2', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', 'none'),
('QLC051', 'NV0006', 'CA003C1', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', 'none'),
('QLC052', 'NV0006', 'CA003C2', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', 'none'),
('QLC053', 'NV0007', 'CA003C1', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', 'none'),
('QLC054', 'NV0007', 'CA003C2', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', 'none'),
('QLC055', 'NV0008', 'CA003C1', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', 'none'),
('QLC056', 'NV0008', 'CA003C2', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', 'none'),
('QLC057', 'NV0009', 'CA003C1', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', 'none'),
('QLC058', 'NV0009', 'CA003C2', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', 'none'),
('QLC059', 'NV0010', 'CA003C1', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', 'none'),
('QLC060', 'NV0010', 'CA003C2', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', 'none'),
('QLC061', 'NV0001', 'CA004C1', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', 'none'),
('QLC062', 'NV0001', 'CA004C2', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', 'none'),
('QLC063', 'NV0002', 'CA004C1', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', 'none'),
('QLC064', 'NV0002', 'CA004C2', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', 'none'),
('QLC065', 'NV0003', 'CA004C1', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', 'none'),
('QLC066', 'NV0003', 'CA004C2', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', 'none'),
('QLC067', 'NV0004', 'CA004C1', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', 'none'),
('QLC068', 'NV0004', 'CA004C2', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', 'none'),
('QLC069', 'NV0005', 'CA004C1', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', 'none'),
('QLC070', 'NV0005', 'CA004C2', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', 'none'),
('QLC071', 'NV0006', 'CA004C1', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', 'none'),
('QLC072', 'NV0006', 'CA004C2', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', 'none'),
('QLC073', 'NV0007', 'CA004C1', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', 'none'),
('QLC074', 'NV0007', 'CA004C2', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', 'none'),
('QLC075', 'NV0008', 'CA004C1', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', 'none'),
('QLC076', 'NV0008', 'CA004C2', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', 'none'),
('QLC077', 'NV0009', 'CA004C1', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', 'none'),
('QLC078', 'NV0009', 'CA004C2', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', 'none'),
('QLC079', 'NV0010', 'CA004C1', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', 'none'),
('QLC080', 'NV0010', 'CA004C2', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', 'none'),
('QLC081', 'NV0001', 'CA005C1', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', 'none'),
('QLC082', 'NV0001', 'CA005C2', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', 'none'),
('QLC083', 'NV0002', 'CA005C1', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', 'none'),
('QLC084', 'NV0002', 'CA005C2', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', 'none'),
('QLC085', 'NV0003', 'CA005C1', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', 'none'),
('QLC086', 'NV0003', 'CA005C2', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', 'none'),
('QLC087', 'NV0004', 'CA005C1', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', 'none'),
('QLC088', 'NV0004', 'CA005C2', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', 'none'),
('QLC089', 'NV0005', 'CA005C1', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', 'none'),
('QLC090', 'NV0005', 'CA005C2', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', 'none'),
('QLC091', 'NV0006', 'CA005C1', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', 'none'),
('QLC092', 'NV0006', 'CA005C2', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', 'none'),
('QLC093', 'NV0007', 'CA005C1', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', 'none'),
('QLC094', 'NV0007', 'CA005C2', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', 'none'),
('QLC095', 'NV0008', 'CA005C1', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', 'none'),
('QLC096', 'NV0008', 'CA005C2', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', 'none'),
('QLC097', 'NV0009', 'CA005C1', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', 'none'),
('QLC098', 'NV0009', 'CA005C2', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', 'none'),
('QLC099', 'NV0010', 'CA005C1', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', 'none'),
('QLC100', 'NV0010', 'CA005C2', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', 'none'),
('QLC101', 'NV0001', 'CA006C1', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', 'none'),
('QLC102', 'NV0001', 'CA006C2', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', 'none'),
('QLC103', 'NV0002', 'CA006C1', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', 'none'),
('QLC104', 'NV0002', 'CA006C2', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', 'none'),
('QLC105', 'NV0003', 'CA006C1', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', 'none'),
('QLC106', 'NV0003', 'CA006C2', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', 'none'),
('QLC107', 'NV0004', 'CA006C1', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', 'none'),
('QLC108', 'NV0004', 'CA006C2', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', 'none'),
('QLC109', 'NV0005', 'CA006C1', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', 'none'),
('QLC110', 'NV0005', 'CA006C2', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', 'none'),
('QLC111', 'NV0006', 'CA006C1', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', 'none'),
('QLC112', 'NV0006', 'CA006C2', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', 'none'),
('QLC113', 'NV0007', 'CA006C1', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', 'none'),
('QLC114', 'NV0007', 'CA006C2', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', 'none'),
('QLC115', 'NV0008', 'CA006C1', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', 'none'),
('QLC116', 'NV0008', 'CA006C2', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', 'none'),
('QLC117', 'NV0009', 'CA006C1', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', 'none'),
('QLC118', 'NV0009', 'CA006C2', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', 'none'),
('QLC119', 'NV0010', 'CA006C1', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', 'none'),
('QLC120', 'NV0010', 'CA006C2', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', 'none'),
('QLC121', 'NV0001', 'CA007C1', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', 'none'),
('QLC122', 'NV0001', 'CA007C2', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', 'none'),
('QLC123', 'NV0002', 'CA007C1', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', 'none'),
('QLC124', 'NV0002', 'CA007C2', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', 'none'),
('QLC125', 'NV0003', 'CA007C1', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', 'none'),
('QLC126', 'NV0003', 'CA007C2', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', 'none'),
('QLC127', 'NV0004', 'CA007C1', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', 'none'),
('QLC128', 'NV0004', 'CA007C2', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', 'none'),
('QLC129', 'NV0005', 'CA007C1', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', 'none'),
('QLC130', 'NV0005', 'CA007C2', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', 'none'),
('QLC131', 'NV0006', 'CA007C1', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', 'none'),
('QLC132', 'NV0006', 'CA007C2', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', 'none'),
('QLC133', 'NV0007', 'CA007C1', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', 'none'),
('QLC134', 'NV0007', 'CA007C2', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', 'none'),
('QLC135', 'NV0008', 'CA007C1', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', 'none'),
('QLC136', 'NV0008', 'CA007C2', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', 'none'),
('QLC137', 'NV0009', 'CA007C1', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', 'none'),
('QLC138', 'NV0009', 'CA007C2', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', 'none'),
('QLC139', 'NV0010', 'CA007C1', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', 'none'),
('QLC140', 'NV0010', 'CA007C2', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', 'none'),
('QLC141', 'NV0001', 'CA008C1', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', 'none'),
('QLC142', 'NV0001', 'CA008C2', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', 'none'),
('QLC143', 'NV0002', 'CA008C1', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', 'none'),
('QLC144', 'NV0002', 'CA008C2', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', 'none'),
('QLC145', 'NV0003', 'CA008C1', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', 'none'),
('QLC146', 'NV0003', 'CA008C2', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', 'none'),
('QLC147', 'NV0004', 'CA008C1', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', 'none'),
('QLC148', 'NV0004', 'CA008C2', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', 'none'),
('QLC149', 'NV0005', 'CA008C1', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', 'none'),
('QLC150', 'NV0005', 'CA008C2', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', 'none'),
('QLC151', 'NV0006', 'CA008C1', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', 'none'),
('QLC152', 'NV0006', 'CA008C2', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', 'none'),
('QLC153', 'NV0007', 'CA008C1', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', 'none'),
('QLC154', 'NV0007', 'CA008C2', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', 'none'),
('QLC155', 'NV0008', 'CA008C1', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', 'none'),
('QLC156', 'NV0008', 'CA008C2', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', 'none'),
('QLC157', 'NV0009', 'CA008C1', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', 'none'),
('QLC158', 'NV0009', 'CA008C2', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', 'none'),
('QLC159', 'NV0010', 'CA008C1', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', 'none'),
('QLC160', 'NV0010', 'CA008C2', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', 'none'),
('QLC161', 'NV0001', 'CA009C1', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', 'none'),
('QLC162', 'NV0001', 'CA009C2', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', 'none'),
('QLC163', 'NV0002', 'CA009C1', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', 'none'),
('QLC164', 'NV0002', 'CA009C2', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', 'none'),
('QLC165', 'NV0003', 'CA009C1', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', 'none'),
('QLC166', 'NV0003', 'CA009C2', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', 'none'),
('QLC167', 'NV0004', 'CA009C1', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', 'none'),
('QLC168', 'NV0004', 'CA009C2', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', 'none'),
('QLC169', 'NV0005', 'CA009C1', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', 'none'),
('QLC170', 'NV0005', 'CA009C2', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', 'none'),
('QLC171', 'NV0006', 'CA009C1', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', 'none'),
('QLC172', 'NV0006', 'CA009C2', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', 'none'),
('QLC173', 'NV0007', 'CA009C1', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', 'none'),
('QLC174', 'NV0007', 'CA009C2', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', 'none'),
('QLC175', 'NV0008', 'CA009C1', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', 'none'),
('QLC176', 'NV0008', 'CA009C2', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', 'none'),
('QLC177', 'NV0009', 'CA009C1', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', 'none'),
('QLC178', 'NV0009', 'CA009C2', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', 'none'),
('QLC179', 'NV0010', 'CA009C1', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', 'none'),
('QLC180', 'NV0010', 'CA009C2', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', 'none'),
('QLC181', 'NV0001', 'CA010C1', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', 'none'),
('QLC182', 'NV0001', 'CA010C2', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', 'none'),
('QLC183', 'NV0002', 'CA010C1', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', 'none'),
('QLC184', 'NV0002', 'CA010C2', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', 'none'),
('QLC185', 'NV0003', 'CA010C1', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', 'none'),
('QLC186', 'NV0003', 'CA010C2', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', 'none'),
('QLC187', 'NV0004', 'CA010C1', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', 'none'),
('QLC188', 'NV0004', 'CA010C2', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', 'none'),
('QLC189', 'NV0005', 'CA010C1', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', 'none'),
('QLC190', 'NV0005', 'CA010C2', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', 'none'),
('QLC191', 'NV0006', 'CA010C1', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', 'none'),
('QLC192', 'NV0006', 'CA010C2', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', 'none'),
('QLC193', 'NV0007', 'CA010C1', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', 'none'),
('QLC194', 'NV0007', 'CA010C2', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', 'none'),
('QLC195', 'NV0008', 'CA010C1', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', 'none'),
('QLC196', 'NV0008', 'CA010C2', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', 'none'),
('QLC197', 'NV0009', 'CA010C1', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', 'none'),
('QLC198', 'NV0009', 'CA010C2', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', 'none'),
('QLC199', 'NV0010', 'CA010C1', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', 'none'),
('QLC200', 'NV0010', 'CA010C2', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', 'none');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nhanvien`
--

CREATE TABLE `nhanvien` (
  `MaNV` varchar(40) NOT NULL,
  `TenDangNhap` varchar(40) NOT NULL,
  `MatKhau` varchar(40) NOT NULL,
  `ThamNien` int(11) NOT NULL,
  `Email` varchar(40) NOT NULL,
  `SDT` int(11) NOT NULL,
  `STK` int(11) NOT NULL,
  `DiaChi` varchar(40) NOT NULL,
  `ChucVu` varchar(40) NOT NULL,
  `Luong` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `nhanvien`
--

INSERT INTO `nhanvien` (`MaNV`, `TenDangNhap`, `MatKhau`, `ThamNien`, `Email`, `SDT`, `STK`, `DiaChi`, `ChucVu`, `Luong`) VALUES
('NV0001', 'namnp', '123456', 3, 'namnp@gmail.com', 848493822, 2147483647, 'Hoai Duc', 'Quan ly', 300),
('NV0002', 'hant', 'abcdef', 2, 'hant@gmail.com', 123456789, 2147483647, 'Hai Ba Trung', 'Nhan vien', 250),
('NV0003', 'longdt', 'abcdef', 2, 'longdt@gmail.com', 123456789, 2147483647, 'Hai Ba Trung', 'Nhan vien', 250),
('NV0004', 'minhth', '123456', 1, 'minhth@gmail.com', 987654321, 2147483647, 'Cau Giay', 'Ke toan', 280),
('NV0005', 'hoangnv', 'qwerty', 5, 'hoangnv@gmail.com', 912345678, 2147483647, 'Dong Da', 'Quan ly', 350),
('NV0006', 'ngoclt', '123abc', 4, 'ngoclt@gmail.com', 923456789, 2147483647, 'Thanh Xuan', 'Nhan vien', 230),
('NV0007', 'phongtv', 'password', 3, 'phongtv@gmail.com', 934567890, 2147483647, 'Tay Ho', 'Quan ly', 310),
('NV0008', 'thuylp', 'password1', 2, 'thuylp@gmail.com', 945678901, 2147483647, 'Hoan Kiem', 'Nhan vien', 240),
('NV0009', 'anhtn', '12345678', 6, 'anhtn@gmail.com', 956789012, 2147483647, 'Ba Dinh', 'Giam doc', 500),
('NV0010', 'dungnt', '654321', 2, 'dungnt@gmail.com', 967890123, 2147483647, 'Dong Anh', 'Ke toan', 275),
('NV0011', 'tuanht', 'pass123', 1, 'tuanht@gmail.com', 978901234, 2147483647, 'Gia Lam', 'Quan ly', 320),
('NV0012', 'vybh', 'abc123', 4, 'vybh@gmail.com', 989012345, 2147483647, 'Long Bien', 'Nhan vien', 255);

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `calamviec`
--
ALTER TABLE `calamviec`
  ADD PRIMARY KEY (`MaCa`);

--
-- Chỉ mục cho bảng `diemdanh_chamcong`
--
ALTER TABLE `diemdanh_chamcong`
  ADD PRIMARY KEY (`MaQLCa`);

--
-- Chỉ mục cho bảng `nhanvien`
--
ALTER TABLE `nhanvien`
  ADD PRIMARY KEY (`MaNV`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
