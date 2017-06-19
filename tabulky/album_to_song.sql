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
-- Table structure for table `album_to_song`
--

CREATE TABLE `album_to_song` (
  `id_binding` int(11) NOT NULL,
  `id_album` int(11) NOT NULL,
  `id_song` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `album_to_song`
--

INSERT INTO `album_to_song` (`id_binding`, `id_album`, `id_song`) VALUES
(3, 1, 1),
(2, 2, 2),
(1, 2, 3),
(4, 4, 4),
(5, 4, 5),
(6, 8, 6),
(7, 7, 7),
(8, 7, 8);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `album_to_song`
--
ALTER TABLE `album_to_song`
  ADD PRIMARY KEY (`id_song`),
  ADD UNIQUE KEY `id_binding` (`id_binding`),
  ADD UNIQUE KEY `id_song` (`id_song`),
  ADD KEY `id_album` (`id_album`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
