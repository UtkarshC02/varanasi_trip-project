-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 02, 2025 at 01:20 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `varanasi_trip`
--

-- --------------------------------------------------------

--
-- Table structure for table `varanasi_trip`
--

CREATE TABLE `varanasi_trip` (
  `id` int(3) NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `phone` varchar(15) NOT NULL,
  `trip_date` date NOT NULL,
  `package` varchar(50) NOT NULL,
  `registration_date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `varanasi_trip`
--

INSERT INTO `varanasi_trip` (`id`, `name`, `email`, `phone`, `trip_date`, `package`, `registration_date`) VALUES
(0, 'utkarsh DUBEY', 'utkarsji122@gmail.com', '09876543210', '2025-01-23', 'deluxe', '2025-01-02 11:41:19'),
(5, 'Utkarsh Dubey', 'Utkarshdubey2003@gmail.com', '8917877495', '2025-01-11', 'Deluxe Package', '2025-01-02 11:48:54'),
(0, 'utkarsh DUBEY', 'utkarsji122@gmail.com', '09876543210', '2025-01-23', 'deluxe', '2025-01-02 11:52:15'),
(0, 'utkarsh DUBEY', 'utkarsji122@gmail.com', '09876543210', '2025-01-23', 'deluxe', '2025-01-02 11:52:19'),
(0, 'Harsh Dubey', 'dubeyharrsh1301@gmail.com', '89178724843', '2025-01-14', 'premium', '2025-01-02 11:53:03');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
