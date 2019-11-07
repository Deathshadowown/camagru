-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Nov 06, 2019 at 01:39 PM
-- Server version: 8.0.17
-- PHP Version: 7.3.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cam`
--

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `commentID` int(11) NOT NULL,
  `comment` varchar(140) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `commentOn` int(11) NOT NULL DEFAULT '0',
  `commentBy` int(11) NOT NULL DEFAULT '0',
  `commentAt` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`commentID`, `comment`, `commentOn`, `commentBy`, `commentAt`) VALUES
(1, 'THAT IS awsome', 4, 1, 0),
(2, 'wee', 21, 2, 0),
(3, 'wee', 33, 6, 0),
(4, 'hello', 35, 6, 0),
(5, 'comment', 38, 6, 0),
(6, 'hello', 40, 6, 0),
(7, 'cool here', 50, 5, 0);

-- --------------------------------------------------------

--
-- Table structure for table `follow`
--

CREATE TABLE `follow` (
  `followID` int(11) NOT NULL,
  `sender` int(11) NOT NULL,
  `receiver` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `follow`
--

INSERT INTO `follow` (`followID`, `sender`, `receiver`) VALUES
(4, 1, 2),
(5, 2, 1),
(7, 2, 4),
(8, 6, 5),
(10, 7, 5),
(11, 7, 6),
(12, 5, 7),
(13, 5, 7),
(14, 5, 6);

-- --------------------------------------------------------

--
-- Table structure for table `likes`
--

CREATE TABLE `likes` (
  `likeID` int(11) NOT NULL,
  `likeBy` int(11) NOT NULL DEFAULT '0',
  `likeOn` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `likes`
--

INSERT INTO `likes` (`likeID`, `likeBy`, `likeOn`) VALUES
(2, 2, 4),
(3, 1, 5),
(4, 2, 2),
(5, 2, 16),
(6, 2, 11),
(7, 1, 11),
(8, 6, 33),
(9, 5, 35),
(10, 6, 35),
(12, 7, 48),
(13, 7, 45),
(14, 5, 38),
(16, 5, 40),
(17, 5, 52),
(18, 5, 49),
(20, 5, 54),
(21, 5, 56);

-- --------------------------------------------------------

--
-- Table structure for table `messages`
--

CREATE TABLE `messages` (
  `messageID` int(11) NOT NULL,
  `message` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `messageTo` int(11) NOT NULL DEFAULT '0',
  `messageFrom` int(11) NOT NULL DEFAULT '0',
  `messageOn` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `status` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `messages`
--

INSERT INTO `messages` (`messageID`, `message`, `messageTo`, `messageFrom`, `status`) VALUES
(1, 'hello', 1, 2, 1),
(2, 'hello', 1, 2, 1),
(3, 'hello', 1, 3, 1),
(4, 'hello', 2, 1, 1),
(6, 'here i am', 2, 1, 1),
(7, 'wee', 1, 2, 1),
(8, 'dfdf', 2, 1, 1),
(9, 'dfdsfsdf', 2, 1, 1),
(10, 'hello', 6, 5, 1),
(11, 'yolo', 5, 6, 1),
(12, 'yolo', 6, 5, 0);

-- --------------------------------------------------------

--
-- Table structure for table `notification`
--

CREATE TABLE `notification` (
  `ID` int(11) NOT NULL,
  `notificationFor` int(11) NOT NULL DEFAULT '0',
  `notificationFrom` int(11) NOT NULL DEFAULT '0',
  `target` int(11) NOT NULL DEFAULT '0',
  `type` enum('follow','retweet','like','mention') CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `status` int(11) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `notification`
--

INSERT INTO `notification` (`ID`, `notificationFor`, `notificationFrom`, `target`, `type`, `status`) VALUES
(1, 1, 2, 2, 'follow', 1),
(2, 1, 2, 2, 'follow', 1),
(3, 1, 2, 2, 'follow', 1),
(4, 1, 2, 2, 'follow', 1),
(5, 1, 2, 2, 'follow', 1),
(6, 1, 2, 2, 'follow', 1),
(7, 2, 1, 1, 'follow', 1),
(8, 2, 1, 1, 'follow', 1),
(9, 2, 1, 1, 'follow', 1),
(10, 2, 1, 1, 'follow', 1),
(11, 2, 1, 1, 'follow', 1),
(12, 1, 2, 2, 'follow', 1),
(13, 1, 2, 2, 'retweet', 1),
(14, 1, 2, 2, 'like', 1),
(15, 1, 1, 5, 'retweet', 1),
(16, 2, 1, 1, 'follow', 1),
(17, 2, 1, 1, 'follow', 1),
(18, 2, 1, 1, 'follow', 1),
(19, 2, 1, 1, 'follow', 1),
(20, 2, 1, 1, 'follow', 1),
(21, 2, 1, 1, 'follow', 1),
(22, 2, 1, 1, 'follow', 1),
(23, 2, 1, 1, 'follow', 1),
(24, 2, 1, 1, 'follow', 1),
(25, 2, 1, 1, 'follow', 1),
(26, 2, 1, 1, 'follow', 1),
(27, 2, 1, 1, 'follow', 1),
(28, 2, 1, 1, 'follow', 1),
(29, 2, 1, 1, 'follow', 1),
(30, 2, 1, 1, 'follow', 1),
(31, 2, 1, 1, 'follow', 1),
(32, 2, 1, 1, 'follow', 1),
(33, 2, 1, 1, 'follow', 1),
(34, 2, 1, 1, 'follow', 1),
(35, 2, 1, 1, 'follow', 1),
(36, 2, 1, 1, 'follow', 1),
(37, 2, 1, 1, 'follow', 1),
(38, 2, 1, 1, 'follow', 1),
(39, 2, 1, 1, 'follow', 1),
(40, 2, 1, 1, 'follow', 1),
(41, 2, 1, 1, 'follow', 1),
(42, 2, 1, 1, 'follow', 1),
(43, 2, 1, 1, 'follow', 1),
(44, 2, 1, 1, 'follow', 1),
(45, 2, 1, 1, 'follow', 1),
(46, 2, 1, 1, 'follow', 1),
(47, 2, 1, 1, 'follow', 1),
(48, 2, 1, 1, 'follow', 1),
(49, 2, 1, 1, 'follow', 1),
(50, 2, 1, 1, 'follow', 1),
(51, 2, 1, 1, 'follow', 1),
(52, 2, 1, 1, 'follow', 1),
(53, 2, 1, 1, 'follow', 1),
(54, 2, 1, 1, 'follow', 1),
(55, 2, 1, 1, 'follow', 1),
(56, 2, 1, 1, 'follow', 1),
(57, 2, 1, 1, 'follow', 1),
(58, 2, 1, 1, 'follow', 1),
(59, 2, 1, 1, 'follow', 1),
(60, 2, 1, 1, 'follow', 1),
(61, 2, 1, 1, 'follow', 1),
(62, 2, 1, 1, 'follow', 1),
(63, 2, 1, 1, 'follow', 1),
(64, 2, 1, 1, 'follow', 1),
(65, 2, 1, 1, 'follow', 1),
(66, 2, 1, 1, 'follow', 1),
(67, 2, 1, 1, 'follow', 1),
(68, 2, 1, 1, 'follow', 1),
(69, 2, 1, 1, 'follow', 1),
(70, 2, 1, 1, 'follow', 1),
(71, 2, 1, 1, 'follow', 1),
(72, 2, 1, 1, 'follow', 1),
(73, 1, 2, 2, 'follow', 1),
(74, 1, 2, 2, 'follow', 1),
(75, 1, 2, 2, 'follow', 1),
(76, 1, 2, 2, 'follow', 1),
(77, 1, 2, 2, 'follow', 1),
(78, 1, 2, 2, 'follow', 1),
(79, 1, 2, 2, 'follow', 1),
(80, 1, 2, 2, 'follow', 1),
(81, 1, 2, 2, 'follow', 1),
(82, 1, 2, 2, 'follow', 1),
(83, 1, 2, 2, 'follow', 1),
(84, 1, 2, 2, 'follow', 1),
(85, 1, 2, 2, 'follow', 1),
(86, 1, 2, 2, 'follow', 1),
(87, 1, 2, 2, 'follow', 1),
(88, 1, 2, 2, 'follow', 1),
(89, 1, 2, 2, 'follow', 1),
(90, 1, 2, 2, 'follow', 1),
(91, 1, 2, 2, 'follow', 1),
(92, 1, 2, 2, 'follow', 1),
(93, 1, 2, 2, 'follow', 1),
(94, 1, 2, 2, 'follow', 1),
(95, 1, 2, 2, 'follow', 1),
(96, 1, 2, 2, 'follow', 1),
(97, 1, 2, 2, 'follow', 1),
(98, 1, 2, 2, 'follow', 1),
(99, 1, 2, 2, 'follow', 1),
(100, 1, 2, 2, 'follow', 1),
(101, 1, 2, 2, 'follow', 1),
(102, 1, 2, 2, 'follow', 1),
(103, 1, 2, 2, 'follow', 1),
(104, 1, 2, 2, 'follow', 1),
(105, 1, 2, 2, 'follow', 1),
(106, 1, 2, 2, 'follow', 1),
(107, 1, 2, 2, 'follow', 1),
(108, 1, 2, 2, 'follow', 1),
(109, 1, 2, 2, 'follow', 1),
(110, 1, 2, 2, 'follow', 1),
(111, 1, 2, 2, 'follow', 1),
(112, 1, 2, 2, 'follow', 1),
(113, 1, 2, 2, 'follow', 1),
(114, 1, 2, 2, 'follow', 1),
(115, 1, 2, 2, 'follow', 1),
(116, 1, 2, 2, 'follow', 1),
(117, 1, 2, 2, 'follow', 1),
(118, 1, 2, 2, 'follow', 1),
(119, 1, 2, 2, 'follow', 1),
(120, 1, 2, 2, 'follow', 1),
(121, 1, 2, 2, 'follow', 1),
(122, 1, 2, 2, 'follow', 1),
(123, 1, 2, 2, 'follow', 1),
(124, 1, 2, 2, 'follow', 1),
(125, 1, 2, 2, 'follow', 1),
(126, 1, 2, 2, 'follow', 1),
(127, 1, 2, 2, 'follow', 1),
(128, 1, 2, 2, 'follow', 1),
(129, 1, 2, 2, 'follow', 1),
(130, 1, 2, 2, 'follow', 1),
(131, 1, 2, 2, 'follow', 1),
(132, 1, 2, 2, 'follow', 1),
(133, 1, 2, 2, 'follow', 1),
(134, 1, 2, 2, 'follow', 1),
(135, 1, 2, 2, 'follow', 1),
(136, 1, 2, 2, 'follow', 1),
(137, 1, 2, 2, 'follow', 1),
(138, 1, 2, 2, 'follow', 1),
(139, 1, 2, 2, 'follow', 1),
(140, 1, 2, 2, 'follow', 1),
(141, 1, 2, 2, 'follow', 1),
(142, 1, 2, 2, 'follow', 1),
(143, 1, 2, 2, 'follow', 1),
(144, 1, 2, 2, 'follow', 1),
(145, 1, 2, 2, 'follow', 1),
(146, 1, 2, 2, 'follow', 1),
(147, 1, 2, 2, 'follow', 1),
(148, 1, 2, 2, 'follow', 1),
(149, 2, 1, 1, 'follow', 1),
(150, 2, 3, 3, 'follow', 1),
(151, 2, 3, 3, 'follow', 1),
(152, 3, 1, 1, 'follow', 1),
(153, 3, 1, 1, 'follow', 1),
(154, 1, 2, 2, 'follow', 1),
(155, 1, 2, 2, 'follow', 1),
(156, 2, 2, 16, 'retweet', 1),
(157, 3, 2, 2, 'follow', 1),
(158, 2, 2, 22, 'retweet', 1),
(159, 2, 2, 21, 'retweet', 1),
(160, 1, 2, 2, 'follow', 1),
(161, 1, 2, 2, 'follow', 1),
(162, 1, 2, 2, 'follow', 1),
(163, 2, 1, 11, 'like', 1),
(164, 2, 1, 11, 'retweet', 1),
(165, 2, 4, 4, 'follow', 1),
(166, 4, 2, 2, 'follow', 0),
(167, 2, 4, 4, 'follow', 1),
(168, 2, 4, 4, 'follow', 1),
(169, 2, 4, 4, 'follow', 1),
(170, 4, 2, 2, 'follow', 0),
(171, 5, 6, 6, 'follow', 1),
(172, 6, 6, 33, 'retweet', 1),
(173, 6, 5, 5, 'follow', 1),
(174, 6, 5, 35, 'retweet', 1),
(175, 6, 5, 35, 'like', 1),
(176, 6, 5, 33, 'retweet', 1),
(177, 5, 6, 38, 'retweet', 1),
(178, 5, 5, 38, 'retweet', 1),
(179, 5, 7, 7, 'follow', 1),
(180, 6, 7, 7, 'follow', 1),
(181, 7, 7, 46, 'retweet', 1),
(182, 6, 7, 45, 'like', 1),
(183, 7, 5, 5, 'follow', 0),
(184, 7, 5, 5, 'follow', 0),
(185, 6, 5, 37, 'like', 0),
(186, 6, 5, 5, 'follow', 0),
(187, 5, 5, 50, 'retweet', 1),
(188, 5, 5, 52, 'retweet', 1),
(189, 5, 5, 54, 'retweet', 1),
(190, 5, 5, 56, 'retweet', 0);

-- --------------------------------------------------------

--
-- Table structure for table `trends`
--

CREATE TABLE `trends` (
  `trendID` int(11) NOT NULL,
  `hashtag` varchar(140) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `createdOn` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `trends`
--

INSERT INTO `trends` (`trendID`, `hashtag`) VALUES
(3, 'here'),
(1, 'php'),
(7, 'wee'),
(10, 'welcome'),
(6, 'woot');

-- --------------------------------------------------------

--
-- Table structure for table `tweets`
--

CREATE TABLE `tweets` (
  `tweetID` int(11) NOT NULL,
  `status` varchar(140) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `tweetBy` int(11) NOT NULL DEFAULT '0',
  `retweetID` int(11) DEFAULT '0',
  `retweetBy` int(11) DEFAULT '0',
  `tweetImage` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `likesCount` int(11) DEFAULT '0',
  `retweetCount` int(11) DEFAULT '0',
  `postedOn` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `retweetMsg` varchar(140) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tweets`
