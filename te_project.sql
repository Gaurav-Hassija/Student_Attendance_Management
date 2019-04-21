-- phpMyAdmin SQL Dump
-- version 4.8.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 21, 2019 at 05:42 PM
-- Server version: 10.1.34-MariaDB
-- PHP Version: 7.2.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `te_project`
--

-- --------------------------------------------------------

--
-- Table structure for table `class`
--

CREATE TABLE `class` (
  `class_id` int(11) NOT NULL,
  `class_name` varchar(255) NOT NULL,
  `class_teacher` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `class`
--

INSERT INTO `class` (`class_id`, `class_name`, `class_teacher`) VALUES
(1, 'D12A', 1),
(2, 'D12B', 6),
(3, 'D12C', 12);

-- --------------------------------------------------------

--
-- Table structure for table `course`
--

CREATE TABLE `course` (
  `course_id` int(11) NOT NULL,
  `course_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `course`
--

INSERT INTO `course` (`course_id`, `course_name`) VALUES
(1, 'CMPN');

-- --------------------------------------------------------

--
-- Table structure for table `d12a_css`
--

CREATE TABLE `d12a_css` (
  `roll_no` int(2) DEFAULT NULL,
  `name` varchar(18) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `d12a_css`
--

INSERT INTO `d12a_css` (`roll_no`, `name`) VALUES
(1, 'AGHARKAR SUNMAY'),
(2, 'AGRAWAL SHRADHA'),
(3, 'ASWAL NITIN'),
(4, 'BAHREJA AMIT'),
(5, 'BANSINGHANI JUHI'),
(6, 'BATHIJA RIYA'),
(7, 'BHATIA SAHIL'),
(8, 'BHATIA YASHIKA'),
(9, 'CHANCHLANI ANUJ'),
(10, 'CHANCHLANI DEEPA'),
(11, 'CHANDANI MUKTA'),
(12, 'CHANDWANI ASHISH'),
(13, 'CHAWLA DIPEN'),
(14, 'CHOTLANI TUSHAR'),
(15, 'DADHAKAR SARTHAK'),
(16, 'DARYANI RUCHIKA'),
(17, 'DEKHANE SIDDHARTH'),
(18, 'DHINGRA TRENA'),
(19, 'GAIKWAD SHUBHAM'),
(20, 'GANGWANI MURLIDHAR');

-- --------------------------------------------------------

--
-- Table structure for table `d12a_dwm`
--

CREATE TABLE `d12a_dwm` (
  `roll_no` int(2) DEFAULT NULL,
  `name` varchar(18) DEFAULT NULL,
  `2019_04_19` varchar(255) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `d12a_dwm`
--

INSERT INTO `d12a_dwm` (`roll_no`, `name`, `2019_04_19`) VALUES
(1, 'AGHARKAR SUNMAY', '0'),
(2, 'AGRAWAL SHRADHA', '0'),
(3, 'ASWAL NITIN', '0'),
(4, 'BAHREJA AMIT', '1'),
(5, 'BANSINGHANI JUHI', '0'),
(6, 'BATHIJA RIYA', '0'),
(7, 'BHATIA SAHIL', '0'),
(8, 'BHATIA YASHIKA', '0'),
(9, 'CHANCHLANI ANUJ', '0'),
(10, 'CHANCHLANI DEEPA', '0'),
(11, 'CHANDANI MUKTA', '0'),
(12, 'CHANDWANI ASHISH', '1'),
(13, 'CHAWLA DIPEN', '0'),
(14, 'CHOTLANI TUSHAR', '0'),
(15, 'DADHAKAR SARTHAK', '0'),
(16, 'DARYANI RUCHIKA', '0'),
(17, 'DEKHANE SIDDHARTH', '0'),
(18, 'DHINGRA TRENA', '0'),
(19, 'GAIKWAD SHUBHAM', '0'),
(20, 'GANGWANI MURLIDHAR', '1');

-- --------------------------------------------------------

--
-- Table structure for table `d12a_ml`
--

CREATE TABLE `d12a_ml` (
  `roll_no` int(2) DEFAULT NULL,
  `name` varchar(18) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `d12a_ml`
--

INSERT INTO `d12a_ml` (`roll_no`, `name`) VALUES
(1, 'AGHARKAR SUNMAY'),
(2, 'AGRAWAL SHRADHA'),
(3, 'ASWAL NITIN'),
(4, 'BAHREJA AMIT'),
(5, 'BANSINGHANI JUHI'),
(6, 'BATHIJA RIYA'),
(7, 'BHATIA SAHIL'),
(8, 'BHATIA YASHIKA'),
(9, 'CHANCHLANI ANUJ'),
(10, 'CHANCHLANI DEEPA'),
(11, 'CHANDANI MUKTA'),
(12, 'CHANDWANI ASHISH'),
(13, 'CHAWLA DIPEN'),
(14, 'CHOTLANI TUSHAR'),
(15, 'DADHAKAR SARTHAK'),
(16, 'DARYANI RUCHIKA'),
(17, 'DEKHANE SIDDHARTH'),
(18, 'DHINGRA TRENA'),
(19, 'GAIKWAD SHUBHAM'),
(20, 'GANGWANI MURLIDHAR');

-- --------------------------------------------------------

--
-- Table structure for table `d12a_se`
--

CREATE TABLE `d12a_se` (
  `roll_no` int(2) DEFAULT NULL,
  `name` varchar(18) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `d12a_se`
--

INSERT INTO `d12a_se` (`roll_no`, `name`) VALUES
(1, 'AGHARKAR SUNMAY'),
(2, 'AGRAWAL SHRADHA'),
(3, 'ASWAL NITIN'),
(4, 'BAHREJA AMIT'),
(5, 'BANSINGHANI JUHI'),
(6, 'BATHIJA RIYA'),
(7, 'BHATIA SAHIL'),
(8, 'BHATIA YASHIKA'),
(9, 'CHANCHLANI ANUJ'),
(10, 'CHANCHLANI DEEPA'),
(11, 'CHANDANI MUKTA'),
(12, 'CHANDWANI ASHISH'),
(13, 'CHAWLA DIPEN'),
(14, 'CHOTLANI TUSHAR'),
(15, 'DADHAKAR SARTHAK'),
(16, 'DARYANI RUCHIKA'),
(17, 'DEKHANE SIDDHARTH'),
(18, 'DHINGRA TRENA'),
(19, 'GAIKWAD SHUBHAM'),
(20, 'GANGWANI MURLIDHAR');

-- --------------------------------------------------------

--
-- Table structure for table `d12a_spcc`
--

CREATE TABLE `d12a_spcc` (
  `roll_no` int(2) DEFAULT NULL,
  `name` varchar(18) DEFAULT NULL,
  `2019_04_18` varchar(255) NOT NULL DEFAULT '0',
  `2019_04_17` varchar(255) NOT NULL DEFAULT '0',
  `2019_04_15` varchar(255) NOT NULL DEFAULT '0',
  `2019_04_27` varchar(255) NOT NULL DEFAULT '0',
  `2019_04_30` varchar(255) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `d12a_spcc`
--

INSERT INTO `d12a_spcc` (`roll_no`, `name`, `2019_04_18`, `2019_04_17`, `2019_04_15`, `2019_04_27`, `2019_04_30`) VALUES
(1, 'AGHARKAR SUNMAY', '0', '0', '0', '0', '0'),
(2, 'AGRAWAL SHRADHA', '0', '0', '0', '0', '0'),
(3, 'ASWAL NITIN', '0', '0', '0', '0', '0'),
(4, 'BAHREJA AMIT', '0', '0', '0', '0', '0'),
(5, 'BANSINGHANI JUHI', '0', '0', '0', '0', '0'),
(6, 'BATHIJA RIYA', '0', '0', '0', '0', '0'),
(7, 'BHATIA SAHIL', '0', '0', '0', '0', '0'),
(8, 'BHATIA YASHIKA', '0', '0', '0', '0', '0'),
(9, 'CHANCHLANI ANUJ', '0', '0', '0', '0', '0'),
(10, 'CHANCHLANI DEEPA', '0', '0', '0', '0', '0'),
(11, 'CHANDANI MUKTA', '0', '0', '0', '0', '0'),
(12, 'CHANDWANI ASHISH', '0', '0', '0', '0', '0'),
(13, 'CHAWLA DIPEN', '0', '0', '0', '0', '0'),
(14, 'CHOTLANI TUSHAR', '0', '0', '0', '0', '0'),
(15, 'DADHAKAR SARTHAK', '0', '0', '0', '0', '0'),
(16, 'DARYANI RUCHIKA', '0', '0', '0', '0', '0'),
(17, 'DEKHANE SIDDHARTH', '0', '0', '0', '0', '1'),
(18, 'DHINGRA TRENA', '0', '0', '0', '0', '0'),
(19, 'GAIKWAD SHUBHAM', '0', '0', '0', '0', '0'),
(20, 'GANGWANI MURLIDHAR', '0', '0', '0', '0', '0');

-- --------------------------------------------------------

--
-- Table structure for table `d12b_css`
--

CREATE TABLE `d12b_css` (
  `roll_no` int(2) DEFAULT NULL,
  `name` varchar(18) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `d12b_css`
--

INSERT INTO `d12b_css` (`roll_no`, `name`) VALUES
(1, 'AGHARKAR SUNMAY'),
(2, 'AGRAWAL SHRADHA'),
(3, 'ASWAL NITIN'),
(4, 'BAHREJA AMIT'),
(5, 'BANSINGHANI JUHI'),
(6, 'BATHIJA RIYA'),
(7, 'BHATIA SAHIL'),
(8, 'BHATIA YASHIKA'),
(9, 'CHANCHLANI ANUJ'),
(10, 'CHANCHLANI DEEPA'),
(11, 'CHANDANI MUKTA'),
(12, 'CHANDWANI ASHISH'),
(13, 'CHAWLA DIPEN'),
(14, 'CHOTLANI TUSHAR'),
(15, 'DADHAKAR SARTHAK'),
(16, 'DARYANI RUCHIKA'),
(17, 'DEKHANE SIDDHARTH'),
(18, 'DHINGRA TRENA'),
(19, 'GAIKWAD SHUBHAM'),
(20, 'GANGWANI MURLIDHAR');

-- --------------------------------------------------------

--
-- Table structure for table `d12b_dwm`
--

CREATE TABLE `d12b_dwm` (
  `roll_no` int(2) DEFAULT NULL,
  `name` varchar(18) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `d12b_dwm`
--

INSERT INTO `d12b_dwm` (`roll_no`, `name`) VALUES
(1, 'AGHARKAR SUNMAY'),
(2, 'AGRAWAL SHRADHA'),
(3, 'ASWAL NITIN'),
(4, 'BAHREJA AMIT'),
(5, 'BANSINGHANI JUHI'),
(6, 'BATHIJA RIYA'),
(7, 'BHATIA SAHIL'),
(8, 'BHATIA YASHIKA'),
(9, 'CHANCHLANI ANUJ'),
(10, 'CHANCHLANI DEEPA'),
(11, 'CHANDANI MUKTA'),
(12, 'CHANDWANI ASHISH'),
(13, 'CHAWLA DIPEN'),
(14, 'CHOTLANI TUSHAR'),
(15, 'DADHAKAR SARTHAK'),
(16, 'DARYANI RUCHIKA'),
(17, 'DEKHANE SIDDHARTH'),
(18, 'DHINGRA TRENA'),
(19, 'GAIKWAD SHUBHAM'),
(20, 'GANGWANI MURLIDHAR');

-- --------------------------------------------------------

--
-- Table structure for table `d12b_ml`
--

CREATE TABLE `d12b_ml` (
  `roll_no` int(2) DEFAULT NULL,
  `name` varchar(18) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `d12b_ml`
--

INSERT INTO `d12b_ml` (`roll_no`, `name`) VALUES
(1, 'AGHARKAR SUNMAY'),
(2, 'AGRAWAL SHRADHA'),
(3, 'ASWAL NITIN'),
(4, 'BAHREJA AMIT'),
(5, 'BANSINGHANI JUHI'),
(6, 'BATHIJA RIYA'),
(7, 'BHATIA SAHIL'),
(8, 'BHATIA YASHIKA'),
(9, 'CHANCHLANI ANUJ'),
(10, 'CHANCHLANI DEEPA'),
(11, 'CHANDANI MUKTA'),
(12, 'CHANDWANI ASHISH'),
(13, 'CHAWLA DIPEN'),
(14, 'CHOTLANI TUSHAR'),
(15, 'DADHAKAR SARTHAK'),
(16, 'DARYANI RUCHIKA'),
(17, 'DEKHANE SIDDHARTH'),
(18, 'DHINGRA TRENA'),
(19, 'GAIKWAD SHUBHAM'),
(20, 'GANGWANI MURLIDHAR');

-- --------------------------------------------------------

--
-- Table structure for table `d12b_se`
--

CREATE TABLE `d12b_se` (
  `roll_no` int(2) DEFAULT NULL,
  `name` varchar(18) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `d12b_se`
--

INSERT INTO `d12b_se` (`roll_no`, `name`) VALUES
(1, 'AGHARKAR SUNMAY'),
(2, 'AGRAWAL SHRADHA'),
(3, 'ASWAL NITIN'),
(4, 'BAHREJA AMIT'),
(5, 'BANSINGHANI JUHI'),
(6, 'BATHIJA RIYA'),
(7, 'BHATIA SAHIL'),
(8, 'BHATIA YASHIKA'),
(9, 'CHANCHLANI ANUJ'),
(10, 'CHANCHLANI DEEPA'),
(11, 'CHANDANI MUKTA'),
(12, 'CHANDWANI ASHISH'),
(13, 'CHAWLA DIPEN'),
(14, 'CHOTLANI TUSHAR'),
(15, 'DADHAKAR SARTHAK'),
(16, 'DARYANI RUCHIKA'),
(17, 'DEKHANE SIDDHARTH'),
(18, 'DHINGRA TRENA'),
(19, 'GAIKWAD SHUBHAM'),
(20, 'GANGWANI MURLIDHAR');

-- --------------------------------------------------------

--
-- Table structure for table `d12b_spcc`
--

CREATE TABLE `d12b_spcc` (
  `roll_no` int(2) DEFAULT NULL,
  `name` varchar(18) DEFAULT NULL,
  `2019_04_02` varchar(255) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `d12b_spcc`
--

INSERT INTO `d12b_spcc` (`roll_no`, `name`, `2019_04_02`) VALUES
(1, 'AGHARKAR SUNMAY', '0'),
(2, 'AGRAWAL SHRADHA', '1'),
(3, 'ASWAL NITIN', '0'),
(4, 'BAHREJA AMIT', '1'),
(5, 'BANSINGHANI JUHI', '0'),
(6, 'BATHIJA RIYA', '1'),
(7, 'BHATIA SAHIL', '0'),
(8, 'BHATIA YASHIKA', '0'),
(9, 'CHANCHLANI ANUJ', '0'),
(10, 'CHANCHLANI DEEPA', '0'),
(11, 'CHANDANI MUKTA', '0'),
(12, 'CHANDWANI ASHISH', '0'),
(13, 'CHAWLA DIPEN', '0'),
(14, 'CHOTLANI TUSHAR', '0'),
(15, 'DADHAKAR SARTHAK', '0'),
(16, 'DARYANI RUCHIKA', '0'),
(17, 'DEKHANE SIDDHARTH', '0'),
(18, 'DHINGRA TRENA', '0'),
(19, 'GAIKWAD SHUBHAM', '0'),
(20, 'GANGWANI MURLIDHAR', '1');

-- --------------------------------------------------------

--
-- Table structure for table `d12c_css`
--

CREATE TABLE `d12c_css` (
  `roll_no` int(2) DEFAULT NULL,
  `name` varchar(18) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `d12c_css`
--

INSERT INTO `d12c_css` (`roll_no`, `name`) VALUES
(1, 'AGHARKAR SUNMAY'),
(2, 'AGRAWAL SHRADHA'),
(3, 'ASWAL NITIN'),
(4, 'BAHREJA AMIT'),
(5, 'BANSINGHANI JUHI'),
(6, 'BATHIJA RIYA'),
(7, 'BHATIA SAHIL'),
(8, 'BHATIA YASHIKA'),
(9, 'CHANCHLANI ANUJ'),
(10, 'CHANCHLANI DEEPA'),
(11, 'CHANDANI MUKTA'),
(12, 'CHANDWANI ASHISH'),
(13, 'CHAWLA DIPEN'),
(14, 'CHOTLANI TUSHAR'),
(15, 'DADHAKAR SARTHAK'),
(16, 'DARYANI RUCHIKA'),
(17, 'DEKHANE SIDDHARTH'),
(18, 'DHINGRA TRENA'),
(19, 'GAIKWAD SHUBHAM'),
(20, 'GANGWANI MURLIDHAR');

-- --------------------------------------------------------

--
-- Table structure for table `d12c_dwm`
--

CREATE TABLE `d12c_dwm` (
  `roll_no` int(2) DEFAULT NULL,
  `name` varchar(18) DEFAULT NULL,
  `2019_04_18` varchar(255) NOT NULL DEFAULT '0',
  `2019_04_24` varchar(255) NOT NULL DEFAULT '0',
  `2019_04_20` varchar(255) NOT NULL DEFAULT '0',
  `2019_04_16` varchar(255) NOT NULL DEFAULT '0',
  `2019_04_19` varchar(255) NOT NULL DEFAULT '0',
  `2019_04_01` varchar(255) NOT NULL DEFAULT '0',
  `2019_04_21` varchar(255) NOT NULL DEFAULT '0',
  `2019_04_02` varchar(255) NOT NULL DEFAULT '0',
  `2019_04_03` varchar(255) NOT NULL DEFAULT '0',
  `2019_04_04` varchar(255) NOT NULL DEFAULT '0',
  `2019_04_05` varchar(255) NOT NULL DEFAULT '0',
  `2019_04_06` varchar(255) NOT NULL DEFAULT '0',
  `2019_04_08` varchar(255) NOT NULL DEFAULT '0',
  `2019_04_09` varchar(255) NOT NULL DEFAULT '0',
  `2019_04_10` varchar(255) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `d12c_dwm`
--

INSERT INTO `d12c_dwm` (`roll_no`, `name`, `2019_04_18`, `2019_04_24`, `2019_04_20`, `2019_04_16`, `2019_04_19`, `2019_04_01`, `2019_04_21`, `2019_04_02`, `2019_04_03`, `2019_04_04`, `2019_04_05`, `2019_04_06`, `2019_04_08`, `2019_04_09`, `2019_04_10`) VALUES
(1, 'AGHARKAR SUNMAY', '1', '0', '0', '0', '1', '0', '0', '1', '1', '1', '1', '1', '1', '0', '1'),
(2, 'AGRAWAL SHRADHA', '0', '0', '0', '0', '1', '0', '0', '1', '1', '0', '0', '0', '0', '0', '0'),
(3, 'ASWAL NITIN', '0', '0', '0', '1', '1', '0', '0', '1', '1', '1', '0', '1', '1', '1', '0'),
(4, 'BAHREJA AMIT', '0', '0', '0', '0', '1', '0', '0', '1', '1', '0', '0', '0', '0', '0', '0'),
(5, 'BANSINGHANI JUHI', '1', '0', '0', '0', '0', '1', '0', '1', '0', '0', '0', '0', '0', '0', '0'),
(6, 'BATHIJA RIYA', '0', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0'),
(7, 'BHATIA SAHIL', '0', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0'),
(8, 'BHATIA YASHIKA', '0', '0', '0', '0', '0', '1', '0', '1', '0', '0', '0', '0', '0', '0', '0'),
(9, 'CHANCHLANI ANUJ', '0', '0', '0', '0', '0', '0', '0', '1', '1', '1', '0', '0', '0', '0', '0'),
(10, 'CHANCHLANI DEEPA', '0', '0', '0', '0', '0', '0', '0', '1', '1', '0', '0', '0', '0', '0', '0'),
(11, 'CHANDANI MUKTA', '0', '0', '0', '0', '0', '0', '0', '1', '1', '1', '0', '0', '0', '1', '1'),
(12, 'CHANDWANI ASHISH', '0', '0', '0', '0', '0', '0', '0', '1', '1', '0', '0', '0', '1', '1', '0'),
(13, 'CHAWLA DIPEN', '0', '0', '0', '0', '0', '0', '0', '1', '0', '0', '1', '0', '0', '0', '1'),
(14, 'CHOTLANI TUSHAR', '0', '0', '0', '0', '0', '1', '0', '1', '0', '0', '0', '0', '0', '0', '0'),
(15, 'DADHAKAR SARTHAK', '0', '0', '0', '0', '0', '0', '0', '1', '1', '0', '0', '0', '0', '0', '0'),
(16, 'DARYANI RUCHIKA', '0', '0', '0', '1', '0', '0', '0', '1', '1', '0', '0', '0', '0', '0', '0'),
(17, 'DEKHANE SIDDHARTH', '0', '0', '0', '0', '0', '0', '0', '1', '1', '0', '0', '0', '0', '0', '0'),
(18, 'DHINGRA TRENA', '0', '0', '0', '0', '0', '0', '0', '1', '1', '0', '0', '0', '0', '0', '0'),
(19, 'GAIKWAD SHUBHAM', '0', '0', '0', '0', '1', '1', '0', '1', '0', '0', '1', '0', '0', '0', '0'),
(20, 'GANGWANI MURLIDHAR', '0', '0', '0', '0', '1', '0', '0', '1', '0', '1', '0', '0', '0', '1', '1');

-- --------------------------------------------------------

--
-- Table structure for table `d12c_ml`
--

CREATE TABLE `d12c_ml` (
  `roll_no` int(2) DEFAULT NULL,
  `name` varchar(18) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `d12c_ml`
--

INSERT INTO `d12c_ml` (`roll_no`, `name`) VALUES
(1, 'AGHARKAR SUNMAY'),
(2, 'AGRAWAL SHRADHA'),
(3, 'ASWAL NITIN'),
(4, 'BAHREJA AMIT'),
(5, 'BANSINGHANI JUHI'),
(6, 'BATHIJA RIYA'),
(7, 'BHATIA SAHIL'),
(8, 'BHATIA YASHIKA'),
(9, 'CHANCHLANI ANUJ'),
(10, 'CHANCHLANI DEEPA'),
(11, 'CHANDANI MUKTA'),
(12, 'CHANDWANI ASHISH'),
(13, 'CHAWLA DIPEN'),
(14, 'CHOTLANI TUSHAR'),
(15, 'DADHAKAR SARTHAK'),
(16, 'DARYANI RUCHIKA'),
(17, 'DEKHANE SIDDHARTH'),
(18, 'DHINGRA TRENA'),
(19, 'GAIKWAD SHUBHAM'),
(20, 'GANGWANI MURLIDHAR');

-- --------------------------------------------------------

--
-- Table structure for table `d12c_se`
--

CREATE TABLE `d12c_se` (
  `roll_no` int(2) DEFAULT NULL,
  `name` varchar(18) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `d12c_se`
--

INSERT INTO `d12c_se` (`roll_no`, `name`) VALUES
(1, 'AGHARKAR SUNMAY'),
(2, 'AGRAWAL SHRADHA'),
(3, 'ASWAL NITIN'),
(4, 'BAHREJA AMIT'),
(5, 'BANSINGHANI JUHI'),
(6, 'BATHIJA RIYA'),
(7, 'BHATIA SAHIL'),
(8, 'BHATIA YASHIKA'),
(9, 'CHANCHLANI ANUJ'),
(10, 'CHANCHLANI DEEPA'),
(11, 'CHANDANI MUKTA'),
(12, 'CHANDWANI ASHISH'),
(13, 'CHAWLA DIPEN'),
(14, 'CHOTLANI TUSHAR'),
(15, 'DADHAKAR SARTHAK'),
(16, 'DARYANI RUCHIKA'),
(17, 'DEKHANE SIDDHARTH'),
(18, 'DHINGRA TRENA'),
(19, 'GAIKWAD SHUBHAM'),
(20, 'GANGWANI MURLIDHAR');

-- --------------------------------------------------------

--
-- Table structure for table `d12c_spcc`
--

CREATE TABLE `d12c_spcc` (
  `roll_no` int(2) DEFAULT NULL,
  `name` varchar(18) DEFAULT NULL,
  `2019_04_19` varchar(255) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `d12c_spcc`
--

INSERT INTO `d12c_spcc` (`roll_no`, `name`, `2019_04_19`) VALUES
(1, 'AGHARKAR SUNMAY', '1'),
(2, 'AGRAWAL SHRADHA', '0'),
(3, 'ASWAL NITIN', '0'),
(4, 'BAHREJA AMIT', '1'),
(5, 'BANSINGHANI JUHI', '0'),
(6, 'BATHIJA RIYA', '0'),
(7, 'BHATIA SAHIL', '0'),
(8, 'BHATIA YASHIKA', '1'),
(9, 'CHANCHLANI ANUJ', '0'),
(10, 'CHANCHLANI DEEPA', '0'),
(11, 'CHANDANI MUKTA', '0'),
(12, 'CHANDWANI ASHISH', '0'),
(13, 'CHAWLA DIPEN', '0'),
(14, 'CHOTLANI TUSHAR', '1'),
(15, 'DADHAKAR SARTHAK', '0'),
(16, 'DARYANI RUCHIKA', '0'),
(17, 'DEKHANE SIDDHARTH', '0'),
(18, 'DHINGRA TRENA', '1'),
(19, 'GAIKWAD SHUBHAM', '0'),
(20, 'GANGWANI MURLIDHAR', '1');

-- --------------------------------------------------------

--
-- Table structure for table `parent`
--

CREATE TABLE `parent` (
  `parent_id` int(2) DEFAULT NULL,
  `student_name` varchar(24) DEFAULT NULL,
  `email` varchar(29) DEFAULT NULL,
  `student_id` int(2) DEFAULT NULL,
  `class_id` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `parent`
--

INSERT INTO `parent` (`parent_id`, `student_name`, `email`, `student_id`, `class_id`) VALUES
(1, 'ADAMANE SHUBHAM', '2016.rahul.makhija@ves.ac.in', 1, 3),
(2, '  AGARWAL MEENAKSHI', '2016.gaurav.hassija@ves.ac.in', 2, 3),
(3, '  AMIN ISHMA LAXMIKANTH', '2016.ashish.gwalani@ves.ac.in', 3, 3),
(4, 'ANIRUDH RAMACHANDRAN', '2016.rahul.makhija@ves.ac.in', 4, 3),
(5, 'ANSARI FAIZANSHAH', '2016.gaurav.hassija@ves.ac.in', 5, 3),
(6, '  BATHIJA VINITA', '2016.ashish.gwalani@ves.ac.in', 6, 3),
(7, 'BHAGCHANDANI AMIT', '2016.rahul.makhija@ves.ac.in', 7, 3),
(8, '  BHAGNANI VIDYA', '2016.gaurav.hassija@ves.ac.in', 8, 3),
(9, 'BHATIA TANISHQ', '2016.ashish.gwalani@ves.ac.in', 9, 3),
(10, 'BOTE ANIKET', '2016.rahul.makhija@ves.ac.in', 10, 3),
(11, 'BULANI KARAN', '2016.gaurav.hassija@ves.ac.in', 11, 3),
(12, 'CHANDWANI SACHIN', '2016.ashish.gwalani@ves.ac.in', 12, 3),
(13, 'CHAUHAN SONY', '2016.rahul.makhija@ves.ac.in', 13, 3),
(14, 'CHAVAN SANIKA', '2016.gaurav.hassija@ves.ac.in', 14, 3),
(15, 'CHHABRIA PAWAN', '2016.ashish.gwalani@ves.ac.in', 15, 3),
(16, 'CHICHRIA KARISHMA', '2016.rahul.makhija@ves.ac.in', 16, 3),
(17, 'DEVADIGA ROSHAN', '2016.gaurav.hassija@ves.ac.in', 17, 3),
(18, 'DHAVALIKAR OMKAR', '2016.ashish.gwalani@ves.ac.in', 18, 3),
(19, 'GADWE AKSHARA', '2016.rahul.makhija@ves.ac.in', 19, 3),
(20, 'GOPALANI DEVASHISH', '2016.gaurav.hassija@ves.ac.in', 20, 3),
(21, 'AGHARKAR SUNMAY', '2016.ashish.gwalani@ves.ac.in', 1, 2),
(22, 'AGRAWAL SHRADHA', '2016.rahul.makhija@ves.ac.in', 2, 2),
(23, 'ASWAL NITIN', '2016.gaurav.hassija@ves.ac.in', 3, 2),
(24, 'BAHREJA AMIT', '2016.ashish.gwalani@ves.ac.in', 4, 2),
(25, 'BANSINGHANI JUHI', '2016.rahul.makhija@ves.ac.in', 5, 2),
(26, 'BATHIJA RIYA', '2016.gaurav.hassija@ves.ac.in', 6, 2),
(27, 'BHATIA SAHIL', '2016.ashish.gwalani@ves.ac.in', 7, 2),
(28, 'BHATIA YASHIKA', '2016.rahul.makhija@ves.ac.in', 8, 2),
(29, 'CHANCHLANI ANUJ', '2016.gaurav.hassija@ves.ac.in', 9, 2),
(30, 'CHANCHLANI DEEPA', '2016.ashish.gwalani@ves.ac.in', 10, 2),
(31, '   AHUJA BHAVESH', '2016.rahul.makhija@ves.ac.in', 1, 1),
(32, '  BANE ANUSHREE', '2016.gaurav.hassija@ves.ac.in', 2, 1),
(33, '  BAUSKAR PIYUSHA', '2016.ashish.gwalani@ves.ac.in', 3, 1),
(34, '  BEELOSHE GAURI', '2016.rahul.makhija@ves.ac.in', 4, 1),
(35, '   BHAGTANI ROHIT', '2016.gaurav.hassija@ves.ac.in', 5, 1),
(36, '  BHAGWANDASANI SIMRAN', '2016.ashish.gwalani@ves.ac.in', 6, 1),
(37, '   BHANGALE CHANDAN', '2016.rahul.makhija@ves.ac.in', 7, 1),
(38, '   BHATIA RAHUL', '2016.gaurav.hassija@ves.ac.in', 8, 1),
(39, 'BHATIA UDIT', '2016.ashish.gwalani@ves.ac.in', 9, 1),
(40, '  BHATTACHARYA ABHIRUCHI', '2016.rahul.makhija@ves.ac.in', 10, 1);

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `student_id` int(11) DEFAULT NULL,
  `student_roll_no` int(11) DEFAULT NULL,
  `student_name` varchar(255) DEFAULT NULL,
  `student_email` varchar(255) DEFAULT NULL,
  `class_id` int(11) DEFAULT NULL,
  `year_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`student_id`, `student_roll_no`, `student_name`, `student_email`, `class_id`, `year_id`) VALUES
(1, 1, '   AHUJA BHAVESH', 'bhavesh@gmail.com', 1, 3),
(2, 2, '  BANE ANUSHREE', 'anushree@gmail.com', 1, 3),
(3, 3, '  BAUSKAR PIYUSHA', 'piyusha@gmail.com', 1, 3),
(4, 4, '  BEELOSHE GAURI', 'gauri@gmail.com', 1, 3),
(5, 5, '   BHAGTANI ROHIT', 'rohit@gmail.com', 1, 3),
(6, 6, '  BHAGWANDASANI SIMRAN', 'simran@gmail.com', 1, 3),
(7, 7, '   BHANGALE CHANDAN', 'chandan@gmail.com', 1, 3),
(8, 8, '   BHATIA RAHUL', 'rahul@gmail.com', 1, 3),
(9, 9, 'BHATIA UDIT', 'udit@gmail.com', 1, 3),
(10, 10, '  BHATTACHARYA ABHIRUCHI', 'abhiruchi@gmail.com', 1, 3),
(11, 11, '   BHUYAR ANUPREET', 'anupreet@gmail.com', 1, 3),
(12, 12, '  BORWANKAR PADMAJA', 'padmaja@gmail.com', 1, 3),
(13, 13, '  BRAHMAPURKAR PALLAVI', 'pallavi@gmail.com', 1, 3),
(14, 14, '  BUWA KETAKI', 'ketaki@gmail.com', 1, 3),
(15, 15, '   CHETWANI RAJ', 'raj@gmail.com', 1, 3),
(16, 16, '   CHOUDHARY PRAMODKUMAR', 'pramodkumar@gmail.com', 1, 3),
(17, 17, '   COUTINHO AUSTIN', 'austin@gmail.com', 1, 3),
(18, 18, '   DADLANI TARUN', 'tarun@gmail.com', 1, 3),
(19, 19, '   DESHMUKH ADITYA', 'aditya@gmail.com', 1, 3),
(20, 20, '   DEVADIGA RAHUL', 'rahul@gmail.com', 1, 3),
(21, 1, 'AGHARKAR SUNMAY', 'sunmay@gmail.com', 2, 3),
(22, 2, 'AGRAWAL SHRADHA', 'shradha@gmail.com', 2, 3),
(23, 3, 'ASWAL NITIN', 'nitin@gmail.com', 2, 3),
(24, 4, 'BAHREJA AMIT', 'amit@gmail.com', 2, 3),
(25, 5, 'BANSINGHANI JUHI', 'juhi@gmail.com', 2, 3),
(26, 6, 'BATHIJA RIYA', 'riya@gmail.com', 2, 3),
(27, 7, 'BHATIA SAHIL', 'sahil@gmail.com', 2, 3),
(28, 8, 'BHATIA YASHIKA', 'yashika@gmail.com', 2, 3),
(29, 9, 'CHANCHLANI ANUJ', 'anuj@gmail.com', 2, 3),
(30, 10, 'CHANCHLANI DEEPA', 'deepa@gmail.com', 2, 3),
(31, 11, 'CHANDANI MUKTA', 'mukta@gmail.com', 2, 3),
(32, 12, 'CHANDWANI ASHISH', 'ashish@gmail.com', 2, 3),
(33, 13, 'CHAWLA DIPEN', 'dipen@gmail.com', 2, 3),
(34, 14, 'CHOTLANI TUSHAR', 'tushar@gmail.com', 2, 3),
(35, 15, 'DADHAKAR SARTHAK', 'sarthak@gmail.com', 2, 3),
(36, 16, 'DARYANI RUCHIKA', 'ruchika@gmail.com', 2, 3),
(37, 17, 'DEKHANE SIDDHARTH', 'siddharth@gmail.com', 2, 3),
(38, 18, 'DHINGRA TRENA', 'trena@gmail.com', 2, 3),
(39, 19, 'GAIKWAD SHUBHAM', 'shubham@gmail.com', 2, 3),
(40, 20, 'GANGWANI MURLIDHAR', 'murlidhar@gmail.com', 2, 3),
(41, 1, 'ADAMANE SHUBHAM', 'shubham@gmail.com', 3, 3),
(42, 2, '  AGARWAL MEENAKSHI', 'meenakshi@gmail.com', 3, 3),
(43, 3, '  AMIN ISHMA LAXMIKANTH', 'laxmikanth@gmail.com', 3, 3),
(44, 4, 'ANIRUDH RAMACHANDRAN', 'ramachandran@gmail.com', 3, 3),
(45, 5, 'ANSARI FAIZANSHAH', 'faizanshah@gmail.com', 3, 3),
(46, 6, '  BATHIJA VINITA', 'vinita@gmail.com', 3, 3),
(47, 7, 'BHAGCHANDANI AMIT', 'amit@gmail.com', 3, 3),
(48, 8, '  BHAGNANI VIDYA', 'vidya@gmail.com', 3, 3),
(49, 9, 'BHATIA TANISHQ', 'tanishq@gmail.com', 3, 3),
(50, 10, 'BOTE ANIKET', 'aniket@gmail.com', 3, 3),
(51, 11, 'BULANI KARAN', 'karan@gmail.com', 3, 3),
(52, 12, 'CHANDWANI SACHIN', 'sachin@gmail.com', 3, 3),
(53, 13, '  CHAUHAN SONY', 'sony@gmail.com', 3, 3),
(54, 14, '  CHAVAN SANIKA', 'sanika@gmail.com', 3, 3),
(55, 15, 'CHHABRIA PAWAN', 'pawan@gmail.com', 3, 3),
(56, 16, '  CHICHRIA KARISHMA', 'karishma@gmail.com', 3, 3),
(57, 17, 'DEVADIGA ROSHAN', 'roshan@gmail.com', 3, 3),
(58, 18, 'DHAVALIKAR OMKAR', 'omkar@gmail.com', 3, 3),
(59, 19, '  GADWE AKSHARA', 'akshara@gmail.com', 3, 3),
(60, 20, 'GOPALANI DEVASHISH', 'devashish@gmail.com', 3, 3);

-- --------------------------------------------------------

--
-- Table structure for table `subject`
--

CREATE TABLE `subject` (
  `subject_id` int(11) NOT NULL,
  `subject_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `subject`
--

INSERT INTO `subject` (`subject_id`, `subject_name`) VALUES
(1, 'SPCC'),
(2, 'SE'),
(3, 'CSS'),
(4, 'DWM'),
(5, 'ML'),
(6, 'ADBMS');

-- --------------------------------------------------------

--
-- Table structure for table `teacher`
--

CREATE TABLE `teacher` (
  `teacher_id` int(11) NOT NULL,
  `teacher_name` varchar(255) NOT NULL,
  `teacher_email` varchar(255) NOT NULL,
  `teacher_username` varchar(255) NOT NULL,
  `teacher_password` varchar(255) NOT NULL,
  `deleted` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `teacher`
--

INSERT INTO `teacher` (`teacher_id`, `teacher_name`, `teacher_email`, `teacher_username`, `teacher_password`, `deleted`) VALUES
(1, 'Palavi ', 'palavi@ves.ac.in', 'palavi', '$2y$10$94ca38n9FNPeiM8rYIQ2e.SJZpsjI1c6MRejjLTWtQS9zBpQ.3P0G', 0),
(2, 'Richa', 'richa@ves.ac.in', 'richa', '$2y$10$94ca38n9FNPeiM8rYIQ2e.SJZpsjI1c6MRejjLTWtQS9zBpQ.3P0G', 0),
(3, 'Yugchaya', 'yugchaya@ves.ac.in', 'yugchaya', '$2y$10$94ca38n9FNPeiM8rYIQ2e.SJZpsjI1c6MRejjLTWtQS9zBpQ.3P0G', 0),
(4, 'Greesha', 'greesha@ves.ac.in', 'greesha', '$2y$10$94ca38n9FNPeiM8rYIQ2e.SJZpsjI1c6MRejjLTWtQS9zBpQ.3P0G', 0),
(5, 'Anjali Yeole', 'anjali.yeole@ves.ac.in', 'anjali yeole', '$2y$10$94ca38n9FNPeiM8rYIQ2e.SJZpsjI1c6MRejjLTWtQS9zBpQ.3P0G', 0),
(6, 'Lifna', 'lifna@ves.ac.in', 'lifna', '$2y$10$94ca38n9FNPeiM8rYIQ2e.SJZpsjI1c6MRejjLTWtQS9zBpQ.3P0G', 0),
(7, 'Kajal Jeswani', 'kajal.jeswani@ves.ac.in', 'kajal', '$2y$10$94ca38n9FNPeiM8rYIQ2e.SJZpsjI1c6MRejjLTWtQS9zBpQ.3P0G', 0),
(8, 'Priya R L', 'priya@ves.ac.in', 'priya', '$2y$10$94ca38n9FNPeiM8rYIQ2e.SJZpsjI1c6MRejjLTWtQS9zBpQ.3P0G', 0),
(9, 'Vidya Zope', 'vidya.zope@ves.ac.in', 'vidya', '$2y$10$94ca38n9FNPeiM8rYIQ2e.SJZpsjI1c6MRejjLTWtQS9zBpQ.3P0G', 0),
(10, 'Sheetal', 'sheetal@ves.ac.in', 'sheetal', '$2y$10$94ca38n9FNPeiM8rYIQ2e.SJZpsjI1c6MRejjLTWtQS9zBpQ.3P0G', 0),
(11, 'Abha Tewari', 'abha.tewari@ves.ac.in', 'abha', '$2y$10$94ca38n9FNPeiM8rYIQ2e.SJZpsjI1c6MRejjLTWtQS9zBpQ.3P0G', 0),
(12, 'Sujata Khandaskar', 'sujata,khandaskar@ves.ac.in', 'sujata', '$2y$10$94ca38n9FNPeiM8rYIQ2e.SJZpsjI1c6MRejjLTWtQS9zBpQ.3P0G', 0),
(13, 'Sunita Suralkar', 'sunita.suralkar@ves.ac.in', 'sunita', '$2y$10$94ca38n9FNPeiM8rYIQ2e.SJZpsjI1c6MRejjLTWtQS9zBpQ.3P0G', 0),
(14, 'Rupali Hande', 'rupali.hande@ves.ac.in', 'rupali', '$2y$10$94ca38n9FNPeiM8rYIQ2e.SJZpsjI1c6MRejjLTWtQS9zBpQ.3P0G', 0),
(15, 'Sunita Sahu', 'sunita.sahu@ves.ac.in', 'sunita', '$2y$10$94ca38n9FNPeiM8rYIQ2e.SJZpsjI1c6MRejjLTWtQS9zBpQ.3P0G', 0);

-- --------------------------------------------------------

--
-- Table structure for table `teacher_class`
--

CREATE TABLE `teacher_class` (
  `teacher_class_id` int(11) DEFAULT NULL,
  `teacher_id` int(11) DEFAULT NULL,
  `class_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `teacher_class`
--

INSERT INTO `teacher_class` (`teacher_class_id`, `teacher_id`, `class_id`) VALUES
(1, 1, 1),
(2, 2, 1),
(3, 3, 1),
(4, 4, 1),
(5, 5, 2),
(6, 6, 2),
(7, 7, 1),
(8, 8, 2),
(9, 9, 2),
(10, 10, 2),
(11, 11, 3),
(12, 12, 3),
(13, 13, 3),
(14, 14, 3),
(15, 15, 3),
(16, 7, 3),
(17, 15, 3),
(18, 15, 3);

-- --------------------------------------------------------

--
-- Table structure for table `teacher_subject`
--

CREATE TABLE `teacher_subject` (
  `teacher_subject_id` int(11) NOT NULL,
  `teacher_id` int(11) NOT NULL,
  `subject_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `teacher_subject`
--

INSERT INTO `teacher_subject` (`teacher_subject_id`, `teacher_id`, `subject_id`) VALUES
(1, 6, 1),
(2, 1, 1),
(3, 3, 2),
(4, 10, 2),
(5, 2, 3),
(6, 5, 3),
(7, 7, 4),
(8, 8, 4),
(9, 4, 5),
(10, 9, 5),
(11, 12, 2),
(12, 13, 3),
(13, 14, 4),
(14, 11, 5),
(15, 7, 1),
(16, 15, 6);

-- --------------------------------------------------------

--
-- Table structure for table `year`
--

CREATE TABLE `year` (
  `year_id` int(11) NOT NULL,
  `year_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `year`
--

INSERT INTO `year` (`year_id`, `year_name`) VALUES
(1, 'FE'),
(2, 'SE'),
(3, 'TE'),
(4, 'BE');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `class`
--
ALTER TABLE `class`
  ADD PRIMARY KEY (`class_id`);

--
-- Indexes for table `course`
--
ALTER TABLE `course`
  ADD PRIMARY KEY (`course_id`);

--
-- Indexes for table `subject`
--
ALTER TABLE `subject`
  ADD PRIMARY KEY (`subject_id`);

--
-- Indexes for table `teacher`
--
ALTER TABLE `teacher`
  ADD PRIMARY KEY (`teacher_id`);

--
-- Indexes for table `teacher_subject`
--
ALTER TABLE `teacher_subject`
  ADD PRIMARY KEY (`teacher_subject_id`);

--
-- Indexes for table `year`
--
ALTER TABLE `year`
  ADD PRIMARY KEY (`year_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `class`
--
ALTER TABLE `class`
  MODIFY `class_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `course`
--
ALTER TABLE `course`
  MODIFY `course_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `subject`
--
ALTER TABLE `subject`
  MODIFY `subject_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `teacher`
--
ALTER TABLE `teacher`
  MODIFY `teacher_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `teacher_subject`
--
ALTER TABLE `teacher_subject`
  MODIFY `teacher_subject_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `year`
--
ALTER TABLE `year`
  MODIFY `year_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
