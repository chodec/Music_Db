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
-- Table structure for table `song`
--

CREATE TABLE `song` (
  `album_id` int(11) NOT NULL,
  `album_name` varchar(100) NOT NULL,
  `id_song` int(11) NOT NULL,
  `song_name` varchar(100) NOT NULL,
  `band_name` varchar(44) CHARACTER SET cp1250 COLLATE cp1250_czech_cs NOT NULL,
  `band_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `song`
--

INSERT INTO `song` (`album_id`, `album_name`, `id_song`, `song_name`, `band_name`, `band_id`) VALUES
(1, 'Master of puppets', 1, 'Master of puppets', 'Metallica', 1),
(2, 'The art of breaking', 2, 'Hand granade', 'Thousand foot krutch', 2),
(2, 'The art of breaking', 3, 'Absolute', 'Thousand foot krutch', 2),
(4, 'One-X', 4, 'Animal I have become', 'Three Days Grace', 4),
(4, 'One-X', 5, 'Home', 'Three Days Grace', 4),
(8, 'Wasting Time', 6, 'Rope', 'Foo Fighters', 6),
(7, 'Hold your color', 7, 'Slam', 'Pendulum', 3),
(7, 'Hold your color', 8, 'Prelude', 'Pendulum', 3);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `song`
--
ALTER TABLE `song`
  ADD PRIMARY KEY (`id_song`),
  ADD UNIQUE KEY `id_song` (`id_song`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