--

INSERT INTO `tweets` (`tweetID`, `status`, `tweetBy`, `retweetID`, `retweetBy`, `tweetImage`, `likesCount`, `retweetCount`, `retweetMsg`) VALUES
(1, 'hello', 0, 0, 0, '', 0, 0, NULL),
(2, '#php wee', 1, 0, 0, '', 1, 1, NULL),
(3, '', 1, 0, 0, 'users/xiaoguang-sun-cassie.jpg', 0, 0, NULL),
(4, 'hello', 2, 0, 0, '', 1, 0, NULL),
(5, '#here weee', 1, 0, 0, '', 1, 1, NULL),
(6, 'yes', 1, 0, 0, '', 0, 0, NULL),
(7, '#php wee', 1, 2, 2, '', 0, 1, ''),
(8, '#here weee', 1, 5, 1, '', 1, 1, 'dlsfklds'),
(9, '#php', 1, 0, 0, '', 0, 0, NULL),
(10, '#php wee', 2, 0, 0, '', 0, 0, NULL),
(11, '', 2, 0, 0, 'users/xiaoguang-sun-cassie.jpg', 2, 1, NULL),
(12, '#woot', 2, 0, 0, '', 0, 0, NULL),
(13, '#wee', 2, 0, 0, '', 0, 0, NULL),
(14, 'wee', 2, 0, 0, '', 0, 0, NULL),
(15, 'hello', 2, 0, 0, '', 0, 0, NULL),
(16, 'ertyertyer', 2, 0, 0, '', 1, 1, NULL),
(17, '#php wee', 3, NULL, NULL, '', NULL, NULL, NULL),
(18, 'hello', 3, 0, 0, '', 0, 0, NULL),
(19, 'wee', 2, 0, 0, '', 0, 0, NULL),
(20, 'ertyertyer', 2, 16, 2, '', 0, 1, 'wee'),
(21, '#php wee', 2, 0, 0, '', 0, 1, NULL),
(22, '#welcome here', 2, 0, 0, '', 0, 1, NULL),
(23, '#welcome here', 2, 22, 2, '', 0, 1, 'wee'),
(24, '#php wee', 2, 21, 2, '', 0, 1, 'wee'),
(25, '#php', 2, NULL, NULL, '', NULL, NULL, NULL),
(30, '', 1, 0, 0, 'users/xiaoguang-sun-cassie.jpg', 0, 0, NULL),
(31, '', 2, 11, 1, 'users/xiaoguang-sun-cassie.jpg', 2, 1, 'great image'),
(32, '#php wee', 6, 0, 0, '', 0, 0, NULL),
(33, '#php wee', 6, 0, 0, '', 1, 2, NULL),
(34, '', 6, 0, 0, 'users/xiaoguang-sun-cassie.jpg', 0, 0, NULL),
(35, '#php wee', 6, 33, 6, '', 3, 2, 'hello'),
(36, '#php wee', 6, 35, 5, '', 1, 2, 'yes'),
(37, '#php wee', 6, 33, 5, '', 1, 2, 'wee'),
(38, 'here we are', 5, 0, 0, '', 1, 2, NULL),
(39, 'here we are', 5, 38, 6, '', 1, 1, 'cool stuff'),
(40, 'here we are', 5, 38, 5, '', 2, 2, 'good stuff'),
(41, 'hello', 6, 0, 0, '', 0, 0, NULL),
(42, 'dsfsd', 6, 0, 0, '', 0, 0, NULL),
(43, 'dsfdsf', 6, 0, 0, '', 0, 0, NULL),
(44, 'dsfdsf', 6, 0, 0, '', 0, 0, NULL),
(45, 'sdfds', 6, 0, 0, '', 1, 0, NULL),
(46, 'wee', 7, 0, 0, '', 0, 1, NULL),
(47, 'wee', 7, 46, 7, '', 0, 1, 'wee'),
(48, 'wewe', 7, 0, 0, '', 1, 0, NULL),
(49, 'yolo', 5, 0, 0, '', 1, 0, NULL),
(50, 'hello', 5, 0, 0, '', 0, 1, NULL),
(51, 'hello', 5, 50, 5, '', 0, 1, 'hi'),
(53, '', 5, 52, 5, 'users/xiaoguang-sun-cassie.jpg', 0, 1, 'wee'),
(54, '', 5, 0, 0, 'users/xiaoguang-sun-cassie.jpg', 1, 1, NULL),
(55, '', 5, 54, 5, 'users/xiaoguang-sun-cassie.jpg', 1, 1, 'wee'),
(56, 'wee', 5, 0, 0, '', 1, 1, NULL),
(57, 'wee', 5, 56, 5, '', 1, 1, '');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` int(11) NOT NULL,
  `username` varchar(40) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `email` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `password` varchar(32) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `screenName` varchar(40) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `profileImage` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `profileCover` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `following` int(11) NOT NULL DEFAULT '0',
  `followers` int(11) NOT NULL DEFAULT '0',
  `bio` varchar(140) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `country` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `website` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `username`, `email`, `password`, `screenName`, `profileImage`, `profileCover`, `following`, `followers`, `bio`, `country`, `website`) VALUES
(5, 'Deathshadow', 'shane@gmail.com', '5f4dcc3b5aa765d61d8327deb882cf99', 'shane', 'users/8e7dc321c4500866e405ad920ecbdd1d.jpg', 'users/c80e3fd505980aae9704c6f2bd9d21bb.jpg', 3, 2, '', '', ''),
(6, 'ashley', 'ashley@gmail.com', '5f4dcc3b5aa765d61d8327deb882cf99', 'ashley', 'assets/images/defaultProfileImage.png', 'assets/images/defaultCoverImage.png', 1, 2, NULL, NULL, NULL),
(7, 'girlown', 'girl@gmail.com', '5f4dcc3b5aa765d61d8327deb882cf99', 'girl', 'assets/images/defaultProfileImage.png', 'assets/images/defaultCoverImage.png', 2, 2, NULL, NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`commentID`);

--
-- Indexes for table `follow`
--
ALTER TABLE `follow`
  ADD PRIMARY KEY (`followID`);

--
-- Indexes for table `likes`
--
ALTER TABLE `likes`
  ADD PRIMARY KEY (`likeID`);

--
-- Indexes for table `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`messageID`);

--
-- Indexes for table `notification`
--
ALTER TABLE `notification`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `trends`
--
ALTER TABLE `trends`
  ADD PRIMARY KEY (`trendID`),
  ADD UNIQUE KEY `hashtag` (`hashtag`);

--
-- Indexes for table `tweets`
--
ALTER TABLE `tweets`
  ADD PRIMARY KEY (`tweetID`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `commentID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `follow`
--
ALTER TABLE `follow`
  MODIFY `followID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `likes`
--
ALTER TABLE `likes`
  MODIFY `likeID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `messages`
--
ALTER TABLE `messages`
  MODIFY `messageID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `notification`
--
ALTER TABLE `notification`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=191;

--
-- AUTO_INCREMENT for table `trends`
--
ALTER TABLE `trends`
  MODIFY `trendID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `tweets`
--
ALTER TABLE `tweets`
  MODIFY `tweetID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=58;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
