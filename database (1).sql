-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 19, 2025 at 12:41 PM
-- Server version: 10.1.28-MariaDB
-- PHP Version: 5.6.32

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bca_2025`
--

-- --------------------------------------------------------

--
-- Table structure for table `contact_form`
--

CREATE TABLE `contact_form` (
  `id` int(11) NOT NULL,
  `first_name` varchar(100) NOT NULL,
  `last_name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `subject` varchar(100) NOT NULL,
  `message` text NOT NULL,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `contact_form`
--

INSERT INTO `contact_form` (`id`, `first_name`, `last_name`, `email`, `subject`, `message`, `created_at`) VALUES
(1, 'SHOBHITH', 'N', 'customer@gmail.com', 'MSG 1', 'MSG 1', '2025-05-19 15:12:21');

-- --------------------------------------------------------

--
-- Table structure for table `email_logs`
--

CREATE TABLE `email_logs` (
  `id` int(11) NOT NULL,
  `user_email` varchar(255) DEFAULT NULL,
  `user_name` varchar(255) DEFAULT NULL,
  `type` varchar(100) DEFAULT NULL,
  `status` varchar(50) DEFAULT NULL,
  `response` text,
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `email_logs`
--

INSERT INTO `email_logs` (`id`, `user_email`, `user_name`, `type`, `status`, `response`, `created_at`) VALUES
(1, 'shobhithnnaik123@gmail.com', 'SHOBHITH N', 'WELCOME', 'sent', '{\"messageId\":\"<202505190637.51877672184@smtp-relay.mailin.fr>\"}\n', '2025-05-19 12:07:20'),
(2, 'shobhithnnaik123@gmail.com', 'SHOBHITH N', 'INVOICE', 'sent', '{\"messageId\":\"<202505190637.99820073877@smtp-relay.mailin.fr>\"}\n', '2025-05-19 12:07:24'),
(3, 'shobhithnnaik123@gmail.com', 'SHOBHITH N', 'INVOICE', 'sent', '{\"messageId\":\"<202505190648.80119881117@smtp-relay.mailin.fr>\"}\n', '2025-05-19 12:18:51');

-- --------------------------------------------------------

--
-- Table structure for table `gym_attendance`
--

CREATE TABLE `gym_attendance` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `attendance_date` date NOT NULL,
  `check_in_time` time DEFAULT NULL,
  `check_out_time` time DEFAULT NULL,
  `status` enum('Present','Absent') DEFAULT 'Present'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `gym_attendance`
--

INSERT INTO `gym_attendance` (`id`, `user_id`, `attendance_date`, `check_in_time`, `check_out_time`, `status`) VALUES
(1, 3, '2025-04-01', '06:07:51', '10:07:56', 'Present'),
(2, 5, '2025-04-01', '06:37:55', '09:08:57', 'Present'),
(3, 6, '2025-04-01', '06:28:39', '10:17:34', 'Present'),
(4, 3, '2025-04-02', '07:20:43', '10:45:51', 'Present'),
(5, 5, '2025-04-02', '06:28:15', '09:21:28', 'Present'),
(6, 6, '2025-04-02', '07:48:37', '10:22:43', 'Present'),
(7, 3, '2025-04-03', '07:23:41', '10:27:29', 'Present'),
(8, 5, '2025-04-03', '07:55:06', '10:50:19', 'Present'),
(9, 6, '2025-04-03', NULL, NULL, 'Absent'),
(10, 3, '2025-04-04', '06:34:55', '09:25:20', 'Present'),
(11, 5, '2025-04-04', '06:18:25', '10:02:03', 'Present'),
(12, 6, '2025-04-04', '06:00:19', '09:00:31', 'Present'),
(13, 3, '2025-04-05', '07:50:09', '10:15:39', 'Present'),
(14, 5, '2025-04-05', '06:58:39', '10:51:23', 'Present'),
(15, 6, '2025-04-05', '06:49:22', '09:39:36', 'Present'),
(16, 3, '2025-04-07', '07:16:40', '09:30:27', 'Present'),
(17, 5, '2025-04-07', '07:55:05', '09:32:35', 'Present'),
(18, 6, '2025-04-07', NULL, NULL, 'Absent'),
(19, 3, '2025-04-08', '06:26:58', '09:43:24', 'Present'),
(20, 5, '2025-04-08', '07:15:04', '10:53:40', 'Present'),
(21, 6, '2025-04-08', '06:07:10', '09:54:08', 'Present'),
(22, 3, '2025-04-09', '07:46:57', '10:07:21', 'Present'),
(23, 5, '2025-04-09', NULL, NULL, 'Absent'),
(24, 6, '2025-04-09', NULL, NULL, 'Absent'),
(25, 3, '2025-04-10', NULL, NULL, 'Absent'),
(26, 5, '2025-04-10', NULL, NULL, 'Absent'),
(27, 6, '2025-04-10', '07:07:39', '09:44:19', 'Present'),
(28, 3, '2025-04-11', NULL, NULL, 'Absent'),
(29, 5, '2025-04-11', '07:26:54', '09:55:10', 'Present'),
(30, 6, '2025-04-11', '06:30:40', '10:37:10', 'Present'),
(31, 3, '2025-04-12', '07:21:33', '10:36:02', 'Present'),
(32, 5, '2025-04-12', NULL, NULL, 'Absent'),
(33, 6, '2025-04-12', '06:56:43', '09:55:04', 'Present'),
(34, 3, '2025-04-14', '06:47:19', '10:15:11', 'Present'),
(35, 5, '2025-04-14', '06:04:30', '09:49:24', 'Present'),
(36, 6, '2025-04-14', '07:53:26', '09:42:28', 'Present'),
(37, 3, '2025-04-15', '06:44:21', '09:29:08', 'Present'),
(38, 5, '2025-04-15', NULL, NULL, 'Absent'),
(39, 6, '2025-04-15', '06:49:16', '10:18:10', 'Present'),
(40, 3, '2025-04-16', NULL, NULL, 'Absent'),
(41, 5, '2025-04-16', '07:07:01', '10:32:05', 'Present'),
(42, 6, '2025-04-16', '06:55:59', '09:15:14', 'Present'),
(43, 3, '2025-04-17', '07:11:23', '10:40:58', 'Present'),
(44, 5, '2025-04-17', '06:05:01', '09:57:37', 'Present'),
(45, 6, '2025-04-17', '06:58:02', '09:17:50', 'Present'),
(46, 3, '2025-04-18', '06:21:37', '10:51:49', 'Present'),
(47, 5, '2025-04-18', '06:39:27', '09:30:31', 'Present'),
(48, 6, '2025-04-18', NULL, NULL, 'Absent'),
(49, 3, '2025-04-19', '07:32:13', '10:07:38', 'Present'),
(50, 5, '2025-04-19', NULL, NULL, 'Absent'),
(51, 6, '2025-04-19', '06:30:57', '09:21:24', 'Present'),
(52, 3, '2025-04-21', '07:00:08', '09:35:35', 'Present'),
(53, 5, '2025-04-21', '07:31:26', '10:16:35', 'Present'),
(54, 6, '2025-04-21', '06:56:12', '10:52:33', 'Present'),
(55, 3, '2025-04-22', NULL, NULL, 'Absent'),
(56, 5, '2025-04-22', NULL, NULL, 'Absent'),
(57, 6, '2025-04-22', '06:04:11', '10:12:40', 'Present'),
(58, 3, '2025-04-23', '06:40:42', '10:48:32', 'Present'),
(59, 5, '2025-04-23', '06:50:03', '09:58:16', 'Present'),
(60, 6, '2025-04-23', '07:32:12', '09:22:28', 'Present'),
(61, 3, '2025-04-24', '07:14:59', '09:44:35', 'Present'),
(62, 5, '2025-04-24', '07:01:51', '09:50:24', 'Present'),
(63, 6, '2025-04-24', '06:41:16', '09:33:27', 'Present'),
(64, 3, '2025-04-25', NULL, NULL, 'Absent'),
(65, 5, '2025-04-25', '06:02:59', '09:08:33', 'Present'),
(66, 6, '2025-04-25', '07:24:01', '09:10:40', 'Present'),
(67, 3, '2025-04-26', '06:38:59', '09:33:42', 'Present'),
(68, 5, '2025-04-26', NULL, NULL, 'Absent'),
(69, 6, '2025-04-26', '06:32:17', '09:30:45', 'Present'),
(70, 3, '2025-04-28', '06:33:12', '10:42:12', 'Present'),
(71, 5, '2025-04-28', '07:24:18', '09:44:49', 'Present'),
(72, 6, '2025-04-28', '06:12:34', '10:14:29', 'Present'),
(73, 3, '2025-04-29', NULL, NULL, 'Absent'),
(74, 5, '2025-04-29', NULL, NULL, 'Absent'),
(75, 6, '2025-04-29', '06:48:36', '10:32:41', 'Present'),
(76, 3, '2025-04-30', '06:18:21', '09:27:53', 'Present'),
(77, 5, '2025-04-30', '07:46:40', '09:02:57', 'Present'),
(78, 6, '2025-04-30', NULL, NULL, 'Absent'),
(79, 3, '2025-05-01', '07:42:05', '09:37:46', 'Present'),
(80, 5, '2025-05-01', '07:43:57', '09:23:17', 'Present'),
(81, 6, '2025-05-01', NULL, NULL, 'Absent'),
(82, 3, '2025-05-02', NULL, NULL, 'Absent'),
(83, 5, '2025-05-02', '07:26:58', '09:09:45', 'Present'),
(84, 6, '2025-05-02', NULL, NULL, 'Absent'),
(85, 3, '2025-05-03', '06:59:03', '09:33:25', 'Present'),
(86, 5, '2025-05-03', NULL, NULL, 'Absent'),
(87, 6, '2025-05-03', '07:15:58', '10:25:24', 'Present'),
(88, 3, '2025-05-05', '06:01:33', '09:54:08', 'Present'),
(89, 5, '2025-05-05', '07:31:52', '10:12:49', 'Present'),
(90, 6, '2025-05-05', NULL, NULL, 'Absent'),
(91, 3, '2025-05-06', NULL, NULL, 'Absent'),
(92, 5, '2025-05-06', NULL, NULL, 'Absent'),
(93, 6, '2025-05-06', '06:48:11', '09:55:08', 'Present'),
(94, 3, '2025-05-07', '06:36:52', '10:35:28', 'Present'),
(95, 5, '2025-05-07', NULL, NULL, 'Absent'),
(96, 6, '2025-05-07', '07:49:25', '10:17:35', 'Present'),
(97, 3, '2025-05-08', '06:12:48', '09:26:09', 'Present'),
(98, 5, '2025-05-08', NULL, NULL, 'Absent'),
(99, 6, '2025-05-08', '06:28:51', '09:53:50', 'Present'),
(100, 3, '2025-05-09', '07:52:32', '09:58:51', 'Present'),
(101, 5, '2025-05-09', '06:10:28', '09:08:56', 'Present'),
(102, 6, '2025-05-09', NULL, NULL, 'Absent'),
(103, 3, '2025-05-10', '06:42:28', '09:08:36', 'Present'),
(104, 5, '2025-05-10', '06:39:24', '09:47:44', 'Present'),
(105, 6, '2025-05-10', '06:02:47', '10:02:00', 'Present'),
(106, 3, '2025-05-12', '06:09:08', '10:14:51', 'Present'),
(107, 5, '2025-05-12', '06:56:51', '09:18:44', 'Present'),
(108, 6, '2025-05-12', '06:09:21', '09:11:06', 'Present'),
(109, 3, '2025-05-13', '07:40:20', '10:59:06', 'Present'),
(110, 5, '2025-05-13', NULL, NULL, 'Absent'),
(111, 6, '2025-05-13', '07:59:11', '09:56:14', 'Present'),
(112, 4, '2025-05-14', '12:51:44', NULL, 'Present');

-- --------------------------------------------------------

--
-- Table structure for table `menu`
--

CREATE TABLE `menu` (
  `id` int(11) NOT NULL,
  `title` varchar(100) NOT NULL,
  `sp_id` int(11) NOT NULL,
  `description` text NOT NULL,
  `status` varchar(12) DEFAULT NULL,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `menu`
--

INSERT INTO `menu` (`id`, `title`, `sp_id`, `description`, `status`, `created_at`) VALUES
(1, 'Basic Plan (1 Month)', 1, '<p><strong>Workout Plan:</strong></p><ul><li>Monday to Saturday</li><li>30 mins Cardio + 30 mins Strength Training</li><li>Focus: Full-body fitness and weight management</li></ul><p><strong>Diet Plan:</strong></p><ul><li>Morning: Warm water with lemon, 5 soaked almonds</li><li>Breakfast: Oats with skim milk, 1 boiled egg</li><li>Lunch: 1 bowl brown rice, dal, salad</li><li>Evening: Green tea, 1 fruit (apple/banana)</li><li>Dinner: Grilled vegetables, paneer/tofu</li><li>Hydration: 3-4 liters water/day</li></ul>', 'active', '2025-05-14 11:34:47'),
(2, 'Standard Plan (3 Months)', 2, '<p><strong>Workout Plan:</strong></p><ul><li>6 Days/Week with 1 Day Active Recovery</li><li>Strength Training Split: Chest/Triceps, Back/Biceps, Legs, Shoulders</li><li>15 mins HIIT twice a week</li></ul><p><strong>Diet Plan:</strong></p><ul><li>Morning: Warm water with apple cider vinegar, 10 soaked almonds</li><li>Breakfast: Multigrain toast + boiled eggs + banana</li><li>Lunch: Quinoa or brown rice with chicken/legumes and salad</li><li>Evening Snack: Protein smoothie or nuts</li><li>Dinner: Boiled vegetables, soup, grilled chicken/tofu</li><li>Supplements: Whey protein (optional)</li><li>Hydration: 4 liters/day</li></ul>', 'active', '2025-05-14 11:50:11'),
(3, 'Premium Plan (6 Months)', 3, '<p><strong>Workout Plan:</strong></p><ul><li>Personalized Training Plan</li><li>Strength, Cardio, Core, and Flexibility Focus</li><li>Weekly Progress Tracking with Trainer</li></ul><p><strong>Diet Plan:</strong></p><ul><li>Custom Macro-Based Meal Plan</li><li>Weekly consultation with Nutritionist</li><li>Meal timing and portion control strategies</li><li>Clean eating focus with cheat meal guidance</li><li>Hydration &amp; Detox plan</li></ul>', 'active', '2025-05-14 11:50:30');

-- --------------------------------------------------------

--
-- Table structure for table `payments`
--

CREATE TABLE `payments` (
  `id` int(10) NOT NULL,
  `user_id` int(11) NOT NULL,
  `amount` int(10) NOT NULL,
  `payment_status` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payment_id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `paid_on` datetime NOT NULL,
  `sp_id` int(11) DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `mode` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_by` int(11) DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `payments`
--

INSERT INTO `payments` (`id`, `user_id`, `amount`, `payment_status`, `payment_id`, `paid_on`, `sp_id`, `end_date`, `mode`, `created_by`) VALUES
(27, 7, 9000, 'success', 'pay_QWh6FGzd6gJUDF', '2025-05-19 08:48:49', 2, '2025-08-17', 'ONLINE', 0),
(26, 4, 3000, 'success', 'cash_20250519_083932_4', '2025-05-19 00:00:00', 1, '2025-05-18', 'CASH', 1),
(25, 7, 3000, 'success', 'pay_QWgu5lLnm4hReA', '2025-04-19 08:37:19', 1, '2025-05-18', 'ONLINE', 0);

-- --------------------------------------------------------

--
-- Table structure for table `subscription_plan`
--

CREATE TABLE `subscription_plan` (
  `id` int(11) NOT NULL,
  `title` varchar(100) NOT NULL,
  `description` text NOT NULL,
  `price` decimal(10,2) DEFAULT NULL,
  `duration` int(11) DEFAULT NULL,
  `status` varchar(12) DEFAULT NULL,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `subscription_plan`
--

INSERT INTO `subscription_plan` (`id`, `title`, `description`, `price`, `duration`, `status`, `created_at`) VALUES
(1, 'Basic Plan', '<p>Kickstart your fitness routine with our beginner-friendly plan.</p><p><strong>Workout</strong></p><p>Full-body training + cardio sessions (6 days/week)</p><p><strong>Diet</strong></p><p>Balanced, clean eating to improve metabolism</p><p><strong>Ideal for</strong></p><p><strong><span class=\"ql-cursor\">ï»¿</span></strong>Weight loss, general fitness &amp; habit formation</p>', '3000.00', 30, 'active', '2025-05-05 10:24:41'),
(2, 'Standard Plan', '<p>Build strength, endurance, and consistency with structured guidance.</p><p><strong>Workout</strong></p><p>Strength split training + HIIT + recovery day</p><p><strong>Diet</strong></p><p>Protein-focused, muscle-building meals</p><p><strong>Ideal for</strong></p><p>Muscle gain, fat loss &amp; consistent transformation</p><p><br></p>', '9000.00', 90, 'active', '2025-05-05 10:24:41'),
(3, 'Premium Plan', '<p>Personalized coaching, nutrition, and progress tracking for serious results.</p><p><strong>Workout</strong></p><p>Custom programs with trainer check-ins</p><p><strong>Diet</strong></p><p>Macro-based meal plan + weekly nutritionist sessions</p><p><strong>Ideal for</strong></p><p><strong><span class=\"ql-cursor\">ï»¿</span></strong>Total transformation, body sculpting &amp; goal-focused progress</p><p><br></p>', '18000.00', 180, 'active', '2025-05-05 10:24:41');

-- --------------------------------------------------------

--
-- Table structure for table `trainers`
--

CREATE TABLE `trainers` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `trainer_id` varchar(11) NOT NULL,
  `c_id` varchar(255) DEFAULT NULL,
  `description` text,
  `status` varchar(12) DEFAULT NULL,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `trainers`
--

INSERT INTO `trainers` (`id`, `user_id`, `trainer_id`, `c_id`, `description`, `status`, `created_at`) VALUES
(1, 3, 'FC-001', NULL, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut eget est id ipsum elementum tempus. Phasellus vestibulum ipsum tortor, venenatis sollicitudin turpis lobortis non. Donec molestie risus quam, et suscipit risus posuere eget. Mauris aliquet ac purus eget iaculis. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. ', 'active', '2025-05-06 10:49:16'),
(2, 5, 'FC-001', NULL, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut eget est id ipsum elementum tempus. Phasellus vestibulum ipsum tortor, venenatis sollicitudin turpis lobortis non. Donec molestie risus quam, et suscipit risus posuere eget. Mauris aliquet ac purus eget iaculis. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. ', 'active', '2025-05-06 10:49:16'),
(3, 6, 'FC-001', NULL, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut eget est id ipsum elementum tempus. Phasellus vestibulum ipsum tortor, venenatis sollicitudin turpis lobortis non. Donec molestie risus quam, et suscipit risus posuere eget. Mauris aliquet ac purus eget iaculis. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. ', 'active', '2025-05-06 10:49:16');

-- --------------------------------------------------------

--
-- Table structure for table `trainer_customers`
--

CREATE TABLE `trainer_customers` (
  `id` int(11) NOT NULL,
  `trainer_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `tagged_at` datetime DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `trainer_customers`
--

INSERT INTO `trainer_customers` (`id`, `trainer_id`, `customer_id`, `tagged_at`) VALUES
(5, 3, 7, '2025-05-19 12:16:43'),
(6, 5, 4, '2025-05-19 12:16:55');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `phone_number` varchar(15) DEFAULT NULL,
  `dob` date DEFAULT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(500) DEFAULT NULL,
  `role` int(11) NOT NULL,
  `profile_image` varchar(100) DEFAULT NULL,
  `status` varchar(12) NOT NULL,
  `reset_token` varchar(255) DEFAULT NULL,
  `reset_expiry` datetime DEFAULT NULL,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `phone_number`, `dob`, `email`, `password`, `role`, `profile_image`, `status`, `reset_token`, `reset_expiry`, `created_at`) VALUES
(1, 'Admin', '9876543210', NULL, 'admin@fitnessclub.com', '$2y$10$jtAnbzrWEfZzcmVozS0jIepiq/PxXda/I3lhz62iemX0550zMHGni', 1, 'profile.jpg', 'active', NULL, NULL, '2025-05-13 13:45:16'),
(2, 'Reception', '9876543210', NULL, 'reception@fitnessclub.com', '$2y$10$WjXi4URqXTaG/lQOfYOUjeg/M9cdqufZCfMW60QJpuTcaiBTzpeOe', 2, NULL, 'active', NULL, NULL, '2025-05-13 13:45:16'),
(3, 'Trainer', '9876543210', NULL, 'trainer@fitnessclub.com', '$2y$10$Y/yrO2OZZgmJpgCZ6dcSNORWT9OPpoBKtuq6Q5dBie02kfz.0ss22', 3, '3_1745923807071.png', 'active', NULL, NULL, '2025-05-13 13:45:16'),
(4, 'Customer', '9876543210', NULL, 'customer@fitnessclub.com', '$2y$10$VS3atT9Y2wcJZ4P0hza8wO5SaE3BKwkXQexLHK1gGwdnOS0rNtTiO', 4, '4_m_after.jpg', 'inactive', NULL, NULL, '2025-05-13 13:45:16'),
(5, 'Trainer 1', '9876543210', NULL, 'trainer1@fitnessclub.com', '$2y$10$Y/yrO2OZZgmJpgCZ6dcSNORWT9OPpoBKtuq6Q5dBie02kfz.0ss22', 3, NULL, 'active', NULL, NULL, '2025-05-13 13:45:16'),
(6, 'Trainer 2', '9876543210', NULL, 'trainer2@fitnessclub.com', '$2y$10$Y/yrO2OZZgmJpgCZ6dcSNORWT9OPpoBKtuq6Q5dBie02kfz.0ss22', 3, NULL, 'active', NULL, NULL, '2025-05-13 13:45:16'),
(7, 'SHOBHITH N', '8197753017', '2009-05-01', 'shobhithnnaik123@gmail.com', '$2y$10$mrb1jL4HrBT9Zt/L5uAteOIPYKpZCi7RCvJvoGPGr7AdeVzpfAL4m', 4, NULL, 'active', NULL, NULL, '2025-05-19 12:07:19');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `contact_form`
--
ALTER TABLE `contact_form`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `email_logs`
--
ALTER TABLE `email_logs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `gym_attendance`
--
ALTER TABLE `gym_attendance`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `menu`
--
ALTER TABLE `menu`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_menu_subscription` (`sp_id`);

--
-- Indexes for table `payments`
--
ALTER TABLE `payments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_payments_user` (`user_id`) USING BTREE,
  ADD KEY `fk_payments_plan_user` (`sp_id`);

--
-- Indexes for table `subscription_plan`
--
ALTER TABLE `subscription_plan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `trainers`
--
ALTER TABLE `trainers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_trainers_user` (`user_id`);

--
-- Indexes for table `trainer_customers`
--
ALTER TABLE `trainer_customers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `customer_id` (`customer_id`),
  ADD KEY `trainer_customers_ibfk_1` (`trainer_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `contact_form`
--
ALTER TABLE `contact_form`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `email_logs`
--
ALTER TABLE `email_logs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `gym_attendance`
--
ALTER TABLE `gym_attendance`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=113;

--
-- AUTO_INCREMENT for table `menu`
--
ALTER TABLE `menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `payments`
--
ALTER TABLE `payments`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `subscription_plan`
--
ALTER TABLE `subscription_plan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `trainers`
--
ALTER TABLE `trainers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `trainer_customers`
--
ALTER TABLE `trainer_customers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `gym_attendance`
--
ALTER TABLE `gym_attendance`
  ADD CONSTRAINT `gym_attendance_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `menu`
--
ALTER TABLE `menu`
  ADD CONSTRAINT `fk_menu_subscription` FOREIGN KEY (`sp_id`) REFERENCES `subscription_plan` (`id`);

--
-- Constraints for table `trainers`
--
ALTER TABLE `trainers`
  ADD CONSTRAINT `fk_trainers_user` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `trainer_customers`
--
ALTER TABLE `trainer_customers`
  ADD CONSTRAINT `trainer_customers_ibfk_1` FOREIGN KEY (`trainer_id`) REFERENCES `trainers` (`user_id`),
  ADD CONSTRAINT `trainer_customers_ibfk_2` FOREIGN KEY (`customer_id`) REFERENCES `users` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
