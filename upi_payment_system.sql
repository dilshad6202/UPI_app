-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 22, 2022 at 09:18 AM
-- Server version: 10.1.25-MariaDB
-- PHP Version: 7.1.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `upi_payment_system`
--

-- --------------------------------------------------------

--
-- Table structure for table `bank`
--

CREATE TABLE `bank` (
  `bid` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `adharno` varchar(255) NOT NULL,
  `accno` varchar(255) NOT NULL,
  `balance` int(11) NOT NULL,
  `ifsc` varchar(255) NOT NULL,
  `address` varchar(1000) NOT NULL,
  `upi_bank_api` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `bank`
--

INSERT INTO `bank` (`bid`, `username`, `email`, `phone`, `adharno`, `accno`, `balance`, `ifsc`, `address`, `upi_bank_api`) VALUES
(1, 'Bikram Dey', 'bikramdey458@gmail.com', '8777745732', '1111222233334444', 'ABCD12345678', 10000, 'EFGH12345678', 'Hooghly, WB', 'bi12348777745732'),
(2, 'Abhishek Kumar', 'abhishek333@gmail.com', '7462007080', '5555666677778888', 'IJKL12345678', 20000, 'MNOP12345678', 'Bihar', 'ab12347462007080'),
(3, 'Anirban Naskar', 'anirban4589@gmail.com', '9748062180', '9999000011112222', 'QRST12345678', 15000, 'UVWX12345678', 'Kolkata, WB', 'an12349748062180'),
(4, 'Md Dilshad Alam', 'dilshad4511@gmail.com', '6202845128', '3333444455556666', 'YZAB12345678', 0, 'CDEF12345678', 'WB, Kolkata,', 'md12346202845128');

-- --------------------------------------------------------

--
-- Table structure for table `transaction`
--

CREATE TABLE `transaction` (
  `tid` int(11) NOT NULL,
  `upi_bank_api` varchar(255) NOT NULL,
  `type` varchar(255) NOT NULL,
  `amount` int(20) NOT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `transaction`
--

INSERT INTO `transaction` (`tid`, `upi_bank_api`, `type`, `amount`, `date`) VALUES
(1, 'bi12348777745732', 'debit', 2000, '2022-11-10'),
(2, 'bi12348777745732', 'credit', 1000, '2022-11-11'),
(3, 'bi12348777745732', 'debit', 3000, '2022-10-06'),
(4, 'bi12348777745732', 'credit', 1400, '2022-10-18'),
(5, 'bi12348777745732', 'debit', 5647, '2022-09-03'),
(6, 'bi12348777745732', 'credit', 2345, '2022-09-26'),
(7, 'bi12348777745732', 'credit', 1700, '2022-10-11'),
(8, 'bi12348777745732', 'credit', 2200, '2022-11-16'),
(9, 'bi12348777745732', 'debit', 5000, '2022-12-20'),
(10, 'bi12348777745732', 'debit', 700, '2022-11-24'),
(11, 'bi12348777745732', 'debit', 1599, '2022-09-21'),
(12, 'bi12348777745732', 'credit', 1000, '2022-12-04'),
(13, 'bi12348777745732', 'debit', 599, '2022-12-20'),
(14, 'bi12348777745732', 'debit', 400, '2022-11-13'),
(15, 'bi12348777745732', 'credit', 900, '2022-08-17'),
(16, 'bi12348777745732', 'debit', 3000, '2022-06-08'),
(17, 'bi12348777745732', 'credit', 1400, '2022-07-05'),
(18, 'bi12348777745732', 'credit', 5000, '2022-06-14'),
(19, 'bi12348777745732', 'debit', 1300, '2022-06-09'),
(20, 'bi12348777745732', 'credit', 9765, '2022-09-03'),
(21, 'bi12348777745732', 'debit', 2685, '2022-08-02'),
(22, 'bi12348777745732', 'debit', 795, '2022-06-14'),
(23, 'bi12348777745732', 'credit', 4568, '2022-05-10'),
(24, 'bi12348777745732', 'credit', 2469, '2022-04-28'),
(25, 'bi12348777745732', 'debit', 2200, '2022-04-13'),
(26, 'bi12348777745732', 'debit', 5369, '2022-02-28'),
(27, 'bi12348777745732', 'debit', 427, '2022-03-10'),
(28, 'bi12348777745732', 'credit', 530, '0000-00-00'),
(29, 'bi12348777745732', 'debit', 579, '2022-05-13'),
(30, 'bi12348777745732', 'credit', 7099, '2022-04-08'),
(31, 'bi12348777745732', 'credit', 8990, '2022-03-08'),
(32, 'bi12348777745732', 'debit', 9999, '2022-01-15'),
(33, 'bi12348777745732', 'debit', 4300, '2022-03-30'),
(34, 'bi12348777745732', 'credit', 865, '2022-01-20'),
(35, 'bi12348777745732', 'debit', 6800, '2022-01-17'),
(36, 'bi12348777745732', 'credit', 899, '2022-01-08'),
(37, 'bi12348777745732', 'credit', 760, '2022-01-25'),
(38, 'bi12348777745732', 'credit', 800, '2022-04-06'),
(39, 'bi12348777745732', 'debit', 1500, '2022-05-16'),
(40, 'bi12348777745732', 'debit', 1299, '2022-02-01'),
(41, 'bi12348777745732', 'debit', 320, '2022-06-29'),
(42, 'bi12348777745732', 'debit', 20, '2022-02-05'),
(43, 'bi12348777745732', 'credit', 50, '2022-03-21'),
(44, 'bi12348777745732', 'credit', 80, '2022-04-23'),
(45, 'bi12348777745732', 'credit', 99, '2022-04-07'),
(46, 'bi12348777745732', 'debit', 810, '2022-02-21'),
(47, 'bi12348777745732', 'credit', 2200, '2021-12-22'),
(48, 'bi12348777745732', 'credit', 2000, '2021-11-20'),
(49, 'bi12348777745732', 'credit', 1899, '2021-10-18'),
(50, 'bi12348777745732', 'credit', 1659, '2021-09-16'),
(51, 'bi12348777745732', 'credit', 1580, '2021-08-15'),
(52, 'bi12348777745732', 'credit', 1499, '2021-08-14'),
(53, 'bi12348777745732', 'credit', 1350, '2021-07-13'),
(54, 'bi12348777745732', 'credit', 1200, '2021-06-12'),
(55, 'bi12348777745732', 'credit', 1199, '2021-05-11'),
(56, 'bi12348777745732', 'credit', 1000, '2021-04-10'),
(57, 'bi12348777745732', 'credit', 999, '2021-03-09'),
(58, 'bi12348777745732', 'credit', 760, '2021-02-07'),
(59, 'bi12348777745732', 'credit', 480, '2021-01-04'),
(60, 'bi12348777745732', 'debit', 2800, '2021-01-28'),
(61, 'bi12348777745732', 'debit', 2599, '2021-02-25'),
(62, 'bi12348777745732', 'debit', 2350, '2021-03-23'),
(63, 'bi12348777745732', 'debit', 2199, '2021-04-21'),
(64, 'bi12348777745732', 'debit', 1800, '2021-05-18'),
(65, 'bi12348777745732', 'debit', 1570, '2021-06-15'),
(66, 'bi12348777745732', 'debit', 1450, '2021-07-14'),
(67, 'bi12348777745732', 'debit', 1270, '2021-09-12'),
(68, 'bi12348777745732', 'debit', 1000, '2021-10-10'),
(69, 'bi12348777745732', 'debit', 970, '2021-11-09'),
(70, 'bi12348777745732', 'debit', 320, '2021-12-03');

-- --------------------------------------------------------

--
-- Table structure for table `upi_admin`
--

CREATE TABLE `upi_admin` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `upi_bank_api` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `upi_admin`
--

INSERT INTO `upi_admin` (`id`, `username`, `password`, `phone`, `upi_bank_api`) VALUES
(1, 'Bikram Dey', 'bi1234', '8777745732', 'bi12348777745732'),
(2, 'Anirban Naskar', 'an1234', '9748062180', 'an12349748062180'),
(3, 'Abhishek Kumar', 'ab1234', '7462007080', 'ab12347462007080'),
(4, 'Md Dilshad Alam', 'md1234', '6202845128', 'md12346202845128');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bank`
--
ALTER TABLE `bank`
  ADD PRIMARY KEY (`bid`);

--
-- Indexes for table `transaction`
--
ALTER TABLE `transaction`
  ADD PRIMARY KEY (`tid`);

--
-- Indexes for table `upi_admin`
--
ALTER TABLE `upi_admin`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `bank`
--
ALTER TABLE `bank`
  MODIFY `bid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `transaction`
--
ALTER TABLE `transaction`
  MODIFY `tid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=71;
--
-- AUTO_INCREMENT for table `upi_admin`
--
ALTER TABLE `upi_admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
