-- phpMyAdmin SQL Dump
-- version 4.8.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 02, 2019 at 04:33 PM
-- Server version: 10.1.32-MariaDB
-- PHP Version: 7.2.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `toko_online`
--

-- --------------------------------------------------------

--
-- Table structure for table `tb_barang`
--

CREATE TABLE `tb_barang` (
  `id_brg` int(11) NOT NULL,
  `nama_brg` varchar(120) NOT NULL,
  `keterangan` varchar(225) NOT NULL,
  `kategori` varchar(60) NOT NULL,
  `harga` int(11) NOT NULL,
  `stok` int(4) NOT NULL,
  `gambar` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_barang`
--

INSERT INTO `tb_barang` (`id_brg`, `nama_brg`, `keterangan`, `kategori`, `harga`, `stok`, `gambar`) VALUES
(15, 'Hp Nokia', 'Nokia 6110', 'Elektronik', 150000, 3, '2_-HP-Jadul-Nokia-Antena-300x300.jpg'),
(16, 'Hp Nokia', 'Nokia 6350', 'Elektronik', 350000, 5, '3_-HP-Nokia-Lipat-Jadul-300x300.jpg'),
(17, 'Hp Samsung', 'Samsung GT-C3520.', 'Elektronik', 150000, 10, '5_-HP-Samsung-Jadul-Lipat-300x300.jpg'),
(18, 'Hp Motorola', 'Motorola-300x300', 'Elektronik', 150000, 9, '6_-HP-Jadul-Motorola-300x300.jpg'),
(19, 'Kemeja', 'Katun', 'Pakaian Pria', 135000, 9, 'images.jpg'),
(20, 'Chino', 'Celana', 'Pakaian Pria', 150000, 10, 'download_(1).jpg'),
(21, 'Celana Levi\'s', 'Levi\'s', 'Pakaian Pria', 135000, 10, 'images_(1).jpg'),
(22, 'Kemeja', 'Katun', 'Pakaian Pria', 135000, 9, 'download.jpg'),
(23, 'Celana', 'Jeans', 'Pakaian Pria', 135000, 10, 'images_(2).jpg'),
(45, 'Baju', 'Baju tren masa kini', 'Pakaian Wanita', 500000, 9, '60365kenzosettrainingstelanolahragamuslimbajuolahragamuslim_2.jpg'),
(46, 'Baju', 'ya baju lah bwt badan', 'Pakaian Wanita', 125000, 15, '4868939_4253043e-27f2-468c-bd83-0ef0786c4ee1_704_7041.jpg'),
(47, 'Baju', 'baju', 'Pakaian Wanita', 50000, 18, 'download_(2)1.jpg'),
(49, 'baju', 'baju anak2', 'Pakaian Anak-Anak', 15000, 20, 'download_(3)1.jpg'),
(50, 'baju', 'untuk anak2', 'Pakaian Anak-Anak', 55000, 8, 'download_(4)1.jpg'),
(51, '1set pakaian training', 'jaket dan celana training', 'Peralatan Olahraga', 125000, 19, 'images_(12)1.jpg'),
(52, 'T-shirt', 'anti cemesh2', 'Peralatan Olahraga', 200000, 10, 'images_(13)1.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `tb_invoice`
--

CREATE TABLE `tb_invoice` (
  `id` int(11) NOT NULL,
  `nama` varchar(56) NOT NULL,
  `alamat` varchar(225) NOT NULL,
  `tgl_pesan` datetime NOT NULL,
  `batas_bayar` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_invoice`
--

INSERT INTO `tb_invoice` (`id`, `nama`, `alamat`, `tgl_pesan`, `batas_bayar`) VALUES
(1, 'Rizky Miftah Abdillah', 'Kp. citeureup RT/RW 001/002 Ds. Sukapada Kec. Pagerageung Kab. Tasikmalaya', '2019-05-22 01:52:22', '2019-05-23 01:52:22'),
(2, 'Rizky Miftah Abdillah', 'Bekasi', '2019-05-23 00:24:44', '2019-05-24 00:24:44'),
(3, 'Rizky Miftah Abdillah', 'Bekasi', '2019-05-24 00:37:12', '2019-05-25 00:37:12'),
(4, 'Rizky Miftah Abdillah', 'Bekasi', '2019-05-24 00:37:28', '2019-05-25 00:37:28'),
(5, '', '', '2019-05-24 00:38:18', '2019-05-25 00:38:18'),
(6, '', '', '2019-05-24 01:06:40', '2019-05-25 01:06:40'),
(7, '', '', '2019-05-24 01:54:05', '2019-05-25 01:54:05'),
(8, '', '', '2019-05-24 01:55:11', '2019-05-25 01:55:11'),
(9, '', '', '2019-05-24 22:17:04', '2019-05-25 22:17:04'),
(10, '', '', '2019-05-24 22:21:57', '2019-05-25 22:21:57'),
(11, '', '', '2019-05-25 00:15:12', '2019-05-26 00:15:12'),
(12, '', '', '2019-05-25 00:16:09', '2019-05-26 00:16:09'),
(13, '', '', '2019-05-25 00:16:47', '2019-05-26 00:16:47'),
(14, '', '', '2019-05-25 00:17:04', '2019-05-26 00:17:04'),
(15, '', '', '2019-05-25 00:17:30', '2019-05-26 00:17:30'),
(16, '', '', '2019-05-25 00:18:17', '2019-05-26 00:18:17'),
(17, '', '', '2019-05-25 01:20:57', '2019-05-26 01:20:57'),
(18, '', '', '2019-06-18 21:29:14', '2019-06-19 21:29:14'),
(19, '', '', '2019-06-18 21:45:42', '2019-06-19 21:45:42'),
(20, 'Rizky Miftah Abdillah', 'Kp. citeureup RT/RW 001/002 Ds. Sukapada Kec. Pagerageung Kab. Tasikmalaya', '2019-06-19 12:19:21', '2019-06-20 12:19:21'),
(21, '', '', '2019-06-19 12:43:33', '2019-06-20 12:43:33'),
(22, '', '', '2019-06-19 12:46:21', '2019-06-20 12:46:21'),
(23, 'Rizky Miftah Abdillah', 'Kp. citeureup RT/RW 001/002 Ds. Sukapada Kec. Pagerageung Kab. Tasikmalaya', '2019-06-19 12:48:20', '2019-06-20 12:48:20'),
(24, 'yani', 'Bekasi', '2019-06-19 13:13:11', '2019-06-20 13:13:11'),
(25, 'Ari satrio', 'Bekasi', '2019-06-19 13:45:03', '2019-06-20 13:45:03'),
(26, '', '', '2019-06-24 19:16:10', '2019-06-25 19:16:10'),
(27, '', '', '2019-06-24 19:16:40', '2019-06-25 19:16:40'),
(28, '', '', '2019-06-24 19:23:18', '2019-06-25 19:23:18'),
(29, '', '', '2019-06-24 19:24:25', '2019-06-25 19:24:25'),
(30, '', '', '2019-06-24 19:26:57', '2019-06-25 19:26:57'),
(31, '', '', '2019-06-24 19:27:14', '2019-06-25 19:27:14'),
(32, '', '', '2019-06-24 19:27:38', '2019-06-25 19:27:38'),
(33, '', '', '2019-06-26 22:24:32', '2019-06-27 22:24:32'),
(34, '', '', '2019-06-27 20:01:02', '2019-06-28 20:01:02'),
(35, '', '', '2019-06-27 20:01:34', '2019-06-28 20:01:34'),
(36, 'risma darmayanti', 'Kp. citeureup RT/RW 001/002 Ds. Sukapada Kec. Pagerageung Kab. Tasikmalaya', '2019-06-27 20:06:22', '2019-06-28 20:06:22'),
(37, 'Rizky Miftah Abdillah', 'Kp. citeureup RT/RW 001/002 Ds. Sukapada Kec. Pagerageung Kab. Tasikmalaya', '2019-06-27 23:42:53', '2019-06-28 23:42:54'),
(38, 'risma', 'Bekasi', '2019-06-29 19:39:25', '2019-06-30 19:39:25'),
(39, 'rizky', 'Bekasi', '2019-06-30 15:37:07', '2019-07-01 15:37:07'),
(40, 'botak', 'cileungsi', '2019-07-01 19:45:05', '2019-07-02 19:45:05'),
(41, 'yani', 'bekasi', '2019-07-01 19:48:25', '2019-07-02 19:48:25');

-- --------------------------------------------------------

--
-- Table structure for table `tb_pesanan`
--

CREATE TABLE `tb_pesanan` (
  `id` int(11) NOT NULL,
  `id_invoice` int(11) NOT NULL,
  `id_brg` int(11) NOT NULL,
  `nama_brg` varchar(50) NOT NULL,
  `jumlah` int(3) NOT NULL,
  `harga` int(10) NOT NULL,
  `pilihan` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_pesanan`
--

INSERT INTO `tb_pesanan` (`id`, `id_invoice`, `id_brg`, `nama_brg`, `jumlah`, `harga`, `pilihan`) VALUES
(1, 1, 1, 'Sepatu bola', 2, 15000, ''),
(2, 1, 5, 'jam tangan', 1, 1000000, ''),
(3, 2, 1, 'Sepatu bola', 3, 15000, ''),
(4, 2, 5, 'jam tangan', 2, 1000000, ''),
(5, 5, 1, 'Sepatu bola', 1, 15000, ''),
(6, 7, 1, 'Sepatu bola', 2, 15000, ''),
(7, 8, 5, 'jam tangan', 2, 1000000, ''),
(8, 9, 1, 'Sepatu bola', 1, 15000, ''),
(9, 11, 5, 'jam tangan', 1, 1000000, ''),
(10, 17, 1, 'Sepatu bola', 1, 15000, ''),
(11, 18, 3, 'HP', 1, 4000000, ''),
(12, 20, 3, 'HP', 2, 4000000, ''),
(13, 21, 3, 'HP', 2, 4000000, ''),
(14, 22, 3, 'HP', 1, 4000000, ''),
(15, 23, 3, 'HP', 1, 4000000, ''),
(16, 24, 3, 'HP', 2, 4000000, ''),
(17, 25, 3, 'HP', 3, 4000000, ''),
(18, 25, 13, 'ASUS X44V1', 1, 6000000, ''),
(19, 26, 15, 'Hp Nokia', 2, 250000, ''),
(20, 26, 16, 'Hp Nokia', 1, 350000, ''),
(21, 27, 15, 'Hp Nokia', 1, 250000, ''),
(22, 28, 16, 'Hp Nokia', 1, 350000, ''),
(23, 29, 15, 'Hp Nokia', 1, 250000, ''),
(24, 30, 14, 'Leptop', 1, 6000000, ''),
(25, 33, 16, 'Hp Nokia', 1, 350000, ''),
(26, 34, 15, 'Hp Nokia', 1, 250000, ''),
(27, 35, 15, 'Hp Nokia', 1, 250000, ''),
(28, 36, 15, 'Hp Nokia', 1, 250000, ''),
(29, 37, 25, 'Pakaian', 1, 135000, ''),
(30, 38, 34, 'Pakaian ', 1, 135000, ''),
(31, 38, 18, 'Hp Motorola', 1, 150000, ''),
(32, 38, 22, 'Kemeja', 1, 135000, ''),
(33, 39, 14, 'Leptop', 1, 6000000, ''),
(34, 40, 16, 'Hp Nokia', 1, 350000, ''),
(35, 41, 16, 'Hp Nokia', 1, 350000, ''),
(36, 41, 19, 'Kemeja', 1, 135000, ''),
(37, 41, 45, 'Baju', 1, 500000, ''),
(38, 41, 51, '1set pakaian training', 1, 125000, '');

--
-- Triggers `tb_pesanan`
--
DELIMITER $$
CREATE TRIGGER `pesanan_penjualan` AFTER INSERT ON `tb_pesanan` FOR EACH ROW BEGIN
	UPDATE tb_barang SET stok = stok-NEW.jumlah
    WHERE id_brg = NEW.id_brg;
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `tb_user`
--

CREATE TABLE `tb_user` (
  `id` int(11) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `role_id` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_user`
--

INSERT INTO `tb_user` (`id`, `nama`, `username`, `password`, `role_id`) VALUES
(1, 'admin', 'admin', '123', 1),
(2, 'user', 'user', '123', 2),
(4, 'yani', 'sriandri', '12345', 2);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tb_barang`
--
ALTER TABLE `tb_barang`
  ADD PRIMARY KEY (`id_brg`);

--
-- Indexes for table `tb_invoice`
--
ALTER TABLE `tb_invoice`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_pesanan`
--
ALTER TABLE `tb_pesanan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_user`
--
ALTER TABLE `tb_user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tb_barang`
--
ALTER TABLE `tb_barang`
  MODIFY `id_brg` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

--
-- AUTO_INCREMENT for table `tb_invoice`
--
ALTER TABLE `tb_invoice`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT for table `tb_pesanan`
--
ALTER TABLE `tb_pesanan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT for table `tb_user`
--
ALTER TABLE `tb_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
