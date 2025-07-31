-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 25, 2023 at 12:25 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.0.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `attendence`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `username` varchar(15) NOT NULL,
  `password` varchar(20) NOT NULL,
  `name` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`, `name`) VALUES
(1, 'admin', 'admin', 'Admin');

-- --------------------------------------------------------

--
-- Table structure for table `attendance`
--

CREATE TABLE `attendance` (
  `id` int(11) NOT NULL,
  `student_id` int(11) DEFAULT NULL,
  `subject_id` int(11) DEFAULT NULL,
  `hrs_conducted` int(25) NOT NULL,
  `hrs_attended` int(25) NOT NULL,
  `percentage` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `attendance`
--

INSERT INTO `attendance` (`id`, `student_id`, `subject_id`, `hrs_conducted`, `hrs_attended`, `percentage`) VALUES
(3, 1, 2, 0, 0, 0),
(4, 1, 3, 0, 0, 0),
(5, 1, 4, 0, 0, 0),
(7, 2, 2, 0, 0, 0),
(8, 2, 3, 0, 0, 0),
(9, 2, 4, 0, 0, 0),
(10, 3, 1, 20, 8, 40),
(11, 3, 2, 0, 0, 0),
(12, 3, 3, 0, 0, 0),
(13, 3, 4, 0, 0, 0),
(14, 4, 1, 20, 10, 50),
(15, 4, 2, 0, 0, 0),
(16, 4, 3, 0, 0, 0),
(17, 4, 4, 0, 0, 0),
(18, 1, 1, 20, 4, 20),
(20, 2, 1, 20, 6, 30),
(21, 8, 3, 0, 0, 0),
(22, 9, 3, 0, 0, 0),
(23, 42, 3, 0, 0, 0),
(24, 8, 4, 0, 0, 0),
(25, 9, 4, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `dept`
--

CREATE TABLE `dept` (
  `dept_id` int(10) NOT NULL,
  `dept` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `dept`
--

INSERT INTO `dept` (`dept_id`, `dept`) VALUES
(1, 'IT'),
(2, 'AIML');

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

CREATE TABLE `students` (
  `student_id` int(15) NOT NULL,
  `regno` varchar(20) NOT NULL,
  `firstname` varchar(30) NOT NULL,
  `lastname` varchar(25) NOT NULL,
  `phoneno` varchar(20) NOT NULL,
  `year_id` int(11) NOT NULL,
  `dept_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `students`
--

INSERT INTO `students` (`student_id`, `regno`, `firstname`, `lastname`, `phoneno`, `year_id`, `dept_id`) VALUES
(1, '713521IT001', 'Abishek', 'S', '2147483647', 2, 1),
(2, '713521IT002', 'Akash', 'R', '1236548956', 2, 1),
(3, '713521IT003', 'Asai', 'C', '9867567483', 2, 1),
(4, '713521IT004', 'Archana', 'E', '45435435545', 2, 1),
(5, '713521IT005', 'Angu Iswariya', 'T', '543436546565', 2, 1),
(6, '713521IT006', 'Chandur', 'S', '45435435435', 2, 1),
(7, '713521IT007', 'Deva', 'A', '786435445', 2, 1),
(8, '713521IT008', 'Dhanush', 'E', '5434365465', 1, 1),
(9, '713521IT009', 'Darshan', 'T', '54454', 1, 1),
(42, '713521IT010', 'Darani', 'G', '54454', 1, 2);

-- --------------------------------------------------------

--
-- Table structure for table `subject`
--

