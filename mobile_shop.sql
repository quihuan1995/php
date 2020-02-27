-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 24, 2020 at 03:31 PM
-- Server version: 10.1.38-MariaDB
-- PHP Version: 7.3.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `vietpro_mobile_shop`
--

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `cat_id` int(11) NOT NULL,
  `cat_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`cat_id`, `cat_name`) VALUES
(6, 'Blackberry'),
(3, 'HTC'),
(1, 'iPhone'),
(4, 'Nokia'),
(7, 'OPPO'),
(2, 'Samsung'),
(5, 'Sony'),
(9, 'Vivo'),
(8, 'Xiaomi');

-- --------------------------------------------------------

--
-- Table structure for table `comment`
--

CREATE TABLE `comment` (
  `comm_id` int(11) NOT NULL,
  `prd_id` int(11) NOT NULL,
  `comm_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `comm_mail` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `comm_date` datetime NOT NULL,
  `comm_details` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `comment`
--

INSERT INTO `comment` (`comm_id`, `prd_id`, `comm_name`, `comm_mail`, `comm_date`, `comm_details`) VALUES
(1, 1, 'Nguyễn Văn A', 'nguyenvana@gmail.com', '2018-12-12 20:59:56', 'Đây thực sự là một sản phẩm tuyệt vời'),
(2, 2, 'Nguyễn Văn A', 'nguyenvana@gmail.com', '2018-12-12 20:59:56', 'Đây thực sự là một sản phẩm tuyệt vời'),
(3, 3, 'Nguyễn Văn A', 'nguyenvana@gmail.com', '2018-12-12 20:59:56', 'Đây thực sự là một sản phẩm tuyệt vời'),
(4, 4, 'Nguyễn Văn A', 'nguyenvana@gmail.com', '2018-12-12 20:59:56', 'Đây thực sự là một sản phẩm tuyệt vời'),
(5, 5, 'Nguyễn Văn A', 'nguyenvana@gmail.com', '2018-12-12 20:59:56', 'Đây thực sự là một sản phẩm tuyệt vời'),
(6, 6, 'Nguyễn Văn A', 'nguyenvana@gmail.com', '2018-12-12 20:59:56', 'Đây thực sự là một sản phẩm tuyệt vời'),
(7, 7, 'Nguyễn Văn A', 'nguyenvana@gmail.com', '2018-12-12 20:59:56', 'Đây thực sự là một sản phẩm tuyệt vời'),
(8, 8, 'Nguyễn Văn A', 'nguyenvana@gmail.com', '2018-12-12 20:59:56', 'Đây thực sự là một sản phẩm tuyệt vời'),
(9, 9, 'Nguyễn Văn A', 'nguyenvana@gmail.com', '2018-12-12 20:59:56', 'Đây thực sự là một sản phẩm tuyệt vời'),
(10, 10, 'Nguyễn Văn A', 'nguyenvana@gmail.com', '2018-12-12 20:59:56', 'Đây thực sự là một sản phẩm tuyệt vời'),
(11, 11, 'Nguyễn Văn A', 'nguyenvana@gmail.com', '2018-12-12 20:59:56', 'Đây thực sự là một sản phẩm tuyệt vời'),
(12, 12, 'Nguyễn Văn A', 'nguyenvana@gmail.com', '2018-12-12 20:59:56', 'Đây thực sự là một sản phẩm tuyệt vời'),
(13, 13, 'Nguyễn Văn A', 'nguyenvana@gmail.com', '2018-12-12 20:59:56', 'Đây thực sự là một sản phẩm tuyệt vời'),
(14, 14, 'Nguyễn Văn A', 'nguyenvana@gmail.com', '2018-12-12 20:59:56', 'Đây thực sự là một sản phẩm tuyệt vời'),
(15, 15, 'Nguyễn Văn A', 'nguyenvana@gmail.com', '2018-12-12 20:59:56', 'Đây thực sự là một sản phẩm tuyệt vời'),
(16, 16, 'Nguyễn Văn A', 'nguyenvana@gmail.com', '2018-12-12 20:59:56', 'Đây thực sự là một sản phẩm tuyệt vời'),
(17, 17, 'Nguyễn Văn A', 'nguyenvana@gmail.com', '2018-12-12 20:59:56', 'Đây thực sự là một sản phẩm tuyệt vời'),
(18, 18, 'Nguyễn Văn A', 'nguyenvana@gmail.com', '2018-12-12 20:59:56', 'Đây thực sự là một sản phẩm tuyệt vời'),
(19, 19, 'Nguyễn Văn A', 'nguyenvana@gmail.com', '2018-12-12 20:59:56', 'Đây thực sự là một sản phẩm tuyệt vời'),
(20, 20, 'Nguyễn Văn A', 'nguyenvana@gmail.com', '2018-12-12 20:59:56', 'Đây thực sự là một sản phẩm tuyệt vời'),
(21, 21, 'Nguyễn Văn A', 'nguyenvana@gmail.com', '2018-12-12 20:59:56', 'Đây thực sự là một sản phẩm tuyệt vời'),
(22, 22, 'Nguyễn Văn A', 'nguyenvana@gmail.com', '2018-12-12 20:59:56', 'Đây thực sự là một sản phẩm tuyệt vời'),
(23, 23, 'Nguyễn Văn A', 'nguyenvana@gmail.com', '2018-12-12 20:59:56', 'Đây thực sự là một sản phẩm tuyệt vời'),
(24, 24, 'Nguyễn Văn A', 'nguyenvana@gmail.com', '2018-12-12 20:59:56', 'Đây thực sự là một sản phẩm tuyệt vời'),
(25, 25, 'Nguyễn Văn A', 'nguyenvana@gmail.com', '2018-12-12 20:59:56', 'Đây thực sự là một sản phẩm tuyệt vời'),
(26, 26, 'Nguyễn Văn A', 'nguyenvana@gmail.com', '2018-12-12 20:59:56', 'Đây thực sự là một sản phẩm tuyệt vời'),
(27, 27, 'Nguyễn Văn A', 'nguyenvana@gmail.com', '2018-12-12 20:59:56', 'Đây thực sự là một sản phẩm tuyệt vời'),
(28, 28, 'Nguyễn Văn A', 'nguyenvana@gmail.com', '2018-12-12 20:59:56', 'Đây thực sự là một sản phẩm tuyệt vời'),
(29, 29, 'Nguyễn Văn A', 'nguyenvana@gmail.com', '2018-12-12 20:59:56', 'Đây thực sự là một sản phẩm tuyệt vời'),
(30, 30, 'Nguyễn Văn A', 'nguyenvana@gmail.com', '2018-12-12 20:59:56', 'Đây thực sự là một sản phẩm tuyệt vời');

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `prd_id` int(11) NOT NULL,
  `cat_id` int(11) NOT NULL,
  `prd_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `prd_image` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `prd_price` int(11) UNSIGNED NOT NULL,
  `prd_warranty` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `prd_accessories` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `prd_new` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `prd_promotion` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `prd_status` int(1) NOT NULL,
  `prd_featured` int(1) NOT NULL,
  `prd_details` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`prd_id`, `cat_id`, `prd_name`, `prd_image`, `prd_price`, `prd_warranty`, `prd_accessories`, `prd_new`, `prd_promotion`, `prd_status`, `prd_featured`, `prd_details`) VALUES
(1, 1, 'iPhone Gold', 'iPhone-7-Plus-32GB-Rose-Gold.png', 25000000, ' 1 nam', 'cap, sac', 'chinh hang', 'tv', 0, 1, ''),
(2, 1, 'IPhone 8', 'iphone8.jpg', 50000000, '1 nam', 'cap, sac', 'chinh hang', 'No', 1, 0, ''),
(3, 1, 'Iphone 8 Plus', 'iphone8plus.jpg', 55000000, '1 nam', 'cap, sac', 'chinh hang', 'NO', 0, 1, ''),
(4, 1, 'Iphone X', 'iPhoneX64.png', 90000000, '2 nam', 'ca, sac', 'chinh hang', 'YES', 0, 1, ''),
(5, 1, 'IPhone XR', 'iphoneXR.jpg', 100000000, '2 nam', 'cap, sac', 'chinh hang', 'YES', 0, 1, ''),
(6, 2, 'samsung S9 Plus', 'Samsung-Galaxy-S9-Plus-Black-128GB.png', 20000000, ' 1 nam', 'cap, sac', 'may', 'D�n M�', 1, 0, ''),
(7, 2, 'Samsung S8 Plus', 'samsungS8plus.jpg', 13000000, '1 nam', 'cap, sac', 'chinh hang', 'NO', 1, 0, ''),
(8, 2, 'Samsung A70', 'samsungA70.png', 11000000, '1 nam', 'cap, sac', 'chinh hang', 'YES', 1, 0, ''),
(9, 2, 'Samsung S10', 'samsungS10.png', 75000000, '1 nam', 'cap, sac', 'chinh hang', 'YES', 0, 1, ''),
(10, 2, 'Samsung Note 10', 'samsungNote10.jpg', 80000000, '2 nam', 'cap, sac', 'chinh hang', 'YES', 0, 1, ''),
(11, 3, 'HTC 10', 'htc10.png', 5000000, '1 nam', 'cap, sac', 'chinh hang', 'NO', 1, 0, ''),
(12, 3, 'HTC U12', 'htcU12.png', 5500000, '1 nam', 'cap, sac', 'chinh hang', 'NO', 1, 0, ''),
(13, 3, 'HTC Desire 19+', 'htcDesire19plus.jpg', 55000000, '1 nam', 'cap, sac', 'chinh hang', 'YES', 0, 1, ''),
(14, 3, 'HTC One M8', 'htcOneM8.jpg', 6000000, '1 nam', 'cap, sac', 'chinh hang', 'NO', 0, 1, ''),
(15, 3, 'HTC Desire 19S', 'htcDesire19s.jpg', 60000000, '1 nam', 'cap, sac', 'chinh hang', 'YES', 0, 1, ''),
(16, 4, 'Nokia 4.2+', 'nokia4-2.jpg', 4000000, '1 nam', 'cap, sac', 'chinh hang', 'NO', 1, 0, ''),
(17, 4, 'Nokia 7.1', 'nokia7-1.png', 11000000, '1 nam', 'cap, sac', 'chinh hang', 'NO', 0, 1, ''),
(18, 4, 'Nokia 8.1', 'nokia8-1.png', 17000000, '1 nam', 'cap, sac', 'chinh hang', 'NO', 1, 0, ''),
(19, 4, 'Nokia 9', 'nokia9.jpg', 24000000, '1 nam', 'cap, sac', 'chinh hang', 'YES', 0, 1, ''),
(20, 4, 'Nokia X71', 'nokiax71.jpg', 34000000, '1 nam', 'cap, sac', 'chinh hang', 'YES', 0, 1, ''),
(21, 5, 'Sony X5', 'sonyx5.png', 33000000, '1 nam', 'cap, sac', 'chinh hang', 'YES', 0, 1, ''),
(22, 5, 'Sony XA1', 'sonyxa1.png', 46000000, '1 nam', 'cap, sac', 'chinh hang', 'YES', 0, 1, ''),
(23, 5, 'Sony L4', 'sonyxl4.jpg', 51000000, '1 nam', 'cap, sac', 'chinh hang', 'YES', 0, 1, ''),
(24, 5, 'Sony Z2', 'sonyxz2.png', 29000000, '1 nam', 'cap, sac', 'chinh hang', 'NO', 1, 0, ''),
(25, 5, 'Sony Z4', 'sonyxz4.png', 39000000, '1 nam', 'cap, sac', 'chinh hang', 'YES', 0, 1, ''),
(26, 6, 'BlackBerry 9300', 'blackberry9300.jpg', 2000000, '1 nam', 'cap, sac', 'chinh hang', 'NO', 1, 0, ''),
(27, 6, 'BlackBerry Evolve', 'BlackBerryEvolve.jpg', 33000000, '1 nam', 'cap, sac', 'chinh hang', 'YES', 0, 1, ''),
(28, 6, 'BlackBerry Key One', 'blackberryKey1.jpg', 12000000, '1 nam', 'cap, sac', 'chinh hang', 'NO', 1, 0, ''),
(29, 6, 'BlackBerry Key2', 'blackberryKey2.jpg', 14000000, '1 nam', 'cap, sac', 'chinh hang', 'NO', 1, 0, ''),
(30, 6, 'BlackBerry Q10', 'blackberryQ10.png', 1000000, '1 nam', 'cap, sac', 'chinh hang', 'NO', 1, 0, ''),
(31, 7, 'Oppo Realme 5', 'oppeRealme5.jpg', 26000000, '1 nam', 'cap, sac', 'chinh hang', 'YES', 0, 1, ''),
(32, 7, 'Oppo A1K', 'oppoA1K.png', 30000000, '1 nam', 'cap, sac', 'chinh hang', 'YES', 0, 1, ''),
(33, 7, 'Oppo A5', 'oppoA5.png', 36000000, '1 nam', 'cap, sac', 'chinh hang', 'YES', 0, 1, ''),
(34, 7, 'Oppo A9', 'oppoA9.jpg', 44000000, '1 nam', 'cap, sac', 'chinh hang', 'YES', 0, 1, ''),
(35, 7, 'Oppo K5', 'oppoK5.jpg', 28000000, '1 nam', 'cap, sac', 'chinh hang', 'YES', 0, 1, ''),
(36, 8, 'xiaomi', 'Xiaomi-Mi-8-Pro-Black.png', 57000000, ' 1 nam', 'cap, sac', 'M�y M?i ', 'D�n ', 1, 0, ''),
(37, 8, 'XiaoMi 7A', 'xiaomi7A.jpg', 57000000, '1 nam', 'cap, sac', 'chinh hang', 'NO', 1, 0, ''),
(38, 8, 'XiaoMi Mi9T', 'xiaomiMi9T.png', 70000000, '1 nam', 'cap, sac', 'chinh hang', 'YES', 0, 1, ''),
(39, 8, 'XiaoMi MiA3', 'xiaomiMiA3.jpg', 77000000, '1 nam', 'cap, sac', 'chinh hang', 'YES', 0, 1, ''),
(40, 8, 'XiaoMi Note 8', 'xiaomiNote8.jpg', 88000000, '1 nam', 'cap, sac', 'chinh hang', 'YES', 0, 1, ''),
(41, 9, 'vivo 69', 'Vivo-Y69-Gold.png', 69000000, ' 1 nam', 'cap, sac', 'M�y M', 'dddddddddddddddd', 1, 0, ''),
(42, 9, 'ViVo V15', 'vivoV15.jpg', 91000000, '1 nam', 'cap, sac', 'chinh hang', 'YES', 0, 1, ''),
(43, 9, 'ViVO Y11', 'vivoY11.png', 84000000, '1 nam', 'cap, sac', 'chinh hang', 'NO', 1, 0, ''),
(44, 9, 'ViVo Y19', 'vivoY19.jpg', 99000000, '1 nam', 'cap, sac', 'chinh hang', 'YES', 0, 1, ''),
(45, 9, 'ViVo Y91C', 'vivoY91c.jpg', 93000000, '1 nam', 'cap, sac', 'chinh hang', 'YES', 0, 1, '');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `user_id` int(11) NOT NULL,
  `user_full` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `user_mail` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `user_pass` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `user_level` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`user_id`, `user_full`, `user_mail`, `user_pass`, `user_level`) VALUES
(1, 'Vietpro Academy', 'vietpro.edu.vn@gmail.com', '123456', 1),
(2, 'Administrator', 'admin@gmail.com', '123456', 1),
(3, 'Nguyễn Van A', 'nguyenvana@gmail.com', '123456', 2),
(4, 'Nguyễn Van B', 'nguyenvanb@gmail.com', '123456', 2),
(5, 'Nguyễn Van C', 'nguyenvanc@gmail.com', '123456', 2),
(6, 'Nguyễn Van D', 'nguyenvand@gmail.com', '123456', 2);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`cat_id`),
  ADD UNIQUE KEY `cat_name` (`cat_name`);

--
-- Indexes for table `comment`
--
ALTER TABLE `comment`
  ADD PRIMARY KEY (`comm_id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`prd_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`user_id`),
  ADD UNIQUE KEY `user_mail` (`user_mail`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `cat_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `comment`
--
ALTER TABLE `comment`
  MODIFY `comm_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `prd_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
