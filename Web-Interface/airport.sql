-- phpMyAdmin SQL Dump
-- version 4.2.7.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jul 21, 2015 at 08:50 AM
-- Server version: 5.6.20
-- PHP Version: 5.5.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `airport`
--

-- --------------------------------------------------------

--
-- Table structure for table `flight`
--

CREATE TABLE IF NOT EXISTS `flight` (
`id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `source` varchar(100) NOT NULL,
  `destination` varchar(100) NOT NULL,
  `time` varchar(20) NOT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=36 ;

--
-- Dumping data for table `flight`
--

INSERT INTO `flight` (`id`, `name`, `source`, `destination`, `time`, `date`) VALUES
(1, 'Xebia Air', 'chd', 'Delhi', '2022', '2015-06-18'),
(5, 'AirAsia', 'chd', 'delhi', '2345', '0000-00-00'),
(35, 'Parminder S. Sethi', 'bangalore', 'ggr', '0203', '2015-01-09');

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE IF NOT EXISTS `login` (
  `type` tinyint(1) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`type`, `username`, `password`) VALUES
(0, 'jatin', '00'),
(1, 'yogesh', '11'),
(0, 'parminder', '00'),
(1, 'vaibhav', '11\r\n'),
(1, 'parminder', '11\r\n');

-- --------------------------------------------------------

--
-- Table structure for table `security_details`
--

CREATE TABLE IF NOT EXISTS `security_details` (
`id` int(11) NOT NULL,
  `number` int(11) NOT NULL DEFAULT '0',
  `cat` varchar(20) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=146 ;

--
-- Dumping data for table `security_details`
--

INSERT INTO `security_details` (`id`, `number`, `cat`) VALUES
(1, 0, 'emergencyCase'),
(2, 0, 'emergencyCase'),
(3, 0, 'emergencyCase'),
(4, 0, 'emergencyCase'),
(5, 0, 'normalCase'),
(6, 0, 'normalCase'),
(7, 0, 'normalCase'),
(8, 0, 'normalCase'),
(9, 0, 'normalCase'),
(10, 0, 'normalCase'),
(11, 0, 'emergencyCase'),
(12, 0, 'emergencyCase'),
(13, 0, 'emergencyCase'),
(14, 0, 'emergencyCase'),
(15, 0, 'emergencyCase'),
(16, 0, 'emergencyCase'),
(17, 0, 'emergencyCase'),
(18, 0, 'emergencyCase'),
(19, 0, 'emergencyCase'),
(20, 0, 'emergencyCase'),
(21, 0, 'normalCase'),
(22, 0, 'normalCase'),
(23, 0, 'normalCase'),
(24, 0, 'normalCase'),
(25, 0, 'normalCase'),
(26, 0, 'normalCase'),
(27, 0, 'normalCase'),
(28, 0, 'normalCase'),
(29, 0, 'normalCase'),
(30, 0, 'normalCase'),
(31, 0, 'normalCase'),
(32, 0, 'normalCase'),
(33, 0, 'normalCase'),
(34, 0, 'normalCase'),
(35, 0, 'normalCase'),
(36, 0, 'emergencyCase'),
(37, 0, 'emergencyCase'),
(38, 0, 'emergencyCase'),
(39, 0, 'emergencyCase'),
(40, 0, 'emergencyCase'),
(41, 0, 'emergencyCase'),
(42, 0, 'emergencyCase'),
(43, 0, 'emergencyCase'),
(44, 0, 'emergencyCase'),
(45, 0, 'emergencyCase'),
(46, 0, 'emergencyCase'),
(47, 0, 'emergencyCase'),
(48, 0, 'emergencyCase'),
(49, 0, 'emergencyCase'),
(50, 0, 'emergencyCase'),
(51, 0, 'emergencyCase'),
(52, 0, 'emergencyCase'),
(53, 0, 'emergencyCase'),
(54, 0, 'emergencyCase'),
(55, 0, 'emergencyCase'),
(56, 0, 'emergencyCase'),
(57, 0, 'emergencyCase'),
(58, 0, 'normalCase'),
(59, 0, 'normalCase'),
(60, 0, 'normalCase'),
(61, 0, 'normalCase'),
(62, 0, 'normalCase'),
(63, 0, 'normalCase'),
(64, 0, 'normalCase'),
(65, 0, 'normalCase'),
(66, 0, 'normalCase'),
(67, 0, 'normalCase'),
(68, 0, 'normalCase'),
(69, 0, 'normalCase'),
(70, 0, 'normalCase'),
(71, 0, 'normalCase'),
(72, 0, 'normalCase'),
(73, 0, 'normalCase'),
(74, 0, 'normalCase'),
(75, 0, 'normalCase'),
(76, 0, 'normalCase'),
(77, 0, 'normalCase'),
(78, 0, 'normalCase'),
(79, 0, 'normalCase'),
(80, 0, 'normalCase'),
(81, 0, 'normalCase'),
(82, 0, 'normalCase'),
(83, 0, 'normalCase'),
(84, 0, 'normalCase'),
(85, 0, 'normalCase'),
(86, 0, 'normalCase'),
(87, 0, 'normalCase'),
(88, 0, 'normalCase'),
(89, 0, 'normalCase'),
(90, 0, 'normalCase'),
(91, 0, 'emergencyCase'),
(92, 0, 'emergencyCase'),
(93, 0, 'emergencyCase'),
(94, 0, 'emergencyCase'),
(95, 0, 'emergencyCase'),
(96, 0, 'emergencyCase'),
(97, 0, 'emergencyCase'),
(98, 0, 'emergencyCase'),
(99, 0, 'emergencyCase'),
(100, 0, 'emergencyCase'),
(101, 0, 'emergencyCase'),
(102, 0, 'emergencyCase'),
(103, 0, 'emergencyCase'),
(104, 0, 'emergencyCase'),
(105, 0, 'emergencyCase'),
(106, 0, 'emergencyCase'),
(107, 0, 'emergencyCase'),
(108, 0, 'emergencyCase'),
(109, 0, 'emergencyCase'),
(110, 0, 'emergencyCase'),
(111, 0, 'normalCase'),
(112, 0, 'normalCase'),
(113, 0, 'normalCase'),
(114, 0, 'normalCase'),
(115, 0, 'normalCase'),
(116, 0, 'normalCase'),
(117, 0, 'normalCase'),
(118, 0, 'normalCase'),
(119, 0, 'normalCase'),
(120, 0, 'normalCase'),
(121, 0, 'normalCase'),
(122, 0, 'normalCase'),
(123, 0, 'normalCase'),
(124, 0, 'normalCase'),
(125, 0, 'normalCase'),
(126, 0, 'normalCase'),
(127, 0, 'normalCase'),
(128, 0, 'normalCase'),
(129, 0, 'normalCase'),
(130, 0, 'normalCase'),
(131, 0, 'normalCase'),
(132, 0, 'normalCase'),
(133, 0, 'normalCase'),
(134, 0, 'normalCase'),
(135, 0, 'normalCase'),
(136, 0, 'normalCase'),
(137, 0, 'normalCase'),
(138, 0, 'normalCase'),
(139, 0, 'normalCase'),
(140, 0, 'normalCase'),
(141, 0, 'normalCase'),
(142, 0, 'normalCase'),
(143, 0, 'normalCase'),
(144, 0, 'normalCase'),
(145, 0, 'normalCase');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE IF NOT EXISTS `user` (
`id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `flight_id` int(11) NOT NULL,
  `lane_no` int(11) NOT NULL DEFAULT '0',
  `board` tinyint(1) NOT NULL DEFAULT '0',
  `pnr` varchar(50) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=39 ;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `name`, `phone`, `flight_id`, `lane_no`, `board`, `pnr`) VALUES