CREATE TABLE `subject` (
  `subject_id` int(10) NOT NULL,
  `subject` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `subject`
--

INSERT INTO `subject` (`subject_id`, `subject`) VALUES
(1, 'os'),
(2, 'vqar'),
(3, 'mp'),
(4, 'daa'),
(5, 'dbms'),
(6, 'ps');

-- --------------------------------------------------------

--
-- Table structure for table `teacher`
--

CREATE TABLE `teacher` (
  `id` int(11) NOT NULL,
  `name` varchar(25) NOT NULL,
  `username` varchar(15) NOT NULL,
  `password` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `teacher`
--

INSERT INTO `teacher` (`id`, `name`, `username`, `password`) VALUES
(1, 'madhan', 'madhan07', '1234'),
(2, 'kumar', 'kumar123', '1234'),
(3, 'arun', 'arun123', '1234'),
(5, 'naveen', 'naveen123', '1234'),
(28, 'vdxv', 'madhan07', 'vdvd');

-- --------------------------------------------------------

--
-- Table structure for table `teacher_info`
--

CREATE TABLE `teacher_info` (
  `teacher_id` int(11) NOT NULL,
  `years_id` int(11) NOT NULL,
  `dept_id` int(11) NOT NULL,
  `subject_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `teacher_info`
--

INSERT INTO `teacher_info` (`teacher_id`, `years_id`, `dept_id`, `subject_id`) VALUES
(1, 1, 1, 1),
(1, 1, 2, 1),
(1, 2, 1, 1),
(2, 1, 1, 4),
(3, 2, 1, 4),
(3, 3, 2, 4);

-- --------------------------------------------------------

--
-- Table structure for table `years`
--

CREATE TABLE `years` (
  `year_id` int(15) NOT NULL,
  `year` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `years`
--

INSERT INTO `years` (`year_id`, `year`) VALUES
(1, '1st year'),
(2, '2nd year'),
(3, '3rd year'),
(4, '4th year');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`username`),
  ADD UNIQUE KEY `password` (`password`);

--
-- Indexes for table `attendance`
--
ALTER TABLE `attendance`
  ADD PRIMARY KEY (`id`),
  ADD KEY `student_id` (`student_id`),
  ADD KEY `subject_id` (`subject_id`);

--
-- Indexes for table `dept`
--
ALTER TABLE `dept`
  ADD PRIMARY KEY (`dept_id`);

--
-- Indexes for table `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`student_id`),
  ADD KEY `regno` (`regno`) USING BTREE,
  ADD KEY `year_id` (`year_id`),
  ADD KEY `dept_id` (`dept_id`),
  ADD KEY `student_id` (`student_id`) USING BTREE;

--
-- Indexes for table `subject`
--
ALTER TABLE `subject`
  ADD PRIMARY KEY (`subject_id`),
  ADD KEY `subject_id` (`subject_id`) USING BTREE;

--
-- Indexes for table `teacher`
--
ALTER TABLE `teacher`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`);

--
-- Indexes for table `teacher_info`
--
ALTER TABLE `teacher_info`
  ADD PRIMARY KEY (`teacher_id`,`years_id`,`dept_id`,`subject_id`),
  ADD KEY `years_id` (`years_id`),
  ADD KEY `dept_id` (`dept_id`),
  ADD KEY `subject_id` (`subject_id`);

--
-- Indexes for table `years`
--
ALTER TABLE `years`
  ADD PRIMARY KEY (`year_id`) USING BTREE,
  ADD KEY `year_id` (`year_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `attendance`
--
ALTER TABLE `attendance`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `dept`
--
ALTER TABLE `dept`
  MODIFY `dept_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `students`
--
ALTER TABLE `students`
  MODIFY `student_id` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT for table `subject`
--
ALTER TABLE `subject`
  MODIFY `subject_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `teacher`
--
ALTER TABLE `teacher`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `years`
--
ALTER TABLE `years`
  MODIFY `year_id` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `attendance`
--
ALTER TABLE `attendance`
  ADD CONSTRAINT `attendance_ibfk_1` FOREIGN KEY (`student_id`) REFERENCES `students` (`student_id`),
  ADD CONSTRAINT `attendance_ibfk_2` FOREIGN KEY (`subject_id`) REFERENCES `subject` (`subject_id`);

--
-- Constraints for table `students`
--
ALTER TABLE `students`
  ADD CONSTRAINT `students_ibfk_1` FOREIGN KEY (`year_id`) REFERENCES `years` (`year_id`),
  ADD CONSTRAINT `students_ibfk_2` FOREIGN KEY (`dept_id`) REFERENCES `dept` (`dept_id`);

--
-- Constraints for table `teacher_info`
--
ALTER TABLE `teacher_info`
  ADD CONSTRAINT `teacher_info_ibfk_1` FOREIGN KEY (`teacher_id`) REFERENCES `teacher` (`id`),
  ADD CONSTRAINT `teacher_info_ibfk_2` FOREIGN KEY (`years_id`) REFERENCES `years` (`year_id`),
  ADD CONSTRAINT `teacher_info_ibfk_3` FOREIGN KEY (`dept_id`) REFERENCES `dept` (`dept_id`),
  ADD CONSTRAINT `teacher_info_ibfk_4` FOREIGN KEY (`subject_id`) REFERENCES `subject` (`subject_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
