-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 06, 2018 at 04:45 PM
-- Server version: 10.1.28-MariaDB
-- PHP Version: 7.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `node`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `adminId` int(100) NOT NULL,
  `adminUsername` varchar(100) NOT NULL,
  `adminPassword` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`adminId`, `adminUsername`, `adminPassword`) VALUES
(1, 'samrat', 'samrat12345');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `description` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `description`) VALUES
(1, 'Ice Cream', 'N/A'),
(2, 'Biscuit', 'N/A'),
(3, 'Chips', 'N/A'),
(4, 'Drinks', 'N/A');

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` int(20) NOT NULL,
  `categoryname` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `categoryname`) VALUES
(1, 'DELL'),
(2, 'HP'),
(3, 'ASUS'),
(4, 'ACER');

-- --------------------------------------------------------

--
-- Table structure for table `emp`
--

CREATE TABLE `emp` (
  `id` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `gender` varchar(100) NOT NULL,
  `address` varchar(200) NOT NULL,
  `dept` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `cpassword` varchar(100) NOT NULL,
  `capital` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `emp`
--

INSERT INTO `emp` (`id`, `name`, `gender`, `address`, `dept`, `email`, `password`, `cpassword`, `capital`) VALUES
(1, 'kkd', 'dfg', 'hgdhg', 'bvvvv', 'bbxb', 'bxb', 'bxcvb', 'bvvvn'),
(2, 'fvs', 'male', '                vfs', 'Admin', 'vs', 'sv', 'vd', 'Outisde capital'),
(3, 'Sabbir Ahmed', 'male', 'Mr house, khilbaritech baridhara dhaka bangladesh.', 'Admin', 'sabbir28199@gmail.com', 'asdf', 'asdf', 'Outisde capital'),
(4, 'Sabbir Ahmed', 'male', '               cmcm ', 'Admin', 'f', 'vdd', 'ddf', 'Outisde capital'),
(5, 'fg', 'male', '       gfd         ', 'Admin', 'gf', 'gf', 'gf', 'Outisde capital'),
(6, 'fg', 'male', '                dg', 'Admin', 'gf', 'gd', 'gf', 'Outisde capital'),
(7, 'as', 'male', '      d          ', 'Admin', 'd', 'ds', 'd', 'Outisde capital');

-- --------------------------------------------------------

--
-- Table structure for table `pro`
--

CREATE TABLE `pro` (
  `id` int(100) NOT NULL,
  `name` varchar(199) NOT NULL,
  `image` varchar(1000) NOT NULL,
  `price` varchar(100) NOT NULL,
  `type` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pro`
--

INSERT INTO `pro` (`id`, `name`, `image`, `price`, `type`) VALUES
(1, 'Potato', 'download.jp', '20', 'normal');

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `id` int(100) NOT NULL,
  `name` varchar(250) NOT NULL,
  `image` varchar(2500) NOT NULL,
  `price` double(10,2) NOT NULL,
  `type` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`id`, `name`, `image`, `price`, `type`) VALUES
(1, 'Red Tomato', 'https://res.cloudinary.com/chaldal/image/fetch/f_auto,fl_lossy,q_auto:low/https%3A%2F%2Faz741509.vo.msecnd.net%2Fp%2F28572%2Fred-tomato-net-weight-10-gm-500-gm.jpeg%3Fv%3D4%26targetSize%3D600', 15.00, 'under'),
(2, 'Green Chili', 'https://res.cloudinary.com/chaldal/image/fetch/f_auto,fl_lossy,q_auto:low/https%3A%2F%2Faz741509.vo.msecnd.net%2Fp%2F28576%2Fgreen-chili-kacha-morich-100-gm.jpeg%3Fv%3D4%26targetSize%3D600', 6.00, 'normal'),
(3, 'Potato', 'https://res.cloudinary.com/chaldal/image/fetch/f_auto,fl_lossy,q_auto:low/https%3A%2F%2Faz741509.vo.msecnd.net%2Fp%2F30302%2Fpotato-new-net-weight-50-gm-1-kg.jpeg%3Fv%3D4%26targetSize%3D600', 18.00, 'normal');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `price` double NOT NULL,
  `quantity` int(11) NOT NULL,
  `catId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(10) NOT NULL,
  `firstname` varchar(100) NOT NULL,
  `lastname` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `firstname`, `lastname`, `email`, `username`, `password`) VALUES
(1, 'Sabbir', 'Ahmed', 'sabbir@gmal.com', 'admin', 'admin'),
(2, ' azmin', 'azmin', 'azmin.bogra@gmail.com', 'azmin', 'azminn'),
(3, 'Fazulul', 'Haque', 'hauque@gmail.com', 'fazlul', 'fazlul'),
(4, 'kohinoor', 'begum', 'kohinoor@gmail.com', 'kohinnor', 'kohinno');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `userId` int(11) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`userId`, `username`, `password`) VALUES
(1, 'admin', ''),
(2, 'user', 'user'),
(3, 'test', 'test1234'),
(4, 'test2', 'test2'),
(6, 'testing', 'testing12'),
(7, 'tested', 'tested'),
(8, 'xyz', 'xyzz'),
(9, 'sabbir', 'sabbir'),
(10, 'azmin', 'azmin'),
(11, '', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `emp`
--
ALTER TABLE `emp`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pro`
--
ALTER TABLE `pro`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `catId` (`catId`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`userId`),
  ADD UNIQUE KEY `username` (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `emp`
--
ALTER TABLE `emp`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `pro`
--
ALTER TABLE `pro`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `userId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
