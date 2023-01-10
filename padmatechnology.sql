-- phpMyAdmin SQL Dump
-- version 4.9.5deb2
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jan 10, 2023 at 06:42 AM
-- Server version: 8.0.29-0ubuntu0.20.04.3
-- PHP Version: 7.4.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `padmatechnology`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` text COLLATE utf8mb4_unicode_ci,
  `device_token` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `name`, `phone`, `image`, `address`, `device_token`, `email`, `password`, `created_at`, `updated_at`) VALUES
(1, 'Super Admin', NULL, NULL, NULL, 'cKwWCIBn8DJmLbjT1s41d7:APA91bGMAmgmsX6JNix_f0ixEz9lW4Ircg9luJDLfYO877x6QZXDukLcSiq-M7Htc2_MEzMXESAyl3vXGFdPr_7vOPVFeYf8j27bV_Atiu6iWbI6OlFVjQ5E_iMIOlEvGiA_n3VJ1ezy', 'admin@gmail.com', '$2y$10$cyueS2yDyywLLmlJMAlrEuj7.7zHFU6DtY.OBm.vdsEVMFtteivpC', '2023-01-10 00:30:45', '2023-01-10 00:36:35'),
(2, 'Main Admin', NULL, NULL, NULL, NULL, 'main-admin@gmail.com', '$2y$10$eLu6qrIbTClW4B8aHBwjwuIOeU3RReDam67yDowXnM0TUKBfSCsgy', '2023-01-10 00:30:45', '2023-01-10 00:30:45'),
(3, 'Main Admin 2', NULL, NULL, NULL, NULL, 'main-admin2@gmail.com', '$2y$10$rD9Dc/I7hvgetDrFmLi8UO6f6kmG0fMeuK8/p.5aYb01Q4cSBZzLK', '2023-01-10 00:30:45', '2023-01-10 00:30:45'),
(4, 'Main Admin 3', NULL, NULL, NULL, NULL, 'main-admin3@gmail.com', '$2y$10$Ntkbadx7zQXoZOzUCuxWVOVERsyiXvO8ytssMSr6WFfXIhgA3OFCG', '2023-01-10 00:30:45', '2023-01-10 00:30:45'),
(5, 'Main Admin 4', NULL, NULL, NULL, NULL, 'main-admin4@gmail.com', '$2y$10$lnuX/zLdnzO1i./MNcejM.wcwQH.sM1k1yy/TCE7JnZK7As1/djGy', '2023-01-10 00:30:45', '2023-01-10 00:30:45');

-- --------------------------------------------------------

--
-- Table structure for table `amenities`
--

CREATE TABLE `amenities` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_by` bigint UNSIGNED DEFAULT NULL COMMENT 'Created by',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `amenities`
--

INSERT INTO `amenities` (`id`, `name`, `created_by`, `created_at`, `updated_at`) VALUES
(1, 'Dr. Magnolia Shanahan', NULL, '2023-01-10 00:30:45', '2023-01-10 00:30:45'),
(2, 'Mrs. Marquise Thompson PhD', NULL, '2023-01-10 00:30:45', '2023-01-10 00:30:45'),
(3, 'Mia Price', NULL, '2023-01-10 00:30:45', '2023-01-10 00:30:45'),
(4, 'Andre Emard', NULL, '2023-01-10 00:30:45', '2023-01-10 00:30:45'),
(5, 'Cassidy Hirthe', NULL, '2023-01-10 00:30:45', '2023-01-10 00:30:45'),
(6, 'Miss Liana Thiel II', NULL, '2023-01-10 00:30:45', '2023-01-10 00:30:45'),
(7, 'Maria Kirlin', NULL, '2023-01-10 00:30:45', '2023-01-10 00:30:45'),
(8, 'Velda Predovic', NULL, '2023-01-10 00:30:45', '2023-01-10 00:30:45'),
(9, 'Stephania Reynolds DVM', NULL, '2023-01-10 00:30:45', '2023-01-10 00:30:45'),
(10, 'Bernard Feest', NULL, '2023-01-10 00:30:45', '2023-01-10 00:30:45'),
(11, 'German Breitenberg', NULL, '2023-01-10 00:30:45', '2023-01-10 00:30:45'),
(12, 'Amaya Miller', NULL, '2023-01-10 00:30:45', '2023-01-10 00:30:45'),
(13, 'Santa Herzog IV', NULL, '2023-01-10 00:30:45', '2023-01-10 00:30:45'),
(14, 'Chyna Barton', NULL, '2023-01-10 00:30:45', '2023-01-10 00:30:45'),
(15, 'Prof. Lue Morar V', NULL, '2023-01-10 00:30:45', '2023-01-10 00:30:45'),
(16, 'Stefan Price III', NULL, '2023-01-10 00:30:45', '2023-01-10 00:30:45'),
(17, 'Ezra Botsford II', NULL, '2023-01-10 00:30:45', '2023-01-10 00:30:45'),
(18, 'Brycen Kovacek', NULL, '2023-01-10 00:30:45', '2023-01-10 00:30:45'),
(19, 'Prof. Lorenzo Lind MD', NULL, '2023-01-10 00:30:45', '2023-01-10 00:30:45'),
(20, 'Clyde Marvin MD', NULL, '2023-01-10 00:30:45', '2023-01-10 00:30:45'),
(21, 'Randy Haag', NULL, '2023-01-10 00:30:45', '2023-01-10 00:30:45'),
(22, 'Loren Waters', NULL, '2023-01-10 00:30:45', '2023-01-10 00:30:45'),
(23, 'Meaghan Williamson', NULL, '2023-01-10 00:30:45', '2023-01-10 00:30:45'),
(24, 'Miss Nikita Flatley', NULL, '2023-01-10 00:30:45', '2023-01-10 00:30:45'),
(25, 'Jeff McCullough', NULL, '2023-01-10 00:30:45', '2023-01-10 00:30:45'),
(26, 'Daron O\'Keefe', NULL, '2023-01-10 00:30:45', '2023-01-10 00:30:45'),
(27, 'Kaleb Vandervort', NULL, '2023-01-10 00:30:45', '2023-01-10 00:30:45'),
(28, 'Araceli Shanahan', NULL, '2023-01-10 00:30:45', '2023-01-10 00:30:45'),
(29, 'Virginia Wiegand', NULL, '2023-01-10 00:30:45', '2023-01-10 00:30:45'),
(30, 'Joe Bashirian V', NULL, '2023-01-10 00:30:45', '2023-01-10 00:30:45'),
(31, 'Mr. Dameon Pollich', NULL, '2023-01-10 00:30:45', '2023-01-10 00:30:45'),
(32, 'Norval Mertz', NULL, '2023-01-10 00:30:45', '2023-01-10 00:30:45'),
(33, 'Emmanuel Toy', NULL, '2023-01-10 00:30:45', '2023-01-10 00:30:45'),
(34, 'Prof. Oscar Nolan', NULL, '2023-01-10 00:30:45', '2023-01-10 00:30:45'),
(35, 'Janick Koch III', NULL, '2023-01-10 00:30:45', '2023-01-10 00:30:45'),
(36, 'Mr. Rudolph Koch', NULL, '2023-01-10 00:30:45', '2023-01-10 00:30:45'),
(37, 'Mr. Nolan Considine', NULL, '2023-01-10 00:30:45', '2023-01-10 00:30:45'),
(38, 'Retha Johnson', NULL, '2023-01-10 00:30:45', '2023-01-10 00:30:45'),
(39, 'Trevion Connelly', NULL, '2023-01-10 00:30:45', '2023-01-10 00:30:45'),
(40, 'Dorothea Nikolaus', NULL, '2023-01-10 00:30:45', '2023-01-10 00:30:45'),
(41, 'Jena Bergstrom Jr.', NULL, '2023-01-10 00:30:45', '2023-01-10 00:30:45'),
(42, 'Andreanne Friesen', NULL, '2023-01-10 00:30:45', '2023-01-10 00:30:45'),
(43, 'Dr. Garry Rice', NULL, '2023-01-10 00:30:45', '2023-01-10 00:30:45'),
(44, 'Dr. Joana Kiehn DVM', NULL, '2023-01-10 00:30:45', '2023-01-10 00:30:45'),
(45, 'Estrella Flatley', NULL, '2023-01-10 00:30:45', '2023-01-10 00:30:45'),
(46, 'Gabriella Padberg', NULL, '2023-01-10 00:30:45', '2023-01-10 00:30:45'),
(47, 'Mr. Eli Glover', NULL, '2023-01-10 00:30:45', '2023-01-10 00:30:45'),
(48, 'Mr. Gayle Breitenberg V', NULL, '2023-01-10 00:30:45', '2023-01-10 00:30:45'),
(49, 'Leann Dietrich', NULL, '2023-01-10 00:30:45', '2023-01-10 00:30:45'),
(50, 'Oleta Conroy', NULL, '2023-01-10 00:30:45', '2023-01-10 00:30:45'),
(51, 'Erna Hane', NULL, '2023-01-10 00:30:45', '2023-01-10 00:30:45'),
(52, 'Unique Okuneva', NULL, '2023-01-10 00:30:45', '2023-01-10 00:30:45'),
(53, 'Mr. Juwan Price', NULL, '2023-01-10 00:30:45', '2023-01-10 00:30:45'),
(54, 'Rasheed Mann', NULL, '2023-01-10 00:30:45', '2023-01-10 00:30:45'),
(55, 'Peyton Nikolaus', NULL, '2023-01-10 00:30:45', '2023-01-10 00:30:45'),
(56, 'Mr. Torrance Shanahan MD', NULL, '2023-01-10 00:30:45', '2023-01-10 00:30:45'),
(57, 'Alana Wolf I', NULL, '2023-01-10 00:30:45', '2023-01-10 00:30:45'),
(58, 'Whitney Lynch', NULL, '2023-01-10 00:30:45', '2023-01-10 00:30:45'),
(59, 'Shane Daugherty', NULL, '2023-01-10 00:30:45', '2023-01-10 00:30:45'),
(60, 'Mrs. Edythe Rodriguez', NULL, '2023-01-10 00:30:45', '2023-01-10 00:30:45'),
(61, 'Devonte Huel', NULL, '2023-01-10 00:30:45', '2023-01-10 00:30:45'),
(62, 'Aylin Schinner I', NULL, '2023-01-10 00:30:45', '2023-01-10 00:30:45'),
(63, 'Prof. Claude Abshire', NULL, '2023-01-10 00:30:45', '2023-01-10 00:30:45'),
(64, 'Prof. Sylvia Lueilwitz V', NULL, '2023-01-10 00:30:45', '2023-01-10 00:30:45'),
(65, 'Winona Harber', NULL, '2023-01-10 00:30:45', '2023-01-10 00:30:45'),
(66, 'Thalia Bergstrom', NULL, '2023-01-10 00:30:46', '2023-01-10 00:30:46'),
(67, 'Dr. Kylee Pfeffer MD', NULL, '2023-01-10 00:30:46', '2023-01-10 00:30:46'),
(68, 'Mrs. Alexa Goyette PhD', NULL, '2023-01-10 00:30:46', '2023-01-10 00:30:46'),
(69, 'Prof. Marge Wintheiser', NULL, '2023-01-10 00:30:46', '2023-01-10 00:30:46'),
(70, 'Destany Hayes', NULL, '2023-01-10 00:30:46', '2023-01-10 00:30:46'),
(71, 'Miss Stacy Auer I', NULL, '2023-01-10 00:30:46', '2023-01-10 00:30:46'),
(72, 'Ashlynn Stehr PhD', NULL, '2023-01-10 00:30:46', '2023-01-10 00:30:46'),
(73, 'Miss Destini Keeling Sr.', NULL, '2023-01-10 00:30:46', '2023-01-10 00:30:46'),
(74, 'Lonnie Botsford', NULL, '2023-01-10 00:30:46', '2023-01-10 00:30:46'),
(75, 'Geoffrey Simonis', NULL, '2023-01-10 00:30:46', '2023-01-10 00:30:46');

