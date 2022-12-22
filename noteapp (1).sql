-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 15, 2022 at 09:55 PM
-- Server version: 10.4.25-MariaDB
-- PHP Version: 7.4.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `noteapp`
--

-- --------------------------------------------------------

--
-- Table structure for table `aboutyourselfs`
--

CREATE TABLE `aboutyourselfs` (
  `id` int(11) NOT NULL,
  `gender` varchar(255) CHARACTER SET utf8 NOT NULL,
  `purpose` varchar(255) CHARACTER SET utf8 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `aboutyourselfs`
--

INSERT INTO `aboutyourselfs` (`id`, `gender`, `purpose`) VALUES
(24, 'meal', 'Learn the basic. '),
(25, 'meal', 'Learn the basic.'),
(26, 'meal', 'Learn the basic.'),
(27, 'meal', 'Learn the basic.'),
(28, 'meal', 'Learn the basic.'),
(29, 'meal', 'Learn the basic.'),
(30, 'meal', 'Learn the basic.'),
(31, 'meal', 'Learn the basic.'),
(32, 'meal', 'Learn the basic.'),
(33, 'meal', 'Learn the basic.'),
(34, 'meal', 'Learn the basic.'),
(35, 'meal', 'Learn the basic.'),
(36, 'meal', 'Learn the basic.'),
(37, 'meal', 'Learn the basic.'),
(38, 'meal', 'Learn the basic.'),
(39, 'meal', 'Learn the basic.'),
(40, 'meal', 'Learn the basic.'),
(41, 'meal', 'Learn the basic.'),
(42, 'Femal', 'Learn the basic.'),
(43, 'Femal', ' Lose weight(lose fat) Gain. '),
(44, 'meal', 'Learn the basic.'),
(45, 'meal', 'Learn the basic.'),
(46, 'meal', 'Learn the basic.'),
(47, 'meal', 'Learn the basic.'),
(48, 'meal', 'Learn the basic.'),
(49, 'meal', 'Learn the basic.'),
(50, 'meal', 'Learn the basic.'),
(51, 'meal', 'Learn the basic.'),
(52, 'meal', 'Learn the basic.'),
(53, 'meal', 'Learn the basic.'),
(54, 'meal', 'Learn the basic.'),
(55, 'meal', 'Learn the basic.');

-- --------------------------------------------------------

--
-- Table structure for table `activity`
--

CREATE TABLE `activity` (
  `id` int(11) NOT NULL,
  `activityname` varchar(255) CHARACTER SET utf8 NOT NULL,
  `placeofactivity` varchar(255) CHARACTER SET utf8 NOT NULL,
  `enterdate` varchar(255) CHARACTER SET utf8 NOT NULL,
  `entertime` varchar(255) CHARACTER SET utf8 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `activity`
--

INSERT INTO `activity` (`id`, `activityname`, `placeofactivity`, `enterdate`, `entertime`) VALUES
(1, 'hadeqetalhewnat', 'qalqaleh', '20/2/2021', '3:30AM'),
(2, 'hadeqetalhewnat', 'qalqaleh', '20/2/2021', '3:30AM');

-- --------------------------------------------------------

--
-- Table structure for table `adddite`
--

CREATE TABLE `adddite` (
  `id` int(11) NOT NULL,
  `food` varchar(255) CHARACTER SET utf8 NOT NULL,
  `time` varchar(255) CHARACTER SET utf8 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `adddite`
--

INSERT INTO `adddite` (`id`, `food`, `time`) VALUES
(2, 'bbb', 'zz');

-- --------------------------------------------------------

--
-- Table structure for table `addevent`
--

CREATE TABLE `addevent` (
  `id` int(11) NOT NULL,
  `titlecontroller` varchar(255) CHARACTER SET utf8 NOT NULL,
  `datecontroller` varchar(255) CHARACTER SET utf8 NOT NULL,
  `starttimecontroller` varchar(255) CHARACTER SET utf8 NOT NULL,
  `endtimecontroller` varchar(255) CHARACTER SET utf8 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `addevent`
--

INSERT INTO `addevent` (`id`, `titlecontroller`, `datecontroller`, `starttimecontroller`, `endtimecontroller`) VALUES
(42, 'gym', '12/4/2022', '3:45', '4:35'),
(43, 'nnnnnnnnnnnnn', '2022-12-14', '9:27 PM', '11:27 PM'),
(44, 'tha', '2022-12-13', '9:28 PM', '11:28 PM');

-- --------------------------------------------------------

--
-- Table structure for table `addexercise`
--

CREATE TABLE `addexercise` (
  `id` int(11) NOT NULL,
  `nameexercise` varchar(255) CHARACTER SET utf8 NOT NULL,
  `durationexercise` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `call`
--

CREATE TABLE `call` (
  `id` int(11) NOT NULL,
  `phoneNumber` varchar(255) CHARACTER SET utf8 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `call`
--

INSERT INTO `call` (`id`, `phoneNumber`) VALUES
(1, '0976565');

-- --------------------------------------------------------

--
-- Table structure for table `fitness_level`
--

CREATE TABLE `fitness_level` (
  `id` int(11) NOT NULL,
  `Age` varchar(255) CHARACTER SET utf8 NOT NULL,
  `weight` varchar(255) CHARACTER SET utf8 NOT NULL,
  `height` varchar(255) CHARACTER SET utf8 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `fitness_level`
--

INSERT INTO `fitness_level` (`id`, `Age`, `weight`, `height`) VALUES
(35, '44', '342', '554'),
(36, '7', '55', '444'),
(37, '', '', ''),
(38, '', '', ''),
(39, '', '', ''),
(40, '', '', ''),
(41, '', '', ''),
(42, '', '', ''),
(43, '', '', ''),
(44, '', '', ''),
(45, '', '', ''),
(46, '', '', ''),
(47, '', '', ''),
(48, '', '', ''),
(49, '', '', ''),
(50, '', '', ''),
(51, '', '', ''),
(52, '', '', ''),
(53, '', '', ''),
(54, '', '', ''),
(55, '', '', ''),
(56, '', '', ''),
(57, '', '', ''),
(58, '', '', ''),
(59, '', '', ''),
(60, '', '', ''),
(61, '', '', ''),
(62, '', '', ''),
(63, '', '', ''),
(64, '', '', ''),
(65, '', '', ''),
(66, '', '', ''),
(67, '', '', ''),
(68, '', '', ''),
(69, '', '', ''),
(70, '', '', ''),
(71, '', '', ''),
(72, '', '', ''),
(73, '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `lunchemail`
--

CREATE TABLE `lunchemail` (
  `id` int(11) NOT NULL,
  `controllerTo` varchar(255) CHARACTER SET utf8 NOT NULL,
  `controllerSubject` varchar(255) CHARACTER SET utf8 NOT NULL,
  `controllerMessage` varchar(255) CHARACTER SET utf8 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `lunchemail`
--

INSERT INTO `lunchemail` (`id`, `controllerTo`, `controllerSubject`, `controllerMessage`) VALUES
(1, 'ahmad@gmail.com', 'email', 'subject email');

-- --------------------------------------------------------

--
-- Table structure for table `ratee`
--

CREATE TABLE `ratee` (
  `id` int(11) NOT NULL,
  `rate` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `ratee`
--

INSERT INTO `ratee` (`id`, `rate`) VALUES
(131, 5);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `username` varchar(255) CHARACTER SET utf8 NOT NULL,
  `city` varchar(255) CHARACTER SET utf8 NOT NULL,
  `email` varchar(255) CHARACTER SET utf8 NOT NULL,
  `password` varchar(255) CHARACTER SET utf8 NOT NULL,
  `confirm_password` varchar(255) CHARACTER SET utf8 NOT NULL,
  `verfiycode` varchar(255) CHARACTER SET utf8 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `username`, `city`, `email`, `password`, `confirm_password`, `verfiycode`) VALUES
(1, 'thara', 'Nubles', 'thara123@gmail.com', '12ss12', '12ss12', ''),
(2, 'tharashehadeh123', 'ramallh', 'tharashehadeh@gmail.com', '12345', '12345', ''),
(3, 'ahmad', 'nubles', 'ahmad@gmail.com', '1234', '1234', ''),
(4, 'thara', 'rammalllah', 'tharashehadeh1@gmail.com', '123', '123', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `aboutyourselfs`
--
ALTER TABLE `aboutyourselfs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `activity`
--
ALTER TABLE `activity`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `adddite`
--
ALTER TABLE `adddite`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `addevent`
--
ALTER TABLE `addevent`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `addexercise`
--
ALTER TABLE `addexercise`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `call`
--
ALTER TABLE `call`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `fitness_level`
--
ALTER TABLE `fitness_level`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `lunchemail`
--
ALTER TABLE `lunchemail`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ratee`
--
ALTER TABLE `ratee`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `aboutyourselfs`
--
ALTER TABLE `aboutyourselfs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56;

--
-- AUTO_INCREMENT for table `activity`
--
ALTER TABLE `activity`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `adddite`
--
ALTER TABLE `adddite`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `addevent`
--
ALTER TABLE `addevent`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT for table `addexercise`
--
ALTER TABLE `addexercise`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `call`
--
ALTER TABLE `call`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `fitness_level`
--
ALTER TABLE `fitness_level`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=74;

--
-- AUTO_INCREMENT for table `lunchemail`
--
ALTER TABLE `lunchemail`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `ratee`
--
ALTER TABLE `ratee`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=132;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