(1, 'Parminder S. Sethipp', '9634082867', 35, 0, 0, 'x'),
(2, 'Parminder S. Sethi', '9634082867', 5, 0, 0, '8'),
(3, 'Parminder S. Sethi', '9634082867', 1, 0, 0, '88888'),
(4, 'Parminder S. Sethi', '9634082867', 1, 0, 0, '33'),
(5, 'Parminder S. Sethi', '9634082867', 1, 0, 0, 'sd'),
(6, 'Parminder S. Sethi', '9634082867', 1, 0, 0, 'df'),
(7, 'Parminder S. Sethi', '9634082867', 1, 0, 0, '8520'),
(8, 'Parminder S. Sethi', '9634082867', 1, 0, 0, 'rrr'),
(9, 'Parminder S. Sethi', '9634082867', 1, 0, 0, 'llg'),
(10, 'e', '9634082867', 1, 0, 0, 'ger'),
(11, 'Parminder S. Sethi', '9634082867', 1, 0, 0, 'he'),
(12, 'Parminder S. Sethi', '9634082867', 1, 0, 0, 'dfdsggg'),
(13, 'Parminder S. Sethi', '9634082867', 1, 0, 0, 'fdf'),
(14, 'e', '9634082867', 1, 0, 0, 'ergdfhcg'),
(15, 'Parminder S. Sethi', '9634082867', 1, 0, 0, ''),
(16, 'Parminder S. Sethi', '9634082867', 1, 0, 0, 'wqedfghg'),
(17, 'Parminder S. Sethi', '9634082867', 1, 0, 0, 'sf'),
(18, 'Parminder S. Sethi', '9634082867', 1, 0, 0, ''),
(19, 'Parminder S. Sethi', '9634082867', 1, 0, 0, '77'),
(20, 'Parminder S. Sethi', '9634082867', 1, 0, 0, 'sggr'),
(21, 'Parminder S. Sethi', '9634082867', 35, 0, 0, 'nkn'),
(22, 'Parminder S. Sethi', '9634082867', 1, 0, 0, 's'),
(23, 'Parminder S. Sethi', '9634082867', 1, 0, 0, '222'),
(24, 'Parminder S. Sethi', '9634082867', 1, 0, 0, 'wsdc'),
(25, 'Parminder S. Sethi', '9634082867', 1, 0, 0, ';;;kefm'),
(26, 'Parminder S. Sethi', '9634082867', 1, 0, 0, 'sgs'),
(27, 'Parminder S. Sethi', '9634082867', 1, 0, 0, '7\\'),
(28, 'Parminder S. Sethi', '9634082867', 1, 0, 0, 'qwrsdgcvnbn'),
(29, 'Parminder S. Sethi', '9634082867', 1, 0, 0, '23456'),
(30, 'Parminder S. Sethi', '9634082867', 1, 0, 0, '22'),
(31, 'Parminder S. Sethi', '9634082867', 1, 0, 0, '2232'),
(32, 'Parminder S. Sethi', '9634082867', 1, 0, 0, '234567890'),
(33, 'Parminder S. Sethi', '9634082867', 1, 0, 0, 'dfds666'),
(34, 'John', '9634082867', 1, 0, 0, 'XebiaAir101'),
(35, 'John', '9634082867', 0, 0, 0, 'XebiaAir101'),
(36, 'e', '9634082867', 1, 0, 0, 'ghrwghr'),
(37, 'Parminder S. Sethi', '9634082867', 1, 0, 0, '48848484'),
(38, 'Parminder S. Sethi', '9634082867', 1, 0, 0, 'uuuuuu');