-- --------------------------------------------------------

--
-- Table structure for table `amenity_room`
--

CREATE TABLE `amenity_room` (
  `id` bigint UNSIGNED NOT NULL,
  `amenity_id` bigint UNSIGNED NOT NULL,
  `room_id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `amenity_room`
--

INSERT INTO `amenity_room` (`id`, `amenity_id`, `room_id`, `created_at`, `updated_at`) VALUES
(1, 1, 1, '2023-01-10 00:30:45', '2023-01-10 00:30:45'),
(2, 2, 1, '2023-01-10 00:30:45', '2023-01-10 00:30:45'),
(3, 3, 1, '2023-01-10 00:30:45', '2023-01-10 00:30:45'),
(4, 4, 2, '2023-01-10 00:30:45', '2023-01-10 00:30:45'),
(5, 5, 2, '2023-01-10 00:30:45', '2023-01-10 00:30:45'),
(6, 6, 2, '2023-01-10 00:30:45', '2023-01-10 00:30:45'),
(7, 7, 3, '2023-01-10 00:30:45', '2023-01-10 00:30:45'),
(8, 8, 3, '2023-01-10 00:30:45', '2023-01-10 00:30:45'),
(9, 9, 3, '2023-01-10 00:30:45', '2023-01-10 00:30:45'),
(10, 10, 4, '2023-01-10 00:30:45', '2023-01-10 00:30:45'),
(11, 11, 4, '2023-01-10 00:30:45', '2023-01-10 00:30:45'),
(12, 12, 4, '2023-01-10 00:30:45', '2023-01-10 00:30:45'),
(13, 13, 5, '2023-01-10 00:30:45', '2023-01-10 00:30:45'),
(14, 14, 5, '2023-01-10 00:30:45', '2023-01-10 00:30:45'),
(15, 15, 5, '2023-01-10 00:30:45', '2023-01-10 00:30:45'),
(16, 16, 6, '2023-01-10 00:30:45', '2023-01-10 00:30:45'),
(17, 17, 6, '2023-01-10 00:30:45', '2023-01-10 00:30:45'),
(18, 18, 6, '2023-01-10 00:30:45', '2023-01-10 00:30:45'),
(19, 19, 7, '2023-01-10 00:30:45', '2023-01-10 00:30:45'),
(20, 20, 7, '2023-01-10 00:30:45', '2023-01-10 00:30:45'),
(21, 21, 7, '2023-01-10 00:30:45', '2023-01-10 00:30:45'),
(22, 22, 8, '2023-01-10 00:30:45', '2023-01-10 00:30:45'),
(23, 23, 8, '2023-01-10 00:30:45', '2023-01-10 00:30:45'),
(24, 24, 8, '2023-01-10 00:30:45', '2023-01-10 00:30:45'),
(25, 25, 9, '2023-01-10 00:30:45', '2023-01-10 00:30:45'),
(26, 26, 9, '2023-01-10 00:30:45', '2023-01-10 00:30:45'),
(27, 27, 9, '2023-01-10 00:30:45', '2023-01-10 00:30:45'),
(28, 28, 10, '2023-01-10 00:30:45', '2023-01-10 00:30:45'),
(29, 29, 10, '2023-01-10 00:30:45', '2023-01-10 00:30:45'),
(30, 30, 10, '2023-01-10 00:30:45', '2023-01-10 00:30:45'),
(31, 31, 11, '2023-01-10 00:30:45', '2023-01-10 00:30:45'),
(32, 32, 11, '2023-01-10 00:30:45', '2023-01-10 00:30:45'),
(33, 33, 11, '2023-01-10 00:30:45', '2023-01-10 00:30:45'),
(34, 34, 12, '2023-01-10 00:30:45', '2023-01-10 00:30:45'),
(35, 35, 12, '2023-01-10 00:30:45', '2023-01-10 00:30:45'),
(36, 36, 12, '2023-01-10 00:30:45', '2023-01-10 00:30:45'),
(37, 37, 13, '2023-01-10 00:30:45', '2023-01-10 00:30:45'),
(38, 38, 13, '2023-01-10 00:30:45', '2023-01-10 00:30:45'),
(39, 39, 13, '2023-01-10 00:30:45', '2023-01-10 00:30:45'),
(40, 40, 14, '2023-01-10 00:30:45', '2023-01-10 00:30:45'),
(41, 41, 14, '2023-01-10 00:30:45', '2023-01-10 00:30:45'),
(42, 42, 14, '2023-01-10 00:30:45', '2023-01-10 00:30:45'),
(43, 43, 15, '2023-01-10 00:30:45', '2023-01-10 00:30:45'),
(44, 44, 15, '2023-01-10 00:30:45', '2023-01-10 00:30:45'),
(45, 45, 15, '2023-01-10 00:30:45', '2023-01-10 00:30:45'),
(46, 46, 16, '2023-01-10 00:30:45', '2023-01-10 00:30:45'),
(47, 47, 16, '2023-01-10 00:30:45', '2023-01-10 00:30:45'),
(48, 48, 16, '2023-01-10 00:30:45', '2023-01-10 00:30:45'),
(49, 49, 17, '2023-01-10 00:30:45', '2023-01-10 00:30:45'),
(50, 50, 17, '2023-01-10 00:30:45', '2023-01-10 00:30:45'),
(51, 51, 17, '2023-01-10 00:30:45', '2023-01-10 00:30:45'),
(52, 52, 18, '2023-01-10 00:30:45', '2023-01-10 00:30:45'),
(53, 53, 18, '2023-01-10 00:30:45', '2023-01-10 00:30:45'),
(54, 54, 18, '2023-01-10 00:30:45', '2023-01-10 00:30:45'),
(55, 55, 19, '2023-01-10 00:30:45', '2023-01-10 00:30:45'),
(56, 56, 19, '2023-01-10 00:30:45', '2023-01-10 00:30:45'),
(57, 57, 19, '2023-01-10 00:30:45', '2023-01-10 00:30:45'),
(58, 58, 20, '2023-01-10 00:30:45', '2023-01-10 00:30:45'),
(59, 59, 20, '2023-01-10 00:30:45', '2023-01-10 00:30:45'),
(60, 60, 20, '2023-01-10 00:30:45', '2023-01-10 00:30:45'),
(61, 61, 21, '2023-01-10 00:30:45', '2023-01-10 00:30:45'),
(62, 62, 21, '2023-01-10 00:30:45', '2023-01-10 00:30:45'),
(63, 63, 21, '2023-01-10 00:30:45', '2023-01-10 00:30:45'),
(64, 64, 22, '2023-01-10 00:30:46', '2023-01-10 00:30:46'),
(65, 65, 22, '2023-01-10 00:30:46', '2023-01-10 00:30:46'),
(66, 66, 22, '2023-01-10 00:30:46', '2023-01-10 00:30:46'),
(67, 67, 23, '2023-01-10 00:30:46', '2023-01-10 00:30:46'),
(68, 68, 23, '2023-01-10 00:30:46', '2023-01-10 00:30:46'),
(69, 69, 23, '2023-01-10 00:30:46', '2023-01-10 00:30:46'),
(70, 70, 24, '2023-01-10 00:30:46', '2023-01-10 00:30:46'),
(71, 71, 24, '2023-01-10 00:30:46', '2023-01-10 00:30:46'),
(72, 72, 24, '2023-01-10 00:30:46', '2023-01-10 00:30:46'),
(73, 73, 25, '2023-01-10 00:30:46', '2023-01-10 00:30:46'),
(74, 74, 25, '2023-01-10 00:30:46', '2023-01-10 00:30:46'),
(75, 75, 25, '2023-01-10 00:30:46', '2023-01-10 00:30:46');

-- --------------------------------------------------------

--
-- Table structure for table `bookings`
--

CREATE TABLE `bookings` (
  `id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL COMMENT 'Customer',
  `room_id` bigint UNSIGNED NOT NULL COMMENT 'Room',
  `booking_no` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date` date DEFAULT NULL,
  `check_in` datetime DEFAULT NULL,
  `check_out` datetime DEFAULT NULL,
  `customer_email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `customer_number` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` text COLLATE utf8mb4_unicode_ci,
  `sub_total` double(22,4) NOT NULL DEFAULT '0.0000',
  `discount` double(5,2) NOT NULL DEFAULT '0.00',
  `grand_total` double(22,4) NOT NULL DEFAULT '0.0000',
  `note` text COLLATE utf8mb4_unicode_ci,
  `status` enum('Approved','Rejected','Pending') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Pending',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `bookings`
--

INSERT INTO `bookings` (`id`, `user_id`, `room_id`, `booking_no`, `date`, `check_in`, `check_out`, `customer_email`, `customer_number`, `address`, `sub_total`, `discount`, `grand_total`, `note`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, 20, 'B-230110-001', '2023-01-10', '2023-01-10 12:32:00', '2023-01-10 16:32:00', 'customer@gmail.com', '03534534543', 'Dhaka', 4503.3800, 0.00, 4503.3800, 'Something', 'Approved', '2023-01-10 00:33:49', '2023-01-10 00:36:11'),
(2, 3, 23, 'B-230110-002', '2023-01-10', '2023-01-10 12:36:00', '2023-01-10 17:36:00', 'customer2@gmail.com', '432423', '3432234324', 2292.9900, 0.00, 2292.9900, '23423423', 'Rejected', '2023-01-10 00:37:07', '2023-01-10 00:37:30');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `queue` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `attempts` tinyint UNSIGNED NOT NULL,
  `reserved_at` int UNSIGNED DEFAULT NULL,
  `available_at` int UNSIGNED NOT NULL,
  `created_at` int UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `jobs`
--

INSERT INTO `jobs` (`id`, `queue`, `payload`, `attempts`, `reserved_at`, `available_at`, `created_at`) VALUES
(1, 'default', '{\"uuid\":\"de482aa5-830f-4c94-9b2a-d759526ffdbe\",\"displayName\":\"App\\\\Notifications\\\\NewBookingNotify\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\",\"command\":\"O:48:\\\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\\\":16:{s:11:\\\"notifiables\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":4:{s:5:\\\"class\\\";s:16:\\\"App\\\\Models\\\\Admin\\\";s:2:\\\"id\\\";a:1:{i:0;i:1;}s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";}s:12:\\\"notification\\\";O:34:\\\"App\\\\Notifications\\\\NewBookingNotify\\\":12:{s:50:\\\"\\u0000App\\\\Notifications\\\\NewBookingNotify\\u0000notify_details\\\";a:6:{s:8:\\\"greeting\\\";s:34:\\\"Hi Super Admin, New Booking notify\\\";s:4:\\\"body\\\";s:88:\\\"New Booking: Customer name: Customer, Booking No: B-230110-001, Grand Total: Tk.4,503.38\\\";s:6:\\\"thanks\\\";s:47:\\\"Thank you very much for doing business with us.\\\";s:10:\\\"actionText\\\";s:15:\\\"Booking Details\\\";s:9:\\\"actionURL\\\";s:37:\\\"http:\\/\\/localhost:8080\\/admin\\/booking\\/1\\\";s:10:\\\"booking_no\\\";s:12:\\\"B-230110-001\\\";}s:2:\\\"id\\\";s:36:\\\"82bb50fa-22f8-4315-8b60-86415c851a7b\\\";s:6:\\\"locale\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}s:8:\\\"channels\\\";a:1:{i:0;s:4:\\\"mail\\\";}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:17:\\\"shouldBeEncrypted\\\";b:0;s:3:\\\"job\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 0, NULL, 1673332430, 1673332430),
(2, 'default', '{\"uuid\":\"fbdebc14-a1bb-4ac6-a777-807e1b6c5447\",\"displayName\":\"App\\\\Notifications\\\\NewBookingNotify\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\",\"command\":\"O:48:\\\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\\\":16:{s:11:\\\"notifiables\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":4:{s:5:\\\"class\\\";s:16:\\\"App\\\\Models\\\\Admin\\\";s:2:\\\"id\\\";a:1:{i:0;i:1;}s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";}s:12:\\\"notification\\\";O:34:\\\"App\\\\Notifications\\\\NewBookingNotify\\\":12:{s:50:\\\"\\u0000App\\\\Notifications\\\\NewBookingNotify\\u0000notify_details\\\";a:6:{s:8:\\\"greeting\\\";s:34:\\\"Hi Super Admin, New Booking notify\\\";s:4:\\\"body\\\";s:88:\\\"New Booking: Customer name: Customer, Booking No: B-230110-001, Grand Total: Tk.4,503.38\\\";s:6:\\\"thanks\\\";s:47:\\\"Thank you very much for doing business with us.\\\";s:10:\\\"actionText\\\";s:15:\\\"Booking Details\\\";s:9:\\\"actionURL\\\";s:37:\\\"http:\\/\\/localhost:8080\\/admin\\/booking\\/1\\\";s:10:\\\"booking_no\\\";s:12:\\\"B-230110-001\\\";}s:2:\\\"id\\\";s:36:\\\"82bb50fa-22f8-4315-8b60-86415c851a7b\\\";s:6:\\\"locale\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}s:8:\\\"channels\\\";a:1:{i:0;s:8:\\\"database\\\";}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:17:\\\"shouldBeEncrypted\\\";b:0;s:3:\\\"job\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 0, NULL, 1673332430, 1673332430),
(3, 'default', '{\"uuid\":\"f0f09ea5-92de-43bb-b132-8fbdd7065a58\",\"displayName\":\"App\\\\Notifications\\\\BookingStatusNotify\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\",\"command\":\"O:48:\\\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\\\":16:{s:11:\\\"notifiables\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":4:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\User\\\";s:2:\\\"id\\\";a:1:{i:0;i:1;}s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";}s:12:\\\"notification\\\";O:37:\\\"App\\\\Notifications\\\\BookingStatusNotify\\\":12:{s:53:\\\"\\u0000App\\\\Notifications\\\\BookingStatusNotify\\u0000notify_details\\\";a:6:{s:8:\\\"greeting\\\";s:11:\\\"Hi Customer\\\";s:4:\\\"body\\\";s:50:\\\"Your Booking : Approved,  Booking No: B-230110-001\\\";s:6:\\\"thanks\\\";s:47:\\\"Thank you very much for doing business with us.\\\";s:10:\\\"actionText\\\";s:15:\\\"Booking Details\\\";s:9:\\\"actionURL\\\";s:31:\\\"http:\\/\\/localhost:8080\\/booking\\/1\\\";s:10:\\\"booking_no\\\";s:12:\\\"B-230110-001\\\";}s:2:\\\"id\\\";s:36:\\\"6be8a7fd-4d86-45bb-80f9-122998cfd322\\\";s:6:\\\"locale\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}s:8:\\\"channels\\\";a:1:{i:0;s:4:\\\"mail\\\";}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:17:\\\"shouldBeEncrypted\\\";b:0;s:3:\\\"job\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 0, NULL, 1673332455, 1673332455),
(4, 'default', '{\"uuid\":\"bb9a3244-3651-4a02-981c-41ddc203ed1a\",\"displayName\":\"App\\\\Notifications\\\\BookingStatusNotify\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\",\"command\":\"O:48:\\\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\\\":16:{s:11:\\\"notifiables\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":4:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\User\\\";s:2:\\\"id\\\";a:1:{i:0;i:1;}s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";}s:12:\\\"notification\\\";O:37:\\\"App\\\\Notifications\\\\BookingStatusNotify\\\":12:{s:53:\\\"\\u0000App\\\\Notifications\\\\BookingStatusNotify\\u0000notify_details\\\";a:6:{s:8:\\\"greeting\\\";s:11:\\\"Hi Customer\\\";s:4:\\\"body\\\";s:50:\\\"Your Booking : Approved,  Booking No: B-230110-001\\\";s:6:\\\"thanks\\\";s:47:\\\"Thank you very much for doing business with us.\\\";s:10:\\\"actionText\\\";s:15:\\\"Booking Details\\\";s:9:\\\"actionURL\\\";s:31:\\\"http:\\/\\/localhost:8080\\/booking\\/1\\\";s:10:\\\"booking_no\\\";s:12:\\\"B-230110-001\\\";}s:2:\\\"id\\\";s:36:\\\"6be8a7fd-4d86-45bb-80f9-122998cfd322\\\";s:6:\\\"locale\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}s:8:\\\"channels\\\";a:1:{i:0;s:8:\\\"database\\\";}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:17:\\\"shouldBeEncrypted\\\";b:0;s:3:\\\"job\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 0, NULL, 1673332455, 1673332455),
(5, 'default', '{\"uuid\":\"e539e3ad-da42-4c43-b82e-4bbe05cef088\",\"displayName\":\"App\\\\Notifications\\\\BookingStatusNotify\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\",\"command\":\"O:48:\\\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\\\":16:{s:11:\\\"notifiables\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":4:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\User\\\";s:2:\\\"id\\\";a:1:{i:0;i:1;}s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";}s:12:\\\"notification\\\";O:37:\\\"App\\\\Notifications\\\\BookingStatusNotify\\\":12:{s:53:\\\"\\u0000App\\\\Notifications\\\\BookingStatusNotify\\u0000notify_details\\\";a:6:{s:8:\\\"greeting\\\";s:11:\\\"Hi Customer\\\";s:4:\\\"body\\\";s:49:\\\"Your Booking : Pending,  Booking No: B-230110-001\\\";s:6:\\\"thanks\\\";s:47:\\\"Thank you very much for doing business with us.\\\";s:10:\\\"actionText\\\";s:15:\\\"Booking Details\\\";s:9:\\\"actionURL\\\";s:31:\\\"http:\\/\\/localhost:8080\\/booking\\/1\\\";s:10:\\\"booking_no\\\";s:12:\\\"B-230110-001\\\";}s:2:\\\"id\\\";s:36:\\\"ac44b4d7-f0ae-4963-b308-f63ac10383b4\\\";s:6:\\\"locale\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}s:8:\\\"channels\\\";a:1:{i:0;s:4:\\\"mail\\\";}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:17:\\\"shouldBeEncrypted\\\";b:0;s:3:\\\"job\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 0, NULL, 1673332566, 1673332566),
(6, 'default', '{\"uuid\":\"b6030cc7-2c91-4317-a53f-3dbd3bc508cd\",\"displayName\":\"App\\\\Notifications\\\\BookingStatusNotify\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\",\"command\":\"O:48:\\\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\\\":16:{s:11:\\\"notifiables\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":4:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\User\\\";s:2:\\\"id\\\";a:1:{i:0;i:1;}s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";}s:12:\\\"notification\\\";O:37:\\\"App\\\\Notifications\\\\BookingStatusNotify\\\":12:{s:53:\\\"\\u0000App\\\\Notifications\\\\BookingStatusNotify\\u0000notify_details\\\";a:6:{s:8:\\\"greeting\\\";s:11:\\\"Hi Customer\\\";s:4:\\\"body\\\";s:49:\\\"Your Booking : Pending,  Booking No: B-230110-001\\\";s:6:\\\"thanks\\\";s:47:\\\"Thank you very much for doing business with us.\\\";s:10:\\\"actionText\\\";s:15:\\\"Booking Details\\\";s:9:\\\"actionURL\\\";s:31:\\\"http:\\/\\/localhost:8080\\/booking\\/1\\\";s:10:\\\"booking_no\\\";s:12:\\\"B-230110-001\\\";}s:2:\\\"id\\\";s:36:\\\"ac44b4d7-f0ae-4963-b308-f63ac10383b4\\\";s:6:\\\"locale\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}s:8:\\\"channels\\\";a:1:{i:0;s:8:\\\"database\\\";}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:17:\\\"shouldBeEncrypted\\\";b:0;s:3:\\\"job\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 0, NULL, 1673332566, 1673332566),
(7, 'default', '{\"uuid\":\"885e1663-0bad-43d8-b8b7-62688a65c20a\",\"displayName\":\"App\\\\Notifications\\\\BookingStatusNotify\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\",\"command\":\"O:48:\\\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\\\":16:{s:11:\\\"notifiables\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":4:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\User\\\";s:2:\\\"id\\\";a:1:{i:0;i:1;}s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";}s:12:\\\"notification\\\";O:37:\\\"App\\\\Notifications\\\\BookingStatusNotify\\\":12:{s:53:\\\"\\u0000App\\\\Notifications\\\\BookingStatusNotify\\u0000notify_details\\\";a:6:{s:8:\\\"greeting\\\";s:11:\\\"Hi Customer\\\";s:4:\\\"body\\\";s:50:\\\"Your Booking : Approved,  Booking No: B-230110-001\\\";s:6:\\\"thanks\\\";s:47:\\\"Thank you very much for doing business with us.\\\";s:10:\\\"actionText\\\";s:15:\\\"Booking Details\\\";s:9:\\\"actionURL\\\";s:31:\\\"http:\\/\\/localhost:8080\\/booking\\/1\\\";s:10:\\\"booking_no\\\";s:12:\\\"B-230110-001\\\";}s:2:\\\"id\\\";s:36:\\\"78cd08df-7d0d-46d2-a088-276326728052\\\";s:6:\\\"locale\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}s:8:\\\"channels\\\";a:1:{i:0;s:4:\\\"mail\\\";}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:17:\\\"shouldBeEncrypted\\\";b:0;s:3:\\\"job\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 0, NULL, 1673332572, 1673332572),
(8, 'default', '{\"uuid\":\"acf5dfee-2302-49a2-8fee-ca3f118ab02f\",\"displayName\":\"App\\\\Notifications\\\\BookingStatusNotify\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\",\"command\":\"O:48:\\\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\\\":16:{s:11:\\\"notifiables\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":4:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\User\\\";s:2:\\\"id\\\";a:1:{i:0;i:1;}s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";}s:12:\\\"notification\\\";O:37:\\\"App\\\\Notifications\\\\BookingStatusNotify\\\":12:{s:53:\\\"\\u0000App\\\\Notifications\\\\BookingStatusNotify\\u0000notify_details\\\";a:6:{s:8:\\\"greeting\\\";s:11:\\\"Hi Customer\\\";s:4:\\\"body\\\";s:50:\\\"Your Booking : Approved,  Booking No: B-230110-001\\\";s:6:\\\"thanks\\\";s:47:\\\"Thank you very much for doing business with us.\\\";s:10:\\\"actionText\\\";s:15:\\\"Booking Details\\\";s:9:\\\"actionURL\\\";s:31:\\\"http:\\/\\/localhost:8080\\/booking\\/1\\\";s:10:\\\"booking_no\\\";s:12:\\\"B-230110-001\\\";}s:2:\\\"id\\\";s:36:\\\"78cd08df-7d0d-46d2-a088-276326728052\\\";s:6:\\\"locale\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}s:8:\\\"channels\\\";a:1:{i:0;s:8:\\\"database\\\";}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:17:\\\"shouldBeEncrypted\\\";b:0;s:3:\\\"job\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 0, NULL, 1673332572, 1673332572),
(9, 'default', '{\"uuid\":\"80e23f8c-7529-4079-b20c-dbdcc9c3cb3f\",\"displayName\":\"App\\\\Notifications\\\\NewBookingNotify\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\",\"command\":\"O:48:\\\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\\\":16:{s:11:\\\"notifiables\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":4:{s:5:\\\"class\\\";s:16:\\\"App\\\\Models\\\\Admin\\\";s:2:\\\"id\\\";a:1:{i:0;i:1;}s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";}s:12:\\\"notification\\\";O:34:\\\"App\\\\Notifications\\\\NewBookingNotify\\\":12:{s:50:\\\"\\u0000App\\\\Notifications\\\\NewBookingNotify\\u0000notify_details\\\";a:6:{s:8:\\\"greeting\\\";s:34:\\\"Hi Super Admin, New Booking notify\\\";s:4:\\\"body\\\";s:90:\\\"New Booking: Customer name: Customer 2, Booking No: B-230110-002, Grand Total: Tk.2,292.99\\\";s:6:\\\"thanks\\\";s:47:\\\"Thank you very much for doing business with us.\\\";s:10:\\\"actionText\\\";s:15:\\\"Booking Details\\\";s:9:\\\"actionURL\\\";s:37:\\\"http:\\/\\/localhost:8080\\/admin\\/booking\\/2\\\";s:10:\\\"booking_no\\\";s:12:\\\"B-230110-002\\\";}s:2:\\\"id\\\";s:36:\\\"a0530435-3944-4042-b740-2b3d20a2c1a0\\\";s:6:\\\"locale\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}s:8:\\\"channels\\\";a:1:{i:0;s:4:\\\"mail\\\";}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:17:\\\"shouldBeEncrypted\\\";b:0;s:3:\\\"job\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 0, NULL, 1673332627, 1673332627),
(10, 'default', '{\"uuid\":\"54637794-a975-4e5e-b003-e90ce4ff4f06\",\"displayName\":\"App\\\\Notifications\\\\NewBookingNotify\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\",\"command\":\"O:48:\\\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\\\":16:{s:11:\\\"notifiables\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":4:{s:5:\\\"class\\\";s:16:\\\"App\\\\Models\\\\Admin\\\";s:2:\\\"id\\\";a:1:{i:0;i:1;}s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";}s:12:\\\"notification\\\";O:34:\\\"App\\\\Notifications\\\\NewBookingNotify\\\":12:{s:50:\\\"\\u0000App\\\\Notifications\\\\NewBookingNotify\\u0000notify_details\\\";a:6:{s:8:\\\"greeting\\\";s:34:\\\"Hi Super Admin, New Booking notify\\\";s:4:\\\"body\\\";s:90:\\\"New Booking: Customer name: Customer 2, Booking No: B-230110-002, Grand Total: Tk.2,292.99\\\";s:6:\\\"thanks\\\";s:47:\\\"Thank you very much for doing business with us.\\\";s:10:\\\"actionText\\\";s:15:\\\"Booking Details\\\";s:9:\\\"actionURL\\\";s:37:\\\"http:\\/\\/localhost:8080\\/admin\\/booking\\/2\\\";s:10:\\\"booking_no\\\";s:12:\\\"B-230110-002\\\";}s:2:\\\"id\\\";s:36:\\\"a0530435-3944-4042-b740-2b3d20a2c1a0\\\";s:6:\\\"locale\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}s:8:\\\"channels\\\";a:1:{i:0;s:8:\\\"database\\\";}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:17:\\\"shouldBeEncrypted\\\";b:0;s:3:\\\"job\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 0, NULL, 1673332627, 1673332627),
(11, 'default', '{\"uuid\":\"9bd0dd36-dcc8-4072-b9a5-28288dccbbea\",\"displayName\":\"App\\\\Notifications\\\\BookingStatusNotify\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\",\"command\":\"O:48:\\\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\\\":16:{s:11:\\\"notifiables\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":4:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\User\\\";s:2:\\\"id\\\";a:1:{i:0;i:3;}s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";}s:12:\\\"notification\\\";O:37:\\\"App\\\\Notifications\\\\BookingStatusNotify\\\":12:{s:53:\\\"\\u0000App\\\\Notifications\\\\BookingStatusNotify\\u0000notify_details\\\";a:6:{s:8:\\\"greeting\\\";s:13:\\\"Hi Customer 2\\\";s:4:\\\"body\\\";s:50:\\\"Your Booking : Rejected,  Booking No: B-230110-002\\\";s:6:\\\"thanks\\\";s:47:\\\"Thank you very much for doing business with us.\\\";s:10:\\\"actionText\\\";s:15:\\\"Booking Details\\\";s:9:\\\"actionURL\\\";s:31:\\\"http:\\/\\/localhost:8080\\/booking\\/2\\\";s:10:\\\"booking_no\\\";s:12:\\\"B-230110-002\\\";}s:2:\\\"id\\\";s:36:\\\"db27c925-9ae1-4082-832a-c26eeaf53425\\\";s:6:\\\"locale\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}s:8:\\\"channels\\\";a:1:{i:0;s:4:\\\"mail\\\";}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:17:\\\"shouldBeEncrypted\\\";b:0;s:3:\\\"job\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 0, NULL, 1673332650, 1673332650),
(12, 'default', '{\"uuid\":\"b6aa65fd-604b-4ecc-8d87-3fc2414a1263\",\"displayName\":\"App\\\\Notifications\\\\BookingStatusNotify\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\",\"command\":\"O:48:\\\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\\\":16:{s:11:\\\"notifiables\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":4:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\User\\\";s:2:\\\"id\\\";a:1:{i:0;i:3;}s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";}s:12:\\\"notification\\\";O:37:\\\"App\\\\Notifications\\\\BookingStatusNotify\\\":12:{s:53:\\\"\\u0000App\\\\Notifications\\\\BookingStatusNotify\\u0000notify_details\\\";a:6:{s:8:\\\"greeting\\\";s:13:\\\"Hi Customer 2\\\";s:4:\\\"body\\\";s:50:\\\"Your Booking : Rejected,  Booking No: B-230110-002\\\";s:6:\\\"thanks\\\";s:47:\\\"Thank you very much for doing business with us.\\\";s:10:\\\"actionText\\\";s:15:\\\"Booking Details\\\";s:9:\\\"actionURL\\\";s:31:\\\"http:\\/\\/localhost:8080\\/booking\\/2\\\";s:10:\\\"booking_no\\\";s:12:\\\"B-230110-002\\\";}s:2:\\\"id\\\";s:36:\\\"db27c925-9ae1-4082-832a-c26eeaf53425\\\";s:6:\\\"locale\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}s:8:\\\"channels\\\";a:1:{i:0;s:8:\\\"database\\\";}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:17:\\\"shouldBeEncrypted\\\";b:0;s:3:\\\"job\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 0, NULL, 1673332650, 1673332650);

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2016_06_01_000001_create_oauth_auth_codes_table', 1),
(4, '2016_06_01_000002_create_oauth_access_tokens_table', 1),
(5, '2016_06_01_000003_create_oauth_refresh_tokens_table', 1),
(6, '2016_06_01_000004_create_oauth_clients_table', 1),
(7, '2016_06_01_000005_create_oauth_personal_access_clients_table', 1),
(8, '2019_08_19_000000_create_failed_jobs_table', 1),
(9, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(10, '2021_10_06_160940_create_admins_table', 1),
(11, '2021_10_10_081428_create_notifications_table', 1),
(12, '2021_10_10_082932_create_jobs_table', 1),
(13, '2023_01_08_054059_create_amenities_table', 1),
(14, '2023_01_08_072411_create_rooms_table', 1),
(15, '2023_01_08_080420_create_amenity_room_table', 1),
(16, '2023_01_08_101044_create_bookings_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

CREATE TABLE `notifications` (
  `id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `notifiable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `notifiable_id` bigint UNSIGNED NOT NULL,
  `data` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `read_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_access_tokens`
--

CREATE TABLE `oauth_access_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint UNSIGNED DEFAULT NULL,
  `client_id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_access_tokens`
--

INSERT INTO `oauth_access_tokens` (`id`, `user_id`, `client_id`, `name`, `scopes`, `revoked`, `created_at`, `updated_at`, `expires_at`) VALUES
('0431c76d0568fd5eafc5ff373bad033e1ed839e438e61ed5327d8242f5f9f3e3d982edd6ffd3a763', 1, 1, 'MyApp', '[\"admin\"]', 1, '2023-01-10 00:33:05', '2023-01-10 00:33:05', '2024-01-10 06:33:05'),
('45c1f76a74bc33fdf9a5a09509718b4e7e61e67ee3ddd1f6d18479bc37fe4c450b0cbd93d44a31b1', 1, 1, 'MyApp', '[\"user\"]', 1, '2023-01-10 00:33:38', '2023-01-10 00:33:38', '2024-01-10 06:33:38'),
('a4f6556560bfbec99b6482793bf72f2aab86fa6aa4107d8dcf454f7a54a87143d9b3a2e450847dee', 1, 1, 'MyApp', '[\"user\"]', 1, '2023-01-10 00:35:38', '2023-01-10 00:35:38', '2024-01-10 06:35:38'),
('bc2a7c88f5bd9505e80a43bb6781f465084e40f296ce3d4eb90c0dced79615177c0c9ff031a36116', 3, 1, 'MyApp', '[\"user\"]', 0, '2023-01-10 00:37:01', '2023-01-10 00:37:01', '2024-01-10 06:37:01'),
('d278999d22493584a8c4cd70d60fa9dd5dc49216fe4ad80e2132f38c31a882dcfb3fb2e2fecead87', 1, 1, 'MyApp', '[\"admin\"]', 0, '2023-01-10 00:36:35', '2023-01-10 00:36:35', '2024-01-10 06:36:35'),
('e62a445214d3bafbb1d018322ddfb69b3c3d681c021e47470e62562c2cc0f187375f6ae48176c638', 1, 1, 'MyApp', '[\"admin\"]', 1, '2023-01-10 00:34:54', '2023-01-10 00:34:54', '2024-01-10 06:34:54');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_auth_codes`
--

CREATE TABLE `oauth_auth_codes` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `client_id` bigint UNSIGNED NOT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_clients`
--

CREATE TABLE `oauth_clients` (
  `id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `secret` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `provider` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `redirect` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `personal_access_client` tinyint(1) NOT NULL,
  `password_client` tinyint(1) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_clients`
--

INSERT INTO `oauth_clients` (`id`, `user_id`, `name`, `secret`, `provider`, `redirect`, `personal_access_client`, `password_client`, `revoked`, `created_at`, `updated_at`) VALUES
(1, NULL, 'Hotel Reservation System Personal Access Client', 'SolIgARuEJEYGQ0vSezFwMfoG3g23MeZ1yhbAiwL', NULL, 'http://localhost', 1, 0, 0, '2023-01-10 00:30:44', '2023-01-10 00:30:44'),
(2, NULL, 'Hotel Reservation System Password Grant Client', 'pxBZ8XduBkO6Qad9S1DrjP9TcuWdWOr6HAgMxhlV', 'users', 'http://localhost', 0, 1, 0, '2023-01-10 00:30:44', '2023-01-10 00:30:44');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_personal_access_clients`
--

CREATE TABLE `oauth_personal_access_clients` (
  `id` bigint UNSIGNED NOT NULL,
  `client_id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_personal_access_clients`
--

INSERT INTO `oauth_personal_access_clients` (`id`, `client_id`, `created_at`, `updated_at`) VALUES
(1, 1, '2023-01-10 00:30:44', '2023-01-10 00:30:44');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_refresh_tokens`
--

CREATE TABLE `oauth_refresh_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `access_token_id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `rooms`
--

CREATE TABLE `rooms` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` double(22,4) NOT NULL,
  `size` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `maximum_occupancy` int NOT NULL DEFAULT '0',
  `description` text COLLATE utf8mb4_unicode_ci,
  `uuid` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_by` bigint UNSIGNED DEFAULT NULL COMMENT 'Created by',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `rooms`
--

INSERT INTO `rooms` (`id`, `name`, `price`, `size`, `maximum_occupancy`, `description`, `uuid`, `image`, `created_by`, `created_at`, `updated_at`) VALUES
(1, 'Reta Haley', 5791.2800, 'Dr. Tomas Sporer MD', 4, 'Tempora hic suscipit aut omnis qui tenetur eos. Consequatur cupiditate quia fuga nisi voluptatem consequuntur ratione necessitatibus. Vel reiciendis deleniti in ab fugit. Dignissimos dolorem est aut impedit ipsa ex et.', '2a397f4b-27a7-393a-9fda-d0a9f679ddbc', '7.png', NULL, '2023-01-10 00:30:45', '2023-01-10 00:30:45'),
(2, 'Travon Abernathy', 5349.2200, 'Alta Tillman MD', 8, 'Quaerat consectetur blanditiis vitae quisquam officiis. Voluptatem ea illo nihil. Dolore nemo nihil maxime ex veniam accusantium.', 'e8adbd5c-2bbb-352d-bbd1-0b5ce6db53d2', '5.png', NULL, '2023-01-10 00:30:45', '2023-01-10 00:30:45'),
(3, 'Mr. Joshua Okuneva', 2207.8500, 'Lourdes McLaughlin', 4, 'Exercitationem dolorem enim quia distinctio et cumque est fugiat. Incidunt laudantium fuga et ut ut doloribus explicabo. Animi rerum minima accusantium hic odio est odio placeat. Harum asperiores quia quis unde et quis.', '2e5438f4-9127-3857-a5e1-be30213597f4', '6.png', NULL, '2023-01-10 00:30:45', '2023-01-10 00:30:45'),
(4, 'Reynold Macejkovic', 1395.6300, 'April Sporer', 4, 'Vitae vitae error earum nisi. In temporibus atque ullam exercitationem a blanditiis ut ratione. Soluta praesentium ratione vel id odio. Ut perspiciatis necessitatibus recusandae aperiam non. Voluptas ducimus nihil quod.', '9b79f4c9-5118-3155-808a-639fa7f0dc2b', '5.png', NULL, '2023-01-10 00:30:45', '2023-01-10 00:30:45'),
(5, 'Dr. Kenyatta Beatty', 4482.1900, 'Maximillia Will', 2, 'Non accusantium nobis omnis. Esse et quibusdam quia quisquam et sed ut repellat. Ut modi porro laborum modi ex.', '04e0beef-bddf-34da-a369-835315cd8dd8', '1.png', NULL, '2023-01-10 00:30:45', '2023-01-10 00:30:45'),
(6, 'German Moen I', 4381.4900, 'Miss Jena Jaskolski II', 6, 'Distinctio qui ut inventore molestias tempore quos impedit expedita. Tempore sit laboriosam explicabo eos. Nihil facilis eos beatae. Atque ut eius voluptatem aut. Ut consequatur molestiae qui impedit ea est.', 'beaf66df-6358-3278-ac82-1f2153115e7b', '3.png', NULL, '2023-01-10 00:30:45', '2023-01-10 00:30:45'),
(7, 'Chaz Klocko', 6792.6100, 'Alva Davis', 3, 'Ea ut deleniti voluptatem consequatur consequuntur ad ex. Voluptas fugiat nihil cupiditate animi voluptatum nesciunt. Praesentium ipsum qui consequatur dolorum modi. Sunt ducimus corporis dolorum quae.', '7066ce4e-8b86-30f7-8e2f-dd78e5602baa', '2.png', NULL, '2023-01-10 00:30:45', '2023-01-10 00:30:45'),
(8, 'Prof. Devyn Ryan DDS', 5964.3700, 'Tabitha Luettgen', 7, 'Labore beatae nemo exercitationem rerum. Non est omnis quam ab exercitationem. Voluptate explicabo distinctio sit in. Non enim perspiciatis incidunt rerum dolor dolorem excepturi. Illo repellendus qui non error asperiores sint eos.', '3bd2b6a7-aaca-33da-b857-b7f54beb961d', '5.png', NULL, '2023-01-10 00:30:45', '2023-01-10 00:30:45'),
(9, 'Alicia Nolan', 8775.6500, 'Prof. Sunny Schumm II', 6, 'Aliquam et rerum voluptas magnam sunt iusto delectus. Consequatur architecto illo totam iusto vero vitae voluptas. Suscipit expedita impedit ut et laudantium.', 'e5349c8a-487a-3c4f-992a-1b1d38b6e995', '8.png', NULL, '2023-01-10 00:30:45', '2023-01-10 00:30:45'),
(10, 'Mr. Milo Rohan DDS', 4563.3200, 'Edmond Hermiston', 1, 'Soluta ea commodi in maxime provident voluptatem. Sed voluptate laboriosam amet consequuntur. Consequatur quo sed vel saepe doloribus. Et sint aut repudiandae eum dicta consequuntur quos.', '26eb771b-ca4f-3cd6-8b47-f34fb914b8de', '6.png', NULL, '2023-01-10 00:30:45', '2023-01-10 00:30:45'),
(11, 'Newell Hayes', 6782.7200, 'Edward Hickle', 3, 'Commodi repellendus accusamus optio ex aut odit. Adipisci magni quibusdam autem voluptas nulla est facere. Ratione non sed et dolorum exercitationem praesentium fugiat. Sint consequatur sed inventore possimus ut.', 'c09c6d3c-9f07-3a2a-a9e7-2e951cd6f4d5', '3.png', NULL, '2023-01-10 00:30:45', '2023-01-10 00:30:45'),
(12, 'Vernice Weber', 8598.2300, 'Marquise Bauch V', 0, 'Repudiandae eaque error quis officiis eos illum voluptas. Mollitia molestias harum officia dicta et. Et sit voluptatum magni soluta beatae voluptas reprehenderit.', 'acc65efe-1b9a-3ab7-8a20-7b61151ca469', '7.png', NULL, '2023-01-10 00:30:45', '2023-01-10 00:30:45'),
(13, 'Harold Sawayn', 2046.9300, 'Randall Adams', 0, 'Aut est corrupti rerum illo reiciendis nemo. Asperiores autem modi et sed nobis voluptatibus dolorem et. Quo alias sed quos voluptatem. Expedita natus eligendi optio voluptate aut dolorem repellendus sint.', '61127cb0-54e7-33f5-aa02-c43f882ef426', '3.png', NULL, '2023-01-10 00:30:45', '2023-01-10 00:30:45'),
(14, 'Eva Mertz', 9185.8400, 'Cathy Prosacco', 1, 'Repellendus fugit rerum velit amet. At et corporis ipsam harum. Aut sint voluptate explicabo maxime.', '7d40de74-8539-3b45-8915-2ae0ebb5c912', '10.png', NULL, '2023-01-10 00:30:45', '2023-01-10 00:30:45'),
(15, 'Chadrick Wolff V', 4822.2400, 'Laney Kris', 5, 'Temporibus cum cum quo dolores perspiciatis. Vel voluptatem incidunt consequatur omnis illo. Harum et ullam similique voluptates.', '85cceb7e-d6b0-360f-9f1d-7dd644bd55f1', '4.png', NULL, '2023-01-10 00:30:45', '2023-01-10 00:30:45'),
(16, 'Eldred Hills', 3329.5700, 'Prof. Kiera Thompson', 8, 'Alias vitae quo dolor hic id ipsum ab. Hic non et laboriosam voluptas amet. Asperiores animi quasi distinctio tempora veritatis est repellendus accusantium. Accusamus quia rerum ipsam occaecati.', '6eac5094-9a1e-3a07-945f-a5dce26b89ec', '2.png', NULL, '2023-01-10 00:30:45', '2023-01-10 00:30:45'),
(17, 'Nia Heidenreich DVM', 9637.9000, 'Deven Halvorson', 7, 'Cum eum perspiciatis esse eum. Ut nesciunt velit ipsa quidem mollitia ullam consequatur. Aut illum iure earum temporibus necessitatibus eius. Explicabo porro veritatis reprehenderit culpa possimus.', 'bcf5bc0d-006d-3e0d-a0e3-53a6fbf11097', '4.png', NULL, '2023-01-10 00:30:45', '2023-01-10 00:30:45'),
(18, 'Amos Jast', 7777.8100, 'Fabian Cole PhD', 6, 'Id qui amet quam accusamus. Laboriosam aut omnis eum vel dolore.', '44eb00d0-8b49-3798-a1a1-f53c5254a725', '7.png', NULL, '2023-01-10 00:30:45', '2023-01-10 00:30:45'),
(19, 'Amari Schimmel', 1547.6000, 'Gregg Collier I', 0, 'Illum sunt ducimus neque. Hic autem optio optio facilis.', '01007805-6451-3ff5-97bc-3615ef62de06', '10.png', NULL, '2023-01-10 00:30:45', '2023-01-10 00:30:45'),
(20, 'Reggie Hammes', 4503.3800, 'Fleta Lynch', 1, 'Omnis quos et consectetur quas. Sunt deleniti animi non voluptas et autem nihil. Fugiat nam cumque magnam omnis aut voluptatibus.', 'd1f76b8e-d736-3526-b057-7d819dd22113', '9.png', NULL, '2023-01-10 00:30:45', '2023-01-10 00:30:45'),
(21, 'Prof. Keanu Hudson III', 9746.6300, 'Mr. Connor Hermann', 2, 'Et quis soluta sed cupiditate. Ut aliquid soluta molestiae aut dicta odio dicta. Ex inventore repellat itaque distinctio.', 'ab98824e-22df-3e68-bc09-abcccb47ddc8', '7.png', NULL, '2023-01-10 00:30:45', '2023-01-10 00:30:45'),
(22, 'Dr. Kamryn Jacobson', 6306.6300, 'Ida Collier', 8, 'Ipsam in magnam officia labore. Reiciendis non reiciendis voluptatem ea beatae unde cumque aut. Et sed exercitationem officia ut omnis ipsam. Expedita vel molestiae fuga libero reiciendis debitis rerum. Praesentium non quasi vel dignissimos quo.', 'a504f13e-962d-3c36-8945-94eadce03a57', '10.png', NULL, '2023-01-10 00:30:45', '2023-01-10 00:30:45'),
(23, 'Mrs. Aurelie Herman MD', 2292.9900, 'Elliott Wolff', 7, 'Quis nihil ut molestiae quae dignissimos. Sed distinctio earum laboriosam totam numquam. Consectetur hic iure corporis similique sapiente voluptatem. Nisi voluptatem blanditiis quia natus et. Ex assumenda id reiciendis aut sint impedit voluptas.', 'b54e9776-fb38-3065-8c85-257ee03e0ba8', '10.png', NULL, '2023-01-10 00:30:46', '2023-01-10 00:30:46'),
(24, 'Prof. Bethel Reinger IV', 5382.9100, 'Alice Torp', 0, 'Quis quia tenetur unde eum et ullam consectetur. Eaque velit fugiat cupiditate omnis tempore. Ipsum et explicabo beatae rerum enim.', '393d5183-1e03-36ab-9f83-92174a8a9b1c', '6.png', NULL, '2023-01-10 00:30:46', '2023-01-10 00:30:46'),
(25, 'Dr. Dino Metz', 2906.4200, 'Jarod Schoen', 2, 'Repellendus porro labore repudiandae corrupti temporibus atque harum. Sunt et ab voluptatem est. Dolorem id sit omnis sapiente omnis explicabo non voluptate. Dolore earum praesentium adipisci error quam dolores.', '4acc656b-0a39-349d-b7a7-2c65ef21112f', '4.png', NULL, '2023-01-10 00:30:46', '2023-01-10 00:30:46');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` text COLLATE utf8mb4_unicode_ci,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `device_token` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `phone`, `image`, `address`, `email`, `device_token`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Customer', NULL, NULL, NULL, 'customer@gmail.com', 'cKwWCIBn8DJmLbjT1s41d7:APA91bGMAmgmsX6JNix_f0ixEz9lW4Ircg9luJDLfYO877x6QZXDukLcSiq-M7Htc2_MEzMXESAyl3vXGFdPr_7vOPVFeYf8j27bV_Atiu6iWbI6OlFVjQ5E_iMIOlEvGiA_n3VJ1ezy', NULL, '$2y$10$NNNs639bxJ/vC11B8bcQbO/WjRCU8gc4IIPUOvQVmSbVxTrRggpZy', NULL, '2023-01-10 00:30:45', '2023-01-10 00:35:38'),
(2, 'Customer 1', NULL, NULL, NULL, 'customer1@gmail.com', NULL, NULL, '$2y$10$tbbi1AGS2A7SBTawhp6cee78qmOIY0kqUb4yj1J2QHYz.S6LP/WHu', NULL, '2023-01-10 00:30:45', '2023-01-10 00:30:45'),
(3, 'Customer 2', NULL, NULL, NULL, 'customer2@gmail.com', 'cyI1uBQjArZG5zw9aAS8t3:APA91bHnhoqIhEJmLJkCthkP-P0qvDDoNYBYSW6RdFZrkPrQuAEi6f6Za5mzRKbuzF2bxZriEUlBe-DqEdakFq4S-GMousxOM1Z56djTAcbkFZAeA7cuRsOMkLEgU5LS9FNLzhJg0krp', NULL, '$2y$10$84KiB6mERO8Ae8JSTswKCu3t6kMsxRZyUuenl3OkKGCNVYVXyS0C.', NULL, '2023-01-10 00:30:45', '2023-01-10 00:37:01'),
(4, 'Customer 3', NULL, NULL, NULL, 'customer3@gmail.com', NULL, NULL, '$2y$10$6zQQbDjcGCbNMbceiWmefupb32bmwLay69BKKoBCyUj070ZTHKe.G', NULL, '2023-01-10 00:30:45', '2023-01-10 00:30:45'),
(5, 'Customer 4', NULL, NULL, NULL, 'customer4@gmail.com', NULL, NULL, '$2y$10$z0quO096tzEtVUxgwww43.XdMElO84QFF3aCpW0br599H259Nio16', NULL, '2023-01-10 00:30:45', '2023-01-10 00:30:45'),
(6, 'Customer 5', NULL, NULL, NULL, 'customer5@gmail.com', NULL, NULL, '$2y$10$gUF/p2nN8N3GvKZr0NmFJu6g0rvmuQ97ypz5CX6PePl9yJjeAf3lm', NULL, '2023-01-10 00:30:45', '2023-01-10 00:30:45');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admins_email_unique` (`email`);

--
-- Indexes for table `amenities`
--
ALTER TABLE `amenities`
  ADD PRIMARY KEY (`id`),
  ADD KEY `amenities_created_by_index` (`created_by`);

--
-- Indexes for table `amenity_room`
--
ALTER TABLE `amenity_room`
  ADD PRIMARY KEY (`id`),
  ADD KEY `amenity_room_amenity_id_foreign` (`amenity_id`),
  ADD KEY `amenity_room_room_id_foreign` (`room_id`);

--
-- Indexes for table `bookings`
--
ALTER TABLE `bookings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `bookings_user_id_index` (`user_id`),
  ADD KEY `bookings_room_id_index` (`room_id`),
  ADD KEY `bookings_grand_total_index` (`grand_total`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`id`),
  ADD KEY `notifications_notifiable_type_notifiable_id_index` (`notifiable_type`,`notifiable_id`);

--
-- Indexes for table `oauth_access_tokens`
--
ALTER TABLE `oauth_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_access_tokens_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_auth_codes`
--
ALTER TABLE `oauth_auth_codes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_auth_codes_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_clients_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `oauth_refresh_tokens`
--
ALTER TABLE `oauth_refresh_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_refresh_tokens_access_token_id_index` (`access_token_id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `rooms`
--
ALTER TABLE `rooms`
  ADD PRIMARY KEY (`id`),
  ADD KEY `rooms_created_by_index` (`created_by`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `amenities`
--
ALTER TABLE `amenities`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=76;

--
-- AUTO_INCREMENT for table `amenity_room`
--
ALTER TABLE `amenity_room`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=76;

--
-- AUTO_INCREMENT for table `bookings`
--
ALTER TABLE `bookings`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `rooms`
--
ALTER TABLE `rooms`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `amenities`
--
ALTER TABLE `amenities`
  ADD CONSTRAINT `amenities_created_by_foreign` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `amenity_room`
--
ALTER TABLE `amenity_room`
  ADD CONSTRAINT `amenity_room_amenity_id_foreign` FOREIGN KEY (`amenity_id`) REFERENCES `amenities` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `amenity_room_room_id_foreign` FOREIGN KEY (`room_id`) REFERENCES `rooms` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `bookings`
--
ALTER TABLE `bookings`
  ADD CONSTRAINT `bookings_room_id_foreign` FOREIGN KEY (`room_id`) REFERENCES `rooms` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `bookings_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `rooms`
--
ALTER TABLE `rooms`
  ADD CONSTRAINT `rooms_created_by_foreign` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
