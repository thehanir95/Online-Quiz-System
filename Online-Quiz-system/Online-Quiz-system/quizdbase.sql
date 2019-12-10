-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 01, 2019 at 07:18 PM
-- Server version: 10.1.35-MariaDB
-- PHP Version: 7.2.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `quizdbase`
--

-- --------------------------------------------------------

--
-- Table structure for table `answers`
--

CREATE TABLE `answers` (
  `aid` int(250) NOT NULL,
  `answer` varchar(250) NOT NULL,
  `ans_id` int(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `answers`
--

INSERT INTO `answers` (`aid`, `answer`, `ans_id`) VALUES
(1, 'Agave\r\n', 1),
(2, 'Grape\r\n', 1),
(3, 'Peach', 1),
(4, 'Plum', 1),
(5, 'Dorothy Day\r\n', 2),
(6, 'Rosa Parks', 2),
(7, 'Jane Fonda', 2),
(8, 'Emma Wilard\r\n', 2),
(9, 'I\r\n', 3),
(10, 'O\r\n', 3),
(11, 'W', 3),
(12, 'A', 3),
(13, 'Master\r\n', 4),
(14, 'Cardinal\r\n', 4),
(15, 'Preacher', 4),
(16, 'Pope', 4),
(17, 'Ladder\r\n', 5),
(18, 'Halstone\r\n', 5),
(19, 'Apple', 5),
(20, 'Rock', 5);

-- --------------------------------------------------------

--
-- Table structure for table `questions`
--

CREATE TABLE `questions` (
  `qid` int(250) NOT NULL,
  `question` varchar(250) NOT NULL,
  `ans_id` int(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `questions`
--

INSERT INTO `questions` (`qid`, `question`, `ans_id`) VALUES
(1, 'What plant is traditionally the primary ingredient in wine?\r\n', 1),
(2, 'Which civil rights activist was famous for refusing to give up her seat on a bus?\r\n', 5),
(3, 'Which of these letters is not a vowel?\r\n', 9),
(4, 'What is the head of the Roman Catholic Church called?\r\n', 13),
(5, 'Newton is said to have been inspired by what to describe the theory of gravity?\r\n', 17);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `uid` int(250) NOT NULL,
  `username` varchar(250) NOT NULL,
  `totalques` int(250) NOT NULL,
  `answerscorrect` int(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`uid`, `username`, `totalques`, `answerscorrect`) VALUES
(1, 'kamal', 5, 4),
(2, 'kamal', 5, 4),
(3, 'sunil', 5, 1),
(4, 'kamal', 5, 2),
(5, 'kamal', 5, 2),
(6, 'kamal', 5, 2),
(7, 'kamal', 5, 2),
(8, 'kamal', 5, 2),
(9, 'kamal', 5, 2),
(10, 'kamal', 5, 2),
(11, 'kamal', 5, 2),
(12, 'kamal', 5, 2),
(13, 'kamal', 5, 0),
(14, 'kamal', 5, 0),
(15, 'kamal', 5, 0),
(16, 'kamal', 5, 0),
(17, 'kamal', 5, 0),
(18, 'kamal', 5, 0),
(19, 'kamal', 5, 0),
(20, 'kamal', 5, 0),
(21, 'kamal', 5, 0),
(22, 'kamal', 5, 0),
(23, 'kamal', 5, 0),
(24, 'kamal', 5, 0),
(25, 'kamal', 5, 0),
(26, 'kamal', 5, 0),
(27, 'kamal', 5, 0),
(28, 'kamal', 5, 0),
(29, 'kamal', 5, 0),
(30, 'kamal', 5, 0),
(31, 'kamal', 5, 1),
(32, 'kamal', 5, 0),
(33, 'kamal', 5, 1),
(34, 'kamal', 5, 0),
(35, 'kamal', 5, 0),
(36, 'kamal', 5, 1),
(37, 'sunil', 5, 0),
(38, 'sunil', 5, 0),
(39, 'sunil', 5, 0),
(40, 'sunil', 5, 0),
(41, 'sunil', 5, 0),
(42, 'sunil', 5, 0),
(43, 'sunil', 5, 0),
(44, 'sunil', 5, 0),
(45, 'sunil', 5, 0),
(46, 'sunil', 5, 0),
(47, 'sunil', 5, 1),
(48, 'sunil', 5, 1),
(49, 'sunil', 5, 1),
(50, 'sunil', 5, 1),
(51, 'sunil', 5, 0),
(52, 'sunil', 5, 0),
(53, 'kamal', 5, 0),
(54, 'kamal', 5, 2),
(55, 'kamal', 5, 2),
(56, 'kamal', 5, 2),
(57, 'kamal', 5, 2);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `answers`
--
ALTER TABLE `answers`
  ADD PRIMARY KEY (`aid`);

--
-- Indexes for table `questions`
--
ALTER TABLE `questions`
  ADD PRIMARY KEY (`qid`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`uid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `answers`
--
ALTER TABLE `answers`
  MODIFY `aid` int(250) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `questions`
--
ALTER TABLE `questions`
  MODIFY `qid` int(250) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `uid` int(250) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=58;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