-- --------------------------------------------------------

--
-- Table structure for table `uuid`
--

CREATE TABLE IF NOT EXISTS `uuid` (
  `uuid` varchar(500) NOT NULL,
  `user_id` int(11) NOT NULL,
  `loaded` tinyint(1) NOT NULL DEFAULT '0',
  `status` varchar(2) NOT NULL DEFAULT 'a',
  `no` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `uuid`
--

INSERT INTO `uuid` (`uuid`, `user_id`, `loaded`, `status`, `no`) VALUES
(' ffe4d519-d016-599e-8ec0-ff785b0be9ba', 5, 0, 'a', 0),
(' ffe4d519d016599e8ec0ff785b0be9ba', 35, 0, 'a', 0),
('2f234454cf6d4a0fadf2f4911ba9ffa6', 3, 0, 'a', 0),
('8492e75f-4fd6-469d-b132-043fe94921d8', 6, 0, 'b', 0),
('eqwq444448', 37, 0, 'a', 0),
('eqwqrg;g;er', 36, 0, 'a', 0),
('ppp', 1, 0, 'a', 0),
('wertyuiop', 38, 0, 'a', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `flight`
--
ALTER TABLE `flight`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `security_details`
--
ALTER TABLE `security_details`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `uuid`
--
ALTER TABLE `uuid`
 ADD PRIMARY KEY (`uuid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `flight`
--
ALTER TABLE `flight`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=36;
--
-- AUTO_INCREMENT for table `security_details`
--
ALTER TABLE `security_details`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=146;
--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=39;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
