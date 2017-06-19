-- phpMyAdmin SQL Dump
-- version 4.5.4.1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Jun 19, 2017 at 06:31 PM
-- Server version: 5.7.11
-- PHP Version: 7.0.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `music_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `album`
--

CREATE TABLE `album` (
  `album_name` varchar(100) NOT NULL,
  `id_album` int(11) NOT NULL,
  `band_name` varchar(100) NOT NULL,
  `id_band` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `album`
--

INSERT INTO `album` (`album_name`, `id_album`, `band_name`, `id_band`) VALUES
('Master of puppets', 1, 'Metallica', 1),
('Ride the lightning', 3, 'Metallica', 1),
('The art of breaking', 2, 'Thousand foot krutch', 2),
('Hold your color', 7, 'Pendulum', 3),
('One-X', 4, 'Three Days Grace', 4),
('Aggressive', 5, 'Beartooth', 5),
('Disgusting', 6, 'Beartooth', 5),
('Wasting Time', 8, 'Foo Fighters', 6);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `album`
--
ALTER TABLE `album`
  ADD PRIMARY KEY (`id_album`),
  ADD UNIQUE KEY `id_album` (`id_album`),
  ADD KEY `id_band` (`id_band`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
