-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 18, 2022 at 11:58 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `eyantra`
--

-- --------------------------------------------------------

--
-- Table structure for table `registration`
--

CREATE TABLE `registration` (
  `id` int(11) NOT NULL,
  `firstName` varchar(50) NOT NULL,
  `lastName` varchar(50) NOT NULL,
  `phone` bigint(20) NOT NULL,
  `email` varchar(50) NOT NULL,
  `gender` enum('male','female','other') NOT NULL,
  `year` text NOT NULL,
  `country` varchar(50) NOT NULL,
  `college` varchar(100) NOT NULL,
  `domain` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `registration`
--

INSERT INTO `registration` (`id`, `firstName`, `lastName`, `phone`, `email`, `gender`, `year`, `country`, `college`, `domain`) VALUES
(1, 'rishab', 'kumar', 7294131149, 'rishabgupta57@gmail.com', '', '0', 'Bahamas', 'Somaiya Vidyavihar', 'procurement'),
(2, 'rishab', 'kumar', 7294131149, 'rishabgupta57@gmail.com', 'male', '0', 'Bahamas', 'Somaiya Vidyavihar', 'procurement'),
(3, 'Rakesh', 'Kumar', 7294131149, 'guptabhi49@gmail.com', 'male', '0', 'Select Country', 'Columbia College (SC)', 'procurement'),
(4, 'Rakesh', 'Kumar', 7294131149, 'guptabhi49@gmail.com', 'male', '0', 'Argentina', 'Xavier University', 'procurement'),
(5, 'Rakesh', 'Kumar', 7294131149, 'guptabhi49@gmail.com', 'male', '0', 'Argentina', 'Xavier University', 'procurement'),
(6, 'Rakesh', 'Kumar', 7294131149, 'ravi@gmail.com', 'male', '0', 'Andorra', 'Claremont School of Theology', 'hr'),
(7, 'Rakesh', 'Kumar', 7294131149, 'ravi@gmail.com', 'male', '0', 'Andorra', 'Claremont School of Theology', 'hr'),
(8, 'Amit', 'Kr', 9508465262, 'amit@gmail.com', 'male', '0', 'Bahrain', 'Keller Graduate School of Management', 'cse'),
(9, 'Amit', 'Kr', 9508465262, 'amit@gmail.com', 'male', '0', 'Bahrain', 'Keller Graduate School of Management', 'cse'),
(10, 'Amit', 'Kr', 9508465262, 'amit@gmail.com', 'male', '0', 'Bahrain', 'Keller Graduate School of Management', 'cse'),
(11, 'Amit', 'Kr', 9508465262, 'fsd@gmail.com', 'male', '0', 'Afghanistan', 'Marywood University', 'cse'),
(12, 'Amit', 'Kr', 9508465262, 'fsd@gmail.com', 'male', '0', 'Afghanistan', 'Monroe College', 'cse'),
(13, 'Amit', 'Kr', 9508465262, 'fsd@gmail.com', 'male', '0', 'Afghanistan', 'Monroe College', 'cse'),
(14, 'Amit', 'Kr', 9508465262, 'fsd@gmail.com', 'male', '0', 'Afghanistan', 'Monroe College', 'cse'),
(15, 'Amit', 'Kr', 9508465262, 'fsd@gmail.com', 'male', '0', 'Afghanistan', 'Monroe College', 'cse'),
(16, 'Amit', 'Kr', 9508465262, 'fsd@gmail.com', 'male', '0', 'Afghanistan', 'Monroe College', 'cse'),
(17, 'Amit', 'Kr', 9508465262, 'fsd@gmail.com', 'male', '0', 'Afghanistan', 'Monroe College', 'cse'),
(18, 'rohit', 'kumar', 7294131149, 'rohit@gmail.com', 'male', '0', 'Bahrain', 'San Mateo County Community College District', 'procurement'),
(19, 'rohit', 'kumar', 7294131149, 'rohit@gmail.com', 'male', '0', 'Bahrain', 'San Mateo County Community College District', 'procurement'),
(20, 'rohit', 'kumar', 7294131149, 'rohit@gmail.com', 'male', '0', 'Bahrain', 'San Mateo County Community College District', 'procurement'),
(21, 'rohit', 'kumar', 7294131149, 'rohit@gmail.com', 'male', '0', 'Bahrain', 'San Mateo County Community College District', 'procurement'),
(22, 'rohit', 'kumar', 7294131149, 'rimu@gmail.com', 'male', '0', 'Afghanistan', 'Marywood University', 'procurement'),
(23, 'rohit', 'kumar', 7294131149, 'rimu@gmail.com', 'male', 'year', 'Afghanistan', 'Marywood University', 'procurement');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `registration`
--
ALTER TABLE `registration`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `registration`
--
ALTER TABLE `registration`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
