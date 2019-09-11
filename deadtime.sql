-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 22, 2019 at 06:14 PM
-- Server version: 10.1.38-MariaDB
-- PHP Version: 7.3.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `deadtime1`
--

-- --------------------------------------------------------

--
-- Table structure for table `actives`
--

CREATE TABLE `actives` (
  `id_actives` int(20) NOT NULL,
  `actives_date` datetime NOT NULL,
  `actives_username` varchar(150) NOT NULL,
  `actives_type` varchar(20) NOT NULL,
  `actives_serialnumber` varchar(50) NOT NULL,
  `actives_name` varchar(150) NOT NULL,
  `actives_assetnumber` varchar(20) NOT NULL,
  `actives_condition` varchar(20) NOT NULL,
  `actives_status` varchar(20) NOT NULL,
  `actives_clients` varchar(20) NOT NULL,
  `actives_nomenclature` varchar(150) NOT NULL,
  `actives_stationnumber` int(20) NOT NULL,
  `actives_cellnumber` int(20) NOT NULL,
  `actives_comments` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `actives_inventory`
--

CREATE TABLE `actives_inventory` (
  `id_inventorya` int(20) NOT NULL,
  `inventorya_date` datetime NOT NULL,
  `inventorya_username` varchar(100) NOT NULL,
  `inventorya_type` varchar(20) NOT NULL,
  `inventorya_serialnumber` varchar(50) NOT NULL,
  `inventorya_name` varchar(150) NOT NULL,
  `inventorya_assetnumber` varchar(20) NOT NULL,
  `inventorya_condition` varchar(20) NOT NULL,
  `inventorya_status` varchar(20) NOT NULL,
  `inventorya_clients` varchar(20) NOT NULL,
  `inventorya_nomenclature` varchar(150) NOT NULL,
  `inventorya_stationnumber` int(20) NOT NULL,
  `inventorya_cellnumber` int(20) NOT NULL,
  `inventorya_comments` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `actives_inventory`
--

INSERT INTO `actives_inventory` (`id_inventorya`, `inventorya_date`, `inventorya_username`, `inventorya_type`, `inventorya_serialnumber`, `inventorya_name`, `inventorya_assetnumber`, `inventorya_condition`, `inventorya_status`, `inventorya_clients`, `inventorya_nomenclature`, `inventorya_stationnumber`, `inventorya_cellnumber`, `inventorya_comments`) VALUES
(1, '2019-06-03 00:00:00', 'Alejandro Castillo', 'Scrap', '19-07-3633-9024032', 'Loading Box->Power supply->ATL-CIS-007', '23230', 'Excellent', 'Stock', 'Cisco', '', 0, 0, 'Inventory'),
(2, '2019-06-03 00:00:00', 'Alejandro Castillo', 'Scrap', '', 'Loading box->Power supply->ATL-CIS-007', '23305', 'Excellent', 'Stock', 'Cisco', '', 0, 0, 'Inventory'),
(3, '2019-06-03 00:00:00', 'Alejandro Castillo', 'Scrap', '', 'Loading box->Power supply->ATL-CIS-007', '23252', 'Excellent', 'Stock', 'Cisco', '', 0, 0, 'Inventory'),
(4, '2019-06-03 00:00:00', 'Alejandro Castillo', 'Scrap', '', 'Loading box->Power supply->ATL-CIS-007', '23241', 'Excellent', 'Stock', 'Cisco', '', 0, 0, 'Inventory'),
(5, '2019-06-03 00:00:00', 'Alejandro Castillo', 'Scrap', '', 'Loading box->Power supply->ATL-CIS-007', '23249', 'Excellent', 'Stock', 'Cisco', '', 0, 0, 'Inventory'),
(6, '2019-06-03 00:00:00', 'Alejandro Castillo', 'Scrap', '', 'Loading box->Power supply->ATL-CIS-007', '23270', 'Excellent', 'Stock', 'Cisco', '', 0, 0, 'Inventory'),
(7, '2019-06-03 00:00:00', 'Alejandro Castillo', 'Scrap', '', 'Loading box->Power supply->ATL-CIS-007', '23240', 'Excellent', 'Stock', 'Cisco', '', 0, 0, 'Inventory'),
(8, '2019-06-03 00:00:00', 'Alejandro Castillo', 'Scrap', '', 'Loading box->Power supply->ATL-CIS-007', '22675', 'Excellent', 'Stock', 'Cisco', '', 0, 0, 'Inventory'),
(9, '2019-06-03 00:00:00', 'Alejandro Castillo', 'Scrap', '', 'Loading box->Power supply->ATL-CIS-007', '23270', 'Excellent', 'Stock', 'Cisco', '', 0, 0, 'Inventory'),
(10, '2019-06-03 00:00:00', 'Alejandro Castillo', 'Scrap', '', 'Loading box->Power supply->ATL-CIS-007', '23306', 'Excellent', 'Stock', 'Cisco', '', 0, 0, 'Inventory'),
(11, '2019-06-03 00:00:00', 'Alejandro Castillo', 'Scrap', '', 'Loading box->Power supply->ATL-CIS-007', '23281', 'Excellent', 'Stock', 'Cisco', '', 0, 0, 'Inventory'),
(12, '2019-06-03 00:00:00', 'Alejandro Castillo', 'Scrap', '', 'Loading box->Power supply->ATL-CIS-007', '23239', 'Excellent', 'Stock', 'Cisco', '', 0, 0, 'Inventory'),
(13, '2019-06-03 00:00:00', 'Alejandro Castillo', 'Scrap', '', 'Loading box->Power supply->ATL-CIS-007', '22652', 'Excellent', 'Stock', 'Cisco', '', 0, 0, 'Inventory'),
(14, '2019-06-03 00:00:00', 'Alejandro Castillo', 'Scrap', '', 'Loading box->Power supply->ATL-CIS-007', '22671', 'Excellent', 'Stock', 'Cisco', '', 0, 0, 'Inventory'),
(15, '2019-06-03 00:00:00', 'Alejandro Castillo', 'Scrap', '', 'Loading box->Power supply->ATL-CIS-007', '', 'Excellent', 'Stock', 'Cisco', '', 0, 0, 'Inventory'),
(16, '2019-06-03 00:00:00', 'Alejandro Castillo', 'Scrap', '', 'Loading box->Power supply->ATL-CIS-007', '', 'Excellent', 'Stock', 'Cisco', '', 0, 0, 'Inventory'),
(17, '2019-06-03 00:00:00', 'Alejandro Castillo', 'Scrap', '', 'Loading box->Power supply->ATL-CIS-007', '22675', 'Excellent', 'Stock', 'Cisco', '', 0, 0, 'Inventory'),
(18, '2019-06-03 00:00:00', 'Alejandro Castillo', 'Scrap', '', 'Loading box->Power supply->ATL-CIS-007', '22600', 'Excellent', 'Stock', 'Cisco', '', 0, 0, 'Inventory'),
(19, '2019-06-03 00:00:00', 'Alejandro Castillo', 'Scrap', '', 'Loading box->Power supply->ATL-CIS-007', '22287', 'Excellent', 'Stock', 'Cisco', '', 0, 0, 'Inventory'),
(20, '2019-06-03 00:00:00', 'Alejandro Castillo', 'Scrap', '', 'Loading box->Power supply->ATL-CIS-007', '23274', 'Excellent', 'Stock', 'Cisco', '', 0, 0, 'Inventory'),
(21, '2019-06-03 00:00:00', 'Alejandro Castillo', 'Scrap', '', 'Loading box->Power supply->ATL-CIS-007', '22845', 'Excellent', 'Stock', 'Cisco', '', 0, 0, 'Inventory'),
(22, '2019-06-03 00:00:00', 'Alejandro Castillo', 'Scrap', '', 'Loading box->Power supply->ATL-CIS-007', '22523', 'Excellent', 'Stock', 'Cisco', '', 0, 0, 'Inventory'),
(23, '2019-06-03 00:00:00', 'Alejandro Castillo', 'Scrap', '', 'Loading box->Power supply->ATL-CIS-007', '22286', 'Excellent', 'Stock', 'Cisco', '', 0, 0, 'Inventory'),
(24, '2019-06-03 00:00:00', 'Alejandro Castillo', 'Scrap', '', 'Loading box->Power supply->ATL-CIS-007', '23272', 'Excellent', 'Stock', 'Cisco', '', 0, 0, 'Inventory'),
(25, '2019-06-03 00:00:00', 'Alejandro Castillo', 'Scrap', '', 'Loading box->Power supply->ATL-CIS-007', '23263', 'Excellent', 'Stock', 'Cisco', '', 0, 0, 'Inventory'),
(26, '2019-06-03 00:00:00', 'Alejandro Castillo', 'Scrap', '', 'Loading box->Power supply->ATL-CIS-007', '23229', 'Excellent', 'Stock', 'Cisco', '', 0, 0, 'Inventory'),
(27, '2019-06-03 00:00:00', 'Alejandro Castillo', 'Scrap', '', 'Loading box->Power supply->ATL-CIS-007', '23303', 'Excellent', 'Stock', 'Cisco', '', 0, 0, 'Inventory'),
(28, '2019-06-03 00:00:00', 'Alejandro Castillo', 'Scrap', '', 'Loading box->Power supply->ATL-CIS-007', '23292', 'Excellent', 'Stock', 'Cisco', '', 0, 0, 'Inventory'),
(29, '2019-06-03 00:00:00', 'Alejandro Castillo', 'Scrap', '', 'Loading box->Power supply->ATL-CIS-007', '22818', 'Excellent', 'Stock', 'Cisco', '', 0, 0, 'Inventory'),
(30, '2019-06-03 00:00:00', 'Alejandro Castillo', 'Scrap', '', 'Loading box->Power supply->ATL-CIS-007', '23280', 'Excellent', 'Stock', 'Cisco', '', 0, 0, 'Inventory'),
(31, '2019-06-03 00:00:00', 'Alejandro Castillo', 'Scrap', '', 'Loading box->Power supply->ATL-CIS-007', '22620', 'Excellent', 'Stock', 'Cisco', '', 0, 0, 'Inventory'),
(32, '2019-06-03 00:00:00', 'Alejandro Castillo', 'Scrap', '', 'Loading box->Power supply->ATL-CIS-007', '22646', 'Excellent', 'Stock', 'Cisco', '', 0, 0, 'Inventory'),
(33, '2019-06-03 00:00:00', 'Alejandro Castillo', 'Scrap', '', 'Loading box->Power supply->ATL-CIS-007', '22699', 'Excellent', 'Stock', 'Cisco', '', 0, 0, 'Inventory'),
(34, '2019-06-03 00:00:00', 'Alejandro Castillo', 'Scrap', '', 'Loading box->Power supply->ATL-CIS-007', '23251', 'Excellent', 'Stock', 'Cisco', '', 0, 0, 'Inventory'),
(35, '2019-06-03 00:00:00', 'Alejandro Castillo', 'Scrap', '', 'Loading box->Power supply->ATL-CIS-007', '22685', 'Excellent', 'Stock', 'Cisco', '', 0, 0, 'Inventory'),
(36, '2019-06-03 00:00:00', 'Alejandro Castillo', 'Scrap', '', 'Loading box->Power supply->ATL-CIS-007', '', 'Excellent', 'Stock', 'Cisco', '', 0, 0, 'Inventory'),
(37, '2019-06-03 00:00:00', 'Alejandro Castillo', 'Scrap', '', 'Loading box->Power supply->ATL-CIS-007', '23307', 'Excellent', 'Stock', 'Cisco', '', 0, 0, 'Inventory'),
(38, '2019-06-03 00:00:00', 'Alejandro Castillo', 'Scrap', '', 'Loading box->Power supply->ATL-CIS-007', '23300', 'Excellent', 'Stock', 'Cisco', '', 0, 0, 'Inventory'),
(39, '2019-06-03 00:00:00', 'Alejandro Castillo', 'Scrap', '', 'Loading box->Power supply->ATL-CIS-007', '22605', 'Excellent', 'Stock', 'Cisco', '', 0, 0, 'Inventory'),
(40, '2019-06-03 00:00:00', 'Alejandro Castillo', 'Scrap', '', 'Loading box->Power supply->ATL-CIS-007', '23296', 'Excellent', 'Stock', 'Cisco', '', 0, 0, 'Inventory'),
(41, '2019-06-03 00:00:00', 'Alejandro Castillo', 'Scrap', '', 'Loading box->Power supply->ATL-CIS-007', '22683', 'Excellent', 'Stock', 'Cisco', '', 0, 0, 'Inventory'),
(42, '2019-06-03 00:00:00', 'Alejandro Castillo', 'Stock', 'FCH2309V0F5', 'Computer->Server->UCS C240 M4', '', 'Excellent', 'Stock', 'Cisco', '', 0, 0, 'Inventory'),
(43, '2019-06-03 00:00:00', 'Alejandro Castillo', 'Stock', 'FCH2226V9TX', 'Computer->Server->UCS C240 M4', '', 'Excellent', 'Stock', 'Cisco', '', 0, 0, 'Inventory'),
(44, '2019-06-03 00:00:00', 'Alejandro Castillo', 'Stock', 'FCH2226V99R', 'Computer->Server->UCS C240 M4', '', 'Excellent', 'Stock', 'Cisco', '', 0, 0, 'Inventory'),
(45, '2019-06-03 00:00:00', 'Alejandro Castillo', 'Stock', 'FCH2225V0TL', 'Computer->Server->UCS C240 M4', '', 'Excellent', 'Stock', 'Cisco', '', 0, 0, 'Inventory'),
(46, '2019-06-03 00:00:00', 'Alejandro Castillo', 'Stock', 'FCH2308V0ZM', 'Computer->Server->UCS C240 M4', '', 'Excellent', 'Stock', 'Cisco', '', 0, 0, 'Inventory'),
(47, '2019-06-03 00:00:00', 'Alejandro Castillo', 'Stock', 'FCH2309V0DJ', 'Computer->Server->UCS C240 M4', '', 'Excellent', 'Stock', 'Cisco', '', 0, 0, 'Inventory'),
(48, '2019-06-03 00:00:00', 'Alejandro Castillo', 'Stock', 'FCH2309V04Y', 'Computer->Server->UCS C240 M4', '', 'Excellent', 'Stock', 'Cisco', '', 0, 0, 'Inventory'),
(49, '2019-06-03 00:00:00', 'Alejandro Castillo', 'Stock', 'FCH2309V0FA', 'Computer->Server->UCS C240 M4', '', 'Excellent', 'Stock', 'Cisco', '', 0, 0, 'Inventory'),
(50, '2019-06-03 00:00:00', 'Alejandro Castillo', 'Stock', 'FCH2309V0E5', 'Computer->Server->UCS C240 M4', '', 'Excellent', 'Stock', 'Cisco', '', 0, 0, 'Inventory'),
(51, '2019-06-03 00:00:00', 'Alejandro Castillo', 'Stock', 'FCH2309V04U', 'Computer->Server->UCS C240 M4', '', 'Excellent', 'Stock', 'Cisco', '', 0, 0, 'Inventory'),
(52, '2019-06-03 00:00:00', 'Alejandro Castillo', 'Stock', 'FCH2306V0DL', 'Computer->Server->UCS C240 M4', '', 'Excellent', 'Stock', 'Cisco', '', 0, 0, 'Inventory'),
(53, '2019-06-03 00:00:00', 'Alejandro Castillo', 'Stock', 'FCH2305V0ZW', 'Computer->Server->UCS C240 M4', '', 'Excellent', 'Stock', 'Cisco', '', 0, 0, 'Inventory'),
(54, '2019-06-03 00:00:00', 'Alejandro Castillo', 'Stock', 'FCH2309V0DB', 'Computer->Server->UCS C240 M4', '', 'Excellent', 'Stock', 'Cisco', '', 0, 0, 'Inventory'),
(55, '2019-06-03 00:00:00', 'Alejandro Castillo', 'Stock', 'FCH2309V0F1', 'Computer->Server->UCS C240 M4', '', 'Excellent', 'Stock', 'Cisco', '', 0, 0, 'Inventory'),
(56, '2019-06-03 00:00:00', 'Alejandro Castillo', 'Stock', 'FCH2309V0D9', 'Computer->Server->UCS C240 M4', '', 'Excellent', 'Stock', 'Cisco', '', 0, 0, 'Inventory'),
(57, '2019-06-03 00:00:00', 'Alejandro Castillo', 'Stock', 'FCH2309V0E7', 'Computer->Server->UCS C240 M4', '', 'Excellent', 'Stock', 'Cisco', '', 0, 0, 'Inventory'),
(58, '2019-06-03 00:00:00', 'Alejandro Castillo', 'Stock', 'FCH2212V0PZ', 'Computer->Server->UCS C240 M4', '', 'Excellent', 'Stock', 'Cisco', '', 0, 0, 'Inventory'),
(59, '2019-06-03 00:00:00', 'Alejandro Castillo', 'Stock', 'FCH2309V0DN', 'Computer->Server->UCS C240 M4', '', 'Excellent', 'Stock', 'Cisco', '', 0, 0, 'Inventory'),
(60, '2019-06-03 00:00:00', 'Alejandro Castillo', 'Stock', 'FCH2219V098', 'Computer->Server->UCS C240 M4', '', 'Excellent', 'Stock', 'Cisco', '', 0, 0, 'Inventory'),
(61, '2019-06-03 00:00:00', 'Alejandro Castillo', 'Stock', 'FCH23077M4Y', 'Computer->Server->UCS C240 M4', '', 'Excellent', 'Stock', 'Cisco', '', 0, 0, 'Inventory'),
(62, '2019-06-03 00:00:00', 'Alejandro Castillo', 'Stock', 'FLM2301W05K', 'Ethernet Unit->Terminal Server->ISR4331K9', '', 'Excellent', 'Stock', 'Cisco', '', 0, 0, 'Inventory'),
(63, '2019-06-03 00:00:00', 'Alejandro Castillo', 'Stock', 'FOC2246U0DH', 'Ethernet Unit->Switch->WS-C3850-48T', '', 'Excellent', 'Stock', 'Cisco', '', 0, 0, 'Inventory'),
(64, '2019-06-03 00:00:00', 'Alejandro Castillo', 'Stock', 'FCW2246GH8N', 'Ethernet Unit->Switch->WS-C3850-48T', '', 'Excellent', 'Stock', 'Cisco', '', 0, 0, 'Inventory'),
(65, '2019-06-03 00:00:00', 'Alejandro Castillo', 'Stock', 'FCW2249F0DG', 'Ethernet Unit->Switch->WS-C3850-48T', '', 'Excellent', 'Stock', 'Cisco', '', 0, 0, 'Inventory'),
(66, '2019-06-03 00:00:00', 'Alejandro Castillo', 'Stock', 'FLM2249W0AS', 'Ethernet Unit->Terminal Server->ISR4331K9', '', 'Excellent', 'Stock', 'Cisco', '', 0, 0, 'Inventory'),
(67, '2019-06-03 00:00:00', 'Alejandro Castillo', 'Stock', 'FLM2301W05J', 'Ethernet Unit->Terminal Server->ISR4331K9', '', 'Excellent', 'Stock', 'Cisco', '', 0, 0, 'Inventory'),
(68, '2019-06-03 00:00:00', 'Alejandro Castillo', 'Stock', 'FOC2247V2G4', 'Ethernet Unit->Switch-Ethernet->WS-C2960S-48TD-L', '', 'Excellent', 'Stock', 'Cisco', '', 0, 0, 'Inventory'),
(69, '2019-06-03 00:00:00', 'Alejandro Castillo', 'Stock', 'FCW2246B0ZQ', 'Ethernet Unit->Switch-Ethernet->WS-C2960S-48TD-L', '', 'Excellent', 'Stock', 'Cisco', '', 0, 0, 'Inventory'),
(70, '2019-06-03 00:00:00', 'Alejandro Castillo', 'Stock', 'FOC2247V2BM', 'Ethernet Unit->Switch-Ethernet->WS-C2960S-48TD-L', '', 'Excellent', 'Stock', 'Cisco', '', 0, 0, 'Inventory'),
(71, '2019-06-03 00:00:00', 'Alejandro Castillo', 'Stock', 'FWC2246B0W8', 'Ethernet Unit->Switch-Ethernet->WS-C2960S-48TD-L', '', 'Excellent', 'Stock', 'Cisco', '', 0, 0, 'Inventory'),
(72, '2019-06-03 00:00:00', 'Alejandro Castillo', 'Stock', 'FOCC2247V1TG', 'Ethernet Unit->Switch-Ethernet->WS-C2960S-48TD-L', '', 'Excellent', 'Stock', 'Cisco', '', 0, 0, 'Inventory'),
(73, '2019-06-03 00:00:00', 'Alejandro Castillo', 'Stock', 'FWC2247A4Q4', 'Ethernet Unit->Switch-Ethernet->WS-C2960S-48TD-L', '', 'Excellent', 'Stock', 'Cisco', '', 0, 0, 'Inventory'),
(74, '2019-06-03 00:00:00', 'Alejandro Castillo', 'Stock', 'FCW2237B1CB', 'Ethernet Unit->Switch-Ethernet->WS-C2960S-24TD-L', '', 'Excellent', 'Stock', 'Cisco', '', 0, 0, 'Inventory'),
(75, '2019-06-03 00:00:00', 'Alejandro Castillo', 'Stock', 'FOC2234S1BX', 'Ethernet Unit->Switch-Ethernet->WS-C2960S-24TD-L', '', 'Excellent', 'Stock', 'Cisco', '', 0, 0, 'Inventory'),
(76, '2019-06-03 00:00:00', 'Alejandro Castillo', 'Stock', 'FCW2246B0WT', 'Ethernet Unit->Switch-Ethernet->WS-C2960S-48TD-L', '', 'Excellent', 'Stock', 'Cisco', '', 0, 0, 'Inventory'),
(77, '2019-06-03 00:00:00', 'Alejandro Castillo', 'Stock', 'FCW2247A4UZ', 'Ethernet Unit->Switch-Ethernet->WS-C2960S-24TD-L', '', 'Excellent', 'Stock', 'Cisco', '', 0, 0, 'Inventory'),
(78, '2019-06-03 00:00:00', 'Alejandro Castillo', 'Stock', 'FOC2234S1B3', 'Ethernet Unit->Switch-Ethernet->WS-C2960S-24TD-L', '', 'Excellent', 'Stock', 'Cisco', '', 0, 0, 'Inventory'),
(79, '2019-06-03 00:00:00', 'Alejandro Castillo', 'Stock', 'FCW2247A4S1', 'Ethernet Unit->Switch-Ethernet->WS-C2960S-24TD-L', '', 'Excellent', 'Stock', 'Cisco', '', 0, 0, 'Inventory'),
(80, '2019-06-03 00:00:00', 'Alejandro Castillo', 'Stock', 'FOC2234S1B7', 'Ethernet Unit->Switch-Ethernet->WS-C2960S-24TD-L', '', 'Excellent', 'Stock', 'Cisco', '', 0, 0, 'Inventory'),
(81, '2019-06-03 00:00:00', 'Alejandro Castillo', 'Stock', 'FOC2234S1BQ', 'Ethernet Unit->Switch-Ethernet->WS-C2960S-24TD-L', '', 'Excellent', 'Stock', 'Cisco', '', 0, 0, 'Inventory'),
(82, '2019-06-03 00:00:00', 'Alejandro Castillo', 'Stock', 'FOC2247V2HC', 'Ethernet Unit->Switch-Ethernet->WS-C2960S-48TD-L', '', 'Excellent', 'Stock', 'Cisco', '', 0, 0, 'Inventory'),
(83, '2019-06-03 00:00:00', 'Alejandro Castillo', 'Stock', 'FOC2247V1RU', 'Ethernet Unit->Switch-Ethernet->WS-C2960S-48TD-L', '', 'Excellent', 'Stock', 'Cisco', '', 0, 0, 'Inventory'),
(84, '2019-06-03 00:00:00', 'Alejandro Castillo', 'Stock', 'FCW2247A4TY', 'Ethernet Unit->Switch-Ethernet->WS-C2960S-24TD-L', '', 'Excellent', 'Stock', 'Cisco', '', 0, 0, 'Inventory'),
(85, '2019-06-03 00:00:00', 'Alejandro Castillo', 'Stock', 'FOC2234S1BS', 'Ethernet Unit->Switch-Ethernet->WS-C2960S-24TD-L', '', 'Excellent', 'Stock', 'Cisco', '', 0, 0, 'Inventory'),
(86, '2019-06-03 00:00:00', 'Alejandro Castillo', 'Stock', 'FOC2234S1B0', 'Ethernet Unit->Switch-Ethernet->WS-C2960S-24TD-L', '', 'Excellent', 'Stock', 'Cisco', '', 0, 0, 'Inventory'),
(87, '2019-06-03 00:00:00', 'Alejandro Castillo', 'Stock', 'FOC2247V1VE', 'Ethernet Unit->Switch-Ethernet->WS-C2960S-48TD-L', '', 'Excellent', 'Stock', 'Cisco', '', 0, 0, 'Inventory'),
(88, '2019-06-03 00:00:00', 'Alejandro Castillo', 'Stock', 'FCW2247A4RM', 'Ethernet Unit->Switch-Ethernet->WS-C2960S-24TD-L', '', 'Excellent', 'Stock', 'Cisco', '', 0, 0, 'Inventory'),
(89, '2019-06-03 00:00:00', 'Alejandro Castillo', 'Stock', 'FOC2234V28S', 'Ethernet Unit->Switch-Ethernet->WS-C2960S-24TD-L', '', 'Excellent', 'Stock', 'Cisco', '', 0, 0, 'Inventory'),
(90, '2019-06-03 00:00:00', 'Alejandro Castillo', 'Stock', 'FCW2247A4TN', 'Ethernet Unit->Switch-Ethernet->WS-C2960S-24TD-L', '', 'Excellent', 'Stock', 'Cisco', '', 0, 0, 'Inventory'),
(91, '2019-06-03 00:00:00', 'Alejandro Castillo', 'Stock', 'FOC2234S1BK', 'Ethernet Unit->Switch-Ethernet->WS-C2960S-24TD-L', '', 'Excellent', 'Stock', 'Cisco', '', 0, 0, 'Inventory'),
(92, '2019-06-03 00:00:00', 'Alejandro Castillo', 'Stock', 'FOC2247V1YS', 'Ethernet Unit->Switch-Ethernet->WS-C2960S-48TD-L', '', 'Excellent', 'Stock', 'Cisco', '', 0, 0, 'Inventory'),
(93, '2019-06-03 00:00:00', 'Alejandro Castillo', 'Stock', 'FOC2247V2HD', 'Ethernet Unit->Switch-Ethernet->WS-C2960S-48TD-L', '', 'Excellent', 'Stock', 'Cisco', '', 0, 0, 'Inventory'),
(94, '2019-06-03 00:00:00', 'Alejandro Castillo', 'Stock', 'FCW2247A4PK', 'Ethernet Unit->Switch-Ethernet->WS-C2960S-24TD-L', '', 'Excellent', 'Stock', 'Cisco', '', 0, 0, 'Inventory'),
(95, '2019-06-03 00:00:00', 'Alejandro Castillo', 'Stock', 'FOC2234V27N', 'Ethernet Unit->Switch-Ethernet->WS-C2960S-24TD-L', '', 'Excellent', 'Stock', 'Cisco', '', 0, 0, 'Inventory'),
(96, '2019-06-03 00:00:00', 'Alejandro Castillo', 'Stock', 'FOC2247V1S1', 'Ethernet Unit->Switch-Ethernet->WS-C2960S-48TD-L', '', 'Excellent', 'Stock', 'Cisco', '', 0, 0, 'Inventory'),
(97, '2019-06-03 00:00:00', 'Alejandro Castillo', 'Stock', 'FCW2247A4VL', 'Ethernet Unit->Switch-Ethernet->WS-C2960S-24TD-L', '', 'Excellent', 'Stock', 'Cisco', '', 0, 0, 'Inventory'),
(98, '2019-06-03 00:00:00', 'Alejandro Castillo', 'Stock', 'FOC2234S1BN', 'Ethernet Unit->Switch-Ethernet->WS-C2960S-24TD-L', '', 'Excellent', 'Stock', 'Cisco', '', 0, 0, 'Inventory'),
(99, '2019-06-03 00:00:00', 'Alejandro Castillo', 'Stock', 'FCW2247A4TJ', 'Ethernet Unit->Switch-Ethernet->WS-C2960S-24TD-L', '', 'Excellent', 'Stock', 'Cisco', '', 0, 0, 'Inventory'),
(100, '2019-06-03 00:00:00', 'Alejandro Castillo', 'Stock', 'FCW2234B3LG', 'Ethernet Unit->Switch-Ethernet->WS-C2960S-24TD-L', '', 'Excellent', 'Stock', 'Cisco', '', 0, 0, 'Inventory'),
(101, '2019-06-03 00:00:00', 'Alejandro Castillo', 'Stock', 'FCW2247A4Q0', 'Ethernet Unit->Switch-Ethernet->WS-C2960S-24TD-L', '', 'Excellent', 'Stock', 'Cisco', '', 0, 0, 'Inventory');

-- --------------------------------------------------------

--
-- Table structure for table `brand`
--

CREATE TABLE `brand` (
  `id_brand` int(20) NOT NULL,
  `brand_name` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `brand`
--

INSERT INTO `brand` (`id_brand`, `brand_name`) VALUES
(1, 'Acer'),
(2, 'Dell'),
(4, 'HP'),
(5, 'DeWalt');

-- --------------------------------------------------------

--
-- Table structure for table `ciscoincidents`
--

CREATE TABLE `ciscoincidents` (
  `id_inc` int(11) NOT NULL,
  `inc_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `User_name` varchar(50) NOT NULL,
  `inc_number` varchar(15) NOT NULL,
  `inc_description` varchar(200) NOT NULL,
  `inc_owner` varchar(20) NOT NULL,
  `inc_date_closed` datetime NOT NULL,
  `comments` varchar(100) NOT NULL,
  `elapsed_time` int(5) NOT NULL,
  `incStatus` varchar(30) NOT NULL,
  `IncClosedby` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ciscoincidents`
--

INSERT INTO `ciscoincidents` (`id_inc`, `inc_date`, `User_name`, `inc_number`, `inc_description`, `inc_owner`, `inc_date_closed`, `comments`, `elapsed_time`, `incStatus`, `IncClosedby`) VALUES
(14, '2019-05-07 10:11:34', 'Jose Antonio Chairez Garcia', '05072019 ', 'Prueba 1', 'Cisco prueba', '2019-05-08 12:17:10', 'caso agregado.', 0, 'Closed', 'Luis  Manriquez');

-- --------------------------------------------------------

--
-- Table structure for table `clients`
--

CREATE TABLE `clients` (
  `id_clients` int(20) NOT NULL,
  `clients_name` varchar(20) NOT NULL,
  `clients_type` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `clients`
--

INSERT INTO `clients` (`id_clients`, `clients_name`, `clients_type`) VALUES
(1, 'Cisco', 'Externo'),
(2, 'Foxconn', 'Interno');

-- --------------------------------------------------------

--
-- Table structure for table `insumos`
--

CREATE TABLE `insumos` (
  `id_insumos` int(40) NOT NULL,
  `insumos_date` datetime NOT NULL,
  `insumos_username` varchar(20) NOT NULL,
  `insumos_type` varchar(20) NOT NULL,
  `insumos_name` varchar(150) NOT NULL,
  `insumos_qty` int(10) NOT NULL,
  `insumos_client` varchar(20) NOT NULL,
  `insumos_area` varchar(20) NOT NULL,
  `insumos_areanumber` int(20) NOT NULL,
  `insumos_comments` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `insumos`
--

INSERT INTO `insumos` (`id_insumos`, `insumos_date`, `insumos_username`, `insumos_type`, `insumos_name`, `insumos_qty`, `insumos_client`, `insumos_area`, `insumos_areanumber`, `insumos_comments`) VALUES
(195, '2019-05-28 00:39:59', 'Hugo Landa', 'Compra', 'Accesorios->Tools->DCF610S2', 3, 'Foxconn', '', 0, 'Screwdriver kit'),
(196, '2019-05-28 00:43:45', 'Carlos Sandoval', 'Consumo', 'Accesorios->Tools->DCF610S2', -1, 'Foxconn', 'Adelphi2C', 0, 'Para usar en todas las estaciones');

-- --------------------------------------------------------

--
-- Table structure for table `inventory`
--

CREATE TABLE `inventory` (
  `id_inventory` int(20) NOT NULL,
  `inventory_date` datetime NOT NULL,
  `inventory_username` varchar(40) NOT NULL,
  `inventory_type` varchar(20) NOT NULL,
  `inventory_name` varchar(150) NOT NULL,
  `inventory_qty` int(20) NOT NULL,
  `inventory_client` varchar(15) NOT NULL,
  `inventory_area` varchar(30) NOT NULL,
  `inventory_comments` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `inventory`
--

INSERT INTO `inventory` (`id_inventory`, `inventory_date`, `inventory_username`, `inventory_type`, `inventory_name`, `inventory_qty`, `inventory_client`, `inventory_area`, `inventory_comments`) VALUES
(37, '2019-05-28 00:39:59', 'Hugo Landa', 'Compra', 'Accesorios->Tools->DCF610S2', 2, 'Foxconn', '', 'Screwdriver Kit'),
(38, '2019-06-03 00:00:00', 'Alejandro Castillo', 'Stock', 'Accessory->Power supply->341-0560-03', 246, 'Cisco', '', 'Inventory'),
(39, '2019-06-03 00:00:00', 'Alejandro Castillo', 'Scrap', 'Accessory->Power supply->341-0560-03', 16, 'Cisco', '', 'Inventory'),
(40, '2019-06-03 00:00:00', 'Alejandro Castillo', 'Stock', 'Accessory->Power supply->341-0561-02', 126, 'Cisco', '', 'Inventory'),
(41, '2019-06-03 00:00:00', 'Alejandro Castillo', 'Scrap', 'Accessory->Power supply->341-0561-02', 35, 'Cisco', '', 'Inventory'),
(42, '2019-06-03 00:00:00', 'Alejandro Castillo', 'Stock', 'Phone->IP Phone->7960 Series', 37, 'Cisco', '', 'Inventory, Added 22 06-22-19'),
(43, '2019-06-03 00:00:00', 'Alejandro Castillo', 'Stock', 'Phone->IP Phone->7960', 4, 'Cisco', '', 'Inventory'),
(45, '2019-06-03 00:00:00', 'Alejandro Castillo', 'Stock', 'Accessory->Usb cable->Usb extension ', 0, 'Cisco', '', 'Inventory'),
(46, '2019-06-03 00:00:00', 'Alejandro Castillo', 'Stock', 'Accessory->Patch Cord Cable->Cat6 S/FTP Grey 10\"', 3240, 'Cisco', '', 'Inventory, added 3230 06-22-19'),
(47, '2019-06-03 00:00:00', 'Alejandro Castillo', 'Stock', 'Accessory->Cable->Patch cord 2\"', 1, 'Cisco', '', 'Inventory'),
(48, '2019-06-03 00:00:00', 'Alejandro Castillo', 'Scrap', 'Accessory->Scanner bluetooth->CR0078-SC1001WR', 1, 'Cisco', '', 'Inventory'),
(49, '2019-06-03 00:00:00', 'Alejandro Castillo', 'Stock', 'Accessory->Cable->Patch cord 3\"', 1, 'Cisco', '', 'Inventory'),
(50, '2019-06-03 00:00:00', 'Alejandro Castillo', 'Stock', 'Accessory->Cable->Patch cord 7\"', 1, 'Cisco', '', 'Inventory'),
(51, '2019-06-03 00:00:00', 'Alejandro Castillo', 'Stock', 'Accessory->Uplink Cable->37-0960-03', 620, 'Cisco', '', 'Inventory, added 43 06-22-19'),
(52, '2019-06-03 00:00:00', 'Alejandro Castillo', 'Scrap', 'Accessory->Uplink Cable->37-0960-03', 1905, 'Cisco', '', 'Inventory, added 1434 06-22-19'),
(53, '2019-06-03 00:00:00', 'Alejandro Castillo', 'Scrap', 'Accessory->Cable->DM-IB-160-50-GND-LP', 174, 'Cisco', '', 'Inventory, added 145 06-22-19'),
(54, '2019-06-03 00:00:00', 'Alejandro Castillo', 'Scrap', 'Loading box->Cable->SP-IB-160-28-20GND', 72, 'Cisco', '', 'Inventory, added 50 06-22-19'),
(55, '2019-06-03 00:00:00', 'Alejandro Castillo', 'Stock', 'Accessory->Stack Cable->37-1121-01', 326, 'Cisco', '', 'Inventory'),
(57, '2019-06-03 00:00:00', 'Alejandro Castillo', 'Stock', 'Accessory->Connector->mstb-2,5/ 4-st-5,08', 83, 'Cisco', '', 'Inventory'),
(58, '2019-06-03 00:00:00', 'Alejandro Castillo', 'Stock', 'Accessory->Cable->72-101029-01', 14, 'Cisco', '', 'Inventory'),
(59, '2019-06-03 00:00:00', 'Alejandro Castillo', 'Stock', 'Accessory->Blade Stack Cable Fibonacy->37-1322-03', 234, 'Cisco', '', 'Inventory, added 95 06-22-19'),
(60, '2019-06-03 00:00:00', 'Alejandro Castillo', 'Stock', 'Test Units->Card->C9300-24T', 60, 'Cisco', '', 'Inventory, added 15 06-22-19'),
(61, '2019-06-03 00:00:00', 'Alejandro Castillo', 'Scrap', 'Test Units->Card->C9300-24T', 40, 'Cisco', '', 'Inventory'),
(62, '2019-06-03 00:00:00', 'Alejandro Castillo', 'Stock', 'Accessory->Usb A to Mini B->UR030-003', 149, 'Cisco', '', 'Inventory'),
(63, '2019-06-03 00:00:00', 'Alejandro Castillo', 'Stock', 'Accessory->Stack Cable->800-40403-01', 841, 'Cisco', '', 'Inventory'),
(64, '2019-06-03 00:00:00', 'Alejandro Castillo', 'Scrap', 'Accessory->Stack Cable->800-40403-01', 85, 'Cisco', '', 'Inventory, added 60 06-22-19'),
(65, '2019-06-03 00:00:00', 'Alejandro Castillo', 'Stock', 'Accessory->Stack cable->800-40404-01', 6, 'Cisco', '', 'Inventory'),
(66, '2019-06-03 00:00:00', 'Alejandro Castillo', 'Stock', 'Accessory->RJ45 Connector->NKJ-5002', 739, 'Cisco', '', 'Inventory'),
(67, '2019-06-03 00:00:00', 'Alejandro Castillo', 'Stock', 'Accessory->Cable->37-1790-01', 204, 'Cisco', '', 'Inventory'),
(68, '2019-06-03 00:00:00', 'Alejandro Castillo', 'Stock', 'Accessory->Keyboard->Cherry jg-08', 5, 'Cisco', '', 'Inventory'),
(69, '2019-06-03 00:00:00', 'Alejandro Castillo', 'Stock', 'Accessory->Power supply->341-100601-01', 342, 'Cisco', '', 'Inventory, added 27 06-22-19'),
(70, '2019-06-03 00:00:00', 'Alejandro Castillo', 'Stock', 'Accessory->Patch cord->red cat 6 ctpt1807', 70, 'Cisco', '', 'Inventory'),
(71, '2019-06-03 00:00:00', 'Alejandro Castillo', 'Stock', 'Accessory->Patch cord->590-01 RD naranja 1\"', 900, 'Cisco', '', 'Inventory'),
(72, '2019-06-03 00:00:00', 'Alejandro Castillo', 'Stock', 'Accessory->Patch cord->UL624M801RD-5FX', 300, 'Cisco', '', 'Inventory'),
(73, '2019-06-03 00:00:00', 'Alejandro Castillo', 'Stock', 'Accessory->Patch cord->590-01 OR naranja 1\"', 4690, 'Cisco', '', 'Inventory'),
(74, '2019-06-03 00:00:00', 'Alejandro Castillo', 'Stock', 'Ethernet Unit->Switch->WS-C3850-48T', 1, 'Cisco', '', 'Inventory'),
(75, '2019-06-03 00:00:00', 'Alejandro Castillo', 'Stock', 'Accessory->Card->Backplane 13-1538-01-00', 49, 'Cisco', '', 'Inventory'),
(76, '2019-06-03 00:00:00', 'Alejandro Castillo', 'Stock', 'Accessory->Card->Backplane 13-1611-02-00', 612, 'Cisco', '', 'Inventory'),
(77, '2019-06-03 00:00:00', 'Alejandro Castillo', 'Scrap', 'Accessory->Card->Backplane 13-1611-02-00', 3, 'Cisco', '', 'Inventory'),
(78, '2019-06-03 00:00:00', 'Alejandro Castillo', 'Stock', 'Accessory->Stack Cable->37-1123-01', 185, 'Cisco', '', 'Inventory'),
(79, '2019-06-03 00:00:00', 'Alejandro Castillo', 'Scrap', 'Accessory->Stack Cable->37-1123-01', 33, 'Cisco', '', 'Inventory, added 10 06-22-19'),
(80, '2019-06-22 00:00:00', 'Alejandro Castillo', 'Scrap', 'Accessory->Cable->72-101029-01', 2, 'Cisco', '', 'Inventory'),
(81, '2019-06-22 00:00:00', 'Alejandro Castillo', 'Scrap', 'Accessory->Stack Cable->37-1121-01', 46, 'Cisco', '', 'Inventory 06-22-19'),
(82, '2019-06-22 00:00:00', 'Alejandro Castillo', 'Scrap', 'Accessory->Uplink Cable->37-0891-01', 37, 'Cisco', '', 'Inventory 06-22-19'),
(83, '2019-06-22 00:00:00', 'Alejandro Castillo', 'Stock', 'Accessory->VGA Cable->603-0607', 34, 'Cisco', '', 'Inventory 06-22-19'),
(84, '2019-06-22 00:00:00', 'Alejandro Castillo', 'Stock', 'Accessory->DVI Cable->603-0607', 2, 'Cisco', '', 'Inventory 06-22-19'),
(85, '2019-06-22 00:00:00', 'Alejandro Castillo', 'Stock', 'Accessory->Fiber Cable->MPO-MPO-OM4-12F-3.0-3M-LSZH\r\n', 47, 'Cisco', '', 'Inventory 06-22-19'),
(86, '2019-06-22 00:00:00', 'Alejandro Castillo', 'Stock', 'Accessory->Fiber Cable->MPO-MPO-OM4-12F-3.0-0.3M-LSZH\r\n', 161, 'Cisco', '', 'Inventory 06-22-19'),
(87, '2019-06-22 00:00:00', 'Alejandro Castillo', 'Stock', 'Accessory->Uplink connector->10-2672-02\r\n', 40, 'Cisco', '', 'Inventory 06-22-19'),
(88, '2019-06-22 00:00:00', 'Alejandro Castillo', 'Stock', 'Accessory->Uplink connector->10-2415-03\r\n', 70, 'Cisco', '', 'Inventory 06-22-19'),
(89, '2019-06-22 00:00:00', 'Alejandro Castillo', 'Scrap', 'Accessory->Blade Stack Cable Fibonacy->37-1322-03', 36, 'Cisco', '', 'Inventory 06-22-19'),
(90, '2019-06-22 00:00:00', 'Alejandro Castillo', 'Stock', 'Accessory->Uplink Module->800-33470-01', 240, 'Cisco', '', 'Inventory 06-22-19'),
(91, '2019-06-22 00:00:00', 'Alejandro Castillo', 'Stock', 'Accessory->Uplink Module->800-33472-01', 60, 'Cisco', '', 'Inventory 06-22-19'),
(92, '2019-06-22 00:00:00', 'Alejandro Castillo', 'Stock', 'Accessory->Uplink Module->68-100981-02', 20, 'Cisco', '', 'Inventory 06-22-19'),
(93, '2019-06-22 00:00:00', 'Alejandro Castillo', 'Stock', 'Accessory->Method Cable->SP-IB-16028-20GND', 964, 'Cisco', '', 'Inventory 06-22-19'),
(94, '2019-06-22 00:00:00', 'Alejandro Castillo', 'Stock', 'Phone->UC Phone->74-8071-01', 33, 'Cisco', '', 'Inventory 06-22-19');

-- --------------------------------------------------------

--
-- Table structure for table `issues`
--

CREATE TABLE `issues` (
  `Issue_id` int(100) NOT NULL,
  `Issue_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `User_name` varchar(30) NOT NULL,
  `Production_line` varchar(35) NOT NULL,
  `Station_name` varchar(35) NOT NULL,
  `Station_Number` int(5) NOT NULL,
  `Cell_number` int(30) NOT NULL,
  `Issue_name` varchar(35) NOT NULL,
  `Issue_solution` varchar(35) NOT NULL,
  `Repaired_time` int(50) NOT NULL,
  `Issue_comment` varchar(100) NOT NULL,
  `Station_Stopped` varchar(5) NOT NULL,
  `Issue_status` varchar(25) NOT NULL,
  `issueClosedby` varchar(50) NOT NULL,
  `Station_id` int(100) NOT NULL,
  `Nomenclature` varchar(30) NOT NULL,
  `IssueTotalOpened` int(35) NOT NULL,
  `IssueTotalClosed` int(35) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `issues`
--

INSERT INTO `issues` (`Issue_id`, `Issue_date`, `User_name`, `Production_line`, `Station_name`, `Station_Number`, `Cell_number`, `Issue_name`, `Issue_solution`, `Repaired_time`, `Issue_comment`, `Station_Stopped`, `Issue_status`, `issueClosedby`, `Station_id`, `Nomenclature`, `IssueTotalOpened`, `IssueTotalClosed`) VALUES
(1, '2019-05-06 17:12:37', 'Aldo Lopez', 'Nyquist', 'ASSY', 4, 57, 'stack power', 'se retrabajo cables stack', 40, 'cable desgastado', 'no', 'closed', 'Aldo Lopez', 4, 'NyquistASSY', 0, 0),
(2, '2019-05-06 17:16:09', 'Aldo Lopez', 'Nyquist', 'ASSY', 4, 59, 'stack power', 'se remplazaron los cables', 45, 'cable danados', 'no', 'closed', 'Aldo Lopez', 4, 'NyquistASSY', 0, 0),
(93, '2019-05-07 10:38:05', 'Carlos Sandoval', 'Porter', '2C', 1, 8, 'No power com', 'se reviso fusible de back plane', 10, '', 'si', 'closed', 'Carlos Sandoval', 13, 'Porter2C', 0, 0),
(94, '2019-05-07 10:40:24', 'Carlos Sandoval', 'Porter', '2C', 1, 9, 'no power com', 'reset aplicacion', 5, 'se espera termine la carga para revisar', 'no', 'closed', 'Carlos Sandoval', 13, 'Porter2C', 0, 0),
(95, '2019-05-07 12:46:41', 'Aldo Lopez', 'Nyquist', 'ASSY', 6, 1, 'SatckPower', 'Se reemplazo el cable Power Stack ', 40, '', 'no', 'closed', 'Aldo Lopez', 4, 'NyquistASSY', 0, 0),
(96, '2019-05-07 14:32:00', 'Carlos Sandoval', 'Porter', '2C', 1, 17, 'Falla de comunicacion', '', 0, 'se revise cableado quedando pendiente cambiar back plane se ara cuando este disponible la estacion', 'no', 'closed', 'David Torres', 13, 'Porter2C', 0, 0),
(97, '2019-05-08 10:59:20', 'Jose Antonio Chairez Garcia', 'Planck', 'HIPOT', 5, 9, 'Cable stack', 'none', 1, '', 'si', 'closed', 'Jose Antonio Chairez Garcia', 56, 'PlanckHIPOT', 0, 0),
(98, '2019-05-08 11:27:12', 'Luis  Manriquez', 'Nyquist', '2C', 2, 8, 'stack cable', 'se cambio el cable prueba', 20, 'se retrabajo el conector', 'no', 'closed', 'Luis  Manriquez', 3, 'Nyquist2C', 0, 0),
(99, '2019-05-08 17:17:04', 'Luis  Manriquez', 'Nyquist', '2C', 2, 2, 'stack', 'cable retrabajado', 20, 'prueba produccion 08/05/19', 'no', 'closed', 'Luis  Manriquez', 3, 'Nyquist2C', 0, 0),
(100, '2019-05-09 11:22:47', 'Aldo Lopez', 'Nyquist', 'ASSY', 4, 4, 'stack power', 'cambiar puertos de loadbox', 20, '', 'no', 'closed', 'Aldo Lopez Joaquin', 4, 'NyquistASSY', 0, 0),
(101, '2019-05-09 14:49:24', 'Aldo Aldo Lopez', 'Nyquist', 'ASSY', 4, 8, 'stack power', 'reemplazar cables stack', 40, '\r\n', 'no', 'closed', 'Aldo Lopez Joaquin', 4, 'NyquistASSY', 0, 0),
(102, '2019-05-09 23:19:37', 'David Torres', 'Orsted', 'BST', 4, 7, 'NO COMUNICA', 'SE AJUSTARON LOS TORNILLOS DE SOPOR', 20, 'LA PIEZA NO ENTRABA POR ESTAR DESALINEADA LA BASE DE COMUNICACION', 'no', 'closed', 'David Torres', 61, 'OrstedBST', 0, 0),
(103, '2019-05-09 23:44:23', 'David Torres', 'Nyquist', 'ASSY', 4, 66, 'FALLA SWCB', 'SE CAMBIO CABLE DEL STACK POWER', 30, 'FALLA DE SWCB EN LA VERIFICACION', 'si', 'closed', 'David Torres', 4, 'NyquistASSY', 0, 0),
(104, '2019-05-09 23:55:58', 'Javier Osbaldo', 'Nyquist', 'ASSY', 1, 57, 'POWER SUPPLY  FEP', ' FUSIBLE ABIERTO', 25, 'SE CAMBIO FUSIBLE Y SE VERIFICO CELDA ', 'no', 'closed', 'Javier Osbaldo', 4, 'NyquistASSY', 0, 0),
(105, '2019-05-10 00:06:43', 'Javier Osbaldo', 'Nyquist', 'ASSY', 7, 1, 'UNIDAD NO COMUNICA, NO ENCIENDE', 'SE AJUSTA FIXTURA CABLE SWCB ', 25, 'CONECTOR INVERTIDO, SE CORRIGE EL PROBLEMA', 'no', 'closed', 'Javier Osbaldo', 4, 'NyquistASSY', 0, 0),
(106, '2019-05-10 00:47:55', 'Fernando Valenzuela', 'Porter', 'BST', 1, 1, 'falla de estacion completa', 'Reinicio de wyze', 5, 'Sistema congelado, no permitia inicializar ciclo de inicio de pieza al operador', 'si', 'closed', 'Fernando Valenzuela', 12, 'PorterBST', 0, 0),
(107, '2019-05-10 01:21:27', 'Fernando Valenzuela', 'Nyquist', 'BST', 20, 3, 'No ajusta stack a unidad de prueba', 'Ajuste de stack', 15, 'El stack se encontraba en mala posicion. Se ajusto y se probo con exito en 2 unidades', 'no', 'closed', 'Fernando Valenzuela', 2, 'NyquistBST', 0, 0),
(108, '2019-05-10 01:37:48', 'JUAN  NORMANDO', 'Nyquist', 'ASSY', 4, 59, 'SWCB TEST', 'SE REPARO CELDA', 30, 'SOLO SE CAMBIO CABLE STACK', 'si', 'closed', 'Juan Normando', 4, 'NyquistASSY', 0, 0),
(109, '2019-05-10 02:59:43', 'Fernando Valenzuela', 'Nyquist', 'BST', 17, 18, 'falla puerto 15 y 16', 'cambio de puntas de cables', 20, 'se cambio las puntas de ambos cables', 'no', 'closed', 'Fernando Valenzuela', 2, 'NyquistBST', 0, 0),
(110, '2019-05-10 03:00:02', 'JUAN  NORMANDO', 'Nyquist', 'ASSY', 4, 0, 'SWCB TEST', 'SE REPARO LA CELDA', 25, 'SE CAMBIO CABLE STACK', 'si', 'closed', 'Juan Normando', 4, 'NyquistASSY', 0, 0),
(111, '2019-05-10 04:11:16', 'Fernando Valenzuela', 'Nyquist', 'BST', 20, 18, 'portstatus', 'cambio de punta de cable ethernet', 10, 'se cambio la punta que va hacia la unidad', 'no', 'closed', 'Fernando Valenzuela', 2, 'NyquistBST', 0, 0),
(112, '2019-05-10 05:10:15', 'Miguel Angel  Rivera', 'Porter', 'ASSY', 2, 0, 'IMPRESION FUERA DE RANGO TOP', 'SE AJUSTO PARAMETROS TOP ', 5, 'ETIQUETAS CON IMPRESIONES FURA DE RANGO TOP ', 'no', 'closed', 'Miguel Angel  Rivera', 14, 'PorterASSY', 0, 0),
(113, '2019-05-10 05:14:25', 'Miguel Angel  Rivera', 'Nyquist', 'ASSY', 2, 1, 'IMPRESIONES MUY FUERA DE RANGO TOP', 'SE CALIBRO IMPRESORA', 10, 'SE REIMPRIMIERON 2 ETIQUETAS', 'no', 'closed', 'Miguel Angel  Rivera', 4, 'NyquistASSY', 0, 0),
(114, '2019-05-10 05:24:56', 'Miguel Angel  Rivera', 'Nyquist', 'ASSY', 8, 1, 'INTERFASE GRAFICA BLOQUEADA', 'SE RESETEO WYSE', 5, 'NO SE PODIA CONTINUAR CON PRUEBAS', 'no', 'closed', 'Hector Guerrero', 4, 'NyquistASSY', 0, 0),
(115, '2019-05-10 05:56:11', 'Miguel Angel  Rivera', 'Nyquist', 'ASSY', 2, 1, 'STACKPWR440SH', 'SE CAMBIO CABLE STACK', 40, 'SE PROBO UNIDAD PARA VALIDAR REPARACION ESTA PASO LAS PRUEBAS', 'no', 'closed', 'Miguel Angel  Rivera', 4, 'NyquistASSY', 0, 0),
(116, '2019-05-10 05:59:51', 'Miguel Angel  Rivera', 'Nyquist', 'ASSY', 2, 5, 'POWER SUPPLY', 'SE CAMBIO POWER SUPPLY', 30, 'SE CAMBIO POR LAS POWER DE LA CELDA 0 ESPERANDO VALIDACION ', 'no', 'closed', 'Miguel Angel  Rivera', 4, 'NyquistASSY', 0, 0),
(117, '2019-05-10 06:03:13', 'Miguel Angel  Rivera', 'Nyquist', 'ASSY', 2, 57, 'STACKPWR440SH', 'SE CAMBIO CABLES STACK', 40, 'SE ASIGNO UNIDAD PARA VALIDAR REPARACION DE CELDA', 'no', 'closed', 'Miguel Angel  Rivera', 4, 'NyquistASSY', 0, 0),
(118, '2019-05-10 08:10:28', 'Miguel Angel  Rivera', 'Nyquist', 'ASSY', 2, 5, 'power supply', 'SE DETECTO FUSIBLE ABIERTO', 40, 'SE ASIGANA UNIDAD EN ESPERA DE VALIDAR  REPARACION', 'no', 'closed', 'Miguel Angel  Rivera', 4, 'NyquistASSY', 0, 0),
(119, '2019-05-10 08:16:40', 'Miguel Angel  Rivera', 'Nyquist', 'ASSY', 2, 67, 'STACKPWR4405SH', 'SE CAMBIO CABLE STACK', 40, 'SE CAMBIARON  CABLES 2  ', 'no', 'closed', 'Miguel Angel  Rivera', 4, 'NyquistASSY', 0, 0),
(120, '2019-05-10 22:49:26', 'Francisco Javier Ochoa', 'Nyquist', 'ASSY', 5, 56, 'check stack pw', 'se invirtieron los cables de loadin', 30, 'se checo la celda y paso la unidad en prueba.', 'no', 'closed', 'Francisco Javier Ochoa', 4, 'NyquistASSY', 0, 0),
(121, '2019-05-10 22:54:54', 'Francisco Javier Ochoa', 'Nyquist', 'HIPOT', -1, 3, 'no klemtest', 'se hizo un rastop y se abrieron las', 3, 'fallaron las cuatro celdas', 'si', 'closed', 'Francisco Javier Ochoa', 7, 'NyquistHIPOT', 0, 0),
(122, '2019-05-10 23:35:29', 'Juan Carlos Tenorio', 'Nyquist', 'ASSY', 1, 1, 'power fep', 'cambio de fusible', 10, 'se probo unidad y paso', 'no', 'closed', 'Juan Carlos Tenorio', 4, 'NyquistASSY', 0, 0),
(123, '2019-05-11 01:15:26', 'Miguel Angel  Rivera', 'Porter', 'ASSY', 2, 11, 'NO IMPRIME ETIQUETAS', 'SE ACCESO AL SISTEMA OPERATIVO DE W', 10, 'PEDIA PASSWORD DE USUARIO SE EJECUTO PROGRAMA CISCO POD ', 'no', 'closed', 'Miguel Angel  Rivera', 14, 'PorterASSY', 0, 0),
(124, '2019-05-11 01:41:10', 'Juan Normando', 'Porter', 'ASSY', 1, 1, 'ETIQUETA MOVIDA', 'SE MOVIERON PARAMETROS', 8, 'AJUSTE DE IMPRESORA', 'no', 'closed', 'Hector Guerrero', 14, 'PorterASSY', 0, 0),
(125, '2019-05-11 02:07:06', 'Miguel Angel  Rivera', 'Porter', 'ASSY', 3, 17, 'SE TERMINO ETIQUETA', 'SE AGREGO ROLLO NUEVO', 10, 'SE AJUSTARON PARAMETROS Y SE REIMPRIMIO ETQUETA', 'no', 'closed', 'David Torres', 14, 'PorterASSY', 0, 0),
(126, '2019-05-11 02:11:21', 'Juan Normando', 'Nyquist', 'ASSY', 1, 1, 'BLOQUEO DE PASSWORD', 'SE RESETEO PC', 5, 'N/A', 'no', 'closed', 'Hector Guerrero', 4, 'NyquistASSY', 0, 0),
(127, '2019-05-11 02:55:59', 'Juan Normando', 'Porter', 'FST', 5, 0, 'UNIDAD MAL CASADA', 'SEGUIMIENTO AL PROTOCOLO DE LA CASA', 15, 'SE AVISO A LA LEADER', 'no', 'closed', 'Hector Guerrero', 15, 'PorterFST', 0, 0),
(128, '2019-05-11 03:38:07', 'Miguel Angel  Rivera', 'Newton', 'ASSY', 1, 2, 'IMPRESION FUERA DE RANGO TOP', 'SE AJUSTO PARAMETROS TOP', 10, 'LA INTERFASE GRAFICA BLOQUEADA SE RESETEO WISE SE REIMPRIMIO ETIQUETA', 'no', 'closed', 'Hector Guerrero', 30, 'NewtonASSY', 0, 0),
(129, '2019-05-11 04:19:52', 'Miguel Angel  Rivera', 'Porter', 'HIPOT', 1, 1, 'NO CALIBRACION', 'CABLE DE TIERRA FALSO CONTACTO', 30, 'SE CALIBRO ESTACION  VALIDAN CELDAS', 'no', 'closed', 'Miguel Angel  Rivera', 16, 'PorterHIPOT', 0, 0),
(130, '2019-05-11 04:36:52', 'Miguel Angel  Rivera', 'Porter', 'ASSY', 1, 2, 'IMPRESION FUERA DE RANGO LEFT', 'SE AJUSTO PARAMETROS DE LEFT', 5, 'SE REIMPRIMIO ETIQUETA', 'no', 'closed', 'Hector Guerrero', 14, 'PorterASSY', 0, 0),
(131, '2019-05-11 04:41:24', 'Miguel Angel  Rivera', 'Porter', 'ASSY', 3, 17, 'NO IMPRIMIO ETIQUETA', 'SE REIMPRIME ETIQUETA', 5, 'SE INICIALIZA  BARTENDER DE NUEVO', 'no', 'closed', 'Miguel Angel  Rivera', 14, 'PorterASSY', 0, 0),
(132, '2019-05-11 06:15:43', 'Fernando Valenzuela', 'Nyquist', 'BST', 20, 18, 'portstatus', '', 0, 'Por falta de herramienta no se pudo remplazar punta de cable', 'no', 'closed', 'Hector Guerrero', 2, 'NyquistBST', 0, 0),
(133, '2019-05-11 06:16:55', 'Fernando Valenzuela', 'Porter', 'BST', 6, 1, 'portstatus', '', 0, 'por falta de herramienta no se soluciono problema de cable', 'no', 'closed', 'Hector Guerrero', 12, 'PorterBST', 0, 0),
(134, '2019-05-11 07:38:08', 'Miguel Angel  Rivera', 'Porter', 'ASSY', 2, 3, 'NO KLEMTEST', 'SE APLICO RASTOP ', 10, 'SE CERRO EL AUTO TEST ', 'si', 'closed', 'Hector Guerrero', 14, 'PorterASSY', 0, 0),
(135, '2019-05-11 09:21:39', 'Miguel Angel  Rivera', 'Porter', 'FQA', 3, 2, 'PANTALLA BLOQUEADA', 'SE RESETEO WISE', 10, 'DESPUES DE ENTRAR AL SISTEMA APLICO  RASTOP ', 'si', 'closed', 'Hector Guerrero', 17, 'PorterFQA', 0, 0),
(136, '2019-05-11 21:38:36', 'Miguel Angel  Rivera', 'Nyquist', 'FST', 12, 65, 'SE CERRO EL AUTO TEST', 'SE APLICO RASTOP', 10, 'SE CERRO EN TODAS LAS CELDAS DE LA ESTACION', 'si', 'closed', 'Miguel Angel  Rivera', 6, 'NyquistFST', 0, 0),
(137, '2019-05-11 21:39:54', 'Miguel Angel  Rivera', 'Nyquist', 'FST', 8, 32, 'SE CERRO AUTO TEST', 'SE APLICO UN RASTOP', 10, 'SE CERRO TODAS LAS CELDAS DE LA ESTACION', 'si', 'closed', 'Miguel Angel  Rivera', 6, 'NyquistFST', 0, 0),
(138, '2019-05-12 01:46:59', 'Juan Normando', 'Nyquist', 'ASSY', 5, 3, 'MAL ESCANEO', 'CONFIRMACION DEL NUMERO DE PARTE', 5, 'SE RETROALIMENTO AL OPERADOR', 'no', 'closed', 'Hector Guerrero', 4, 'NyquistASSY', 0, 0),
(139, '2019-05-12 02:17:41', 'Juan Normando', 'Nyquist', 'ASSY', 5, 58, 'POWER ON', 'SE DIAGNOSTICA LA FALLA', 25, 'SE MANDO LA UNIDAD A FALLA OK', 'no', 'closed', 'Hector Guerrero', 4, 'NyquistASSY', 0, 0),
(140, '2019-05-12 03:54:14', 'Miguel Angel  Rivera', 'Nyquist', 'ASSY', 2, 56, 'POWER SUPPY', 'SE CAMBIO FUSIBLE DE LA BACK PLANE ', 10, 'SE DETECTO FUSIBLE ABIERTO SE PRUEBA DE NUEVO  VALIDANDO REPARACION', 'no', 'closed', 'Miguel Angel  Rivera', 4, 'NyquistASSY', 0, 0),
(141, '2019-05-12 03:58:38', 'Miguel Angel  Rivera', 'Nyquist', 'FST', 12, 1, 'MULTIPLE P RECORD', 'CORRER PRUEBAS DE NUEVO A LAS UNIDA', 10, 'FALLO  AUTO TEST ALTERMINAR LAS PRUEBAS  Y FALLARON TODAS LAS CELDAS ', 'si', 'closed', 'Miguel Angel  Rivera', 6, 'NyquistFST', 0, 0),
(142, '2019-05-12 04:02:27', 'Miguel Angel  Rivera', 'Nyquist', 'ASSY', 2, 56, 'STACKPWRCONTINIT', 'SE REPARO CALBLE STACK', 40, 'CELDA DISABLE SE REPARO CABLE SE ACTIVO Y POSTERIORMENTE FALLO EN POWER SUPPLY', 'no', 'closed', 'Miguel Angel  Rivera', 4, 'NyquistASSY', 0, 0),
(143, '2019-05-12 04:08:11', 'Miguel Angel  Rivera', 'Nyquist', 'ASSY', 2, 11, 'STACKPWRCONTINIT', 'SE CAMBIO CABLE STACK', 30, 'SE CAMBIO CALBLE PERO AL CORRER PRUEBAS FALLO EN STACKPWR200SH', 'no', 'closed', 'Miguel Angel  Rivera', 4, 'NyquistASSY', 0, 0),
(144, '2019-05-12 04:16:36', 'Miguel Angel  Rivera', 'Nyquist', 'ASSY', 2, 58, 'STACKPWRCONTINIT', 'SE ACTIVO CELDA ', 5, 'CELDA  DISABLE SE VERIFICO LISTADO DE FALLAS POR CELDAS Y LA FALLA NO ERA CONSECUTIVA SE VALIDO CELD', 'no', 'closed', 'Miguel Angel  Rivera', 4, 'NyquistASSY', 0, 0),
(145, '2019-05-12 04:38:00', 'Juan Normando', 'Nyquist', 'ASSY', 1, 58, 'SWCB TEST', 'SE CAMBIO CABLE STACK', 35, 'SE REPROBO OTRA UNIDAD Y PASO', 'no', 'closed', 'Juan Normando', 4, 'NyquistASSY', 0, 0),
(146, '2019-05-12 05:03:07', 'Francisco Javier Ochoa', 'Nyquist', 'ASSY', 5, 60, 'POWER SUPPLY FEP', 'SE CAMBIO FUSIBLE DE LA EXTENSION S', 3, 'APARECIO FALLA DE STACK POWER', 'no', 'closed', 'Francisco Javier Ochoa', 4, 'NyquistASSY', 0, 0),
(147, '2019-05-12 05:07:28', 'Francisco Javier Ochoa', 'Nyquist', 'ASSY', 5, 60, 'STACK POWER', 'SE INVIRTIERON LOS CABLES SWCB', 10, 'PASO LA UNIDAD EN PRUEBA.', 'no', 'closed', 'Francisco Javier Ochoa', 4, 'NyquistASSY', 0, 0),
(148, '2019-05-12 05:13:53', 'Miguel Angel  Rivera', 'Nyquist', 'ASSY', 2, 57, 'STACKPWOPEN', 'SE ACTIVO CELDA ', 5, 'SE REPROBO EN LA CELDA 61 Y FALLO  STACKPWOPEN SE DIAGNOSTICA FALLA DE UNIDAD', 'no', 'closed', 'Luis  Manriquez', 4, 'NyquistASSY', 0, 0),
(149, '2019-05-12 05:15:56', 'Miguel Angel  Rivera', 'Nyquist', 'ASSY', 5, 57, 'NO DETECTA CLBLE USB', 'CAMBIO DE VALTICA', 5, 'SE EJECUTO COMANDO PARA VALIDAR FALLA DE REPARACION', 'no', 'closed', 'Hector Guerrero', 4, 'NyquistASSY', 0, 0),
(150, '2019-05-12 05:58:12', 'Juan Normando', 'Nyquist', 'ASSY', 1, 6, 'uut_baseload', 'SE DESABILITA CELDA ', 20, 'SOLO SE REPROBO OTRA NUEVA PIEZA', 'no', 'closed', 'Hector Guerrero', 4, 'NyquistASSY', 0, 0),
(151, '2019-05-13 05:26:05', 'Juan Normando', 'Nyquist', 'ASSY', 2, 2, 'uut_baseload', 'SE REPROBO OTRA UNIDAD Y PASO', 30, 'SE HABILITA CELDA PARA REPROBAR', 'no', 'closed', 'Hector Guerrero', 4, 'NyquistASSY', 0, 0),
(152, '2019-05-13 05:28:24', 'Juan Normando', 'Nyquist', 'ASSY', 2, 10, 'POWER ON', 'SE CAMBIA CABLE DE COMUNICACION ', 30, 'N/A', 'no', 'closed', 'Hector Guerrero', 4, 'NyquistASSY', 0, 0),
(153, '2019-05-13 05:30:42', 'Juan Normando', 'Nyquist', 'ASSY', 3, 6, 'ref_baseload', 'SOLO DE REPROBO OTRA PIEZA Y PASO', 30, 'FALLA PARECIDA A LA UUT_BASELOAD OK', 'no', 'closed', 'Hector Guerrero', 4, 'NyquistASSY', 0, 0),
(154, '2019-05-13 05:35:19', 'Juan Normando', 'Nyquist', 'ASSY', 3, 67, 'Please Check Gold Switch', 'SE RESETEAN POWER SUPPLY Y PASAN', 20, 'UNA DE LAS POWER ESTABA EN FOCOS ROJOS OK', 'no', 'closed', 'Hector Guerrero', 4, 'NyquistASSY', 0, 0),
(155, '2019-05-13 05:41:16', 'Juan Normando', 'Nyquist', 'ASSY', 3, 66, 'STACKPWR2200SH', 'SE RESETEA LOADING BOX Y PASA', 30, 'PDTA: ES LOADING BOX Y/O CONTROLBOX', 'no', 'closed', 'Hector Guerrero', 4, 'NyquistASSY', 0, 0),
(156, '2019-05-13 07:03:17', 'Carlos Sandoval', 'Nyquist', 'BST', 13, 0, 'aplicaccion no habre', 'se encendieron maquinas virtuales', 30, 'se recibio turno con estaciones 13 a la 20 sin fincionar ', 'si', 'closed', 'Carlos Sandoval', 2, 'NyquistBST', 0, 0),
(157, '2019-05-13 07:05:55', 'Carlos Sandoval', 'Nyquist', 'BDL', 13, 0, 'estacion apagada', 'se reinicio aplicacion', 20, 'se recibio estacion apagada 13 , 15 ,16', 'si', 'closed', 'Carlos Sandoval', 1, 'NyquistBDL', 0, 0),
(158, '2019-05-13 09:06:19', 'Javier Saenz', 'Porter', 'BST', 1, 0, 'estacion apagada', 'se prendio wyse', 10, 'se recibio estacion apagada', 'si', 'closed', 'Javier Saenz', 12, 'PorterBST', 0, 0),
(159, '2019-05-13 09:29:27', 'Javier  Herrera', 'Nyquist', '2C', 10, 34, 'stack con falla ', 'Ajuste de stack', 0, '', 'no', 'closed', 'Javier  Herrera', 3, 'Nyquist2C', 0, 0),
(160, '2019-05-13 09:45:30', 'Javier  Herrera', 'Nyquist', '2C', 10, 35, 'stack sin tornillos', 'se re-instalo ', 0, '', 'no', 'closed', 'Javier  Herrera', 3, 'Nyquist2C', 0, 0),
(161, '2019-05-13 10:04:08', 'Javier  Herrera', 'Nyquist', '2C', 7, 32, 'stack con falla', 'ajuste de stack', 5, '', 'no', 'closed', 'Javier  Herrera', 3, 'Nyquist2C', 0, 0),
(162, '2019-05-13 10:08:47', 'Javier  Herrera', 'Nyquist', '2C', 7, 43, 'stack  con falla', '', 0, 'El conector esta danado', 'no', 'closed', 'Hector Guerrero', 3, 'Nyquist2C', 0, 0),
(163, '2019-05-14 02:15:02', 'Miguel Angel  Rivera', 'Nyquist', 'ASSY', 1, 6, 'NO IMPRIME ETIQUETAS', 'SE EJECUTO PROGRAMA CISCO POD', 10, 'SE  REIMPRIMIO ETIQUETAS FUERA DE RANGO TOP', 'si', 'closed', 'Hector Guerrero', 4, 'NyquistASSY', 0, 0),
(164, '2019-05-14 02:18:31', 'Miguel Angel  Rivera', 'Nyquist', 'RFID', 5, 1, 'SRFID', 'SE APLICO RASTOP SRFID', 10, 'FALLARON LAS 3 CELDAS ', 'si', 'closed', 'Miguel Angel  Rivera', 5, 'NyquistRFID', 0, 0),
(165, '2019-05-14 02:19:37', 'Miguel Angel  Rivera', 'Nyquist', 'RFID', 6, 1, 'SRFID', 'SE APLICO RASTOP SRFID', 10, 'FALLARON LAS 3 CELDAS', 'si', 'closed', 'Miguel Angel  Rivera', 5, 'NyquistRFID', 0, 0),
(166, '2019-05-14 02:21:04', 'Miguel Angel  Rivera', 'Nyquist', 'RFID', 8, 1, 'SRFID', 'SE APLICO RASTOP SRFID', 10, 'FALLARON LAS 3 CELDAS SE SOLUCIONO PROBLEMA', 'si', 'closed', 'Miguel Angel  Rivera', 5, 'NyquistRFID', 0, 0),
(167, '2019-05-14 02:48:41', 'Juan Normando', 'Nyquist', 'ASSY', 3, 1, 'Golden Switch', 'SE REINICIAN P.S. DE LA GOLDEN', 10, 'POWER SUPPLY EN FOCOS ROJOS', 'no', 'closed', 'Hector Guerrero', 4, 'NyquistASSY', 0, 0),
(168, '2019-05-14 03:24:49', 'Miguel Angel  Rivera', 'Porter', 'ASSY', 1, 1, 'IMPRESION FUERA DE RANGO', 'SE AJUSTO PARAMETROS LEFT Y TOP', 10, 'ETIQUETAS CON EL TOP Y EL LEFT FUERA DE RANGO', 'no', 'closed', 'Hector Guerrero', 14, 'PorterASSY', 0, 0),
(169, '2019-05-14 04:16:36', 'Fernando Valenzuela', 'Nyquist', 'BST', 20, 14, 'PORTSTATUS', 'Cambio de cable', 10, '', 'no', 'closed', 'Fernando Valenzuela', 2, 'NyquistBST', 0, 0),
(170, '2019-05-14 04:17:42', 'Fernando Valenzuela', 'Nyquist', 'BST', 13, 9, 'porstatus', 'cambio de cables puerto 25 y 26', 15, '', 'no', 'closed', 'Fernando Valenzuela', 2, 'NyquistBST', 0, 0),
(171, '2019-05-14 04:33:14', 'Miguel Angel  Rivera', 'Nyquist', 'FST', 13, 17, 'SE CERRO  PROGRAMA', 'SE ACTIVO MWIN PARA LAS CELDAS ', 5, '', 'no', 'closed', 'Miguel Angel  Rivera', 6, 'NyquistFST', 0, 0),
(172, '2019-05-14 04:34:35', 'Miguel Angel  Rivera', 'Porter', 'ASSY', 1, 3, 'IMPRESORA MAL CALIBRADA', 'SE CALIBRO IMPRESORA', 10, 'MANDA IMPRESIONES FUERA DE RANGO TOP ', 'si', 'closed', 'Miguel Angel  Rivera', 14, 'PorterASSY', 0, 0),
(173, '2019-05-14 04:35:53', 'Fernando Valenzuela', 'Nyquist', 'BST', 20, 19, 'portstatus', 'cambio de cables 39 y 40', 15, '', 'no', 'closed', 'Fernando Valenzuela', 2, 'NyquistBST', 0, 0),
(174, '2019-05-14 04:36:13', 'Miguel Angel  Rivera', 'Porter', 'ASSY', 2, 8, 'PROG VERSION', 'SE REPROBO DE NUEVO', 10, 'PERDIO COMUNICACION SE REPROBO EN LA MISMA CELDA ESPA PASO PRUEBAS', 'si', 'closed', 'Hector Guerrero', 14, 'PorterASSY', 0, 0),
(175, '2019-05-14 04:43:09', 'Miguel Angel  Rivera', 'Nyquist', 'RFID', 1, 1, 'PANTALLA CON PASSWORD', 'SE RESETEO EQUIPO', 5, 'AL ASIGNAR PASSWORD SE BLOQUEO NOTA  LA ESTACION DEL PROBLEMA ES (UPLINK) Y NO ESTA AGREGADA POR ESO', 'si', 'closed', 'Hector Guerrero', 5, 'NyquistRFID', 0, 0),
(176, '2019-05-14 04:47:43', 'Miguel Angel  Rivera', 'Porter', 'FST', 1, 2, 'SE CERRO AUTO TEST', 'SE APLICO RATOP AUTO', 10, 'NO TIENE KLEMTER SE CERRO TODAS LAS CELDAS ', 'si', 'closed', 'Hector Guerrero', 15, 'PorterFST', 0, 0),
(177, '2019-05-14 05:07:21', 'Juan Normando', 'Nyquist', 'ASSY', 5, 0, 'POWER ON', 'SE CAMBIO LA USB Y LOADING BOX', 20, 'SOLO SE REPROBO Y PASO', 'no', 'closed', 'Hector Guerrero', 4, 'NyquistASSY', 0, 0),
(178, '2019-05-14 05:09:09', 'Juan Normando', 'Nyquist', 'ASSY', 5, 1, 'Please Golden Switch', 'RESETEAR P.S DE LA GOLDEN Y LOADING', 15, 'N/A', 'no', 'closed', 'Hector Guerrero', 4, 'NyquistASSY', 0, 0),
(179, '2019-05-14 05:35:41', 'Juan Normando', 'Porter', 'ASSY', 4, 32, 'uut_change parts', 'SOLO SE VOLVIO A ESCANEAR', 32, 'SE REPROBO Y PASO', 'no', 'closed', 'Hector Guerrero', 14, 'PorterASSY', 0, 0),
(180, '2019-05-14 05:38:29', 'Juan Normando', 'Nyquist', 'ASSY', 5, 59, 'MEAS CUR 50 VOLT', 'SOLO SE REPROBO', 10, 'N/A', 'no', 'closed', 'Hector Guerrero', 4, 'NyquistASSY', 0, 0),
(181, '2019-05-14 05:39:44', 'Juan Normando', 'Nyquist', 'ASSY', 5, 61, 'ref_baseload', 'SE REPROBO PIEZA NUEVA Y PASO', 30, 'N/A', 'no', 'closed', 'Hector Guerrero', 4, 'NyquistASSY', 0, 0),
(182, '2019-05-14 05:40:01', 'Fernando Valenzuela', 'Nyquist', 'BST', 14, 19, 'portstatus', 'cambio de cable puerto 10', 25, 'Se tardo en reparar mas del promedio a causa de que el operador no sabia con exactitud que puerto er', 'no', 'closed', 'Fernando Valenzuela', 2, 'NyquistBST', 0, 0),
(183, '2019-05-14 05:59:34', 'Fernando Valenzuela', 'Porter', 'BST', 7, 1, 'portstatus', 'cambio de puerto 15', 10, '', 'no', 'closed', 'Fernando Valenzuela', 12, 'PorterBST', 0, 0),
(184, '2019-05-14 06:00:37', 'Francisco Javier Ochoa', 'Nyquist', 'ASSY', 8, 0, 'disable', 'se abilito la celda', 1, 'la unidad paso la prueba', 'no', 'closed', 'Francisco Javier Ochoa', 4, 'NyquistASSY', 0, 0),
(185, '2019-05-14 06:02:20', 'Francisco Javier Ochoa', 'Nyquist', 'ASSY', 8, 57, 'cell disable', 'se abilito la celda', 1, 'la unidad paso la prueba', 'no', 'closed', 'Francisco Javier Ochoa', 4, 'NyquistASSY', 0, 0),
(186, '2019-05-14 06:02:48', 'Fernando Valenzuela', 'Porter', 'BST', 7, 8, 'traf mode', 'rastop general', 20, '', 'no', 'closed', 'Fernando Valenzuela', 12, 'PorterBST', 0, 0),
(187, '2019-05-14 06:05:37', 'Francisco Javier Ochoa', 'Nyquist', 'ASSY', 6, 1, 'stack power', 'se invirtieron los cables swcb', 10, 'la unidad paso la prueba', 'no', 'closed', 'Francisco Javier Ochoa', 4, 'NyquistASSY', 0, 0),
(188, '2019-05-14 06:37:12', 'Javier Saenz', 'Adelphi', 'P2C', 1, 1, 'no abre programa', 'se reinicio wyse', 5, '', 'no', 'closed', 'Javier Saenz', 21, 'AdelphiP2C', 0, 0),
(189, '2019-05-14 07:56:09', 'Servando Castañeda Hernandez', 'Nyquist', 'BST', 14, 12, 'puerto danado', 'se camvio conector puerto 29', 15, 'se queda trabajando', 'si', 'closed', 'Servando Castañeda Hernandez', 2, 'NyquistBST', 0, 0),
(190, '2019-05-14 07:58:32', 'Servando Castañeda Hernandez', 'Nyquist', 'BST', 1, 9, 'puerto danado', 'se cabio conector', 16, 'se queda trabajando', 'si', 'closed', 'Servando Castañeda Hernandez', 2, 'NyquistBST', 0, 0),
(191, '2019-05-14 08:51:45', 'Miguel Angel  Rivera', 'Nyquist', 'ASSY', 1, 1, 'POWER ON', 'SE CAMBIO BACKPLANE 0', 30, 'BACKPLANE DE POWER QUEMADA EN FUSIBLE NO PRENDE', 'si', 'closed', 'Miguel Angel  Rivera', 4, 'NyquistASSY', 0, 0),
(192, '2019-05-14 10:37:13', 'Servando Castañeda Hernandez', 'Nyquist', '2C', 15, 25, 'se queda bloqueda', 'resete ', 15, 'cel 25 reset', 'si', 'closed', 'Servando Castañeda Hernandez', 3, 'Nyquist2C', 0, 0),
(193, '2019-05-14 10:39:07', 'Servando Castañeda Hernandez', 'Nyquist', 'BST', 15, 8, 'puerto danado', 'se cambio cable', 10, 'ok', 'si', 'closed', 'Servando Castañeda Hernandez', 2, 'NyquistBST', 0, 0),
(194, '2019-05-14 13:08:29', 'Servando Castaneda Hernandez', 'Nyquist', 'BST', 20, 18, 'no detecta puertos', 'poe danado', 180, 'falla poe puerto 21 al 24 y puerto 45', 'si', 'closed', 'Servando Castaneda Hernandez', 2, 'NyquistBST', 0, 0),
(195, '2019-05-14 14:44:25', 'Adrian Martinez', 'Nyquist', 'ASSY', 5, 61, 'POWERON', 'CAMBIO FUSIBLE', 20, ':)', 'no', 'closed', 'Adrian Martinez', 4, 'NyquistASSY', 0, 0),
(196, '2019-05-14 14:45:30', 'Adrian Martinez', 'Nyquist', 'ASSY', 5, 62, 'POWERON', 'CAMBIO FUSIBLE', 20, ':)', 'no', 'closed', 'Adrian Martinez', 4, 'NyquistASSY', 0, 0),
(197, '2019-05-14 14:45:59', 'Adrian Martinez', 'Nyquist', 'ASSY', 5, 63, 'POWERON', 'CAMBIO FUSIBLE', 20, ':)', '', 'closed', 'Adrian Martinez', 4, 'NyquistASSY', 0, 0),
(198, '2019-05-14 14:48:02', 'Aldo Lopez', 'Nyquist', 'ASSY', 2, 62, 'POWERON', 'CAMBIO DE FUSIBLES', 20, '', 'no', 'closed', 'Aldo Lopez', 4, 'NyquistASSY', 0, 0),
(199, '2019-05-14 14:49:27', 'Aldo Lopez', 'Nyquist', 'ASSY', 2, 65, 'POWERON', 'CAMBIO DE FUSIBLES', 20, '', 'no', 'closed', 'Aldo Lopez', 4, 'NyquistASSY', 0, 0),
(200, '2019-05-14 14:52:22', 'Aldo Lopez', 'Nyquist', 'ASSY', 3, 5, 'POWER SUPPLY', 'CAMBIO DE BACKPLATES', 20, '', 'no', 'closed', 'Aldo Lopez', 4, 'NyquistASSY', 0, 0),
(201, '2019-05-14 15:21:34', 'Ariel Vela', 'Nyquist', '2C', 2, 1, 'No voltaje', 'Se conecto bien el cableado del reg', 30, 'Se reviso voltaje y continuidad  en el cableado, finalmente se detecto el problema en el registro de', 'si', 'closed', 'Ariel Vela', 3, 'Nyquist2C', 0, 0),
(202, '2019-05-14 16:50:42', 'Antonio Medina', 'Nyquist', 'BST', 20, 18, 'portstatus', 'cable mal conectado', 20, 'no se estaba conectando bien la\r\n\r\nel cable', 'no', 'closed', 'Antonio Medina', 2, 'NyquistBST', 0, 0),
(203, '2019-05-14 22:48:45', 'Javier Osbaldo', 'Nyquist', 'ASSY', 5, 57, 'POWER ON', 'SE RETIRA EXTENSION DE USB QUE OBST', 25, 'SE VERIFICO CELDA PASA OK', 'no', 'closed', 'Javier Osbaldo', 4, 'NyquistASSY', 0, 0),
(204, '2019-05-14 22:50:38', 'Javier Osbaldo', 'Nyquist', 'ASSY', 6, 5, 'MODE BUTTON', 'SE HABILITA CELDA OK', 20, 'FALLA RELACIONADA CON LA KELVIN DE LA UNIDAD', 'no', 'closed', 'Javier Osbaldo', 4, 'NyquistASSY', 0, 0),
(205, '2019-05-14 22:59:37', 'Javier Osbaldo', 'Nyquist', 'ASSY', 8, 58, 'NO COMUNICA, NO ENCIENDE', 'SE RETIRA CABLE USB ', 25, 'CABLE USB OBSTRUIA UNIDAD AL ENTRAR EN LA CELDA', 'no', 'closed', 'Javier Osbaldo', 4, 'NyquistASSY', 0, 0),
(206, '2019-05-14 23:10:37', 'Juan Carlos Tenorio', 'Nyquist', 'ASSY', 1, 9, 'STACK POWER', 'SE CAMBIARON CABLES SWCB', 30, 'CABLES DANADOS', 'no', 'closed', 'Juan Carlos Tenorio', 4, 'NyquistASSY', 0, 0),
(207, '2019-05-15 01:25:44', 'Fernando Valenzuela', 'Nyquist', 'BST', 1, 0, 'portstatus', 'cambio de cables', 10, '', 'no', 'closed', 'Fernando Valenzuela', 2, 'NyquistBST', 0, 0),
(208, '2019-05-15 05:36:52', 'Fernando Valenzuela', 'Nyquist', 'BST', 18, 12, 'portstatus', 'cambio de cable', 10, '', 'no', 'closed', 'Fernando Valenzuela', 2, 'NyquistBST', 0, 0),
(209, '2019-05-15 06:00:10', 'Juan Normando', 'Nyquist', 'ASSY', 5, 62, 'POWER ON', 'SE CAMBIO CABLE DE COMUNICACION', 25, 'SE DEJA TODA LA ESTACION ASSY 5 EN PASS PARA 1ER TURNO OK', 'no', 'closed', 'Juan Normando', 4, 'NyquistASSY', 0, 0),
(210, '2019-05-15 06:49:08', 'Miguel Angel  Rivera', 'Nyquist', 'ASSY', 3, 5, 'POWER ON', 'SE CAMBIO FUSIBLE DE BACKPLANE POWE', 20, 'FUSIBLE ABIERTO SE CHEKO UNIDAD PARA VALIDAR REPARACION', 'no', 'closed', 'Miguel Angel  Rivera', 4, 'NyquistASSY', 0, 0),
(211, '2019-05-15 08:23:59', 'Aldo Lopez', 'Nyquist', 'ASSY', 8, 66, 'POWER SUPPLY', 'REEMPLAZAR FUSIBLES', 15, '', 'no', 'closed', 'Aldo Lopez', 4, 'NyquistASSY', 0, 0),
(212, '2019-05-15 08:24:57', 'Aldo Lopez', 'Nyquist', 'ASSY', 2, 4, 'POWER SUPPLY', 'REEMPLAZAR FUSIBLES', 15, '', '', 'closed', 'Aldo Lopez', 4, 'NyquistASSY', 0, 0),
(213, '2019-05-15 08:57:06', 'Javier  Herrera', 'Nyquist', '2C', 0, 39, 'No comunica ', 'Se remplazo backplane', 0, '(La estacion no se encuentra aun en produccion). Se comprobaron puertos y conexiones de rj45 cablead', 'no', 'closed', 'Javier  Herrera', 3, 'Nyquist2C', 0, 0),
(214, '2019-05-15 09:01:08', 'Servando Castaneda Hernandez', 'Nyquist', 'BDL', 20, 18, 'prueba bloqueada', 'se reinicia el programa', 70, 'se probaron 2unidades para corroborar como quedo la celda ok', 'si', 'closed', 'Servando Castaneda Hernandez', 1, 'NyquistBDL', 0, 0),
(215, '2019-05-15 09:02:19', 'Servando Castaneda Hernandez', 'Nyquist', 'BDL', 20, 19, 'se reinicia', 'se reinicia programa', 80, '', '', 'closed', 'Servando Castaneda Hernandez', 1, 'NyquistBDL', 0, 0),
(216, '2019-05-15 09:17:43', 'Javier  Herrera', 'Nyquist', '2C', 8, 0, 'Alta temperatura', 'Re-ajuste de temperatura', 3, '', 'si', 'closed', 'Javier  Herrera', 3, 'Nyquist2C', 0, 0),
(217, '2019-05-15 09:23:17', 'Carlos Sandoval', 'Nyquist', 'U-BST', 1, 0, 'falla I2c', 'se reinicio token', 5, '', 'si', 'closed', 'Carlos Sandoval', 9, 'NyquistU-BST', 0, 0),
(218, '2019-05-15 10:06:04', 'Javier Saenz', 'Porter', 'BST', 2, 4, 'no link puerto43 celda4', 'se reparo cables', 15, '', 'no', 'closed', 'Javier Saenz', 12, 'PorterBST', 0, 0),
(219, '2019-05-15 10:07:25', 'Javier Saenz', 'Porter', 'BST', 2, 5, 'no link puerto37', 'se reparo cables', 15, '', 'no', 'closed', 'Javier Saenz', 12, 'PorterBST', 0, 0),
(220, '2019-05-15 11:40:09', 'Servando Castaneda Hernandez', 'Nyquist', 'BST', 16, 18, 'no power ', 'cables de ac', 75, 'ok', 'si', 'closed', 'Servando Castaneda Hernandez', 2, 'NyquistBST', 0, 0),
(221, '2019-05-15 11:41:59', 'Servando Castaneda Hernandez', 'Nyquist', 'BST', 16, 13, 'puertos no c', 'se cambio conector', 65, 'ok', 'si', 'closed', 'Servando Castaneda Hernandez', 2, 'NyquistBST', 0, 0),
(222, '2019-05-15 12:36:39', 'Javier Saenz', 'Porter', 'BST', 4, 1, 'sysinit', 'se abilito estacion para non-poe po', 60, '', 'no', 'closed', 'Javier Saenz', 12, 'PorterBST', 0, 0),
(223, '2019-05-15 12:43:32', 'Servando Castaneda Hernandez', 'Nyquist', 'BST', 13, 9, 'puertos danados', 'ce cambia conactor', 130, 'queda trabajando', 'si', 'closed', 'Servando Castaneda Hernandez', 2, 'NyquistBST', 0, 0),
(224, '2019-05-15 13:16:01', 'Servando Castaneda Hernandez', 'Nyquist', 'BST', 16, 18, 'no detecta cable 2', 'se camboio cable', 30, 'queda trabajando', 'si', 'closed', 'Servando Castaneda Hernandez', 2, 'NyquistBST', 0, 0),
(225, '2019-05-15 13:38:49', 'Javier  Herrera', 'Nyquist', '2C', 7, 39, 'Conector stack danado', 'Se remplazo el conector', 5, '', 'no', 'closed', 'Javier  Herrera', 3, 'Nyquist2C', 0, 0),
(226, '2019-05-15 13:42:16', 'Javier  Herrera', 'Nyquist', '2C', 7, 43, 'conector de stack danado', 'se remplazo el conector de stack', 5, '', 'no', 'closed', 'Javier  Herrera', 3, 'Nyquist2C', 0, 0),
(227, '2019-05-15 18:21:38', 'Juan Carlos Tenorio', 'Nyquist', 'ASSY', 8, 7, 'POWER SUPPLY FEP', 'AJUSTE  DE BASE DE FUSIBLE (BASE AB', 15, 'FALSO CONTACTO EN FUSIBLE', 'no', 'closed', 'Juan Carlos Tenorio', 4, 'NyquistASSY', 0, 0),
(228, '2019-05-15 18:27:06', 'Juan Carlos Tenorio', 'Nyquist', 'ASSY', 8, 64, 'POWER SUPPLY FEP', 'CAMBIO DE FUSIBLE', 15, 'FUSIBLE DANADO', 'no', 'closed', 'Juan Carlos Tenorio', 4, 'NyquistASSY', 0, 0),
(229, '2019-05-15 18:31:21', 'Carlos Ferman', 'Nyquist', 'ASSY', 2, 56, 'POWER SUPPLY FEP', 'CAMBIO DE FUSIBLE', 20, 'CELDA DESABILITADA POR FALLA DE PAWER SUPPLY FEP FUSIBLE DANADO', 'no', 'closed', 'Carlos Ferman', 4, 'NyquistASSY', 0, 0),
(230, '2019-05-16 02:54:14', 'Fernando Valenzuela', 'Porter', 'BST', 6, 5, 'portstatus', 'cambio de cables que van en entrada', 20, '', 'no', 'closed', 'Fernando Valenzuela', 12, 'PorterBST', 0, 0),
(231, '2019-05-16 02:54:54', 'Fernando Valenzuela', 'Porter', 'BST', 6, 7, 'PORTSTATUS', 'Cambio de cable 32', 10, '', 'no', 'closed', 'Fernando Valenzuela', 12, 'PorterBST', 0, 0),
(232, '2019-05-16 05:50:14', 'Francisco Javier Ochoa', 'Nyquist', 'ASSY', 3, 0, 'P0WER SUPPLY FEP', 'SE CAMBIO FUSIBLE DE LA EXTENSION S', 3, 'NO SE ALCANZO A PROBAR LA CELDA', 'no', 'closed', 'Francisco Javier Ochoa', 4, 'NyquistASSY', 0, 0),
(233, '2019-05-16 05:53:21', 'Francisco Javier Ochoa', 'Nyquist', 'ASSY', 1, 57, 'BASELOAD', 'SE ABILITO LA CELDA', 2, 'PASO LA UNIDAD EN PRUEBA', 'no', 'closed', 'Francisco Javier Ochoa', 4, 'NyquistASSY', 0, 0),
(234, '2019-05-16 05:56:01', 'Francisco Javier Ochoa', 'Nyquist', 'ASSY', 8, 57, 'MODE BUTTON FAIL', 'SE ABILITO LA CELDA', 2, 'PASO LA UNIDAD EN PRUEBA', 'no', 'closed', 'Francisco Javier Ochoa', 4, 'NyquistASSY', 0, 0),
(235, '2019-05-16 06:09:15', 'Miguel Angel  Rivera', 'Nyquist', 'ASSY', 6, 64, 'POWER ON', 'SE CAMBIO FUSIBLE', 30, 'FUSIBLE DE BACKPLANE POWER SUPPLY 0 Y 1 ABIERTOS SE PROBO UNIDAD PARA VALIDAR REPARACION', 'no', 'closed', 'Miguel Angel  Rivera', 4, 'NyquistASSY', 0, 0),
(236, '2019-05-16 06:44:37', 'Miguel Angel  Rivera', 'Nyquist', 'ASSY', 6, 66, 'NO COMUNICA', 'SE REMPLAZO CABLE DE RED', 30, 'NO INICIA PRUEBAS SE PROBO UNIDAD PARA VALIDAR REPARACION', 'no', 'closed', 'Miguel Angel  Rivera', 4, 'NyquistASSY', 0, 0),
(237, '2019-05-16 07:44:40', 'Servando Castaneda Hernandez', 'Nyquist', 'BST', 16, 19, 'fall ade puertos', 'se cambio conactor', 15, 'queda trabajando', 'si', 'closed', 'Servando Castaneda Hernandez', 2, 'NyquistBST', 0, 0),
(238, '2019-05-16 12:47:55', 'Servando Castaneda Hernandez', 'Nyquist', 'BST', 3, 1, 'stack ', 'ok', 20, 'queda trabajando', 'si', 'closed', 'Servando Castaneda Hernandez', 2, 'NyquistBST', 0, 0),
(239, '2019-05-16 13:06:57', 'Javier Saenz', 'Porter', 'BST', 7, 1, 'no link puerto13', 'se reparo cables', 25, '', 'no', 'closed', 'Javier Saenz', 12, 'PorterBST', 0, 0),
(240, '2019-05-16 13:25:21', 'Javier Saenz', 'Porter', 'BST', 1, 4, 'no link puerto47', 'se reparo cables', 20, '', 'no', 'closed', 'Javier Saenz', 12, 'PorterBST', 0, 0),
(241, '2019-05-16 13:39:24', 'Javier Saenz', 'Porter', 'BST', 1, 8, 'no link puerto45', 'se reparo cables', 20, '', 'no', 'closed', 'Javier Saenz', 12, 'PorterBST', 0, 0),
(242, '2019-05-16 13:54:31', 'Javier Saenz', 'Porter', 'BST', 6, 2, 'no link puerto13', 'se reparo cables', 20, '', 'no', 'closed', 'Javier Saenz', 12, 'PorterBST', 0, 0),
(243, '2019-05-16 16:04:43', 'Aldo Lopez', 'Nyquist', 'ASSY', 5, 62, 'POWER SUPPLY', 'REEMPLAZO DE FUSIBLES', 15, 'fusibles danados', 'no', 'closed', 'Aldo Lopez', 4, 'NyquistASSY', 0, 0),
(244, '2019-05-16 16:05:51', 'Aldo Lopez', 'Nyquist', 'ASSY', 5, 1, 'stackn power', 'reparar cables', 30, 'cables desgastados', 'no', 'closed', 'Aldo Lopez', 4, 'NyquistASSY', 0, 0),
(245, '2019-05-16 16:06:51', 'Aldo Lopez', 'Nyquist', 'ASSY', 5, 57, 'power supply', 'remplazar fusibles', 15, '', 'no', 'closed', 'Aldo Lopez', 4, 'NyquistASSY', 0, 0),
(246, '2019-05-16 17:20:57', 'Luis  Manriquez', 'G48', 'ORT', 5, 9, 'Cable stack', 'stack', 35, 'prueba 05/16/19', 'no', 'closed', 'Luis  Manriquez', 51, 'G48ORT', 0, 0),
(247, '2019-05-16 20:45:20', 'Carlos Ferman', 'Nyquist', 'ASSY', 3, 2, 'power supply fep', '', 30, 'celda desabilitada por falla de power supply  fep extensor de power danado,se cambio el extensor', 'no', 'closed', 'Carlos Ferman', 4, 'NyquistASSY', 0, 0),
(248, '2019-05-17 04:18:54', 'Francisco Javier Ochoa', 'Nyquist', 'ASSY', 3, 57, 'stack pwr', 'se invirtieron cables swcb', 20, 'se ajustaron los conectoes de los cables. La unidad paso la prueba.', 'no', 'closed', 'Francisco Javier Ochoa', 4, 'NyquistASSY', 0, 0),
(249, '2019-05-17 06:29:30', 'Javier Saenz', 'Porter', 'BST', 4, 1, 'cambio de modelo', 'se cambio de non-poe porter a porte', 10, '', 'no', 'closed', 'Javier Saenz', 12, 'PorterBST', 0, 0),
(250, '2019-05-17 06:32:58', 'Miguel Angel  Rivera', 'Nyquist', 'ASSY', 2, 67, 'stack pwr ', 'se remplazo cable stack', 40, 'se probo unidad para validar falla pasando las pruebas ', 'no', 'closed', 'Miguel Angel  Rivera', 4, 'NyquistASSY', 0, 0),
(251, '2019-05-17 06:33:26', 'Fernando Valenzuela', 'Nyquist', 'BST', 20, 12, 'no entra pieza', 'centrar el stack ', 30, 'El problema se reporto a las 5:50 am y fue arreglado a las 6:20 am con ayuda del tecnico Ariel Vela ', 'no', 'closed', 'Fernando Valenzuela', 2, 'NyquistBST', 0, 0),
(252, '2019-05-17 08:01:52', 'Javier Saenz', 'Nyquist', 'BST', 5, 11, 'no link puerto35', 'se reparo cables', 20, '', 'no', 'closed', 'Javier Saenz', 2, 'NyquistBST', 0, 0),
(253, '2019-05-18 11:44:07', 'Carlos Sandoval', 'Adelphi', 'P2C', 1, 0, 'enter stardust', 'Ingeniero debugeo falla', 30, '', 'si', 'closed', 'Carlos Sandoval', 21, 'AdelphiP2C', 0, 0),
(254, '2019-05-18 13:14:20', 'Javier  Herrera', 'Nyquist', 'BST', 19, 0, 'Dejo de responder la estacion', 'Reseteo de la estacion', 10, '', 'si', 'closed', 'Javier  Herrera', 2, 'NyquistBST', 0, 0),
(255, '2019-05-18 13:15:27', 'Javier  Herrera', 'Nyquist', 'BST', 20, 0, 'Dejo de responder la estacion ', 'Reseteo de la estacion ', 10, '', 'si', 'closed', 'Javier  Herrera', 2, 'NyquistBST', 0, 0),
(256, '2019-05-18 13:46:22', 'Javier  Herrera', 'Nyquist', '2C', 10, 33, 'Stack sin 2 tornillos ', 'Se colocaron nueva tornilleria ', 5, '', 'no', 'closed', 'Javier  Herrera', 3, 'Nyquist2C', 0, 0),
(257, '2019-05-20 08:30:50', 'Carlos Sandoval', 'Nyquist', '2C', 9, 1, 'falla de temperatura', 'se tubo que bajar manualmente ', 10, '', 'si', 'closed', 'Carlos Sandoval', 3, 'Nyquist2C', 0, 0),
(258, '2019-05-20 09:05:08', 'Javier Saenz', 'Adelphi', 'FRU-P2C', 1, 1, 'falla programa', 'se prendio virtual', 20, 'estacion adelphi p2c 1 y 2', 'si', 'closed', 'Javier Saenz', 26, 'AdelphiFRU-P2C', 0, 0),
(259, '2019-05-20 09:09:15', 'Javier Saenz', 'Porter', 'BST', 7, 6, 'stack', 'cables methode danados', 10, '', 'no', 'closed', 'Javier Saenz', 12, 'PorterBST', 0, 0),
(260, '2019-05-20 13:56:57', 'Javier Saenz', 'Porter', 'BST', 7, 6, 'no link puerto9', 'se reparo cables', 20, '', 'no', 'closed', 'Javier Saenz', 12, 'PorterBST', 0, 0),
(261, '2019-05-20 18:52:58', 'Antonio Medina', 'Nyquist', 'BST', 1, 7, 'falla de puerto 23', 'se cambio el conector RJ45', 15, 'Se checo comunicacion y se detecta que un conector de la celda n.7 estaba en mal estado y se reempla', 'no', 'closed', 'Antonio Medina', 2, 'NyquistBST', 0, 0),
(262, '2019-05-20 23:18:58', 'Javier Osbaldo', 'Nyquist', 'ASSY', 8, 4, 'power on', 'se reemplazan fusibles abiertos', 25, 'se verifica la celda, y se corrigio la falla', 'no', 'closed', 'Javier Osbaldo', 4, 'NyquistASSY', 0, 0),
(263, '2019-05-20 23:30:52', 'Javier Osbaldo', 'Nyquist', 'ASSY', 1, 12, 'power on', 'se reemplazan fusibles', 25, 'se verifica la celda y se corrige la falla (celda 56) num de celdas asignadas 0 a la 11 uut  y de la', 'no', 'closed', 'Javier Osbaldo', 4, 'NyquistASSY', 0, 0),
(264, '2019-05-20 23:36:59', 'Javier Osbaldo', 'Nyquist', 'ASSY', 1, 19, 'power on', 'se repara el cable RJ45', 30, 'RJ45 estaba danado, se verifico celda y se corrigio el problema', 'no', 'closed', 'Javier Osbaldo', 4, 'NyquistASSY', 0, 0),
(265, '2019-05-20 23:40:50', 'Carlos Ferman', 'Nyquist', 'ASSY', 8, 0, 'power on', 'cambio de fusibles', 25, 'verifica celda y se probo unidad ok', 'no', 'closed', 'Carlos Ferman', 4, 'NyquistASSY', 0, 0),
(266, '2019-05-20 23:43:17', 'Carlos Ferman', 'Nyquist', 'ASSY', 8, 6, 'power on', 'cambios de fuciibles', 25, 'se prueba unidad en la celda ok', 'no', 'closed', 'Carlos Ferman', 4, 'NyquistASSY', 0, 0),
(267, '2019-05-20 23:49:39', 'Carlos Ferman', 'Nyquist', 'ASSY', 8, 9, 'power on', 'cambio de fusible abiertos', 25, 'NOTA:  En esta estacion de assy 8 estan reprobando todas las fallas de las otras estaciones de assy', 'no', 'closed', 'Carlos Ferman', 4, 'NyquistASSY', 0, 0),
(268, '2019-05-20 23:56:15', 'Juan Carlos Tenorio', 'Nyquist', 'ASSY', 4, 1, 'swcb', 'cambio de cable swcb', 30, '', 'no', 'closed', 'Juan Carlos Tenorio', 4, 'NyquistASSY', 0, 0),
(269, '2019-05-21 00:00:51', 'Juan Carlos Tenorio', 'Nyquist', 'ASSY', 4, 0, 'diag mode(celda dsabilitada )', 'se habilita celda', 20, 'se prueban unidades .ok', 'no', 'closed', 'Juan Carlos Tenorio', 4, 'NyquistASSY', 0, 0),
(270, '2019-05-21 07:05:57', 'Carlos Sandoval', 'Adelphi', 'FRU-P2C', 1, 0, 'fallas de certificados ', 'Token apagado se reinicio', 5, '', 'si', 'closed', 'Carlos Sandoval', 26, 'AdelphiFRU-P2C', 0, 0),
(271, '2019-05-21 07:19:32', 'Servando Castaneda Hernandez', 'Nyquist', 'BST', 3, 4, 'iee', 'ok', 30, 'queda trabajando', 'si', 'closed', 'Servando Castaneda Hernandez', 2, 'NyquistBST', 0, 0),
(272, '2019-05-21 07:21:20', 'Servando Castaneda Hernandez', 'Nyquist', 'BST', 3, 8, 'puerto 7', 'ok', 26, 'se queda trabajando', 'si', 'closed', 'Servando Castaneda Hernandez', 2, 'NyquistBST', 0, 0),
(273, '2019-05-21 07:22:46', 'Servando Castaneda Hernandez', 'Nyquist', 'BST', 3, 9, 'puerto 3', 'ok', 20, 'se queda trabajando', 'si', 'closed', 'Servando Castaneda Hernandez', 2, 'NyquistBST', 0, 0),
(274, '2019-05-21 11:01:36', 'Javier Saenz', 'Porter', 'BST', 1, 1, 'sysinit', 'se reinicio estacion', 25, 'fallas varias en varias celdas', 'si', 'closed', 'Javier Saenz', 12, 'PorterBST', 0, 0),
(275, '2019-05-21 11:11:37', 'Javier Saenz', 'Porter', 'BST', 5, 1, 'sysinit', 'se reinicio estacion', 25, 'fallas varias en varias celdas', 'si', 'closed', 'Javier Saenz', 12, 'PorterBST', 0, 0),
(276, '2019-05-21 11:30:56', 'Javier Saenz', 'Porter', 'BST', 2, 9, 'load diag', 'se cambio cable comunicacion', 20, '', 'no', 'closed', 'Javier Saenz', 12, 'PorterBST', 0, 0),
(277, '2019-05-21 12:02:53', 'Servando Castaneda Hernandez', 'Adelphi', '2C', 2, 1, 'programa bloq', 'ok', 15, 'se reinicia programa', 'si', 'closed', 'Servando Castaneda Hernandez', 22, 'Adelphi2C', 0, 0),
(278, '2019-05-21 12:04:22', 'Servando Castaneda Hernandez', 'Nyquist', 'BST', 5, 9, 'falla mecanica', 'ok', 20, 'ok', 'si', 'closed', 'Servando Castaneda Hernandez', 2, 'NyquistBST', 0, 0),
(279, '2019-05-21 12:05:25', 'Servando Castaneda Hernandez', 'Nyquist', 'BST', 5, 6, 'f mecanica', 'ok', 30, 'ok', 'si', 'closed', 'Servando Castaneda Hernandez', 2, 'NyquistBST', 0, 0),
(280, '2019-05-21 12:06:19', 'Servando Castaneda Hernandez', 'Nyquist', 'BST', 5, 5, 'f mecanica', 'ok', 25, 'ok', 'si', 'closed', 'Servando Castaneda Hernandez', 2, 'NyquistBST', 0, 0),
(281, '2019-05-21 12:07:06', 'Servando Castaneda Hernandez', 'Nyquist', 'BST', 5, 4, 'f mecanica', 'ok', 20, 'ok', 'si', 'closed', 'Servando Castaneda Hernandez', 2, 'NyquistBST', 0, 0),
(282, '2019-05-21 12:08:03', 'Servando Castaneda Hernandez', 'Nyquist', 'BST', 5, 3, 'f mecanica', 'ok', 25, 'ok', 'si', 'closed', 'Servando Castaneda Hernandez', 2, 'NyquistBST', 0, 0),
(283, '2019-05-21 23:17:37', 'Tino Carrera', 'Nyquist', 'BST', 2, 43, 'cable de senal mal conectado', 'se ajustaron correctamente los cabl', 15, '', 'no', 'closed', 'Tino Carrera', 2, 'NyquistBST', 0, 0),
(284, '2019-05-21 23:18:13', 'Tino Carrera', 'Nyquist', 'BST', 2, 45, 'cables mal conectados', 'se ajustaron correctamente los cabl', 15, '', 'no', 'closed', 'Tino Carrera', 2, 'NyquistBST', 0, 0),
(285, '2019-05-21 23:19:07', 'Tino Carrera', 'Nyquist', 'BST', 2, 38, 'cable mal conectado', 'se ajustaron correctamente los cabl', 15, '', 'no', 'closed', 'Tino Carrera', 2, 'NyquistBST', 0, 0),
(286, '2019-05-22 01:48:42', 'Carlos Ferman', 'Nyquist', 'ASSY', 3, 6, 'stack power 440', 'cambio de puerto loadingbox ', 40, 'falla en la celda60 se prueba unidad pasa', 'si', 'closed', 'Carlos Ferman', 4, 'NyquistASSY', 0, 0),
(287, '2019-05-22 01:51:56', 'Carlos Ferman', 'Nyquist', 'ASSY', 3, 0, 'stack power 440 sh', 'cambio de puerto de loadingbox', 35, 'celda 61 se probo unidad pasa', 'si', 'closed', 'Carlos Ferman', 4, 'NyquistASSY', 0, 0),
(288, '2019-05-22 01:55:36', 'Carlos Ferman', 'Nyquist', 'ASSY', 3, 0, 'stack power', 'cambio  de puertos en loadingbox', 50, 'puertos 62y63 se probo unidad pasa', 'si', 'closed', 'Carlos Ferman', 4, 'NyquistASSY', 0, 0),
(289, '2019-05-22 05:14:50', 'Francisco Javier Ochoa', 'Nyquist', 'ASSY', 2, 6, 'stack cables', 'se abilito la celda y se limpio cab', 3, 'la unidad paso la prueba', 'no', 'closed', 'Francisco Javier Ochoa', 4, 'NyquistASSY', 0, 0),
(290, '2019-05-22 05:30:58', 'Francisco Javier Ochoa', 'Nyquist', 'ASSY', 2, 6, 'stackpower continit (disable)', 'se activo la celda y se limpio cone', 7, 'num de celda 61, la unidad paso la prueba', 'no', 'closed', 'Francisco Javier Ochoa', 4, 'NyquistASSY', 0, 0),
(291, '2019-05-22 05:31:37', 'Fernando Valenzuela', 'Nyquist', 'BST', 20, 10, 'portstatus', 'cambio de cable ethernet', 10, '', 'no', 'closed', 'Fernando Valenzuela', 2, 'NyquistBST', 0, 0),
(292, '2019-05-22 05:32:41', 'Fernando Valenzuela', 'Porter', 'BST', 5, 9, 'porstatus', 'cambio de cable numero 3 ', 10, '', 'no', 'closed', 'Fernando Valenzuela', 12, 'PorterBST', 0, 0),
(293, '2019-05-22 05:35:42', 'Francisco Javier Ochoa', 'Nyquist', 'ASSY', 2, 3, 'stackpower cables (disable)', 'se abilito la celda y se limpiaron ', 7, 'la unidad paso la prueba', 'no', 'closed', 'Francisco Javier Ochoa', 4, 'NyquistASSY', 0, 0),
(294, '2019-05-22 06:08:26', 'Fernando Valenzuela', 'Nyquist', '2C', 10, 39, 'falla de stack celda 38,39,47', 'ajuste de stacks', 60, 'las unidades no ensamblaban correctamente en su celda y se percato que los stacks estaban en mala po', 'no', 'closed', 'Fernando Valenzuela', 3, 'Nyquist2C', 0, 0),
(295, '2019-05-22 08:44:00', 'Carlos Sandoval', 'Adelphi', 'ASSY', 1, 0, 'no genera etiqueta', 'Pc apagada se reinicio', 10, '', 'si', 'closed', 'Carlos Sandoval', 20, 'AdelphiASSY', 0, 0),
(296, '2019-05-22 09:06:41', 'Servando Castaneda Hernandez', 'Nyquist', 'BST', 19, 4, 'se bloquea equipo', 'ok', 15, 'se reinicia progarma', 'si', 'closed', 'Servando Castaneda Hernandez', 2, 'NyquistBST', 0, 0),
(297, '2019-05-22 09:07:54', 'Servando Castaneda Hernandez', 'Nyquist', 'BST', 16, 15, 'puertos danados', 'ok', 25, 'ok', 'si', 'closed', 'Servando Castaneda Hernandez', 2, 'NyquistBST', 0, 0),
(298, '2019-05-22 09:35:34', 'Javier  Herrera', 'Nyquist', '2C', 7, 43, 'stack caido', 'colocar un tornillo y reajustar la ', 5, '', 'no', 'closed', 'Javier  Herrera', 3, 'Nyquist2C', 0, 0),
(299, '2019-05-22 09:45:09', 'Servando Castaneda Hernandez', 'Nyquist', 'BST', 19, 5, 'puerto 13', 'ok', 15, 'plastico ( t ) contacto ok', 'no', 'closed', 'Servando Castaneda Hernandez', 2, 'NyquistBST', 0, 0),
(300, '2019-05-22 17:03:56', 'Antonio Medina', 'Nyquist', 'BST', 20, 11, 'puertos no comunicaban', 'se cambiaron 2 conectores RJ45 ', 20, 'Me reportan que en la estacion BST n.20 hay una celda que esta fallando y al hacer la inspeccion se ', 'no', 'closed', 'Antonio Medina', 2, 'NyquistBST', 0, 0),
(301, '2019-05-22 17:12:41', 'Antonio Medina', 'Nyquist', 'BST', 20, 2, 'la celda fallaba de traf', 'se cambio el fusible de la power n.', 30, 'Al hacer la inspeccion se encuentra que la celda no prendia esto debido a que el fusible de la power', 'no', 'closed', 'Antonio Medina', 2, 'NyquistBST', 0, 0),
(302, '2019-05-22 19:40:01', 'Tino Carrera', 'Nyquist', 'BST', 19, 0, 'fallaba de traf case', 'se reiniciaron los poe.', 15, 'la celda presentaba fallas seguidas en la prueba de traf case..se reiniciaron los poe y la celda que', 'no', 'closed', 'Tino Carrera', 2, 'NyquistBST', 0, 0),
(303, '2019-05-22 23:06:08', 'Antonio Medina', 'Nyquist', 'BST', 3, 4, 'falla de IEE DETECC', 'se recetearon los poes', 20, 'la celda fallaba continuamente en la prueba de iee deteecc ,razon por la cual se resetean los poes y', 'no', 'closed', 'Antonio Medina', 2, 'NyquistBST', 0, 0),
(304, '2019-05-22 23:10:20', 'Antonio Medina', 'Nyquist', 'BST', 3, 8, 'no habia comunicacion', 'se conectan bien cables de comunica', 20, 'La celda fallaba en la comunicacion y al hacer la revision de los cables se encontro que no estaban ', 'no', 'closed', 'Antonio Medina', 2, 'NyquistBST', 0, 0),
(305, '2019-05-22 23:14:50', 'Antonio Medina', 'Nyquist', 'BST', 3, 9, 'no comunicaba', 'se cambio fusible de la back plates', 25, 'La celda no comunicaba y al hacer la revision se detecta que la power no encendia debido a que el fu', 'no', 'closed', 'Antonio Medina', 2, 'NyquistBST', 0, 0),
(306, '2019-05-22 23:47:28', 'Antonio Medina', 'Nyquist', 'BST', 17, 13, 'falla de traf case', 'se cambio poe', 10, 'la celda presenta la falla de traf case en todas las piezas que se meten a prueba ', 'no', 'closed', 'Carlos Sandoval', 2, 'NyquistBST', 0, 0),
(307, '2019-05-23 01:03:06', 'Juan Carlos Tenorio', 'Nyquist', 'ASSY', 1, 0, 'STACKPOWER', 'CAMBIO DE CABLE SWCB', 30, 'CELL-59,SE PROBO UTT Y PASS', 'no', 'closed', 'Juan Carlos Tenorio', 4, 'NyquistASSY', 0, 0),
(308, '2019-05-23 01:06:39', 'Carlos Ferman', 'Nyquist', 'ASSY', 4, 11, 'STACKPOWER 440 SH', 'CAMBIO DE PUERTO LOADINGBOX', 40, 'SE VERIFICO CELDA SE PROBO UNIDAD OK', 'si', 'closed', 'Carlos Ferman', 4, 'NyquistASSY', 0, 0),
(309, '2019-05-23 01:08:47', 'Carlos Ferman', 'Nyquist', 'ASSY', 4, 0, 'FALLA DE POWER ON', 'CAMBIO DE CABLE RJ45', 25, 'SE PRUEBA UNIDAD PASA', 'si', 'closed', 'Carlos Ferman', 4, 'NyquistASSY', 0, 0),
(310, '2019-05-23 04:48:58', 'Miguel Angel  Rivera', 'Nyquist', 'ASSY', 2, 6, 'STACKPWR2200SH', 'SE LIMPIARON CABLES DE STACK', 30, 'SE LIMPIARON AMBOS CABLES A Y B DE LA CELDA 61 ', 'no', 'closed', 'Miguel Angel  Rivera', 4, 'NyquistASSY', 0, 0),
(311, '2019-05-23 04:50:40', 'Miguel Angel  Rivera', 'Nyquist', 'ASSY', 2, 45, 'STACKPOWER2200SH', 'SE LIMPIARON CABLES DE STACK', 30, 'SE LIMPIARON AMBOS CABLES A Y B DE LA CELDA 57', 'no', 'closed', 'Miguel Angel  Rivera', 4, 'NyquistASSY', 0, 0),
(312, '2019-05-23 05:15:48', 'Francisco Javier Ochoa', 'Nyquist', 'ASSY', 2, 6, 'uut_baseload(disable cell)', 'se limpio contactos de cables swcb ', 7, 'paso la unidad', 'no', 'closed', 'Francisco Javier Ochoa', 4, 'NyquistASSY', 0, 0),
(313, '2019-05-23 05:19:18', 'Francisco Javier Ochoa', 'Nyquist', 'ASSY', 5, 5, 'ref_baseload', 'se limpio contactos de cables swcb ', 7, 'paso la unidad (celda 65)', 'no', 'closed', 'Francisco Javier Ochoa', 4, 'NyquistASSY', 0, 0),
(314, '2019-05-23 07:55:05', 'Javier  Herrera', 'Nyquist', '2C', 7, 42, 'Stack caido', 'recolocacion de tornillos', 3, '', 'no', 'closed', 'Javier  Herrera', 3, 'Nyquist2C', 0, 0),
(315, '2019-05-23 08:00:31', 'Fernando Valenzuela', 'Nyquist', 'BST', 20, 14, 'portstatus', 'cambio de cable', 15, '', 'no', 'closed', 'Fernando Valenzuela', 2, 'NyquistBST', 0, 0),
(316, '2019-05-23 08:01:22', 'Fernando Valenzuela', 'Porter', 'BST', 6, 1, 'portstatus', 'reinicio de golden y limpieza de bu', 60, '', 'no', 'closed', 'Fernando Valenzuela', 12, 'PorterBST', 0, 0),
(317, '2019-05-23 08:02:10', 'Fernando Valenzuela', 'Porter', 'BST', 6, 4, 'portstatus', 'reinicio de golden y limpieza de bu', 20, '', 'no', 'closed', 'Fernando Valenzuela', 12, 'PorterBST', 0, 0),
(318, '2019-05-23 08:02:52', 'Fernando Valenzuela', 'Porter', 'BST', 6, 6, 'porstatus', 'reinicio de golden y limpieza de bu', 20, '', 'no', 'closed', 'Fernando Valenzuela', 12, 'PorterBST', 0, 0),
(319, '2019-05-23 09:10:55', 'Servando Castaneda Hernandez', 'Nyquist', 'BST', 13, 2, 'puertos danados', 'ok', 15, 'queda trabajando', 'si', 'closed', 'Servando Castaneda Hernandez', 2, 'NyquistBST', 0, 0);
INSERT INTO `issues` (`Issue_id`, `Issue_date`, `User_name`, `Production_line`, `Station_name`, `Station_Number`, `Cell_number`, `Issue_name`, `Issue_solution`, `Repaired_time`, `Issue_comment`, `Station_Stopped`, `Issue_status`, `issueClosedby`, `Station_id`, `Nomenclature`, `IssueTotalOpened`, `IssueTotalClosed`) VALUES
(320, '2019-05-23 09:12:18', 'Servando Castaneda Hernandez', 'Nyquist', 'BST', 13, 3, 'puertos danados', 'ok', 15, 'queda trabajando', 'si', 'closed', 'Servando Castaneda Hernandez', 2, 'NyquistBST', 0, 0),
(321, '2019-05-23 09:13:29', 'Servando Castaneda Hernandez', 'Nyquist', 'BST', 19, 2, 'no power', 'ok', 20, 'queda trabajando', 'si', 'closed', 'Servando Castaneda Hernandez', 2, 'NyquistBST', 0, 0),
(322, '2019-05-23 09:59:43', 'Servando Castaneda Hernandez', 'Nyquist', 'BST', 18, 19, 'no detecta puertos del 1 al 24', 'ok', 80, 'queda trabajando', 'si', 'closed', 'Servando Castaneda Hernandez', 2, 'NyquistBST', 0, 0),
(323, '2019-05-23 12:12:56', 'Servando Castaneda Hernandez', 'Nyquist', 'BST', 18, 13, 'stack danado', 'ok', 90, 'se alinea stack y se cambia 2 stack ok queda trabajando', 'si', 'closed', 'Servando Castaneda Hernandez', 2, 'NyquistBST', 0, 0),
(324, '2019-05-23 12:15:15', 'Servando Castaneda Hernandez', 'Nyquist', 'BST', 18, 14, 'stack danado', 'ok', 70, 'queda trabajando', 'si', 'closed', 'Servando Castaneda Hernandez', 2, 'NyquistBST', 0, 0),
(325, '2019-05-24 04:24:03', 'Francisco Javier Ochoa', 'Nyquist', 'ASSY', 8, 4, 'swcb test', 'se limpio contactos de cables swcb', 4, 'paso la unidad', 'no', 'closed', 'Francisco Javier Ochoa', 4, 'NyquistASSY', 0, 0),
(326, '2019-05-24 04:36:32', 'Carlos Ferman', 'Nyquist', 'ASSY', 7, 0, 'stack power 440 sh', 'cambio de puertos loadingbox', 40, 'se probo unidad en la celda 0 y celda 1 pasas ok', 'si', 'closed', 'Carlos Ferman', 4, 'NyquistASSY', 0, 0),
(327, '2019-05-24 04:39:27', 'Carlos Ferman', 'Nyquist', 'ASSY', 7, 4, 'stack power 440 sh', 'cambio de cables swcb en las celdas', 45, 'se probo unidades en las celdas ok', 'si', 'closed', 'Carlos Ferman', 4, 'NyquistASSY', 0, 0),
(328, '2019-05-24 04:42:09', 'Carlos Ferman', 'Nyquist', 'ASSY', 7, 6, 'stack power 2200 sh', 'cambios de cables swcb en las celda', 45, 'se probaron unidades ok', 'si', 'closed', 'Carlos Ferman', 4, 'NyquistASSY', 0, 0),
(329, '2019-05-24 07:03:14', 'Javier Saenz', 'Porter', 'BST', 6, 0, 'uuttype', 'se limpio buffer', 5, '', 'no', 'closed', 'Javier Saenz', 12, 'PorterBST', 0, 0),
(330, '2019-05-24 07:04:44', 'Javier Saenz', 'Porter', 'BST', 5, 4, 'sysinit', 'se reinicio klemtest', 20, 'falla celda3, 4,5,6', 'si', 'closed', 'Javier Saenz', 12, 'PorterBST', 0, 0),
(331, '2019-05-24 08:40:43', 'Javier Saenz', 'Nyquist', 'BST', 1, 1, 'traf', 'se limpio buffer de todas las celda', 10, '', 'si', 'closed', 'Javier Saenz', 2, 'NyquistBST', 0, 0),
(332, '2019-05-24 09:06:06', 'Miguel Angel  Rivera', 'Nyquist', 'ASSY', 1, 45, 'USB FAIL', 'SE CAMBIO DE MEMORIA USB', 10, 'NO  DESCARGA ARCHIVOS  PAR  LA CELDA 62 SE PROBO CON OTRA  USB LA MISMA UNIDAD PASANDO ESTE PRUEBAS', 'no', 'closed', 'Miguel Angel  Rivera', 4, 'NyquistASSY', 0, 0),
(333, '2019-05-24 09:07:55', 'Miguel Angel  Rivera', 'Nyquist', 'ASSY', 1, 18, 'SWCB TEST', 'SE LIMPIO CABLES STACK', 10, 'SE QUITO CABLE PARA VERIFICAR Y SE LIMPIO SE PROBO LA MISMA UNIDAD VALIDANDO  LA RAPARACION', 'no', 'closed', 'Miguel Angel  Rivera', 4, 'NyquistASSY', 0, 0),
(334, '2019-05-24 09:09:44', 'Miguel Angel  Rivera', 'Nyquist', 'ASSY', 1, 0, 'STACKPOWER440CU', 'SE LIMPIO CABLES STACK', 10, 'SE PROBO LA MISMA UNIDAD VALIDANDO LA REPARACION PASANDO LAS PRUEBAS', 'no', 'closed', 'Miguel Angel  Rivera', 4, 'NyquistASSY', 0, 0),
(335, '2019-05-24 10:02:22', 'Servando Castaneda Hernandez', 'Nyquist', 'BST', 4, 19, 'stack sin torrnillos', 'ok', 20, '', '', 'closed', 'Servando Castaneda Hernandez', 2, 'NyquistBST', 0, 0),
(336, '2019-05-24 10:45:12', 'Javier Saenz', 'Nyquist', 'BST', 6, 1, 'programa blockeado', 'se reinicio wyse', 5, '', 'no', 'closed', 'Javier Saenz', 2, 'NyquistBST', 0, 0),
(337, '2019-05-24 11:31:11', 'Javier Saenz', 'Porter', 'BST', 3, 0, 'sysinit', 'se reinicio gold switch', 10, '', 'no', 'closed', 'Javier Saenz', 12, 'PorterBST', 0, 0),
(338, '2019-05-24 14:35:10', 'Javier  Herrera', 'Nyquist', '2C', 10, 38, 'Power on com.', 'remplazo de tablilla de fuente (pcb', 10, 'La unidad no encendia y se remplazo la backplane ', 'no', 'closed', 'Javier  Herrera', 3, 'Nyquist2C', 0, 0),
(339, '2019-05-24 18:10:25', 'Tino Carrera', 'Nyquist', 'BST', 1, 7, 'stack quebrado', 'se cambio la pieza', 15, 'la estacion quedo funcionando correctamente', 'no', 'closed', 'Tino Carrera', 2, 'NyquistBST', 0, 0),
(340, '2019-05-25 03:20:40', 'Miguel Angel  Rivera', 'Nyquist', 'ASSY', 3, 8, 'STACKPWRCONINIT', 'SE LIMPIARON CABLES STACK', 10, 'SE PROBO LA MISMA UNIDAD CON LA FALLA PASANDO ESTA MISMA LAS PRUEBAS VALIDANDO LA REPARACION', 'no', 'closed', 'Miguel Angel  Rivera', 4, 'NyquistASSY', 0, 0),
(341, '2019-05-25 03:22:35', 'Miguel Angel  Rivera', 'Nyquist', 'ASSY', 1, 10, 'SWCB TEST', 'SE LIMPIARON CABLES DE STACK', 10, 'SE PROBO LA MISMA UNIDAD QUE FALLO PASANDO ESTA LAS PRUEBAS Y VALIDANDO REPARACION', 'no', 'closed', 'Miguel Angel  Rivera', 4, 'NyquistASSY', 0, 0),
(342, '2019-05-25 03:24:10', 'Miguel Angel  Rivera', 'Nyquist', 'ASSY', 1, 8, 'SWCB TEST', 'SE LIMPIARON CABLES DE STACK', 10, 'SE PROBO LA MISMA UNIDAD PASANDO ESTE LAS PRUEBAS VALIDANDO REPARACION', 'no', 'closed', 'Miguel Angel  Rivera', 4, 'NyquistASSY', 0, 0),
(343, '2019-05-25 03:25:16', 'Miguel Angel  Rivera', 'Nyquist', 'ASSY', 3, 3, 'SWCB TEST', 'SE LIMIARON CABLES DE STACK', 10, 'SE PROBO LA MISMA UNIDAD PASANDO ESTA LAS PRUEBAS', 'no', 'closed', 'Miguel Angel  Rivera', 4, 'NyquistASSY', 0, 0),
(344, '2019-05-25 03:26:57', 'Miguel Angel  Rivera', 'Nyquist', 'ASSY', 1, 6, 'STARKPWCONINIT', 'SE LIMPIARON CABLES DE STACK', 10, 'SE PROBO LA MISMA UNIDAD DE LA FALLA PASANDO  LAS PRUEBAS ', 'no', 'closed', 'Miguel Angel  Rivera', 4, 'NyquistASSY', 0, 0),
(345, '2019-05-25 06:28:36', 'Miguel Angel  Rivera', 'Nyquist', 'ASSY', 1, 1, 'USB FAIL', 'USB SE CAMBIO NO BOOT', 10, 'SE PROBO MISMA UNIDAD A LA CELDA 1 PASO PRUEBAS', 'no', 'closed', 'Miguel Angel  Rivera', 4, 'NyquistASSY', 0, 0),
(346, '2019-05-25 06:31:05', 'Miguel Angel  Rivera', 'Nyquist', 'ASSY', 3, 4, 'STACKPWR220SH', 'SE LIMPIARON CABLES STACK', 10, 'SE PROBO MISMA UNIDAD A CELDA PASNDO PRUEBAS', 'no', 'closed', 'Miguel Angel  Rivera', 4, 'NyquistASSY', 0, 0),
(347, '2019-05-25 06:34:02', 'Miguel Angel  Rivera', 'Nyquist', 'ASSY', 1, 2, 'STACK POWER', 'SE LIMPIARON CABLES STACK', 10, 'SE PROBO MISMA UNIDAD A CELDA2 PASANDO PRUEBAS', 'no', 'closed', 'Miguel Angel  Rivera', 4, 'NyquistASSY', 0, 0),
(348, '2019-05-25 06:35:40', 'Miguel Angel  Rivera', 'Nyquist', 'ASSY', 1, 1, 'USB FAIL', 'SE CAMBIO UNIDAD DE USB', 10, 'DETENIDA EN DESCARGAS DE ARCHIVOS SE PROBO LA MISMA UNIDAD PASANDO PRUEBAS', 'no', 'closed', 'Miguel Angel  Rivera', 4, 'NyquistASSY', 0, 0),
(349, '2019-05-25 06:48:11', 'Francisco Javier Ochoa', 'Nyquist', 'ASSY', 6, 8, 'MEAS CUR 50 VOLT', 'Se limpio contactos de cables swcb', 4, 'se probo con la misma unidad y paso (cell 58)', 'no', 'closed', 'Francisco Javier Ochoa', 4, 'NyquistASSY', 0, 0),
(350, '2019-05-26 01:08:18', 'Miguel Angel  Rivera', 'Nyquist', 'ASSY', 1, 1, 'STACKPW440SH', 'SE LIMPIO CABLES STACK', 10, 'SE PROBO MISMA UNIDAD DE FALLA VALIDANDO ESTE PASO PRUEBAS ', 'no', 'closed', 'Miguel Angel  Rivera', 4, 'NyquistASSY', 0, 0),
(351, '2019-05-26 03:30:47', 'Juan Normando', 'Nyquist', 'ASSY', 3, 6, 'SWTEST', 'LIMPIEZA DE CONECTORES', 20, 'SOLO SE LIMPIAN CONECTORES STACK ', 'no', 'closed', 'Juan Normando', 4, 'NyquistASSY', 0, 0),
(352, '2019-05-26 03:33:05', 'Juan Normando', 'Nyquist', 'ASSY', 3, 8, 'STACK POWER CONGELADO', 'SE CAMBIO LA GOLDEN SWITCH...', 30, 'SE ANALIZA CABLES AC, GOLDEN, Y SCRIP', 'si', 'closed', 'Juan Normando', 4, 'NyquistASSY', 0, 0),
(353, '2019-05-27 07:01:03', 'Javier Saenz', 'Nyquist', 'BST', 1, 1, 'no fuinciona programa', 'se prendieron virtuales', 45, 'todas las virtuales de bst estaban apagadas', 'si', 'closed', 'Javier Saenz', 2, 'NyquistBST', 0, 0),
(354, '2019-05-27 12:56:55', 'Servando Castaneda Hernandez', 'Nyquist', 'BST', 15, 0, 'no detecta puertos', 'ok', 15, '', '', 'closed', 'Servando Castaneda Hernandez', 2, 'NyquistBST', 0, 0),
(355, '2019-05-27 14:01:03', 'Servando Castaneda Hernandez', 'Nyquist', 'BST', 19, 1, 'cable danado', 'ok', 15, 'queda trabajando', 'no', 'closed', 'Servando Castaneda Hernandez', 2, 'NyquistBST', 0, 0),
(356, '2019-05-27 14:55:56', 'Servando Castaneda Hernandez', 'Nyquist', 'BST', 2, 19, 'puerto danado', 'ok', 20, 'queda trabajando', 'no', 'closed', 'Servando Castaneda Hernandez', 2, 'NyquistBST', 0, 0),
(357, '2019-05-27 14:57:00', 'Servando Castaneda Hernandez', 'Nyquist', 'BST', 15, 0, 'puerto danado', 'ok', 21, 'queda trabajando', 'no', 'closed', 'Servando Castaneda Hernandez', 2, 'NyquistBST', 0, 0),
(358, '2019-05-27 16:44:32', 'Servando Castaneda Hernandez', 'Nyquist', 'BST', 17, 3, 'stack y base danados', 'ok ', 65, 'sequeda trabajando', 'si', 'closed', 'Servando Castaneda Hernandez', 2, 'NyquistBST', 0, 0),
(359, '2019-05-28 06:50:45', 'Fernando Valenzuela', 'Porter', 'BST', 6, 4, 'portstatus', 'Esta falla se presenta cuandola cel', 15, 'La primera pieza despues de hacer lo anterior muy seguido falla, pero una vez al correr una segunda ', 'no', 'closed', 'Fernando Valenzuela', 12, 'PorterBST', 0, 0),
(360, '2019-05-28 06:51:53', 'Fernando Valenzuela', 'Porter', 'BST', 6, 9, 'portstatus', 'Esta falla se presenta cuando la ce', 15, 'La primera pieza despues de hacer lo anterior muy seguido falla, pero una vez al correr una segunda ', 'no', 'closed', 'Fernando Valenzuela', 12, 'PorterBST', 0, 0),
(361, '2019-05-28 06:53:36', 'Fernando Valenzuela', 'Nyquist', 'BST', 1, 3, 'portstatus', 'cambio de cable numero 5', 10, '', 'no', 'closed', 'Fernando Valenzuela', 2, 'NyquistBST', 0, 0),
(362, '2019-05-28 06:54:28', 'Fernando Valenzuela', 'Nyquist', 'BST', 1, 0, 'equipo freezeado', 'reinicio de wyze', 5, '', 'si', 'closed', 'Fernando Valenzuela', 2, 'NyquistBST', 0, 0),
(363, '2019-05-28 06:54:58', 'Fernando Valenzuela', 'Nyquist', 'BST', 2, 0, 'sistema freezeado ', 'reinicio de wyze', 5, '', 'si', 'closed', 'Fernando Valenzuela', 2, 'NyquistBST', 0, 0),
(364, '2019-05-28 07:46:46', 'Miguel Angel  Rivera', 'Nyquist', 'ASSY', 3, 5, 'STACKPW2200sn', 'SE LIMPIO CABLES STACK', 10, 'SE PROBO LA MISMA UNIDAD PARA VALIDAR REPARACION PASANDO ESTA LAS PRUEBAS', 'no', 'closed', 'Miguel Angel  Rivera', 4, 'NyquistASSY', 0, 0),
(365, '2019-05-28 07:48:28', 'Miguel Angel  Rivera', 'Nyquist', 'ASSY', 1, 3, 'SWCB TEST', 'SE LIMPIO CABLES STACK', 10, 'SE PROBO LA MISMA UNIDAD PARA VALIDAR CELDA REPARADA', 'no', 'closed', 'Miguel Angel  Rivera', 4, 'NyquistASSY', 0, 0),
(366, '2019-05-28 08:31:36', 'Ariel Vela', 'Nyquist', '2C', 13, 40, 'no boot', 'Se cambio Stack', 15, 'Se encontro stack danado', 'si', 'closed', 'Ariel Vela', 3, 'Nyquist2C', 0, 0),
(367, '2019-05-28 09:50:19', 'Servando Castaneda Hernandez', 'Nyquist', 'BST', 17, 9, 'puertos danados', 'ok', 20, 'queda trabajando', 'no', 'closed', 'Servando Castaneda Hernandez', 2, 'NyquistBST', 0, 0),
(368, '2019-05-28 11:02:23', 'Servando Castaneda Hernandez', 'Nyquist', 'BST', 18, 18, 'no entra unidad', 'ok', 15, 'queda trabajando', '', 'closed', 'Servando Castaneda Hernandez', 2, 'NyquistBST', 0, 0),
(369, '2019-05-28 11:25:04', 'Carlos Sandoval', 'Nyquist', 'BDL', 4, 13, 'boot up', 'ajusto conectores de comicacion ', 5, '', 'si', 'closed', 'Carlos Sandoval', 1, 'NyquistBDL', 0, 0),
(370, '2019-05-28 11:40:42', 'Servando Castaneda Hernandez', 'Nyquist', 'BST', 1, 0, 'no detecta puertos del 1al 48', 'ok', 131, 'queda trabajando', 'no', 'closed', 'Servando Castaneda Hernandez', 2, 'NyquistBST', 0, 0),
(371, '2019-05-28 14:36:58', 'Javier  Herrera', 'Nyquist', '2C', 10, 38, 'Power On. Com.', 'Colocacion de Jumper en pcb de alim', 10, '', 'no', 'closed', 'Javier  Herrera', 3, 'Nyquist2C', 0, 0),
(372, '2019-05-28 14:40:08', 'Javier  Herrera', 'Nyquist', '2C', 10, 33, 'No entra la unidad al slot de la ce', 'ajuste de fixsturas ', 10, '', 'no', 'closed', 'Javier  Herrera', 3, 'Nyquist2C', 0, 0),
(373, '2019-05-28 14:41:11', 'Javier  Herrera', 'Nyquist', '2C', 10, 34, 'Desajuste de stack', 'Se reajusta y calibra la posicion d', 10, '', 'no', 'closed', 'Javier  Herrera', 3, 'Nyquist2C', 0, 0),
(374, '2019-05-28 14:58:55', 'Javier Saenz', 'Nyquist', 'BST', 4, 5, 'no entra unidad', 'se alineo cable stack', 20, '', 'no', 'closed', 'Javier Saenz', 2, 'NyquistBST', 0, 0),
(375, '2019-05-28 15:19:32', 'Javier  Herrera', 'Nyquist', 'BDL', 5, 21, 'fixstura danada', 'se re-instalaron resortes y tornill', 10, '', 'no', 'closed', 'Javier  Herrera', 1, 'NyquistBDL', 0, 0),
(376, '2019-05-28 16:57:13', 'Servando Castaneda Hernandez', 'Nyquist', 'BST', 20, 14, 'corto intermintente', 'ok', 105, 'se balida y queda trabajando', 'no', 'closed', 'Servando Castaneda Hernandez', 2, 'NyquistBST', 0, 0),
(377, '2019-05-28 23:32:02', 'Tino Carrera', 'Nyquist', 'BST', 4, 0, 'Puerto 45', 'se cambio conector ', 15, 'la estacion se reparo ', 'no', 'closed', 'Tino Carrera', 2, 'NyquistBST', 0, 0),
(378, '2019-05-28 23:40:58', 'Tino Carrera', 'Nyquist', 'BST', 11, 4, 'conector', 'se cambio', 10, 'la estacion quedo funcionando correctamente', 'no', 'closed', 'Tino Carrera', 2, 'NyquistBST', 0, 0),
(379, '2019-05-29 05:48:51', 'Miguel Angel  Rivera', 'Nyquist', 'ASSY', 2, 45, 'STACKPOW440sh', 'SE LIMPIARON CABLES STACK', 10, 'FALLO LA CELDA 62 SE PROBO MISMA UNIDAD ES PASANDO PRUEBAS', 'no', 'closed', 'Miguel Angel  Rivera', 4, 'NyquistASSY', 0, 0),
(380, '2019-05-29 05:50:34', 'Miguel Angel  Rivera', 'Nyquist', 'ASSY', 2, 7, 'STACKPOWERConinit  ', 'SE LIMPIARON CABLES STACK', 10, 'SE PROBO MISMA UNIDAD PARA VELIDAR REPARACION ESTA PASO PRUEBAS', 'no', 'closed', 'Miguel Angel  Rivera', 4, 'NyquistASSY', 0, 0),
(381, '2019-05-29 05:51:52', 'Miguel Angel  Rivera', 'Nyquist', 'ASSY', 2, 0, 'STACKPOWER', 'SE LIMPIARON CABLES STACK', 10, 'SE PROBO MISMA UNIDAD PARA VALIDAR REPARACION PASO PRUEBAS', 'no', 'closed', 'Miguel Angel  Rivera', 4, 'NyquistASSY', 0, 0),
(382, '2019-05-29 05:53:32', 'Miguel Angel  Rivera', 'Nyquist', 'ASSY', 2, 1, 'SWCB TEST', 'SE LIMPIARON CABLES DE STACK', 10, 'SE PROBO MISMA UNIDAD PARA VALIDAR REPARACION PASANDO PRUEBAS', 'no', 'closed', 'Miguel Angel  Rivera', 4, 'NyquistASSY', 0, 0),
(383, '2019-05-29 11:59:49', 'Servando Castaneda Hernandez', 'Nyquist', 'BST', 14, 11, 'stack danado', ' se cambio stack', 20, 'se queda trabajando', 'no', 'closed', 'Servando Castaneda Hernandez', 2, 'NyquistBST', 0, 0),
(384, '2019-05-29 12:02:36', 'Servando Castaneda Hernandez', 'Nyquist', 'BST', 14, 11, 'puerto danado', 'se reparo cable ', 15, 'se queda trabajando', 'no', 'closed', 'Servando Castaneda Hernandez', 2, 'NyquistBST', 0, 0),
(385, '2019-05-29 12:04:34', 'Servando Castaneda Hernandez', 'Nyquist', 'BST', 15, 4, 'stack danado', 'se cambio cable  stack', 25, 'se queda trabajando', 'no', 'closed', 'Servando Castaneda Hernandez', 2, 'NyquistBST', 0, 0),
(386, '2019-05-29 12:06:21', 'Servando Castaneda Hernandez', 'Nyquist', 'BST', 14, 16, 'puerto danado', 'se raparo cable', 20, 'se queda trabajando', 'no', 'closed', 'Servando Castaneda Hernandez', 2, 'NyquistBST', 0, 0),
(387, '2019-05-29 12:07:53', 'Servando Castaneda Hernandez', 'Nyquist', 'BST', 15, 5, 'stack danado', 'se cambio stack', 25, 'se queda trabajando', 'no', 'closed', 'Servando Castaneda Hernandez', 2, 'NyquistBST', 0, 0),
(388, '2019-05-29 12:09:38', 'Servando Castaneda Hernandez', 'Nyquist', 'BST', 15, 14, 'stack desalineado', 'se ajusta stack', 20, 'se queda trabajando', 'no', 'closed', 'Servando Castaneda Hernandez', 2, 'NyquistBST', 0, 0),
(389, '2019-05-29 12:11:27', 'Servando Castaneda Hernandez', 'Nyquist', 'BST', 14, 16, 'puertos danados', 'se reparan 2 cables', 28, 'se queda trabajando', 'no', 'closed', 'Servando Castaneda Hernandez', 2, 'NyquistBST', 0, 0),
(390, '2019-05-29 12:13:54', 'Servando Castaneda Hernandez', 'Nyquist', 'BST', 2, 0, 'equipo bloqueado', ' se reinicia el equipo', 15, 'se queda trabajando', 'si', 'closed', 'Servando Castaneda Hernandez', 2, 'NyquistBST', 0, 0),
(391, '2019-05-29 12:15:27', 'Servando Castaneda Hernandez', 'Nyquist', 'BST', 13, 0, 'stack danado', 'se cambio stack', 25, 'se queda trabajando', 'no', 'closed', 'Servando Castaneda Hernandez', 2, 'NyquistBST', 0, 0),
(392, '2019-05-29 13:44:36', 'Javier Saenz', 'Porter', 'BST', 3, 9, 'no link puerto11', 'se reparo cables', 20, '', 'no', 'closed', 'Javier Saenz', 12, 'PorterBST', 0, 0),
(393, '2019-05-29 13:56:02', 'Javier Saenz', 'Porter', 'BST', 1, 6, 'no link puerto41', 'se reparo cables', 20, '', 'no', 'closed', 'Javier Saenz', 12, 'PorterBST', 0, 0),
(394, '2019-05-29 14:15:34', 'Javier Saenz', 'Porter', 'BST', 6, 6, 'no link puerto29', 'se reparo cables', 20, '', 'no', 'closed', 'Javier Saenz', 12, 'PorterBST', 0, 0),
(395, '2019-05-29 16:53:14', 'Servando Castaneda Hernandez', 'Nyquist', 'BST', 2, 4, 'pieza no entra', 'se alinea stack', 20, 'queda trabajando', 'no', 'closed', 'Servando Castaneda Hernandez', 2, 'NyquistBST', 0, 0),
(396, '2019-05-29 23:22:16', 'Fernando Valenzuela', 'Nyquist', 'BST', 1, 2, 'no ensambla unidad', 'ajuste de stack', 20, 'el stack se encontraba en buenas condiciones', 'no', 'closed', 'Fernando Valenzuela', 2, 'NyquistBST', 0, 0),
(397, '2019-05-29 23:30:18', 'Fernando Valenzuela', 'Nyquist', 'BST', 5, 4, 'portstatus', 'cambio de conector #15 que va hacia', 10, '', 'no', 'closed', 'Fernando Valenzuela', 2, 'NyquistBST', 0, 0),
(398, '2019-05-30 02:57:48', 'Fernando Valenzuela', 'Porter', 'BST', 6, 2, 'portstatus', 'pasar de modo goldenstack a switch ', 10, '', 'no', 'closed', 'Fernando Valenzuela', 12, 'PorterBST', 0, 0),
(399, '2019-05-30 05:42:13', 'Fernando Valenzuela', 'Porter', 'BST', 1, 3, 'portstatus', 'cambio de puerto 35', 10, '', 'si', 'closed', 'Fernando Valenzuela', 12, 'PorterBST', 0, 0),
(400, '2019-05-30 05:46:30', 'Fernando Valenzuela', 'Porter', 'BST', 6, 1, 'porstatus', 'cambio puerto 1', 10, '', 'no', 'closed', 'Fernando Valenzuela', 12, 'PorterBST', 0, 0),
(401, '2019-05-30 08:04:34', 'Servando Castaneda Hernandez', 'Nyquist', 'BST', 13, 0, 'no detecta puertos', 'se cabio conector', 25, 'se queda trabajando', 'no', 'closed', 'Servando Castaneda Hernandez', 2, 'NyquistBST', 0, 0),
(402, '2019-05-30 08:06:06', 'Servando Castaneda Hernandez', 'Nyquist', 'BST', 14, 14, 'stack desalineado', 'se ajusta stack ', 20, 'se queda trabajando', 'no', 'closed', 'Servando Castaneda Hernandez', 2, 'NyquistBST', 0, 0),
(403, '2019-05-30 08:07:42', 'Servando Castaneda Hernandez', 'Nyquist', 'BST', 6, 14, 'stack desalineado', 'se ajusta stack', 20, 'se quda  trabajando', 'no', 'closed', 'Servando Castaneda Hernandez', 2, 'NyquistBST', 0, 0),
(404, '2019-05-30 08:09:14', 'Servando Castaneda Hernandez', 'Nyquist', 'BST', 15, 1, 'no detecta puertos', 'se reinicia', 70, 'se queda trabajando', 'no', 'closed', 'Servando Castaneda Hernandez', 2, 'NyquistBST', 0, 0),
(405, '2019-05-30 08:42:30', 'Javier Saenz', 'Porter', 'BST', 7, 0, 'no link puerto25', 'se reparo cables', 20, '', 'no', 'closed', 'Javier Saenz', 12, 'PorterBST', 0, 0),
(406, '2019-05-30 11:03:47', 'Javier Saenz', 'Porter', 'BST', 7, 9, 'no link puerto33', 'se reparo cables', 20, '', 'no', 'closed', 'Javier Saenz', 12, 'PorterBST', 0, 0),
(407, '2019-05-30 11:33:24', 'Javier Saenz', 'Porter', 'BST', 5, 6, 'portstatus', 'se reinicio gold switch', 10, '', 'no', 'closed', 'Javier Saenz', 12, 'PorterBST', 0, 0),
(408, '2019-05-30 13:44:05', 'Javier Saenz', 'Porter', 'BST', 7, 6, 'no link puerto25', 'se reparo cables', 25, '', 'no', 'closed', 'Javier Saenz', 12, 'PorterBST', 0, 0),
(409, '2019-05-31 07:25:08', 'Servando Castaneda Hernandez', 'Nyquist', 'BST', 8, 17, 'stack desalineado', 'se ajusta stack', 20, 'ok', 'si', 'closed', 'Servando Castaneda Hernandez', 2, 'NyquistBST', 0, 0),
(410, '2019-05-31 07:28:37', 'Servando Castaneda Hernandez', 'Nyquist', 'BST', 8, 17, 'torrnillos danados baridos', 'se cambian torrnillos y base de sta', 25, 'ok ', 'si', 'closed', 'Servando Castaneda Hernandez', 2, 'NyquistBST', 0, 0),
(411, '2019-05-31 07:30:16', 'Servando Castaneda Hernandez', 'Nyquist', 'BST', 8, 13, 'stack desalineado', 'se alineo stack', 20, 'ok', 'si', 'closed', 'Servando Castaneda Hernandez', 2, 'NyquistBST', 0, 0),
(412, '2019-05-31 07:32:11', 'Servando Castaneda Hernandez', 'Nyquist', 'BST', 8, 12, 'stack desalineado', 'se ajusto stack', 20, 'ok', 'si', 'closed', 'Servando Castaneda Hernandez', 2, 'NyquistBST', 0, 0),
(413, '2019-05-31 08:02:24', 'Servando Castaneda Hernandez', 'Nyquist', 'BST', 1, 0, 'no power', 'se cabio f', 10, 'se queda trabajando', 'no', 'closed', 'Servando Castaneda Hernandez', 2, 'NyquistBST', 0, 0),
(414, '2019-05-31 08:03:51', 'Servando Castaneda Hernandez', 'Nyquist', 'BST', 1, 2, 'no comunica', 'se ajusta conector de comunicasion', 15, 'se queda trabajando', 'no', 'closed', 'Servando Castaneda Hernandez', 2, 'NyquistBST', 0, 0),
(415, '2019-05-31 08:52:52', 'Javier Saenz', 'Porter', 'BST', 7, 0, 'no link puerto12', 'se reparo cables', 25, '', 'no', 'closed', 'Javier Saenz', 12, 'PorterBST', 0, 0),
(416, '2019-05-31 09:25:22', 'Javier Saenz', 'Porter', 'BST', 2, 4, 'no link puerto43', 'se reparo cables', 20, '', 'no', 'closed', 'Javier Saenz', 12, 'PorterBST', 0, 0),
(417, '2019-05-31 10:23:56', 'Javier Saenz', '', '', 0, 0, '', '', 0, '', '', '', '', 0, '', 0, 0),
(418, '2019-05-31 10:27:48', 'Javier Saenz', 'Porter', 'BST', 7, 6, 'no link puerto47', 'se reparo cables', 25, '', 'no', 'closed', 'Javier Saenz', 12, 'PorterBST', 0, 0),
(419, '2019-05-31 10:54:26', 'Servando Castaneda Hernandez', 'Nyquist', 'BST', 1, 2, 'no comunica', 'se alinea conector de comunicacion', 10, 'se queda trabajando', 'no', 'closed', 'Servando Castaneda Hernandez', 2, 'NyquistBST', 0, 0),
(420, '2019-05-31 11:06:52', 'Servando Castaneda Hernandez', 'Nyquist', 'BDL', 8, 14, 'guia desalineada', 'se alinea guia', 15, 'se queda trabajando', 'no', 'closed', 'Servando Castaneda Hernandez', 1, 'NyquistBDL', 0, 0),
(421, '2019-05-31 11:08:57', 'Servando Castaneda Hernandez', 'Nyquist', 'BDL', 9, 20, 'tornillos flojos', 'conector de comunicacioon', 15, 'y se ajusta la guia', 'no', 'closed', 'Servando Castaneda Hernandez', 1, 'NyquistBDL', 0, 0),
(422, '2019-05-31 11:11:10', 'Servando Castaneda Hernandez', 'Nyquist', 'BDL', 9, 21, 'conector de comunicacion', 'ajuste de gui y conector de comunic', 15, 'se queda trabajando', 'no', 'closed', 'Servando Castaneda Hernandez', 1, 'NyquistBDL', 0, 0),
(423, '2019-05-31 11:14:08', 'Servando Castaneda Hernandez', 'Nyquist', 'BDL', 11, 10, 'torrnillos flojos', 'se ajustan torrnillos y guia', 15, 'se queda trabajando', 'no', 'closed', 'Servando Castaneda Hernandez', 1, 'NyquistBDL', 0, 0),
(424, '2019-05-31 11:16:03', 'Servando Castaneda Hernandez', 'Nyquist', 'BDL', 11, 11, 'guia desalineada', 'ajuste de guia', 16, 'se queda trabajando', 'no', 'closed', 'Servando Castaneda Hernandez', 1, 'NyquistBDL', 0, 0),
(425, '2019-05-31 11:17:50', 'Servando Castaneda Hernandez', 'Nyquist', 'BDL', 15, 26, 'guia desalineada', 'aguste de guia', 14, 'se queda T', 'no', 'closed', 'Servando Castaneda Hernandez', 1, 'NyquistBDL', 0, 0),
(426, '2019-05-31 11:19:46', 'Servando Castaneda Hernandez', 'Nyquist', 'BDL', 15, 26, 'guia desalineada', 'ajuste de guia', 10, 'se queda trabajando', 'no', 'closed', 'Servando Castaneda Hernandez', 1, 'NyquistBDL', 0, 0),
(427, '2019-05-31 11:21:07', 'Servando Castaneda Hernandez', 'Nyquist', 'BDL', 21, 25, 'guia de salineada', 'guia', 15, '', 'no', 'closed', 'Servando Castaneda Hernandez', 1, 'NyquistBDL', 0, 0),
(428, '2019-05-31 11:35:15', 'Ariel Vela', 'Orsted', '2C', 2, 33, 'Power On Com', 'Se ajusto cable de comunicacion', 10, '', 'si', 'closed', 'Ariel Vela', 62, 'Orsted2C', 0, 0),
(429, '2019-05-31 11:37:10', 'Ariel Vela', 'Orsted', '2C', 2, 38, 'LT:Cable', 'Se ajusto Stack', 20, '', 'si', 'closed', 'Ariel Vela', 62, 'Orsted2C', 0, 0),
(430, '2019-05-31 11:38:55', 'Ariel Vela', 'Orsted', '2C', 2, 40, 'LT:Sysinit', 'Se ajusto cable de comunicacion y S', 20, '', 'si', 'closed', 'Ariel Vela', 62, 'Orsted2C', 0, 0),
(431, '2019-05-31 13:16:41', 'Servando Castaneda Hernandez', 'Nyquist', 'BDL', 19, 6, 'stack danado y y rosca de base dana', 'se cambio stack y base', 30, 'se queda trabajando', 'no', 'closed', 'Servando Castaneda Hernandez', 1, 'NyquistBDL', 0, 0),
(432, '2019-05-31 14:13:27', 'Javier Saenz', 'Porter', 'BST', 4, 5, 'ictfail', 'se limpio buffer', 5, '', 'no', 'closed', 'Javier Saenz', 12, 'PorterBST', 0, 0),
(433, '2019-05-31 14:17:03', 'Javier Saenz', 'Porter', 'ASSY', 1, 2, 'falla monitor', 'se reinicio pc', 10, 'estacion assy uplink 1', 'no', 'closed', 'Javier Saenz', 14, 'PorterASSY', 0, 0),
(434, '2019-05-31 14:26:12', 'Javier Saenz', 'Porter', 'BST', 6, 0, 'portstatus', 'se reinicio gold switch', 5, '', 'no', 'closed', 'Javier Saenz', 12, 'PorterBST', 0, 0),
(435, '2019-05-31 14:29:19', 'Javier Saenz', 'Nyquist', 'BST', 2, 2, 'pc blockeada', 'se reinicio pc', 10, 'estacion dcafs ensamble manual', 'si', 'closed', 'Javier Saenz', 2, 'NyquistBST', 0, 0),
(436, '2019-05-31 15:05:23', 'Javier Saenz', 'Porter', 'BST', 6, 9, 'sysinit', 'se reparo cables', 20, '', 'no', 'closed', 'Javier Saenz', 12, 'PorterBST', 0, 0),
(437, '2019-05-31 21:32:21', 'Javier Osbaldo', 'Nyquist', 'ASSY', 8, 2, 'power supply fep', 'se cambiaron los fusibles', 25, 'se probo unidad y se corrige la falla', 'no', 'closed', 'Javier Osbaldo', 4, 'NyquistASSY', 0, 0),
(438, '2019-05-31 21:39:18', 'Javier Osbaldo', 'Nyquist', 'ASSY', 8, 0, 'power supply fep', 'se cambiaron las power', 20, 'celda 59 se prueba unidad y pasa', 'no', 'closed', 'Javier Osbaldo', 4, 'NyquistASSY', 0, 0),
(439, '2019-05-31 21:40:47', 'Javier Osbaldo', 'Nyquist', 'ASSY', 8, 1, 'power supply fep', 'se cambiaron powers', 20, 'celda 58 se prueba unidad y pasa ok', 'no', 'closed', 'Javier Osbaldo', 4, 'NyquistASSY', 0, 0),
(440, '2019-06-01 03:09:49', 'Fernando Valenzuela', 'Nyquist', 'BST', 17, 7, 'portstatus', 'cambio de cable que va hacia el POE', 15, '', 'no', 'closed', 'Fernando Valenzuela', 2, 'NyquistBST', 0, 0),
(441, '2019-06-01 03:14:24', 'Fernando Valenzuela', 'Nyquist', 'BST', 1, 7, 'tablillas no comunican', 'Cambio de cable de comunicacion y a', 30, '', 'no', 'closed', 'Fernando Valenzuela', 2, 'NyquistBST', 0, 0),
(442, '2019-06-01 05:53:06', 'Fernando Valenzuela', 'Nyquist', 'BST', 18, 2, 'porstatus', 'cambio puerto 35', 10, '', 'no', 'closed', 'Fernando Valenzuela', 2, 'NyquistBST', 0, 0),
(443, '2019-06-01 05:55:51', 'Fernando Valenzuela', 'Nyquist', 'BST', 14, 16, 'tablillas no comunican', 'ajuste de cables de comunicacion', 20, '', 'no', 'closed', 'Fernando Valenzuela', 2, 'NyquistBST', 0, 0),
(444, '2019-06-01 06:14:12', 'Fernando Valenzuela', 'Nyquist', 'BST', 14, 9, 'no encaja tablilla en stack', 'ajuste de stack', 20, '', 'no', 'closed', 'Fernando Valenzuela', 2, 'NyquistBST', 0, 0),
(445, '2019-06-01 06:27:29', 'Fernando Valenzuela', 'Newton', 'BST', 20, 13, 'porstatus', 'reparacion de punta de cable hacia ', 10, '', 'no', 'closed', 'Fernando Valenzuela', 28, 'NewtonBST', 0, 0),
(446, '2019-06-01 07:16:56', 'Fernando Valenzuela', 'Nyquist', 'BST', 19, 5, 'tablilla no comunica', 'ajuste de slot de cables ethernet', 15, '', 'no', 'closed', 'Fernando Valenzuela', 2, 'NyquistBST', 0, 0),
(447, '2019-06-01 09:29:46', 'Javier Saenz', 'Porter', 'BST', 6, 2, 'no link puerto9', 'se reparo cables', 20, '', 'no', 'closed', 'Javier Saenz', 12, 'PorterBST', 0, 0),
(448, '2019-06-01 09:31:28', 'Javier Saenz', 'Porter', 'BST', 4, 11, 'fallas varias', 'se reinicio estacion', 25, 'fallas varias en varias celdas', 'si', 'closed', 'Javier Saenz', 12, 'PorterBST', 0, 0),
(449, '2019-06-01 09:39:01', 'Javier Saenz', 'Porter', 'BST', 2, 1, 'se apago', 'se reinicio klemtest', 20, '', 'si', 'closed', 'Javier Saenz', 12, 'PorterBST', 0, 0),
(450, '2019-06-01 09:39:46', 'Fernando Valenzuela', 'Nyquist', 'BST', 17, 3, 'stack no entra', 'ajuste de stack', 25, '', 'no', 'closed', 'Fernando Valenzuela', 2, 'NyquistBST', 0, 0),
(451, '2019-06-01 09:45:18', 'Javier Saenz', 'Porter', 'ARCADIA', 1, 1, 'mal etiqueta', 'se ajusto settings de impresora zeb', 10, '', 'si', 'closed', 'Javier Saenz', 19, 'PorterARCADIA', 0, 0),
(452, '2019-06-01 10:49:52', 'Javier Saenz', 'Porter', 'ARCADIA', 3, 1, 'falla scanner', 'se prendio pc y se configuro scanne', 10, '', 'no', 'closed', 'Javier Saenz', 19, 'PorterARCADIA', 0, 0),
(453, '2019-06-01 13:30:47', 'Javier Saenz', 'Porter', 'ARCADIA', 1, 1, 'mal etiqueta', 'se cambio pasante de impresora zebr', 10, '', 'si', 'closed', 'Javier Saenz', 19, 'PorterARCADIA', 0, 0),
(454, '2019-06-01 14:01:08', 'Javier Saenz', 'Porter', 'ARCADIA', 2, 2, 'falla cable', 'se reinicio gold switch', 10, '', 'no', 'closed', 'Javier Saenz', 19, 'PorterARCADIA', 0, 0),
(455, '2019-06-01 15:42:02', 'Carlos Sandoval', 'Porter', '2C', 5, 0, 'se habilitaron 30 celdas ', 'se entrego a produccion', 0, 'se abilitaron 30 celdas de las 40 que llevara esta 2C para porter', 'no', 'closed', 'Carlos Sandoval', 13, 'Porter2C', 0, 0),
(456, '2019-06-01 15:58:32', 'Javier Saenz', 'Porter', 'BST', 1, 1, 'no nlink puerto11', 'se reparo cables', 20, '', 'no', 'closed', 'Javier Saenz', 12, 'PorterBST', 0, 0),
(457, '2019-06-01 19:26:18', 'Fernando Valenzuela', 'Nyquist', 'BST', 19, 6, 'no encaja tablilla', 'ajuste de stack', 10, 'Se resolvio el problema junto con el tecnico Constantino Carrera', 'no', 'closed', 'Fernando Valenzuela', 2, 'NyquistBST', 0, 0),
(458, '2019-06-01 21:29:47', 'Fernando Valenzuela', 'Nyquist', 'BST', 3, 3, 'unidad no encaja con stack', 'ajuste de stack', 20, '', 'no', 'closed', 'Fernando Valenzuela', 2, 'NyquistBST', 0, 0),
(459, '2019-06-01 21:41:44', 'Fernando Valenzuela', 'Nyquist', 'BST', 1, 2, 'no encaja unidad', 'ajuste de stack', 10, 'Trabjo realizado en conjunto con Constantino Carrera', 'no', 'closed', 'Fernando Valenzuela', 2, 'NyquistBST', 0, 0),
(460, '2019-06-01 23:11:38', 'Fernando Valenzuela', 'Nyquist', 'BDL', 8, 11, 'unidad no entraba a causa de un tor', 'Se quito el riel y se remplazo torn', 20, 'En conjunto con el tecnico Constatino Carrera', 'no', 'closed', 'Fernando Valenzuela', 1, 'NyquistBDL', 0, 0),
(461, '2019-06-02 00:44:01', 'Fernando Valenzuela', 'Nyquist', 'BST', 2, 15, 'Unidades no comunican', 'Ajuste de slot de cables de comunic', 10, '', 'no', 'closed', 'Fernando Valenzuela', 2, 'NyquistBST', 0, 0),
(462, '2019-06-02 01:01:35', 'Fernando Valenzuela', 'Nyquist', 'BST', 1, 5, 'no encaja stack ni comunica unidad', 'Se ajusto slot de comunicacion y st', 25, '', 'no', 'closed', 'Fernando Valenzuela', 2, 'NyquistBST', 0, 0),
(463, '2019-06-03 06:17:50', 'Javier Saenz', 'Porter', 'BST', 2, 2, 'cambio de modelo', 'cambio de porter a non-poe porter', 10, '', '', 'closed', 'Javier Saenz', 12, 'PorterBST', 0, 0),
(464, '2019-06-03 06:24:19', 'Javier Saenz', 'Porter', 'BST', 4, 4, 'cambio de modelo', 'cambio de porter a non-poe porter', 10, '', 'no', 'closed', 'Javier Saenz', 12, 'PorterBST', 0, 0),
(465, '2019-06-03 07:29:05', 'Javier  Herrera', 'Nyquist', '2C', 13, 32, 'falla de stack', 'ajuste de tornillos de stack', 5, '', 'no', 'closed', 'Javier  Herrera', 3, 'Nyquist2C', 0, 0),
(466, '2019-06-03 15:42:28', 'Servando Castaneda Hernandez', 'Nyquist', 'ASSY', 3, 1, 'estacion apagada', 'se prende estacion', 10, 'se queda trabajando', 'si', 'closed', 'Servando Castaneda Hernandez', 4, 'NyquistASSY', 0, 0),
(467, '2019-06-03 15:43:57', 'Servando Castaneda Hernandez', 'Nyquist', 'BST', 8, 4, 'puerto danado', 'se cambio conector', 20, 'sequeda trabajando', 'no', 'closed', 'Servando Castaneda Hernandez', 2, 'NyquistBST', 0, 0),
(468, '2019-06-03 15:45:15', 'Servando Castaneda Hernandez', 'Nyquist', 'BST', 17, 9, 'puerto 2dan', 'se reparo pu 2', 22, 'se queda trabajando', 'no', 'closed', 'Servando Castaneda Hernandez', 2, 'NyquistBST', 0, 0),
(469, '2019-06-03 15:46:49', 'Servando Castaneda Hernandez', 'Nyquist', 'BST', 15, 0, 'puerto 13', 'se cambio conector', 20, 'se queda trabajando', 'no', 'closed', 'Servando Castaneda Hernandez', 2, 'NyquistBST', 0, 0),
(470, '2019-06-03 15:48:28', 'Servando Castaneda Hernandez', 'Nyquist', 'BST', 16, 14, 'puerto 20 danado', 'se reparo pue 20', 15, 'se queda trabajando', 'no', 'closed', 'Servando Castaneda Hernandez', 2, 'NyquistBST', 0, 0),
(471, '2019-06-03 15:50:07', 'Servando Castaneda Hernandez', 'Nyquist', 'BST', 16, 14, 'guia mavida', 'ajuste a la guia superior', 25, 'se queda trabajando', 'si', 'closed', 'Servando Castaneda Hernandez', 2, 'NyquistBST', 0, 0),
(472, '2019-06-03 15:51:35', 'Servando Castaneda Hernandez', 'Nyquist', 'BST', 18, 18, 'fucible da', 'da f', 25, 'se queda trabajano', 'si', 'closed', 'Servando Castaneda Hernandez', 2, 'NyquistBST', 0, 0),
(473, '2019-06-03 15:53:54', 'Servando Castaneda Hernandez', 'Nyquist', 'ASSY', 3, 3, 'estacion apagada', 'virtual apagada', 35, 'assy adelfi se queda trabajando', 'si', 'closed', 'Servando Castaneda Hernandez', 4, 'NyquistASSY', 0, 0),
(474, '2019-06-03 15:55:52', 'Servando Castaneda Hernandez', 'Nyquist', 'BDL', 19, 0, 'se apaga la  estacion', 'se reinicia el programa', 20, 'se queda trabajando', 'si', 'closed', 'Servando Castaneda Hernandez', 1, 'NyquistBDL', 0, 0),
(475, '2019-06-03 15:57:11', 'Servando Castaneda Hernandez', 'Nyquist', 'BST', 19, 6, 'ajuste de stack', '', 20, 'se queda trabajando', 'si', 'closed', 'Servando Castaneda Hernandez', 2, 'NyquistBST', 0, 0),
(476, '2019-06-03 15:59:37', 'Servando Castaneda Hernandez', 'Nyquist', 'BST', 19, 6, 'guia desalineada', 'ajuste de guia superior', 10, 'se queda trabajando', 'no', 'closed', 'Servando Castaneda Hernandez', 2, 'NyquistBST', 0, 0),
(477, '2019-06-03 16:02:32', 'Servando Castaneda Hernandez', 'Nyquist', 'BST', 19, 0, 'se agago estacion 19 20', 'se reinicio la 19 y 20 por apagon', 20, 'se queda trabajando', 'si', 'closed', 'Servando Castaneda Hernandez', 2, 'NyquistBST', 0, 0),
(478, '2019-06-04 06:42:54', 'Javier Saenz', 'Porter', 'ARCADIA', 1, 1, 'etiqueta', 'se puso pasante y etiqueta de integ', 10, '', 'no', 'closed', 'Javier Saenz', 19, 'PorterARCADIA', 0, 0),
(479, '2019-06-04 06:44:04', 'Javier Saenz', 'Porter', 'ARCADIA', 3, 3, 'etiqueta', 'se puso rollo de etiquetas de integ', 10, '', 'no', 'closed', 'Javier Saenz', 19, 'PorterARCADIA', 0, 0),
(480, '2019-06-04 09:18:23', 'Javier Saenz', 'Porter', 'ARCADIA', 3, 3, 'programa blockeado', 'se reinicio pc', 10, '', 'no', 'closed', 'Javier Saenz', 19, 'PorterARCADIA', 0, 0),
(481, '2019-06-04 11:05:14', 'Javier Saenz', 'Porter', 'ARCADIA', 2, 2, 'traf', 'se reinicio gold switch', 10, '', 'no', 'closed', 'Javier Saenz', 19, 'PorterARCADIA', 0, 0),
(482, '2019-06-04 12:08:34', 'Ariel Vela', 'G48', '2C', 6, 17, 'no boot', 'se ajusto cable de fuente', 10, '', 'si', 'closed', 'Ariel Vela', 47, 'G482C', 0, 0),
(483, '2019-06-04 12:10:16', 'Ariel Vela', 'Orsted', '2C', 4, 19, 'Power On Com', 'Se conecto cable de comunicacion', 5, '', 'si', 'closed', 'Ariel Vela', 62, 'Orsted2C', 0, 0),
(484, '2019-06-04 12:13:06', 'Ariel Vela', 'Nyquist', '2C', 9, 5, 'No ajusta el Stack', 'Se ajusto Stack', 5, '', 'no', 'closed', 'Ariel Vela', 3, 'Nyquist2C', 0, 0),
(485, '2019-06-05 02:35:11', 'Fernando Valenzuela', 'Nyquist', 'BST', 19, 6, 'equipo sin comunicar', 'ajuste de slot de comunicacion', 15, '', '', 'closed', 'Fernando Valenzuela', 2, 'NyquistBST', 0, 0),
(486, '2019-06-05 04:36:01', 'Fernando Valenzuela', 'Nyquist', 'BST', 19, 7, 'no ingresa unidad', 'ajuste de stack', 15, '', 'no', 'closed', 'Fernando Valenzuela', 2, 'NyquistBST', 0, 0),
(487, '2019-06-05 06:46:45', 'Javier Saenz', 'Porter', 'BST', 4, 4, 'cambio de modelo', 'se cambio de porter non-poe a porte', 10, '', 'no', 'closed', 'Javier Saenz', 12, 'PorterBST', 0, 0),
(488, '2019-06-05 08:04:06', 'Javier Saenz', 'Porter', 'ARCADIA', 1, 1, 'mal etiqueta', 'se calibro impresora zebra de integ', 10, '', 'si', 'closed', 'Javier Saenz', 19, 'PorterARCADIA', 0, 0),
(489, '2019-06-05 11:03:16', 'Ariel Vela', 'Gladiator', '2C', 2, 33, 'No Boot', 'Se cambio cable de comunicacion', 10, '', 'si', 'closed', 'Ariel Vela', 38, 'Gladiator2C', 0, 0),
(490, '2019-06-05 11:05:14', 'Ariel Vela', 'Nyquist', '2C', 8, 12, 'No power', 'Se cambio fusible de tablilla', 5, '', 'si', 'closed', 'Ariel Vela', 3, 'Nyquist2C', 0, 0),
(491, '2019-06-05 11:05:59', 'Ariel Vela', 'Nyquist', '2C', 8, 16, 'No power', 'Se cambio fuisble de tablilla', 5, '', 'si', 'closed', 'Ariel Vela', 3, 'Nyquist2C', 0, 0),
(492, '2019-06-05 12:21:19', 'Servando Castaneda Hernandez', 'Nyquist', 'BST', 8, 5, 'no comunica', 'aguste de conector', 20, 'se queda trabajando', 'no', 'closed', 'Servando Castaneda Hernandez', 2, 'NyquistBST', 0, 0),
(493, '2019-06-05 12:23:10', 'Servando Castaneda Hernandez', 'Nyquist', 'BST', 14, 14, 'no entra la pieza', 'aguste de conector y falta de torrn', 25, 'se queda trabajando', 'no', 'closed', 'Servando Castaneda Hernandez', 2, 'NyquistBST', 0, 0),
(494, '2019-06-05 12:24:19', 'Servando Castaneda Hernandez', 'Nyquist', 'BST', 14, 15, 'no entra la pieza', 'se alinea stack', 20, 'se queda trabajando', 'no', 'closed', 'Servando Castaneda Hernandez', 2, 'NyquistBST', 0, 0),
(495, '2019-06-05 12:25:49', 'Servando Castaneda Hernandez', 'Nyquist', 'BST', 16, 14, 'no entra pieza', 'aguste y falpta de torrnillos', 20, 'se queda trabajando', 'no', 'closed', 'Servando Castaneda Hernandez', 2, 'NyquistBST', 0, 0),
(496, '2019-06-05 12:27:08', 'Servando Castaneda Hernandez', 'Nyquist', 'BST', 8, 1, 'no comunica', 'se agusta conector de comunicacion', 20, 'se quda trabajando', 'no', 'closed', 'Servando Castaneda Hernandez', 2, 'NyquistBST', 0, 0),
(497, '2019-06-05 12:28:44', 'Servando Castaneda Hernandez', 'Nyquist', 'BST', 2, 0, 'se apago la bst 2', 'se reinicia programa', 10, 'se queda trabajando', 'si', 'closed', 'Servando Castaneda Hernandez', 2, 'NyquistBST', 0, 0),
(498, '2019-06-05 12:30:16', 'Servando Castaneda Hernandez', 'Nyquist', 'BST', 20, 0, 'se apago la bst 20', 'se reinicia programa', 15, 'se queda trabajando', 'si', 'closed', 'Servando Castaneda Hernandez', 2, 'NyquistBST', 0, 0),
(499, '2019-06-05 12:31:39', 'Servando Castaneda Hernandez', 'Nyquist', 'BST', 19, 0, 'se apago la bst 19', 'se reinicia equipo', 15, 'se queda trabajando', 'si', 'closed', 'Servando Castaneda Hernandez', 2, 'NyquistBST', 0, 0),
(500, '2019-06-05 12:51:37', 'Javier Saenz', 'Porter', 'BST', 4, 4, 'cambio de modelo', 'se cambio de porter a non-poe porte', 10, '', 'no', 'closed', 'Javier Saenz', 12, 'PorterBST', 0, 0),
(501, '2019-06-05 12:52:26', 'Javier Saenz', 'Porter', 'ARCADIA', 1, 3, 'traf', 'se reinicio gold switch', 5, '', 'no', 'closed', 'Javier Saenz', 19, 'PorterARCADIA', 0, 0),
(502, '2019-06-05 19:40:49', 'Antonio Medina', 'Nyquist', 'BST', 8, 2, 'falla de puerto ', 'se cambio conector Rj45', 15, 'se reporta  una falla en la estacion BST8  y al hacer la inspeccion se detecta que un puerto no comu', 'no', 'closed', 'Antonio Medina', 2, 'NyquistBST', 0, 0),
(503, '2019-06-05 19:42:33', 'Antonio Medina', 'Newton', 'BST', 8, 9, 'falla de comunicacion', 'se cambio conector RJ45', 20, 'se detecto que un puerto no comunicaba y se cambio el conector,.la celda queda funcionando correctam', 'no', 'closed', 'Antonio Medina', 28, 'NewtonBST', 0, 0),
(504, '2019-06-05 21:57:40', 'Javier Osbaldo', 'Nyquist', 'ASSY', 8, 0, 'power supply fep ', 'se cambia power supply', 25, 'se prueba unidad y pasa', 'no', 'closed', 'Javier Osbaldo', 4, 'NyquistASSY', 0, 0),
(505, '2019-06-05 21:59:45', 'Javier Osbaldo', 'Nyquist', 'ASSY', 8, 5, 'power supply fep', 'se cambia power supply', 20, 'se prueba unidad y pasa ok', 'no', 'closed', 'Javier Osbaldo', 4, 'NyquistASSY', 0, 0),
(506, '2019-06-05 23:46:07', 'Tino Carrera', 'Nyquist', 'BST', 19, 0, 'falla sysinit', 'se cambio stack', 15, 'se queda funcionando.', 'no', 'closed', 'Tino Carrera', 2, 'NyquistBST', 0, 0),
(507, '2019-06-06 05:56:14', 'Fernando Valenzuela', 'Nyquist', 'BST', 13, 5, 'no entra pieza', 'ajuste de stack y de slot de comuni', 25, '', 'no', 'closed', 'Fernando Valenzuela', 2, 'NyquistBST', 0, 0),
(508, '2019-06-06 05:57:19', 'Fernando Valenzuela', 'Nyquist', 'BST', 20, 14, 'portstatus', 'cambio de cables que van hacia unid', 10, '', 'no', 'closed', 'Fernando Valenzuela', 2, 'NyquistBST', 0, 0),
(509, '2019-06-06 05:57:58', 'Fernando Valenzuela', 'Nyquist', 'BST', 1, 6, 'no entra unidad', 'ajuste de stack', 10, '', 'no', 'closed', 'Fernando Valenzuela', 2, 'NyquistBST', 0, 0),
(510, '2019-06-06 05:58:33', 'Fernando Valenzuela', 'Nyquist', 'BST', 5, 2, 'tablilla no comunica', 'ajuste de slot de comunicacion', 10, '', 'si', 'closed', 'Fernando Valenzuela', 2, 'NyquistBST', 0, 0),
(511, '2019-06-06 05:59:51', 'Fernando Valenzuela', 'Porter', 'BST', 6, 9, 'porstatus', 'Cambio de ambas puntas de cables (U', 10, '', 'no', 'closed', 'Fernando Valenzuela', 12, 'PorterBST', 0, 0),
(512, '2019-06-06 06:25:10', 'Javier Saenz', 'Porter', 'BST', 4, 4, 'cambio de modelo', 'se cambio de porter non-poe a porte', 10, '', 'no', 'closed', 'Javier Saenz', 12, 'PorterBST', 0, 0),
(513, '2019-06-06 06:28:19', 'Javier Saenz', 'Porter', 'BST', 2, 2, 'cambio de modelo', 'se cambio de porter non-poe a porte', 10, '', 'no', 'closed', 'Javier Saenz', 12, 'PorterBST', 0, 0),
(514, '2019-06-06 07:52:50', 'Javier Saenz', 'Porter', 'BST', 1, 0, 'portstatus', 'se reinicio gold switch', 5, '', 'no', 'closed', 'Javier Saenz', 12, 'PorterBST', 0, 0),
(515, '2019-06-06 08:27:36', 'Javier Saenz', 'Porter', 'BST', 6, 8, 'no link puerto12', 'se reparo cables', 20, '', '', 'closed', 'Javier Saenz', 12, 'PorterBST', 0, 0),
(516, '2019-06-06 09:03:41', 'Javier Saenz', 'Porter', 'BST', 4, 1, 'load diag', 'se cambio cable de comunicacion', 15, '', 'no', 'closed', 'Javier Saenz', 12, 'PorterBST', 0, 0),
(517, '2019-06-06 09:39:04', 'Javier Saenz', 'Porter', 'ARCADIA', 1, 1, 'mal etiqueta', 'se cambio pasante de impresora ', 5, '', 'no', 'closed', 'Javier Saenz', 19, 'PorterARCADIA', 0, 0),
(518, '2019-06-06 10:49:37', 'Javier Saenz', 'Porter', 'ARCADIA', 3, 3, 'programa y etiqueta', 'se cambio pasante a impresora y se ', 15, '', 'no', 'closed', 'Javier Saenz', 19, 'PorterARCADIA', 0, 0),
(519, '2019-06-06 14:51:08', 'Servando Castaneda Hernandez', 'Nyquist', 'BST', 16, 0, 'se bloqueo programa', 'se reinicia', 15, 'ok', 'si', 'closed', 'Servando Castaneda Hernandez', 2, 'NyquistBST', 0, 0),
(520, '2019-06-06 14:52:33', 'Servando Castaneda Hernandez', 'Nyquist', 'BST', 19, 0, 'no enta unidad', 'se agusta stack', 20, 'ok', 'no', 'closed', 'Servando Castaneda Hernandez', 2, 'NyquistBST', 0, 0),
(521, '2019-06-06 14:54:28', 'Servando Castaneda Hernandez', 'Nyquist', 'BST', 7, 2, 'no comunica', 'se cambio cable', 250, 'ok', 'no', 'closed', 'Servando Castaneda Hernandez', 2, 'NyquistBST', 0, 0),
(522, '2019-06-06 14:56:06', 'Servando Castaneda Hernandez', 'Nyquist', 'ASSY', 3, 0, 'se cerro el pograma', 'se reinicia ', 20, 'ok', 'si', 'closed', 'Servando Castaneda Hernandez', 4, 'NyquistASSY', 0, 0),
(523, '2019-06-06 14:57:14', 'Servando Castaneda Hernandez', 'Nyquist', 'BST', 6, 6, 'no comunica', 'se cambio conector ', 25, 'ok', 'no', 'closed', 'Servando Castaneda Hernandez', 2, 'NyquistBST', 0, 0),
(524, '2019-06-06 14:58:29', 'Servando Castaneda Hernandez', 'Nyquist', 'BST', 6, 7, 'no power on', 'se cambio cable', 25, 'ok', 'no', 'closed', 'Servando Castaneda Hernandez', 2, 'NyquistBST', 0, 0),
(525, '2019-06-07 02:56:29', 'Fernando Valenzuela', 'Nyquist', 'BST', 16, 1, 'porstatus', 'cambio de puntas en cables que van ', 10, '', 'no', 'closed', 'Fernando Valenzuela', 2, 'NyquistBST', 0, 0),
(526, '2019-06-07 03:20:24', 'Fernando Valenzuela', 'Nyquist', 'BST', 20, 11, 'Pieza no entra', 'Alineacion Stack', 15, '', 'no', 'closed', 'Fernando Valenzuela', 2, 'NyquistBST', 0, 0),
(527, '2019-06-07 04:05:10', 'Fernando Valenzuela', 'Nyquist', 'BST', 19, 0, 'equipo congelado', 'Reinicio de Wyze', 5, 'Equipo no permitia que se corrieran pruebas', 'si', 'closed', 'Fernando Valenzuela', 2, 'NyquistBST', 0, 0),
(528, '2019-06-07 06:36:15', 'Miguel Angel  Rivera', 'Nyquist', 'ASSY', 2, 45, 'power supply', 'se cambio fusible', 20, 'se  prueba unidad para validar reparacion', 'no', 'closed', 'Miguel Angel  Rivera', 4, 'NyquistASSY', 0, 0),
(529, '2019-06-07 09:12:23', 'Javier Saenz', 'Porter', 'BST', 6, 6, 'falla programa', 'se reinicio klemtest', 15, '', 'si', 'closed', 'Javier Saenz', 12, 'PorterBST', 0, 0),
(530, '2019-06-07 09:21:53', 'Javier Saenz', 'Nyquist', '2C', 1, 1, 'se blockeo programa', 'se reinicio klemtest', 15, '', 'si', 'closed', 'Javier Saenz', 3, 'Nyquist2C', 0, 0),
(531, '2019-06-07 10:45:00', 'Javier Saenz', 'Porter', 'BST', 1, 5, 'no link puerto12', 'se reparo cables', 20, '', 'no', 'closed', 'Javier Saenz', 12, 'PorterBST', 0, 0),
(532, '2019-06-07 10:47:44', 'Javier Saenz', 'Nyquist', 'BDL', 2, 1, 'mal programa', 'se reinicio wyse', 10, '', 'si', 'closed', 'Javier Saenz', 1, 'NyquistBDL', 0, 0),
(533, '2019-06-07 11:40:10', 'Javier  Herrera', 'Nyquist', '2C', 8, 8, 'stack danado', 'remplazo de cable stack ', 10, '', 'no', 'closed', 'Javier  Herrera', 3, 'Nyquist2C', 0, 0),
(534, '2019-06-07 14:17:35', 'Servando Castaneda Hernandez', 'Nyquist', 'BST', 14, 3, 'no power on', 'se remplazan F', 20, 'ok', 'no', 'closed', 'Servando Castaneda Hernandez', 2, 'NyquistBST', 0, 0),
(535, '2019-06-07 14:19:29', 'Servando Castaneda Hernandez', 'Nyquist', 'BST', 16, 16, 'F puerto 4', 'se cambio conector', 90, 'ok se cambio poe', 'no', 'closed', 'Servando Castaneda Hernandez', 2, 'NyquistBST', 0, 0),
(536, '2019-06-07 14:21:10', 'Servando Castaneda Hernandez', 'Nyquist', 'BST', 16, 19, 'no detecta puerto 10', 'se cambio poe', 95, 'se cambio poe y conector', 'no', 'closed', 'Servando Castaneda Hernandez', 2, 'NyquistBST', 0, 0),
(537, '2019-06-07 14:22:09', 'Servando Castaneda Hernandez', 'Nyquist', 'BST', 2, 5, 'no power on', 'se cambio F ', 20, 'ok', 'no', 'closed', 'Servando Castaneda Hernandez', 2, 'NyquistBST', 0, 0),
(538, '2019-06-07 14:24:24', 'Servando Castaneda Hernandez', 'Nyquist', 'BST', 2, 9, 'no power on', 'se pone fuente faltante', 20, 'no power on porque le faltaba una fuente que alguen tomo si darse cuenta', 'no', 'closed', 'Servando Castaneda Hernandez', 2, 'NyquistBST', 0, 0),
(539, '2019-06-07 14:25:42', 'Servando Castaneda Hernandez', 'Nyquist', 'BST', 15, 9, 'no entra pieza', 'se agusta stack', 30, 'ok', 'no', 'closed', 'Servando Castaneda Hernandez', 2, 'NyquistBST', 0, 0),
(540, '2019-06-07 14:27:17', 'Servando Castaneda Hernandez', 'Nyquist', '2C', 1, 0, 'se cierra programa', 'se reinicia programa', 20, 'ok', 'si', 'closed', 'Servando Castaneda Hernandez', 3, 'Nyquist2C', 0, 0),
(541, '2019-06-07 14:28:28', 'Servando Castaneda Hernandez', 'Nyquist', 'BST', 18, 17, 'puerto danado', 'se cambio conector', 25, 'ok', 'no', 'closed', 'Servando Castaneda Hernandez', 2, 'NyquistBST', 0, 0),
(542, '2019-06-07 14:29:32', 'Servando Castaneda Hernandez', 'Nyquist', 'BST', 17, 9, 'no entra pieza', 'se agusto stack', 31, 'ok', 'no', 'closed', 'Servando Castaneda Hernandez', 2, 'NyquistBST', 0, 0),
(543, '2019-06-07 14:31:29', 'Servando Castaneda Hernandez', 'Nyquist', 'BST', 20, 20, 'se apagaron las fuentes', 'se reinicia', 20, 'rara casualidad ayer a esa misma hora se a pagaron', 'si', 'closed', 'Servando Castaneda Hernandez', 2, 'NyquistBST', 0, 0),
(544, '2019-06-07 14:33:03', 'Servando Castaneda Hernandez', 'Nyquist', 'BST', 19, 0, 'fuentes apagadas', 'se reinicia', 20, 'se apagaron las fuentes a esta misma hora ayer', 'si', 'closed', 'Servando Castaneda Hernandez', 2, 'NyquistBST', 0, 0),
(545, '2019-06-07 20:05:17', 'Antonio Medina', 'Nyquist', 'BST', 3, 0, 'fusible en mal estado', 'se cambio el fusible de la powr1', 15, 'trabajando correctamente', 'no', 'closed', 'Antonio Medina', 2, 'NyquistBST', 0, 0),
(546, '2019-06-08 06:39:05', 'Fernando Valenzuela', 'Newton', 'BST', 4, 0, 'klemtest is not running', 'reinicio de wyze > comando auto&', 5, '', 'si', 'closed', 'Fernando Valenzuela', 28, 'NewtonBST', 0, 0),
(547, '2019-06-08 06:40:07', 'Fernando Valenzuela', 'Nyquist', 'BST', 3, 10, 'porstatus', 'cambio de conector hacia unidad', 15, '', 'no', 'closed', 'Fernando Valenzuela', 2, 'NyquistBST', 0, 0),
(548, '2019-06-08 06:42:23', 'Fernando Valenzuela', 'Nyquist', 'BST', 2, 12, 'no boot', 'ajuste de slot de comunicacion', 10, '', '', 'closed', 'Fernando Valenzuela', 2, 'NyquistBST', 0, 0),
(549, '2019-06-08 12:13:20', 'Carlos Sandoval', 'Newton', 'U-BST', 2, 40, 'cambio de pid ', 'se genero etiqueta para laplace de ', 10, '', 'no', 'closed', 'Carlos Sandoval', 34, 'NewtonU-BST', 0, 0),
(550, '2019-06-08 12:14:27', 'Carlos Sandoval', 'Adelphi', 'P2C', 1, 0, 'servidor apagado', 'se reinicio USC y abrio virtual', 10, '', 'no', 'closed', 'Carlos Sandoval', 21, 'AdelphiP2C', 0, 0),
(551, '2019-06-10 07:57:39', 'Ariel Vela', 'Orsted', '2C', 2, 42, 'LT:Cable', 'Se ajusto Stack', 10, '', 'si', 'closed', 'Ariel Vela', 62, 'Orsted2C', 0, 0),
(552, '2019-06-10 07:59:08', 'Ariel Vela', 'Orsted', '2C', 2, 43, 'RD Bell Test', 'Se ajusto Stack', 10, '', 'si', 'closed', 'Ariel Vela', 62, 'Orsted2C', 0, 0),
(553, '2019-06-10 08:00:17', 'Ariel Vela', 'Gladiator', '2C', 2, 44, 'RD Bell Test', 'Se ajusto Stack', 10, '', 'si', 'closed', 'Ariel Vela', 38, 'Gladiator2C', 0, 0),
(554, '2019-06-10 08:27:43', 'Javier Saenz', 'Porter', 'BST', 4, 4, 'no programa', 'se reinicio wyse', 5, '', 'no', 'closed', 'Javier Saenz', 12, 'PorterBST', 0, 0),
(555, '2019-06-10 08:28:59', 'Javier Saenz', 'Porter', 'ARCADIA', 2, 5, 'traf', 'se reinicio klemtest', 10, 'diferentes fallas, varias celdas', 'si', 'closed', 'Javier Saenz', 19, 'PorterARCADIA', 0, 0),
(556, '2019-06-10 08:51:05', 'Javier Saenz', 'Porter', '2C', 6, 6, 'no entran unidades', 'se alineo y ajusto guias de las cel', 10, '', 'no', 'closed', 'Javier Saenz', 13, 'Porter2C', 0, 0),
(557, '2019-06-10 08:57:08', 'Javier Saenz', 'Porter', 'BST', 2, 2, 'cambio de modelo', 'se cambio de porter a non-poe porte', 10, '', 'no', 'closed', 'Javier Saenz', 12, 'PorterBST', 0, 0),
(558, '2019-06-10 15:55:49', 'Servando Castaneda Hernandez', 'Nyquist', 'BST', 6, 4, 'no comunica', 'se ajusta conector', 20, 'se queda trabajando', 'no', 'closed', 'Servando Castaneda Hernandez', 2, 'NyquistBST', 0, 0);
INSERT INTO `issues` (`Issue_id`, `Issue_date`, `User_name`, `Production_line`, `Station_name`, `Station_Number`, `Cell_number`, `Issue_name`, `Issue_solution`, `Repaired_time`, `Issue_comment`, `Station_Stopped`, `Issue_status`, `issueClosedby`, `Station_id`, `Nomenclature`, `IssueTotalOpened`, `IssueTotalClosed`) VALUES
(559, '2019-06-10 15:57:19', 'Servando Castaneda Hernandez', 'Nyquist', 'BST', 19, 6, 'no power on', 'se danan los f', 25, 'se queda trabajando', 'no', 'closed', 'Servando Castaneda Hernandez', 2, 'NyquistBST', 0, 0),
(560, '2019-06-10 15:58:35', 'Servando Castaneda Hernandez', 'Nyquist', 'BST', 6, 1, 'no power on', 'se cambio f', 25, 'se queda trabajando', 'no', 'closed', 'Servando Castaneda Hernandez', 2, 'NyquistBST', 0, 0),
(561, '2019-06-10 16:02:14', 'Servando Castaneda Hernandez', 'Nyquist', 'BST', 19, 4, 'no de tecta puertos', 'se resetea poe', 35, 'se queda trabajando', 'no', 'closed', 'Servando Castaneda Hernandez', 2, 'NyquistBST', 0, 0),
(562, '2019-06-10 16:05:09', 'Servando Castaneda Hernandez', 'Nyquist', 'BST', 13, 9, 'no entra unidad ', 'se ajusta base de stack', 20, 'se queda trabajando', 'no', 'closed', 'Servando Castaneda Hernandez', 2, 'NyquistBST', 0, 0),
(563, '2019-06-10 16:06:52', 'Servando Castaneda Hernandez', 'Nyquist', 'ASSY', 3, 0, 'se bloqueo la inpresora', 'se bloquea inpresora', 15, 'se queda trabajando', 'si', 'closed', 'Servando Castaneda Hernandez', 4, 'NyquistASSY', 0, 0),
(564, '2019-06-10 16:09:43', 'Servando Castaneda Hernandez', 'Nyquist', 'BST', 8, 0, 'no power', 'se da un rastop', 25, 'se queda trabajando', 'si', 'closed', 'Servando Castaneda Hernandez', 2, 'NyquistBST', 0, 0),
(565, '2019-06-10 16:11:39', 'Servando Castaneda Hernandez', 'Nyquist', 'BST', 2, 0, 'se apago', 'se reinicia', 20, 'se queda trabajando', 'si', 'closed', 'Servando Castaneda Hernandez', 2, 'NyquistBST', 0, 0),
(566, '2019-06-10 22:59:15', 'Javier Osbaldo', 'Nyquist', 'ASSY', 1, 12, 'power supply fep', 'se cambiaron los fusibles', 25, 'celda 56 se habilito, se probo unidad y paso ok', 'no', 'closed', 'Javier Osbaldo', 4, 'NyquistASSY', 0, 0),
(567, '2019-06-10 23:01:06', 'Javier Osbaldo', 'Nyquist', 'ASSY', 3, 4, 'power suply fep', 'se cambiaron las power', 25, 'se probo unidad y paso ok', 'no', 'closed', 'Javier Osbaldo', 4, 'NyquistASSY', 0, 0),
(568, '2019-06-11 10:52:51', 'Carlos Sandoval', 'Porter', 'BST', 4, 4, 'load diag', 'se cambio cable de comunicacion', 5, '', 'no', 'closed', 'Carlos Sandoval', 12, 'PorterBST', 0, 0),
(569, '2019-06-11 10:53:39', 'Carlos Sandoval', 'Porter', 'BST', 4, 1, 'load diag', 'se cambio backplane ', 5, '', 'no', 'closed', 'Carlos Sandoval', 12, 'PorterBST', 0, 0),
(570, '2019-06-11 11:02:13', 'Servando Castaneda Hernandez', 'Nyquist', 'BST', 20, 18, 'no detecta puertos', 'se cambio conector', 20, 'se queda trabajando', 'no', 'closed', 'Servando Castaneda Hernandez', 2, 'NyquistBST', 0, 0),
(571, '2019-06-11 11:03:33', 'Servando Castaneda Hernandez', 'Nyquist', 'BST', 13, 5, 'no power on', 'se cambio f', 24, 'se queda trabajando', 'no', 'closed', 'Servando Castaneda Hernandez', 2, 'NyquistBST', 0, 0),
(572, '2019-06-11 11:04:54', 'Servando Castaneda Hernandez', 'Nyquist', 'BST', 15, 7, 'no detecta puertos', 'se cambio conector', 20, 'se queda trabajando', 'no', 'closed', 'Servando Castaneda Hernandez', 2, 'NyquistBST', 0, 0),
(573, '2019-06-11 11:06:07', 'Servando Castaneda Hernandez', 'Nyquist', 'BST', 17, 3, 'no power on', 'se cambio f ', 25, 'se queda trabajando', 'no', 'closed', 'Servando Castaneda Hernandez', 2, 'NyquistBST', 0, 0),
(574, '2019-06-11 22:32:32', 'Juan Carlos Tenorio', 'Nyquist', 'ASSY', 1, 0, 'power fep', 'fusible danado', 20, 'celda reparada #56,se probaron unidades y pasaron', 'no', 'closed', 'Juan Carlos Tenorio', 4, 'NyquistASSY', 0, 0),
(575, '2019-06-11 22:35:31', 'Juan Carlos Tenorio', 'Nyquist', 'ASSY', 1, 0, 'stack power 440', 'cambio de fusibles,danados', 20, 'celda reparada #57,se probaron unidades y pasaron', 'no', 'closed', 'Juan Carlos Tenorio', 4, 'NyquistASSY', 0, 0),
(576, '2019-06-12 02:13:02', 'Francisco Javier Ochoa', 'Nyquist', 'ASSY', 3, 0, 'stack power', 'se limpio conect. de swcb cables, a', 8, 'paso la unidad (se reparo ayer)', 'no', 'closed', 'Francisco Javier Ochoa', 4, 'NyquistASSY', 0, 0),
(577, '2019-06-12 06:56:08', 'Javier Saenz', 'Porter', 'BST', 1, 1, 'cambio de modelo', 'se cambio de non-poe porter a porte', 25, '', 'si', 'closed', 'Javier Saenz', 12, 'PorterBST', 0, 0),
(578, '2019-06-12 08:12:08', 'Javier  Herrera', 'Nyquist', '2C', 13, 32, 'fixstura de slot caida', 'ajuste de tornillos', 1, '', '', 'closed', 'Javier  Herrera', 3, 'Nyquist2C', 0, 0),
(579, '2019-06-12 08:12:58', 'Javier  Herrera', 'Nyquist', '2C', 13, 25, 'fixstura de slot caida', 'ajuste de tornillos', 1, '', 'no', 'closed', 'Javier  Herrera', 3, 'Nyquist2C', 0, 0),
(580, '2019-06-12 08:13:41', 'Javier  Herrera', 'Nyquist', '2C', 13, 29, 'fixstura de slot caida', 'ajuste de tornillos ', 1, '', 'no', 'closed', 'Javier  Herrera', 3, 'Nyquist2C', 0, 0),
(581, '2019-06-12 08:32:25', 'Javier Saenz', 'Porter', 'BST', 6, 4, 'portstatus', 'se reinicio gold switch', 10, '', 'no', 'closed', 'Javier Saenz', 12, 'PorterBST', 0, 0),
(582, '2019-06-12 08:43:22', 'Javier Saenz', 'Porter', 'BST', 1, 1, 'fallas varias', 'se reinicio klemtest', 15, 'fallas varias en varias celdas', 'si', 'closed', 'Javier Saenz', 12, 'PorterBST', 0, 0),
(583, '2019-06-12 08:44:04', 'Javier Saenz', 'Porter', 'BST', 5, 7, 'sysinit', 'se reinicio gold switch', 5, '', 'no', 'closed', 'Javier Saenz', 12, 'PorterBST', 0, 0),
(584, '2019-06-12 08:54:13', 'Javier Saenz', 'Porter', '2C', 5, 5, 'programa', 'se reinicio klemtest', 10, '', 'si', 'closed', 'Javier Saenz', 13, 'Porter2C', 0, 0),
(585, '2019-06-12 08:55:30', 'Javier Saenz', 'Porter', 'ARCADIA', 1, 1, 'pasantes y etiquetas', 'se puso rollos de etiquetas, pasant', 20, '', 'no', 'closed', 'Javier Saenz', 19, 'PorterARCADIA', 0, 0),
(586, '2019-06-12 09:50:43', 'Javier Saenz', 'Porter', 'BST', 1, 2, 'alchemy', 'se ajusto fusible', 10, '', 'no', 'closed', 'Javier Saenz', 12, 'PorterBST', 0, 0),
(587, '2019-06-12 10:37:58', 'Javier  Herrera', 'Nyquist', '2C', 2, 45, 'cable comunicacion danado', 'remplazo de cable', 15, '', 'no', 'closed', 'Javier  Herrera', 3, 'Nyquist2C', 0, 0),
(588, '2019-06-12 13:25:17', 'Javier Saenz', 'Porter', 'BST', 4, 2, 'no link puerto5', 'se reparo cables', 20, '', 'no', 'closed', 'Javier Saenz', 12, 'PorterBST', 0, 0),
(589, '2019-06-12 13:52:35', 'Javier Saenz', 'Porter', 'BST', 4, 9, 'no link puerto7', 'se reparo cables', 20, '', 'no', 'closed', 'Javier Saenz', 12, 'PorterBST', 0, 0),
(590, '2019-06-12 14:22:44', 'Javier Saenz', 'Porter', 'ARCADIA', 1, 1, 'no funciona scanner', 'se reinicio pc', 10, '', 'si', 'closed', 'Javier Saenz', 19, 'PorterARCADIA', 0, 0),
(591, '2019-06-12 14:53:22', 'Javier Saenz', 'Porter', 'ARCADIA', 1, 1, 'programa', 'se reinicio klemtest', 10, '', 'si', 'closed', 'Javier Saenz', 19, 'PorterARCADIA', 0, 0),
(592, '2019-06-12 14:55:21', 'Servando Castaneda Hernandez', 'Nyquist', 'BST', 9, 3, 'no detecta 3 puerto', 'se repararon 3 puertos', 45, 'se queda trabajando', 'no', 'closed', 'Servando Castaneda Hernandez', 2, 'NyquistBST', 0, 0),
(593, '2019-06-12 14:56:33', 'Servando Castaneda Hernandez', 'Nyquist', 'BST', 9, 3, 'no detecta puerto 1', 'se combio conector', 20, 'se queda trabajando', 'no', 'closed', 'Servando Castaneda Hernandez', 2, 'NyquistBST', 0, 0),
(594, '2019-06-12 14:58:21', 'Servando Castaneda Hernandez', 'Nyquist', 'BST', 2, 7, 'no detecta 2 purtos', 'se reparan 2 puertos', 30, 'se queda trabajando', 'no', 'closed', 'Servando Castaneda Hernandez', 2, 'NyquistBST', 0, 0),
(595, '2019-06-12 14:59:25', 'Servando Castaneda Hernandez', 'Nyquist', 'BST', 17, 3, 'stack danado', 'se cambio stack', 45, 'se queda trabajando', 'no', 'closed', 'Servando Castaneda Hernandez', 2, 'NyquistBST', 0, 0),
(596, '2019-06-12 15:00:29', 'Servando Castaneda Hernandez', 'Nyquist', 'BST', 17, 5, 'no detecta puerto 5', 'se reparo purto 5', 20, 'se queda trabajando', 'no', 'closed', 'Servando Castaneda Hernandez', 2, 'NyquistBST', 0, 0),
(597, '2019-06-12 15:01:47', 'Servando Castaneda Hernandez', 'Nyquist', 'BST', 1, 20, 'se apaga bst 20', 'se reinicia', 15, 'se queda trabajando', 'si', 'closed', 'Servando Castaneda Hernandez', 2, 'NyquistBST', 0, 0),
(598, '2019-06-12 15:03:12', 'Servando Castaneda Hernandez', 'Nyquist', 'BST', 19, 0, 'se apaga bst 19', 'se reinicia', 15, 'se queda trabajando', 'si', 'closed', 'Servando Castaneda Hernandez', 2, 'NyquistBST', 0, 0),
(599, '2019-06-12 15:04:46', 'Servando Castaneda Hernandez', 'Nyquist', 'BST', 17, 0, 'barra muy separada', 'se ajusta barra superior', 15, 'se queda trabajando', 'no', 'closed', 'Servando Castaneda Hernandez', 2, 'NyquistBST', 0, 0),
(600, '2019-06-12 15:16:06', 'Javier Saenz', 'Porter', 'BST', 4, 1, 'load diag', 'se cambio backplain', 20, '', 'no', 'closed', 'Javier Saenz', 12, 'PorterBST', 0, 0),
(601, '2019-06-13 05:52:38', 'Fernando Valenzuela', 'Nyquist', 'BST', 19, 3, 'portstat', 'Cambio de cables', 10, '', 'no', 'closed', 'Fernando Valenzuela', 2, 'NyquistBST', 0, 0),
(602, '2019-06-13 05:53:41', 'Fernando Valenzuela', 'Nyquist', 'BST', 2, 12, 'traf case 1', 'cambio de stack', 25, '', 'no', 'closed', 'Fernando Valenzuela', 2, 'NyquistBST', 0, 0),
(603, '2019-06-13 05:54:24', 'Fernando Valenzuela', 'Nyquist', 'BST', 6, 6, 'portstat', 'cambio de cables', 10, '', 'no', 'closed', 'Fernando Valenzuela', 2, 'NyquistBST', 0, 0),
(604, '2019-06-13 05:55:43', 'Fernando Valenzuela', 'Newton', 'BST', 6, 4, 'porstat', 'cambio de cable', 15, '', 'no', 'closed', 'Fernando Valenzuela', 28, 'NewtonBST', 0, 0),
(605, '2019-06-13 05:58:07', 'Fernando Valenzuela', 'Nyquist', 'BST', 1, 0, 'klemtest is not running', 'Se utilizo comando Auto&', 15, 'Funciono en varios intentos, despues de haber reiniciado la wyze al menos 3 veces', 'si', 'closed', 'Fernando Valenzuela', 2, 'NyquistBST', 0, 0),
(606, '2019-06-13 05:59:36', 'Fernando Valenzuela', 'Nyquist', 'BST', 2, 0, 'klemtest is not running', 'uso de comando Auto&', 15, 'Como el anterior, el comando no funciono hasta al menos 3 reinicios de equipo wyze', 'si', 'closed', 'Fernando Valenzuela', 2, 'NyquistBST', 0, 0),
(607, '2019-06-13 06:00:42', 'Fernando Valenzuela', 'Nyquist', 'BST', 20, 14, 'traf case 1', 'cambio de stack', 20, '', 'no', 'closed', 'Fernando Valenzuela', 2, 'NyquistBST', 0, 0),
(608, '2019-06-13 06:02:56', 'Fernando Valenzuela', 'Newton', 'BST', 5, 7, 'no boot', 'ajuste de cables de comunicacion', 15, '', 'no', 'closed', 'Fernando Valenzuela', 28, 'NewtonBST', 0, 0),
(609, '2019-06-13 06:03:50', 'Fernando Valenzuela', 'Newton', 'BST', 9, 7, 'no boot', 'ajuste de cables de comunicacion', 15, '', 'no', 'closed', 'Fernando Valenzuela', 28, 'NewtonBST', 0, 0),
(610, '2019-06-13 06:05:30', 'Fernando Valenzuela', 'Newton', 'BST', 10, 7, 'no boot', 'Ajuste de cables de comunicacion', 15, 'Ya que es un tema recorrunte este tipo de fallas en estaciones Newton, se les reitera al personal en', 'no', 'closed', 'Fernando Valenzuela', 28, 'NewtonBST', 0, 0),
(611, '2019-06-13 06:07:16', 'Fernando Valenzuela', 'Nyquist', 'BST', 2, 19, 'pieza no encaja en celda', 'ajuste de stack', 15, '', 'no', 'closed', 'Fernando Valenzuela', 2, 'NyquistBST', 0, 0),
(612, '2019-06-13 06:08:10', 'Fernando Valenzuela', 'Porter', 'BST', 5, 6, 'porstatus', 'cambio de puntas de cables', 10, '', 'no', 'closed', 'Fernando Valenzuela', 12, 'PorterBST', 0, 0),
(613, '2019-06-13 06:09:41', 'Fernando Valenzuela', 'Nyquist', 'BST', 17, 8, 'porstatus', '2 cables que estan conectados a POE', 15, '', 'no', 'closed', 'Fernando Valenzuela', 2, 'NyquistBST', 0, 0),
(614, '2019-06-13 11:23:17', 'Javier Saenz', 'Porter', 'BST', 5, 3, 'ictuuttype', 'se limpio buffer', 5, '', 'no', 'closed', 'Javier Saenz', 12, 'PorterBST', 0, 0),
(615, '2019-06-14 02:02:04', 'Fernando Valenzuela', 'Nyquist', 'BST', 3, 0, 'equipo congelado', 'reinicio de wyze', 10, '', 'si', 'closed', 'Fernando Valenzuela', 2, 'NyquistBST', 0, 0),
(616, '2019-06-14 02:05:42', 'Fernando Valenzuela', 'Nyquist', 'BDL', 7, 0, 'klemtest is not running', 'reinicio de wyze y uso de comando a', 10, '', 'no', 'closed', 'Fernando Valenzuela', 1, 'NyquistBDL', 0, 0),
(617, '2019-06-14 02:37:38', 'Fernando Valenzuela', 'Porter', 'BST', 6, 2, 'porstatus', 'cambio de conectores que van hacia ', 10, '', 'no', 'closed', 'Fernando Valenzuela', 12, 'PorterBST', 0, 0),
(618, '2019-06-14 05:39:45', 'Fernando Valenzuela', 'Nyquist', 'BST', 13, 0, 'porstat', 'cambio de conector que va hacia uni', 10, '', 'no', 'closed', 'Fernando Valenzuela', 2, 'NyquistBST', 0, 0),
(619, '2019-06-14 05:40:37', 'Fernando Valenzuela', 'Nyquist', 'BDL', 1, 0, 'no abre ninguna celda', 'reinicio de wyze y uso de comando a', 10, '', 'si', 'closed', 'Fernando Valenzuela', 1, 'NyquistBDL', 0, 0),
(620, '2019-06-14 05:41:50', 'Fernando Valenzuela', 'Newton', 'BST', 9, 0, 'porstat', 'cambio de conectores hacia unidad', 10, '', 'no', 'closed', 'Fernando Valenzuela', 28, 'NewtonBST', 0, 0),
(621, '2019-06-14 05:44:47', 'Fernando Valenzuela', 'Nyquist', 'BST', 20, 12, 'porstat', 'cambio de cables que van hacia unid', 10, '', 'no', 'closed', 'Fernando Valenzuela', 2, 'NyquistBST', 0, 0),
(622, '2019-06-14 06:21:52', 'Fernando Valenzuela', 'Nyquist', 'BST', 20, 10, 'porstat', 'cambio de cables ', 10, '', 'no', 'closed', 'Fernando Valenzuela', 2, 'NyquistBST', 0, 0),
(623, '2019-06-14 06:23:33', 'Fernando Valenzuela', 'Nyquist', 'BST', 15, 6, 'portstat', 'cambio de cables que van hacia unid', 10, '', 'no', 'closed', 'Fernando Valenzuela', 2, 'NyquistBST', 0, 0),
(624, '2019-06-14 06:42:17', 'Fernando Valenzuela', 'Nyquist', 'BST', 19, 8, 'portstat', 'cambio de cables que van hacia unid', 10, '', 'no', 'closed', 'Fernando Valenzuela', 2, 'NyquistBST', 0, 0),
(625, '2019-06-14 11:10:55', 'Servando Castaneda Hernandez', 'Nyquist', 'BST', 20, 10, 'puerto danados', 'se reparo puertos 20 19', 20, 'se queda trabajando', 'no', 'closed', 'Servando Castaneda Hernandez', 2, 'NyquistBST', 0, 0),
(626, '2019-06-14 11:12:26', 'Servando Castaneda Hernandez', 'Nyquist', 'BST', 6, 6, 'no boot', 'se ajusta conector de comuni', 15, 'ok', 'no', 'closed', 'Servando Castaneda Hernandez', 2, 'NyquistBST', 0, 0),
(627, '2019-06-14 11:13:26', 'Servando Castaneda Hernandez', 'Nyquist', 'BST', 3, 4, 'falla p 24', 'se cambio conector', 20, 'ok', 'no', 'closed', 'Servando Castaneda Hernandez', 2, 'NyquistBST', 0, 0),
(628, '2019-06-14 11:14:44', 'Servando Castaneda Hernandez', 'Nyquist', 'BST', 2, 16, 'no entra unidad', 'se ajusta stack', 25, 'ok', 'no', 'closed', 'Servando Castaneda Hernandez', 2, 'NyquistBST', 0, 0),
(629, '2019-06-14 11:15:55', 'Servando Castaneda Hernandez', 'Nyquist', 'BST', 15, 1, 'falla de pueros', 'se cambio conector', 25, 'ok', 'no', 'closed', 'Servando Castaneda Hernandez', 2, 'NyquistBST', 0, 0),
(630, '2019-06-14 11:16:54', 'Servando Castaneda Hernandez', 'Nyquist', 'BST', 20, 10, 'falla puerto 23', 'se cambio conector', 25, 'ok', 'no', 'closed', 'Servando Castaneda Hernandez', 2, 'NyquistBST', 0, 0),
(631, '2019-06-14 11:18:32', 'Servando Castaneda Hernandez', 'Nyquist', 'BST', 19, 1, 'falla puertos 19 20', 'se cambio con 20 19', 27, 'ok', 'no', 'closed', 'Servando Castaneda Hernandez', 2, 'NyquistBST', 0, 0),
(632, '2019-06-14 11:19:37', 'Servando Castaneda Hernandez', 'Nyquist', 'BST', 16, 11, 'no power on', 'se cambio 2 f', 24, 'ok', 'no', 'closed', 'Servando Castaneda Hernandez', 2, 'NyquistBST', 0, 0),
(633, '2019-06-14 11:20:35', 'Servando Castaneda Hernandez', 'Nyquist', 'BST', 4, 15, 'no power on', 'se cambio 2 f', 25, 'ok', 'no', 'closed', 'Servando Castaneda Hernandez', 2, 'NyquistBST', 0, 0),
(634, '2019-06-14 11:21:46', 'Servando Castaneda Hernandez', 'Nyquist', 'BST', 9, 4, 'falla puerto 37', 'se cambio conector', 20, 'ok', 'no', 'closed', 'Servando Castaneda Hernandez', 2, 'NyquistBST', 0, 0),
(635, '2019-06-14 11:23:10', 'Servando Castaneda Hernandez', 'Nyquist', 'BST', 9, 2, 'falla de puertos 41 42', 'se cambio 2 conectores', 26, 'ok', 'no', 'closed', 'Servando Castaneda Hernandez', 2, 'NyquistBST', 0, 0),
(636, '2019-06-14 11:24:29', 'Servando Castaneda Hernandez', 'Nyquist', 'BST', 7, 8, 'falla de puertos 3 y 4', 'se cambio 2 conectores', 24, 'ok', 'no', 'closed', 'Servando Castaneda Hernandez', 2, 'NyquistBST', 0, 0),
(637, '2019-06-14 11:25:47', 'Servando Castaneda Hernandez', 'Nyquist', 'BST', 20, 18, 'falla p 3 y 4', 'se cambio 2 y 3 conectores', 27, 'ok', 'no', 'closed', 'Servando Castaneda Hernandez', 2, 'NyquistBST', 0, 0),
(638, '2019-06-14 11:26:57', 'Servando Castaneda Hernandez', 'Nyquist', 'BST', 8, 9, 'falla de p 37', 'se cambio 1 conector', 20, 'ok ', 'no', 'closed', 'Servando Castaneda Hernandez', 2, 'NyquistBST', 0, 0),
(639, '2019-06-14 11:28:20', 'Servando Castaneda Hernandez', 'Nyquist', 'BST', 7, 1, 'falla cable de 100', 'se conecta cable eternet a poe', 5, 'ok', 'no', 'closed', 'Servando Castaneda Hernandez', 2, 'NyquistBST', 0, 0),
(640, '2019-06-14 11:29:21', 'Servando Castaneda Hernandez', 'Nyquist', 'BST', 20, 12, 'falla de p 24', 'se cambio conector ', 20, 'ok ', 'no', 'closed', 'Servando Castaneda Hernandez', 2, 'NyquistBST', 0, 0),
(641, '2019-06-14 11:30:41', 'Servando Castaneda Hernandez', 'Nyquist', 'BST', 13, 0, 'se apagan las fuentes', 'se reinicia bst 13', 25, 'ok', 'si', 'closed', 'Servando Castaneda Hernandez', 2, 'NyquistBST', 0, 0),
(642, '2019-06-14 11:31:35', 'Servando Castaneda Hernandez', 'Nyquist', 'BST', 14, 0, 'se apagaron las f', 'se reinicia bst 14', 25, 'ok', 'si', 'closed', 'Servando Castaneda Hernandez', 2, 'NyquistBST', 0, 0),
(643, '2019-06-14 11:32:44', 'Servando Castaneda Hernandez', 'Nyquist', 'BST', 10, 5, 'falla de p 39', 'se cambio conector', 20, 'ok', 'no', 'closed', 'Servando Castaneda Hernandez', 2, 'NyquistBST', 0, 0),
(644, '2019-06-14 11:33:49', 'Servando Castaneda Hernandez', 'Nyquist', 'BST', 7, 2, 'falla de p 22', 'se cambio conector ', 20, 'ok', 'no', 'closed', 'Servando Castaneda Hernandez', 2, 'NyquistBST', 0, 0),
(645, '2019-06-14 12:13:11', 'Javier  Herrera', 'Orsted', 'BST', 12, 2, 'falla en download', 'ajuste  de conexion del cable de de', 2, '', 'si', 'closed', 'Javier  Herrera', 61, 'OrstedBST', 0, 0),
(646, '2019-06-15 09:30:50', 'Fernando Valenzuela', 'Nyquist', 'BST', 2, 14, 'no conecta', 'ajuste de cables de comunicacion', 20, '', 'no', 'closed', 'Fernando Valenzuela', 2, 'NyquistBST', 0, 0),
(647, '2019-06-15 09:31:32', 'Fernando Valenzuela', 'Nyquist', 'BST', 2, 15, 'unidad no conecta', 'ajuste de cables de comunicacion', 10, '', 'no', 'closed', 'Fernando Valenzuela', 2, 'NyquistBST', 0, 0),
(648, '2019-06-15 09:32:12', 'Fernando Valenzuela', 'Nyquist', 'BST', 2, 18, 'porstatus', 'cambio de conector que va hacia uni', 10, '', 'no', 'closed', 'Fernando Valenzuela', 2, 'NyquistBST', 0, 0),
(649, '2019-06-15 09:32:56', 'Fernando Valenzuela', 'Nyquist', 'BST', 2, 17, 'portstatus', 'cambio de conector de cable que va ', 10, '', 'no', 'closed', 'Fernando Valenzuela', 2, 'NyquistBST', 0, 0),
(650, '2019-06-15 09:33:21', 'Fernando Valenzuela', 'Nyquist', 'BST', 2, 12, 'portstatus', 'cambio de conector de cable que va ', 10, '', 'no', 'closed', 'Fernando Valenzuela', 2, 'NyquistBST', 0, 0),
(651, '2019-06-15 09:34:42', 'Fernando Valenzuela', 'Nyquist', 'BST', 20, 12, 'portstatus', 'cambio de conector de cable que va ', 10, '', 'no', 'closed', 'Fernando Valenzuela', 2, 'NyquistBST', 0, 0),
(652, '2019-06-15 09:35:10', 'Fernando Valenzuela', 'Nyquist', 'BST', 3, 3, 'porstatus', 'cambio de conector de cable que va ', 10, '', 'no', 'closed', 'Fernando Valenzuela', 2, 'NyquistBST', 0, 0),
(653, '2019-06-15 09:35:51', 'Fernando Valenzuela', 'Nyquist', 'BST', 3, 3, 'unidad no conecta', 'ajuste de cables de comunicacion', 20, '', 'no', 'closed', 'Fernando Valenzuela', 2, 'NyquistBST', 0, 0),
(654, '2019-06-15 09:36:45', 'Fernando Valenzuela', 'Nyquist', 'BDL', 13, 0, 'klemtest is not running', 'reinicio de wyze uso de comando aut', 10, '', 'si', 'closed', 'Fernando Valenzuela', 1, 'NyquistBDL', 0, 0),
(655, '2019-06-15 09:37:29', 'Fernando Valenzuela', 'Nyquist', 'BDL', 7, 0, 'equipo congelado', 'reinicio de wyze', 10, '', 'si', 'closed', 'Fernando Valenzuela', 1, 'NyquistBDL', 0, 0),
(656, '2019-06-15 09:38:03', 'Fernando Valenzuela', 'Nyquist', 'BST', 1, 6, 'traf case 1', 'cambio de stack de prueba', 30, '', 'no', 'closed', 'Fernando Valenzuela', 2, 'NyquistBST', 0, 0),
(657, '2019-06-15 09:39:22', 'Fernando Valenzuela', 'Nyquist', 'BST', 1, 7, 'traf case 1', 'Se cambio stack, por falta de tiemp', 15, 'Queda pendiente', 'no', 'closed', 'Fernando Valenzuela', 2, 'NyquistBST', 0, 0),
(658, '2019-06-15 09:40:46', 'Fernando Valenzuela', 'Nyquist', 'BST', 1, 0, 'Prueba inicia pero despues de un ti', 'rastop a unidad', 30, '', 'si', 'closed', 'Fernando Valenzuela', 2, 'NyquistBST', 0, 0),
(659, '2019-06-15 09:41:21', 'Fernando Valenzuela', 'Nyquist', 'BST', 19, 6, 'portstatus', 'cambio de conector de cable que va ', 10, '', 'no', 'closed', 'Fernando Valenzuela', 2, 'NyquistBST', 0, 0),
(660, '2019-06-16 02:51:41', 'Fernando Valenzuela', 'Nyquist', 'BST', 18, 12, 'portstatus', 'cambio de puntas de cable que van h', 10, '', 'no', 'closed', 'Fernando Valenzuela', 2, 'NyquistBST', 0, 0),
(661, '2019-06-16 02:52:17', 'Fernando Valenzuela', 'Nyquist', 'BST', 18, 13, 'portstatus', 'cambio de puntas de cable que van h', 10, '', 'no', 'closed', 'Fernando Valenzuela', 2, 'NyquistBST', 0, 0),
(662, '2019-06-16 02:53:06', 'Fernando Valenzuela', 'Nyquist', 'BST', 20, 12, 'portstatus', 'cambio de puntas de cable que van h', 10, '', 'no', 'closed', 'Fernando Valenzuela', 2, 'NyquistBST', 0, 0),
(663, '2019-06-16 02:53:37', 'Fernando Valenzuela', 'Nyquist', 'BST', 20, 19, 'portstatus', 'cambio de puntas de cable que van h', 10, '', 'no', 'closed', 'Fernando Valenzuela', 2, 'NyquistBST', 0, 0),
(664, '2019-06-16 02:54:31', 'Fernando Valenzuela', 'Nyquist', 'BST', 2, 17, 'portstatus', 'cambio de puntas de cable que van h', 10, '', 'no', 'closed', 'Fernando Valenzuela', 2, 'NyquistBST', 0, 0),
(665, '2019-06-16 02:55:17', 'Fernando Valenzuela', 'Nyquist', 'BST', 1, 1, 'portstaus', 'cambio de puntas de cable que van h', 10, '', 'no', 'closed', 'Fernando Valenzuela', 2, 'NyquistBST', 0, 0),
(666, '2019-06-16 02:56:02', 'Fernando Valenzuela', 'Nyquist', 'BST', 16, 0, 'equipo congelado', 'reinicio de wyze y uso de comando a', 10, '', 'si', 'closed', 'Fernando Valenzuela', 2, 'NyquistBST', 0, 0),
(667, '2019-06-16 02:57:05', 'Fernando Valenzuela', 'Nyquist', 'BST', 19, 7, 'unidad no entra', 'ajuste de stack ', 25, '', 'no', 'closed', 'Fernando Valenzuela', 2, 'NyquistBST', 0, 0),
(668, '2019-06-16 05:53:48', 'Miguel Angel  Rivera', 'Nyquist', 'ASSY', 3, 1, 'swcb test', 'CAMBIO DE CONFIGURACION DE STEAK DE', 20, 'LA CONFIGURACION 2 DE SALIDA DE STEAK DE LA CELDA 1 ESTA DANADA SE CAMBIO DE CONFIGURACION A LA 4 SE', 'no', 'closed', 'Miguel Angel  Rivera', 4, 'NyquistASSY', 0, 0),
(669, '2019-06-17 00:26:24', 'Francisco Javier Ochoa', 'Nyquist', 'ASSY', 1, 6, 'POWER ON', 'Se reinicio loading box, se limpio ', 5, 'Paso la unidad (cell 56)', 'no', 'closed', 'Francisco Javier Ochoa', 4, 'NyquistASSY', 0, 0),
(670, '2019-06-17 00:29:02', 'Francisco Javier Ochoa', 'Nyquist', 'ASSY', 1, 7, 'POWER ON', 'Se reinicio Loadibn Box, se limpio ', 5, 'Paso la unidad (cell 57)', 'no', 'closed', 'Francisco Javier Ochoa', 4, 'NyquistASSY', 0, 0),
(671, '2019-06-17 12:49:29', 'Javier  Herrera', 'Orsted', '2C', 4, 17, 'Power On Com.', 'ajuste de conectores', 10, '2C con soporte para orsted, newton y gladiador 12/24', 'no', 'closed', 'Javier  Herrera', 62, 'Orsted2C', 0, 0),
(672, '2019-06-17 13:20:34', 'Ariel Vela', 'Newton', 'BST', 9, 16, 'No conecta Stack', 'Se ajusto Stack', 10, '', 'si', 'closed', 'Ariel Vela', 28, 'NewtonBST', 0, 0),
(673, '2019-06-17 13:21:57', 'Ariel Vela', 'Newton', 'BST', 9, 17, 'Cable no detect', 'Se cambio conector RJ45', 10, '', 'si', 'closed', 'Ariel Vela', 28, 'NewtonBST', 0, 0),
(674, '2019-06-17 13:25:16', 'Ariel Vela', 'Orsted', '2C', 1, 44, 'No conecta Stack', 'Se ajusto Stack', 10, '', 'si', 'closed', 'Ariel Vela', 62, 'Orsted2C', 0, 0),
(675, '2019-06-17 23:31:43', 'Javier Osbaldo', 'Nyquist', 'ASSY', 8, 1, 'power suply fep', 'se cambiaron fusibles', 25, 'se puso unidad a probar y paso ok', 'no', 'closed', 'Javier Osbaldo', 4, 'NyquistASSY', 0, 0),
(676, '2019-06-17 23:33:09', 'Javier Osbaldo', 'Nyquist', 'ASSY', 8, 0, 'power suply fep', 'se cambiaron las powers', 30, 'se probo unidad y paso ok', 'no', 'closed', 'Javier Osbaldo', 4, 'NyquistASSY', 0, 0),
(677, '2019-06-18 06:09:13', 'Francisco Javier Ochoa', 'Nyquist', 'ASSY', 3, 9, 'swcb check', 'se limpio cables swcb ambos extremo', 5, 'paso la unidad\r\n', 'no', 'closed', 'Francisco Javier Ochoa', 4, 'NyquistASSY', 0, 0),
(678, '2019-06-18 06:42:17', 'Carlos Sandoval', 'Nyquist', 'U-BST', 3, 40, 'wise apagado', '', 5, 'se encontro el wise apagado', 'no', 'closed', 'Carlos Sandoval', 9, 'NyquistU-BST', 0, 0),
(679, '2019-06-18 07:01:39', 'Fernando Valenzuela', 'Nyquist', 'BST', 6, 4, 'porstatus', 'cambio de conector que va hacia la ', 10, '', 'no', 'closed', 'Fernando Valenzuela', 2, 'NyquistBST', 0, 0),
(680, '2019-06-18 07:02:25', 'Fernando Valenzuela', 'Nyquist', 'BST', 6, 7, 'portstatus', 'cambio de contector que va hacia un', 10, '', 'no', 'closed', 'Fernando Valenzuela', 2, 'NyquistBST', 0, 0),
(681, '2019-06-18 07:03:49', 'Fernando Valenzuela', 'Nyquist', 'BST', 16, 0, 'unidad congelada', 'uso de comando auto&', 15, '', 'si', 'closed', 'Fernando Valenzuela', 2, 'NyquistBST', 0, 0),
(682, '2019-06-18 07:04:50', 'Fernando Valenzuela', 'Nyquist', 'BST', 15, 0, 'unidad congelada', 'uso de comando auto&', 15, '', 'si', 'closed', 'Fernando Valenzuela', 2, 'NyquistBST', 0, 0),
(683, '2019-06-18 07:05:47', 'Fernando Valenzuela', 'Nyquist', 'BST', 20, 17, 'portstatus', 'cambio de conector que va hacia la ', 10, '', 'no', 'closed', 'Fernando Valenzuela', 2, 'NyquistBST', 0, 0),
(684, '2019-06-18 07:07:05', 'Fernando Valenzuela', 'Nyquist', 'BST', 7, 13, 'portstatus', 'cambio de conector de cables que va', 10, '', 'no', 'closed', 'Fernando Valenzuela', 2, 'NyquistBST', 0, 0),
(685, '2019-06-18 07:08:08', 'Fernando Valenzuela', 'Newton', 'BST', 7, 9, 'portstatus', 'cambio de conector de cable que va ', 10, '', 'no', 'closed', 'Fernando Valenzuela', 28, 'NewtonBST', 0, 0),
(686, '2019-06-18 21:18:52', 'Antonio Medina', 'Nyquist', 'BST', 20, 13, 'stack en mal estado', 'se cambio el cable del stack', 20, 'reportan falla de stack en la estacion mencionada y al hacer la revision se encuentra que la tablill', 'no', 'closed', 'Antonio Medina', 2, 'NyquistBST', 0, 0),
(687, '2019-06-18 21:21:37', 'Antonio Medina', 'Nyquist', 'BST', 13, 7, 'No entra la pieza', 'se hace la revision y se encuentra ', 20, 'se pusieron los tornillos al cable de stack y se deja la estacion trabajando adecuadamente\r\n', 'no', 'closed', 'Antonio Medina', 2, 'NyquistBST', 0, 0),
(688, '2019-06-18 23:57:56', 'Tino Carrera', 'Nyquist', 'BST', 3, 7, 'falla de stack', 'cambio de stack', 10, 'ajuste junto con companero Fernando Valenzuela', 'no', 'closed', 'Tino Carrera', 2, 'NyquistBST', 0, 0),
(689, '2019-06-19 00:49:15', 'Fernando Valenzuela', 'Nyquist', 'BST', 17, 2, 'portstatus', 'cambio de conector que va hacia uni', 10, '', 'no', 'closed', 'Fernando Valenzuela', 2, 'NyquistBST', 0, 0),
(690, '2019-06-19 01:14:52', 'Fernando Valenzuela', 'Porter', 'BST', 5, 6, 'portstatus', 'cambio de conector de cable que va ', 10, '', 'no', 'closed', 'Fernando Valenzuela', 12, 'PorterBST', 0, 0),
(691, '2019-06-19 02:59:15', 'Fernando Valenzuela', 'Nyquist', 'BST', 5, 0, 'porstatus', 'reparacion de cables que van conect', 20, '', 'no', 'closed', 'Fernando Valenzuela', 2, 'NyquistBST', 0, 0),
(692, '2019-06-19 05:25:39', 'Fernando Valenzuela', 'Nyquist', 'BST', 19, 12, 'TRAF 1', 'Cambio de stack', 25, '', 'no', 'closed', 'Fernando Valenzuela', 2, 'NyquistBST', 0, 0),
(693, '2019-06-19 06:39:44', 'Fernando Valenzuela', 'Nyquist', 'BST', 2, 11, 'traf 1', 'cambio de stack', 20, '', 'no', 'closed', 'Fernando Valenzuela', 2, 'NyquistBST', 0, 0),
(694, '2019-06-19 16:32:18', 'Antonio Medina', 'Nyquist', 'BST', 7, 6, 'falla de cable stack', 'se ajusto la base del stack', 20, 'se reporta que la celda n.6 de la BST7 , no detectaba el cable del stack,por lo que se ajusto y cali', 'no', 'closed', 'Antonio Medina', 2, 'NyquistBST', 0, 0),
(695, '2019-06-19 23:15:52', 'Tino Carrera', 'Nyquist', 'BST', 3, 4, 'IEEE  DETECT', 'se reviso el poe estaba danado post', 20, 'se cambio el poe dejandola correctamente funcionando', 'no', 'closed', 'Tino Carrera', 2, 'NyquistBST', 0, 0),
(696, '2019-06-20 09:45:31', 'Servando Castaneda Hernandez', 'Nyquist', 'BST', 6, 10, 'cel sin fusibles', 'se le ponen fusibles', 15, 'ok', 'no', 'closed', 'Servando Castaneda Hernandez', 2, 'NyquistBST', 0, 0),
(697, '2019-06-20 09:49:54', 'Servando Castaneda Hernandez', 'Nyquist', 'BST', 8, 11, 'base desajustada', 'se ajusta base de stack', 20, 'ok', 'no', 'closed', 'Servando Castaneda Hernandez', 2, 'NyquistBST', 0, 0),
(698, '2019-06-20 09:51:06', 'Servando Castaneda Hernandez', 'Nyquist', 'BST', 15, 5, 'puerto 7', 'se cambio conector', 25, 'ok', 'no', 'closed', 'Servando Castaneda Hernandez', 2, 'NyquistBST', 0, 0),
(699, '2019-06-20 09:52:27', 'Servando Castaneda Hernandez', 'Nyquist', 'BST', 16, 14, 'poe fail', 'se reset', 60, 'ok', 'no', 'closed', 'Servando Castaneda Hernandez', 2, 'NyquistBST', 0, 0),
(700, '2019-06-20 09:53:41', 'Servando Castaneda Hernandez', 'Nyquist', 'BST', 7, 6, 'f p 22 y 21', 'se cambia 2 conectores', 35, 'ok', 'no', 'closed', 'Servando Castaneda Hernandez', 2, 'NyquistBST', 0, 0),
(701, '2019-06-20 09:54:41', 'Servando Castaneda Hernandez', 'Nyquist', 'BST', 6, 14, 'stack danado', 'se cambio stack', 24, 'ok', 'no', 'closed', 'Servando Castaneda Hernandez', 2, 'NyquistBST', 0, 0),
(702, '2019-06-20 09:56:25', 'Servando Castaneda Hernandez', 'Nyquist', 'BST', 2, 12, 'no detecta puertos del 1 al 24', 'reset al pollo', 55, 'ok', 'no', 'closed', 'Servando Castaneda Hernandez', 2, 'NyquistBST', 0, 0),
(703, '2019-06-20 09:58:09', 'Servando Castaneda Hernandez', 'Nyquist', 'ASSY', 3, 0, 'prgma bloqueado', 'se resetea pgama', 15, 'ok ', 'si', 'closed', 'Servando Castaneda Hernandez', 4, 'NyquistASSY', 0, 0),
(704, '2019-06-20 09:59:31', 'Servando Castaneda Hernandez', 'Nyquist', 'BST', 2, 13, 'no detec p 12', 'reset al poe', 21, 'ok', 'no', 'closed', 'Servando Castaneda Hernandez', 2, 'NyquistBST', 0, 0),
(705, '2019-06-20 10:01:05', 'Servando Castaneda Hernandez', 'Nyquist', 'BST', 2, 11, 'stack danado', 'se cambio stack', 25, 'ok', 'no', 'closed', 'Servando Castaneda Hernandez', 2, 'NyquistBST', 0, 0),
(706, '2019-06-20 10:03:37', 'Servando Castaneda Hernandez', 'Nyquist', '2C', 2, 0, 'programa bloqueado', 'se reinicia programa', 15, 'ok', 'si', 'closed', 'Servando Castaneda Hernandez', 3, 'Nyquist2C', 0, 0),
(707, '2019-06-20 10:04:54', 'Servando Castaneda Hernandez', 'Nyquist', 'BST', 1, 2, 'no power on', 'se cambio f', 15, 'ok', 'no', 'closed', 'Servando Castaneda Hernandez', 2, 'NyquistBST', 0, 0),
(708, '2019-06-20 10:06:18', 'Servando Castaneda Hernandez', 'Nyquist', 'BST', 19, 1, 'p d 39', 'se cambio conector', 20, 'ok', 'no', 'closed', 'Servando Castaneda Hernandez', 2, 'NyquistBST', 0, 0),
(709, '2019-06-20 10:07:07', 'Servando Castaneda Hernandez', 'Nyquist', 'BST', 19, 5, 'f stack', 'se cambio stack', 25, 'ok', '', 'closed', 'Servando Castaneda Hernandez', 2, 'NyquistBST', 0, 0),
(710, '2019-06-20 10:23:05', 'Servando Castaneda Hernandez', 'Nyquist', 'BST', 18, 10, 'estaba para otro oster', 'celda 10 se cambio a niquist de azt', 20, 'ok ', 'no', 'closed', 'Servando Castaneda Hernandez', 2, 'NyquistBST', 0, 0),
(711, '2019-06-20 10:24:30', 'Servando Castaneda Hernandez', 'Nyquist', 'BST', 18, 17, 'no comunica', 'se ajusta base de conector comunica', 20, 'ok', 'no', 'closed', 'Servando Castaneda Hernandez', 2, 'NyquistBST', 0, 0),
(712, '2019-06-20 10:25:38', 'Servando Castaneda Hernandez', 'Nyquist', 'BST', 18, 12, 'no power on', 'se cambio f', 20, 'ok', 'no', 'closed', 'Servando Castaneda Hernandez', 2, 'NyquistBST', 0, 0),
(713, '2019-06-20 10:31:13', 'Servando Castaneda Hernandez', 'Nyquist', 'BST', 14, 18, 'f p 2', 'se desconecta cable de 100 m', 5, 'ok', 'no', 'closed', 'Servando Castaneda Hernandez', 2, 'NyquistBST', 0, 0),
(714, '2019-06-20 10:32:15', 'Servando Castaneda Hernandez', 'Nyquist', 'BST', 7, 1, 'f p 41', 'se cambio conector ', 20, 'ok', 'no', 'closed', 'Servando Castaneda Hernandez', 2, 'NyquistBST', 0, 0),
(715, '2019-06-21 01:28:07', 'Fernando Valenzuela', 'Porter', 'BST', 2, 9, 'portstat', 'cambio de conector 1 y 2 que van ha', 10, '', 'no', 'closed', 'Fernando Valenzuela', 12, 'PorterBST', 0, 0),
(716, '2019-06-21 06:00:56', 'Juan Normando', 'Nyquist', 'BST', 2, 14, 'ports', 'Cambio de conector RJ45', 20, 'N/A', 'no', 'closed', 'Juan Normando', 2, 'NyquistBST', 0, 0),
(717, '2019-06-21 09:36:08', 'Servando Castaneda Hernandez', 'Nyquist', 'BST', 19, 4, 'no link', '2 conectores danados', 20, 'ok', 'no', 'closed', 'Servando Castaneda Hernandez', 2, 'NyquistBST', 0, 0),
(718, '2019-06-21 22:43:26', 'Antonio Medina', 'Nyquist', 'BST', 3, 7, 'falla de stack', 'se cambio el cable del stack', 20, 'no se detectaba el cable del stack ya que estaba en mal estado,se cambio el cable y se deja la celda', 'no', 'closed', 'Antonio Medina', 2, 'NyquistBST', 0, 0),
(719, '2019-06-21 22:45:40', 'Antonio Medina', 'Nyquist', 'BST', 4, 5, 'puerto en mal estado', 'se cambio conector de puerto', 25, 'falla en puerto de comunicacion,se cambia el conector (RJ45) y se deja la celda y estacion trabajand', 'no', 'closed', 'Antonio Medina', 2, 'NyquistBST', 0, 0),
(720, '2019-06-21 22:48:13', 'Antonio Medina', 'Nyquist', 'BST', 6, 13, 'no se detectaba cable stack', 'se calibro la base del cable stack', 20, 'la pieza no detectaba el cable stack esto debido a que se habia aflojado los tornillos de la base..s', 'no', 'closed', 'Antonio Medina', 2, 'NyquistBST', 0, 0),
(721, '2019-06-21 22:52:20', 'Antonio Medina', 'Newton', 'BST', 1, 0, 'la celda se reseteaba', 'se cambio de puertos los cables de ', 30, 'La celda no tenia un buen funcionamiento esto debido a que se reseteaba sola.,Se hacen los ajustes n', 'no', 'closed', 'Antonio Medina', 28, 'NewtonBST', 0, 0),
(722, '2019-06-22 02:38:30', 'Miguel Angel  Rivera', 'Nyquist', 'RFID', 2, 3, 'SRFID', 'SE APLICO RASTOP AUTO', 10, 'SE BLOQUEO WYSE Y SE BLOQUEO AUTO TEST', 'si', 'closed', 'Miguel Angel  Rivera', 5, 'NyquistRFID', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `model`
--

CREATE TABLE `model` (
  `id_model` int(20) NOT NULL,
  `model_date` datetime NOT NULL,
  `model_name` varchar(200) NOT NULL,
  `model_description` varchar(50) NOT NULL,
  `model_cost` int(20) NOT NULL,
  `model_purchase` varchar(20) NOT NULL,
  `model_lifetime` varchar(20) NOT NULL,
  `model_insumo` varchar(10) NOT NULL,
  `id_clients` int(20) NOT NULL,
  `id_products` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `model`
--

INSERT INTO `model` (`id_model`, `model_date`, `model_name`, `model_description`, `model_cost`, `model_purchase`, `model_lifetime`, `model_insumo`, `id_clients`, `id_products`) VALUES
(1, '2019-05-02 00:00:00', 'Accessory->Cable->37-0960-03', '10 G SFP  cable', 10, '', '1', 'Yes', 1, 19),
(2, '2019-05-02 00:00:00', 'Accessory->Cable->37-1322-03', '40G SFP cable', 20, '', '6', 'Yes', 1, 19),
(3, '2019-05-02 00:00:00', 'Accessory->Cable->37-1790-01', '25G SFP cable', 12, '', '6', 'Yes', 1, 19),
(4, '2019-05-02 00:00:00', 'Accessory->Cable->942-0067-01', '3M SFP cable 1x8', 0, '', '2', 'Yes', 1, 19),
(5, '2019-05-02 00:00:00', 'Accessory->Cable->Cat 5a', 'Cable Cat 5a crossover', 0, '', '2', 'Yes', 1, 19),
(6, '2019-05-02 00:00:00', 'Accessory->Cable->Cat 6a', 'Cable Cat 6a crossover', 1, '', '2', 'Yes', 1, 19),
(7, '2019-05-02 00:00:00', 'Accessory->Cable->DM-IB-160-50-GND-LP', 'SFP cable, 1G Methode', 28, '', '4', 'Yes', 1, 19),
(8, '2019-05-02 00:00:00', 'Accessory->Cable->LC-LC MM 62.5/125 - duplex - 3.0mm 6\"inch', '30cm SFP cable', 8, '', '2', 'Yes', 1, 19),
(9, '2019-05-02 00:00:00', 'Accessory->Cable->MTP-12 to MTP-12 cable-(10ft) ;connect 40G QSFP module from Ixia to UUT', '40G SFP cable#2', 52, '', '2', 'Yes', 1, 19),
(10, '2019-05-02 00:00:00', 'Accessory->Cable->MTP-12 to MTP-12 cable-6\"inch; connect 40G QSFP module with loopback', '40G SFP cable#1', 30, '', '2', 'Yes', 1, 19),
(11, '2019-05-02 00:00:00', 'Accessory->Cool Fan->800-102007-01 ', 'G48 cool fan', 13, '', '3', 'Yes', 1, 20),
(12, '2019-05-02 00:00:00', 'Accessory->Fiber Cable->SPC19960', 'Cable de Fibra Optica Doble', 9, '', '6', 'Yes', 1, 21),
(13, '2019-05-02 00:00:00', 'Accessory->Power supply->341-0560-03', 'FRU power supply (715W power supply)', 70, '', '3', 'Yes', 1, 22),
(14, '2019-05-02 00:00:00', 'Accessory->Power supply->341-0561-02', 'FRU power supply (1100W power supply)', 85, '', '3', 'Yes', 1, 22),
(15, '2019-05-02 00:00:00', 'Accessory->Power supply->341-100224-01 ', 'G48 FRU power supply', 94, '', '3', 'Yes', 1, 22),
(16, '2019-05-02 00:00:00', 'Accessory->Power supply->341-100601-01', 'Power supply', 140, '', '3', 'Yes', 1, 22),
(17, '2019-05-02 00:00:00', 'Accessory->Stack Cable->37-1121-01', 'Power Stack Cable, 5ft. 1.6m', 25, '', '3', 'Yes', 1, 23),
(18, '2019-05-02 00:00:00', 'Accessory->Stack Cable->37-1123-01', 'CISCO 3750X STACK POWER CABLE, 2 ft. 0.58 M ', 20, '', '0', 'Yes', 1, 23),
(19, '2019-05-02 00:00:00', 'Accessory->Stack Cable->800-40403-01', 'Data stack Cable/0.5m', 45, '', '3', 'Yes', 1, 23),
(20, '2019-05-02 00:00:00', 'Accessory->USB->2.0 Kingston 32GB', 'USB memory', 7, '', '1', 'Yes', 1, 24),
(21, '2019-05-02 00:00:00', 'Test Units->Card->2x40G card;C9500-NM-2Q  68-100910', 'Uplink MFG test card ', 80, '', '1', 'Yes', 1, 26),
(22, '2019-05-02 00:00:00', 'Test Units->Card->C9300-24T', 'Nyquist Golden board', 600, '', '1', 'Yes', 1, 26),
(23, '2019-05-02 00:00:00', 'Test Units->Card->C9500X-40X', 'FRU Goldenboard', 1912, '', '1', 'Yes', 1, 26),
(24, '2019-05-02 00:00:00', 'Test Units->Card->WS-C3850-48T', 'Nyquist Golden board', 0, '', '1', 'Yes', 1, 26),
(25, '2019-05-02 00:00:00', 'Test Units->Module->10-2274-03', 'SFP Module para cable optico', 10, '', '1', 'Yes', 1, 27),
(26, '2019-05-02 00:00:00', 'Test Units->Module->74763-0025', '40G QSFP electrical loopback', 32, '', '6', 'Yes', 1, 27),
(27, '2019-05-02 00:00:00', 'Test Units->Module->74765-0901', '10G SFP  electrical loopback', 23, '', '6', 'Yes', 1, 27),
(28, '2019-05-02 00:00:00', 'Test Units->Module->800-33470-01', 'Uplink Module, Lorentz', 85, '', '1', 'Yes', 1, 27),
(29, '2019-05-02 00:00:00', 'Test Units->Module->800-37101-01', 'Uplink MFG test card, Hilbert', 85, '', '6', 'Yes', 1, 27),
(30, '2019-05-02 00:00:00', 'Test Units->Module->800-42461-01', 'Uplink MFG test card, Schrodinguer', 85, '', '1', 'Yes', 1, 27),
(31, '2019-05-02 00:00:00', 'Test Units->Module->8x10G card;C9500-NM-8X   68-100911', 'Uplink MFG test card ', 80, '', '1', 'Yes', 1, 27),
(32, '2019-05-02 00:00:00', 'Test Units->Module->SFP-10G-SR;10-2415-03', '10G SFP SFP module', 12, '', '1', 'Yes', 1, 27),
(33, '2019-05-02 00:00:00', 'Test Units->Module->SFP-40G-SR;10-2672-03', '40G SFP SFP module', 90, '', '1', 'Yes', 1, 27),
(35, '2019-05-28 00:36:56', 'Accessory->Tools->DCF610S2', 'Screwdriver kit', 110, '60027829', '36', 'Yes', 2, 18),
(36, '2019-06-03 00:00:00', 'Loading Box->Power supply->ATL-CIS-007', 'Power supply', 0, '', '', 'No', 1, 16),
(37, '2019-06-03 00:00:00', 'Phone->IP Phone->7960 Series', '68-1679-10 Rev B0', 0, '', '', 'Yes', 1, 17),
(38, '2019-06-03 00:00:00', 'Phone->IP Phone->7960', '68-0808-04 A0', 0, '', '', 'yes', 1, 17),
(39, '2019-06-03 00:00:00', 'Accessory->Backplane->13-1611-02-00', 'Backplane', 0, '', '', 'yes', 1, 1),
(40, '2019-06-03 00:00:00', 'Accessory->Usb cable->Usb extension ', 'E322376', 0, '', '', 'yes', 1, 10),
(41, '2019-06-03 00:00:00', 'Accessory->Cable->Patch cord 10\"', 'Ethernet cable', 0, '', '', 'yes', 1, 19),
(42, '2019-06-03 00:00:00', 'Accessory->Cable->Patch cord 2\"', 'Ethernet cable', 0, '', '', 'yes', 1, 19),
(43, '2019-06-03 00:00:00', 'Accessory->Scanner bluetooth->CR0078-SC1001WR', 'Scanner', 0, '', '', 'yes', 1, 7),
(44, '2019-06-03 00:00:00', 'Accessory->Cable->Patch cord 3\"', 'Ethernet cable', 0, '', '', 'yes', 1, 19),
(45, '2019-06-03 00:00:00', 'Accessory->Cable->Patch cord 7\"', 'Ethernet cable', 0, '', '', 'yes', 1, 19),
(46, '2019-06-03 00:00:00', 'Loading box->Cable->SP-IB-160-28-20GND', 'Cable', 0, '', '', 'yes', 1, 15),
(47, '2019-06-03 00:00:00', 'Accessory->Connector->mstb-2,5/ 4-st-5,08', 'connector', 0, '', '', 'yes', 1, 3),
(48, '2019-06-03 00:00:00', 'Accessory->Cable->72-101029-01', '', 0, '', '', 'yes', 1, 19),
(49, '2019-06-03 00:00:00', 'Accessory->Usb A to Mini B->UR030-003', 'Reversible A male to mini B male', 0, '', '', 'yes', 1, 9),
(50, '2019-06-03 00:00:00', 'Accessory->Stack cable->800-40404-01', 'danados y sin programa', 0, '', '', 'yes', 1, 23),
(51, '2019-06-03 00:00:00', 'Accessory->RJ45 Connector->NKJ-5002', '', 0, '', '', 'yes', 1, 6),
(52, '2019-06-03 00:00:00', 'Accessory->Keyboard->Cherry jg-08', '', 0, '', '', 'yes', 1, 4),
(53, '2019-06-03 00:00:00', 'Computer->Server->UCS C240 M4', 'Servers', 0, '', '', 'No', 1, 11),
(54, '2019-06-03 00:00:00', 'Accessory->Patch cord->red cat 6 ctpt1807', 'Ethernet cable', 0, '', '', 'Yes', 1, 5),
(55, '2019-06-03 00:00:00', 'Accessory->Patch cord->590-01 RD naranja 1\"', 'Ethernet cable', 0, '', '', 'Yes', 1, 5),
(56, '2019-06-03 00:00:00', 'Accessory->Patch cord->UL624M801RD-5FX', 'Ethernet cable', 0, '', '', 'Yes', 1, 5),
(57, '2019-06-03 00:00:00', 'Accessory->Patch cord->590-01 OR naranja 1\"', 'Ethernet cable', 0, '', '', 'Yes', 1, 5),
(58, '2019-06-03 00:00:00', 'Ethernet Unit->Switch->WS-C3850-48T', 'ipm8d00arc', 0, '', '', 'No', 1, 12),
(59, '2019-06-03 00:00:00', 'Ethernet Unit->Terminal Server->ISR4331K9', 'inm6z10ara', 0, '', '', 'No', 1, 14),
(60, '2019-06-03 00:00:00', 'Ethernet Unit->Switch-Ethernet->WS-C2960S-48TD-L', 'cmmnh00are', 0, '', '', 'No', 1, 13),
(61, '2019-06-03 00:00:00', 'Ethernet Unit->Switch-Ethernet->WS-C2960S-24TD-L', 'cmml610are', 0, '', '', 'No', 1, 13),
(62, '2019-06-03 00:00:00', 'Accessory->Card->Backplane 13-1538-01-00', 'Nyqusit Backplane Interface ', 0, '', '', 'Yes', 1, 2),
(63, '2019-06-03 00:00:00', 'Accessory->Card->Backplane 13-1611-02-00', 'Nyqusit Backplane', 0, '', '', 'Yes', 1, 2);

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id_products` int(10) NOT NULL,
  `products_name` varchar(40) NOT NULL,
  `products_description` varchar(40) NOT NULL,
  `id_type` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id_products`, `products_name`, `products_description`, `id_type`) VALUES
(1, 'Backplane', 'Accessory->Backplane', 1),
(2, 'Card', 'Accessory->Card', 1),
(3, 'Connector', 'Accessory->Connector', 1),
(4, 'Keyboard', 'Accessory->Keyboard', 1),
(5, 'Patch cord', 'Accessory->Patch cord', 1),
(6, 'RJ45 Connector', 'Accessory->RJ45 Connector', 1),
(7, 'Scanner bluetooth', 'Accessory->Scanner bluetooth', 1),
(8, 'test card', 'Accessory->test card', 1),
(9, 'Usb A to Mini B', 'Accessory->Usb A to Mini B', 1),
(10, 'Usb cable', 'Accessory->Usb cable', 1),
(11, 'Server', 'Computer->Server', 4),
(12, 'Switch', 'Ethernet Unit->Switch', 6),
(13, 'Switch-Ethernet', 'Ethernet Unit->Switch-Ethernet', 6),
(14, 'Terminal Server', 'Ethernet Unit->Terminal Server', 6),
(15, 'Cable', 'Loading box->Cable', 5),
(16, 'Power supply', 'Loading Box->Power supply', 5),
(17, 'IP Phone', 'Phone->IP Phone', 7),
(18, 'Tools', 'Accessory->Tools', 1),
(19, 'Cable', 'Accessory->Cable', 1),
(20, 'Cool Fan', 'Accessory->Cool Fan', 1),
(21, 'Fiber Cable', 'Accessory->Fiber Cable', 1),
(22, 'Power Supply', 'Accessory->Power supply', 1),
(23, 'Stack Cable', 'Accessory->Stack Cable', 1),
(24, 'USB', 'Accessory->USB', 1),
(25, 'Monitor', 'Monitor->Monitor', 3),
(26, 'Card', 'Test Units->Card', 2),
(27, 'Module', 'Test Units->Module', 2);

-- --------------------------------------------------------

--
-- Table structure for table `stations`
--

CREATE TABLE `stations` (
  `Station_id` int(100) NOT NULL,
  `Station_model` varchar(35) NOT NULL,
  `Station_name` varchar(35) NOT NULL,
  `Station_BU` varchar(35) NOT NULL,
  `Id_user` int(10) NOT NULL,
  `Second_Shift` int(10) NOT NULL,
  `Third_Shift` int(10) NOT NULL,
  `Nomenclature` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `stations`
--

INSERT INTO `stations` (`Station_id`, `Station_model`, `Station_name`, `Station_BU`, `Id_user`, `Second_Shift`, `Third_Shift`, `Nomenclature`) VALUES
(1, 'Nyquist', 'BDL', 'PCEBA', 59593, 30457, 0, 'NyquistBDL'),
(2, 'Nyquist', 'BST', 'PCEBA', 59593, 30457, 0, 'NyquistBST'),
(3, 'Nyquist', '2C', 'PCEBA', 59593, 30457, 0, 'Nyquist2C'),
(4, 'Nyquist', 'ASSY', 'Integration', 59272, 30457, 0, 'NyquistASSY'),
(5, 'Nyquist', 'RFID', 'Integration', 59272, 30457, 0, 'NyquistRFID'),
(6, 'Nyquist', 'FST', 'Integration', 59272, 30457, 0, 'NyquistFST'),
(7, 'Nyquist', 'HIPOT', 'Integration', 59272, 30457, 0, 'NyquistHIPOT'),
(8, 'Nyquist', 'ORT', 'Integration', 59272, 30457, 0, 'NyquistORT'),
(9, 'Nyquist', 'U-BST', 'PCEBA', 24742, 30457, 0, 'NyquistU-BST'),
(10, 'Nyquist', 'U-2C', 'PCEBA', 24742, 30457, 0, 'NyquistU-2C'),
(11, 'Nyquist', 'U-FQA', 'Integration', 59272, 30457, 0, 'NyquistU-FQA'),
(12, 'Porter', 'BST', 'PCEBA', 24742, 30457, 0, 'PorterBST'),
(13, 'Porter', '2C', 'PCEBA', 24742, 30457, 0, 'Porter2C'),
(14, 'Porter', 'ASSY', 'Integration', 59272, 30457, 0, 'PorterASSY'),
(15, 'Porter', 'FST', 'Integration', 59272, 30457, 0, 'PorterFST'),
(16, 'Porter', 'HIPOT', 'Integration', 59272, 30457, 0, 'PorterHIPOT'),
(17, 'Porter', 'FQA', 'Integration', 59272, 30457, 0, 'PorterFQA'),
(18, 'Porter', 'ORT', 'Integration', 59272, 30457, 0, 'PorterORT'),
(19, 'Porter', 'ARCADIA', 'PCEBA', 24742, 30457, 0, 'PorterARCADIA'),
(20, 'Adelphi', 'ASSY', 'PCEBA', 59272, 30457, 0, 'AdelphiASSY'),
(21, 'Adelphi', 'P2C', 'PCEBA', 24742, 30457, 0, 'AdelphiP2C'),
(22, 'Adelphi', '2C', 'PCEBA', 24742, 30457, 0, 'Adelphi2C'),
(23, 'Adelphi', 'RFID', 'Integration', 59272, 30457, 0, 'AdelphiRFID'),
(24, 'Adelphi', 'SNT', 'Integration', 59272, 30457, 0, 'AdelphiSNT'),
(25, 'Adelphi', 'ORT', 'Integration', 59272, 30457, 0, 'AdelphiORT'),
(26, 'Adelphi', 'FRU-P2C', 'PCEBA', 59593, 30457, 0, 'AdelphiFRU-P2C'),
(27, 'Adelphi', 'FRU-2C', 'PCEBA', 59593, 30457, 0, 'AdelphiFRU-2C'),
(28, 'Newton', 'BST', 'PCEBA', 59593, 30457, 0, 'NewtonBST'),
(29, 'Newton', '2C', 'PCEBA', 59593, 30457, 0, 'Newton2C'),
(30, 'Newton', 'ASSY', 'Integration', 59272, 30457, 0, 'NewtonASSY'),
(31, 'Newton', 'FST', 'Integration', 59272, 30457, 0, 'NewtonFST'),
(32, 'Newton', 'HIPOT', 'Integration', 59272, 30457, 0, 'NewtonHIPOT'),
(33, 'Newton', 'ORT', 'Integration', 59272, 30457, 0, 'NewtonORT'),
(34, 'Newton', 'U-BST', 'PCEBA', 24742, 30457, 0, 'NewtonU-BST'),
(35, 'Newton', 'U-2C', 'PCEBA', 24742, 30457, 0, 'NewtonU-2C'),
(36, 'Newton', 'U-FQA', 'Integration', 59272, 30457, 0, 'NewtonU-FQA'),
(37, 'Gladiator', 'BST', 'PCEBA', 59593, 30457, 0, 'GladiatorBST'),
(38, 'Gladiator', '2C', 'PCEBA', 59593, 30457, 0, 'Gladiator2C'),
(39, 'Gladiator', 'ASSY', 'Integration', 59272, 30457, 0, 'GladiatorASSY'),
(40, 'Gladiator', 'FST', 'Integration', 59272, 30457, 0, 'GladiatorFST'),
(41, 'Gladiator', 'HIPOT', 'Integration', 59272, 30457, 0, 'GladiatorHIPOT'),
(42, 'Gladiator', 'ORT', 'Integration', 59272, 30457, 0, 'GladiatorORT'),
(43, 'Gladiator', 'U-BST', 'PCEBA', 24742, 30457, 0, 'GladiatorU-BST'),
(44, 'Gladiator', 'U-2C', 'PCEBA', 24742, 30457, 0, 'GladiatorU-2C'),
(45, 'Gladiator', 'U-FQA', 'Integration', 59272, 30457, 0, 'GladiatorU-FQA'),
(46, 'G48', 'BST', 'PCEBA', 59593, 30457, 0, 'G48BST'),
(47, 'G48', '2C', 'PCEBA', 59593, 30457, 0, 'G482C'),
(48, 'G48', 'ASSY', 'Integration', 59272, 30457, 0, 'G48ASSY'),
(49, 'G48', 'FST', 'Integration', 59272, 30457, 0, 'G48FST'),
(50, 'G48', 'HIPOT', 'Integration', 59272, 30457, 0, 'G48HIPOT'),
(51, 'G48', 'ORT', 'Integration', 59272, 30457, 0, 'G48ORT'),
(52, 'Planck', 'BST', 'PCEBA', 59593, 30457, 0, 'PlanckBST'),
(53, 'Planck', '2C', 'PCEBA', 59593, 30457, 0, 'Planck2C'),
(54, 'Planck', 'ASSY', 'Integration', 59272, 30457, 0, 'PlanckASSY'),
(55, 'Planck', 'FST', 'Integration', 59272, 30457, 0, 'PlanckFST'),
(56, 'Planck', 'HIPOT', 'Integration', 59272, 30457, 0, 'PlanckHIPOT'),
(57, 'Planck', 'ORT', 'Integration', 59272, 30457, 0, 'PlanckORT'),
(58, 'Planck', 'U-BST', 'PCEBA', 24742, 30457, 0, 'PlanckU-BST'),
(59, 'Planck', 'U-2C', 'PCEBA', 24742, 30457, 0, 'PlanckU-2C'),
(60, 'Planck', 'U-FQA', 'Integration', 59272, 30457, 0, 'PlanckU-FQA'),
(61, 'Orsted', 'BST', 'PCEBA', 59593, 30457, 0, 'OrstedBST'),
(62, 'Orsted', '2C', 'PCEBA', 59593, 30457, 0, 'Orsted2C'),
(63, 'Orsted', 'ASSY', 'Integration', 59272, 30457, 0, 'OrstedASSY'),
(64, 'Orsted', 'FST', 'Integration', 59272, 30457, 0, 'OrstedFST'),
(65, 'Orsted', 'HIPOT', 'Integration', 59272, 30457, 0, 'OrstedHIPOT'),
(66, 'Orsted', 'ORT', 'Integration', 59272, 30457, 0, 'OrstedORT'),
(67, 'Orsted', 'U-BST', 'PCEBA', 24742, 30457, 0, 'OrstedU-BST'),
(68, 'Orsted', 'U-2C', 'PCEBA', 24742, 30457, 0, 'OrstedU-2C'),
(69, 'Orsted', 'U-FQA', 'Integration', 59272, 30457, 0, 'OrstedU-FQA');

-- --------------------------------------------------------

--
-- Table structure for table `types`
--

CREATE TABLE `types` (
  `id_type` int(20) NOT NULL,
  `type_name` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `types`
--

INSERT INTO `types` (`id_type`, `type_name`) VALUES
(1, 'Accessory'),
(2, 'Test Unit'),
(3, 'Monitor'),
(4, 'Computer'),
(5, 'Loading Box'),
(6, 'Ethernet Unit'),
(7, 'Phone');

-- --------------------------------------------------------

--
-- Table structure for table `ucs_list`
--

CREATE TABLE `ucs_list` (
  `id_ucs` int(11) NOT NULL,
  `User_name` varchar(50) NOT NULL,
  `ucs_line` varchar(15) NOT NULL,
  `ucs_esxihost` varchar(15) NOT NULL,
  `ucs_serialnumber` varchar(20) NOT NULL,
  `ucs_ipaddress` varchar(15) NOT NULL,
  `ucs_macaddress` varchar(20) NOT NULL,
  `ucs_rfid` text NOT NULL,
  `station_model` varchar(35) NOT NULL,
  `station_name` varchar(35) NOT NULL,
  `station_id` int(100) NOT NULL,
  `comments` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ucs_list`
--

INSERT INTO `ucs_list` (`id_ucs`, `User_name`, `ucs_line`, `ucs_esxihost`, `ucs_serialnumber`, `ucs_ipaddress`, `ucs_macaddress`, `ucs_rfid`, `station_model`, `station_name`, `station_id`, `comments`) VALUES
(1, 'Julian Aldair', 'UPCBA', 'FJZUDF25', 'FCH2124V3A6', '10.225.188.111', 'A0239FED6810', '', 'Porter', 'BST', 12, ''),
(2, 'Julian Aldair', 'UPCBA', 'FJZUPCBA2', 'FCH2124V3QA', '10.225.188.116', '188090F7A322', '', 'Porter', 'BST', 12, 'ARCADIA'),
(3, 'Julian Aldair', 'UPCBA', 'FJZUDF38', 'FCH1911V29E', '10.225.188.19', 'B0AA7796BC72', '', 'Porter', 'BST', 12, 'ARCADIA'),
(4, 'Julian Aldair', 'UPCBA', 'FJZUDF37', 'FCH1912V0AY', '10.225.188.20', 'B0AA779696D4', '', 'Porter', 'BST', 12, ''),
(5, 'Julian Aldair', 'UPCBA', 'FJZUDF39', 'FCH1813V0GX', '10.225.189.140', 'D072DCA0AA7A', '', 'Porter', 'BST', 12, ''),
(6, 'Julian Aldair', 'UPCBA', 'FJZUPCBA3', 'FCH2124V3NP', '10.225.188.114', 'A0239FEDC622', '', 'Porter', '2C', 13, ''),
(7, 'Julian Aldair', 'UPCBA', 'FJZUDF25', 'FCH2124V3PY', '10.225.188.30', 'A0239FEDC4BA', '', 'Porter', '2C', 13, ''),
(8, 'Julian Aldair', 'UPCBA', 'FJZUPCBA4', '', '10.225.190.201', '', '', 'Porter', '2C', 13, 'TAA, BAJA'),
(9, 'Julian Aldair', 'UDF', 'FJZUDF27', 'FCH1912V061', '10.225.188.152', 'B0AA7796B990', '', 'Porter', 'ASSY', 14, ''),
(10, 'Julian Aldair', 'UDF', 'FJZUDF26', 'FCH2124V3NR', '10.225.188.112', '188090F7A310', '', 'Porter', 'FST', 15, ''),
(11, 'Julian Aldair', 'UDF', 'FJZUDF35', 'FCH2124V3KQ', '10.225.188.31', 'A0239FED62A6', '', 'Porter', 'FST', 15, ''),
(12, 'Julian Aldair', 'UDF', 'FJZUDF32', 'FCH1912V09J', '10.225.188.123', 'B0AA7796CE78', '', 'Porter', 'HIPOT', 16, ''),
(13, 'Julian Aldair', 'UDF', 'FJZUDF31', 'FCH1912V065', '10.225.188.122', 'B0AA7796BB4C', '', 'Porter', 'FQA', 17, ''),
(14, 'Julian Aldair', 'UDF', 'FJZUDF29', 'FCH2124V3A8', '10.225.188.115', 'A0239FED5F6A', '', 'Porter', 'ORT', 18, ''),
(15, 'Julian Aldair', 'UDF', 'FJZUDF24', 'FCH1912V031', '10.225.191.189', 'B0AA7796CEA2', '', 'Porter', 'BACKUP', 0, ''),
(16, 'Julian Aldair', 'UDF', 'FJZUDF32', 'FCH1718V1L7', '10.225.188.32', '6C416A1F2294', '', 'Porter', 'BACKUP', 0, ''),
(17, 'Julian Aldair', 'UPCBA', 'FJZUPCBA8', '', '10.225.191.115', 'BC26C70D3F8C', '', 'Nyquist', 'BDL', 1, ''),
(18, 'Julian Aldair', 'UPCBA', '', '', '', '', '', 'Nyquist', 'BDL', 1, ''),
(19, 'Julian Aldair', 'UPCBA', 'FJZUPCBA6', '', '10.225.191.154', '808BCF6CFBB4', '', 'Nyquist', 'BST', 2, ''),
(20, 'Julian Aldair', 'UPCBA', 'FJZUPCBA9', '', '10.225.191.24', 'B08BCF6CFBB4', '', 'Nyquist', 'BST', 2, ''),
(21, 'Julian Aldair', 'UPCBA', 'FJZUPCBA12', '', '10.225.188.46', 'BC26C70D372E', '', 'Nyquist', 'U-BST', 9, 'UPLINK'),
(22, 'Julian Aldair', 'UPCBA', 'FJZUPCBA7', '', '10.225.191.147', '2C5A0FFF7B64', '', 'Nyquist', '2C', 3, ''),
(23, 'Julian Aldair', 'UPCBA', 'FJUPCBA13', '', '10.225.188.217', 'BC26C70D4868', '', 'Nyquist', '2C', 3, ''),
(24, 'Julian Aldair', 'UPCBA', 'FJZUPCBA10', '', '10.225.191.25', 'BC26C70D440C', '', 'Nyquist', 'U-2C', 10, 'UPLINK'),
(25, 'Julian Aldair', 'UDF', 'FJZUDF46', '', '10.225.191.22', 'B08BCF6D0F1C', '', 'Nyquist', 'ASSY', 4, ''),
(26, 'Julian Aldair', 'UDF', 'FJZUDF44', '', '10.225.191.146', '2C5A0FFF1126', '', 'Nyquist', 'FST', 6, ''),
(27, 'Julian Aldair', 'UDF', '', '', '', '', '', 'Nyquist', 'RFID', 5, ''),
(28, 'Julian Aldair', 'UDF', 'FJZUDF55', '', '10.225.188.25', 'BC26C70D3C3E', '', 'Nyquist', 'RFID', 5, ''),
(29, 'Julian Aldair', 'UDF', 'FJZUDF47', '', '', 'BC26C70D18F2', '', 'Nyquist', 'HIPOT', 7, ''),
(30, 'Julian Aldair', 'UDF', '', '', '', '', '', 'Nyquist', 'ORT', 8, ''),
(31, 'Julian Aldair', 'UPCBA', 'FJZUPCBA15', 'FCH2247V01Y', '10.225.189.214', 'F80F6FE29D62', '', 'Adelphi', 'P2C', 21, 'Azteca'),
(32, 'Julian Aldair', 'UPCBA', 'FJZUPCBA16', 'FCH2247V01X', '10.225.189.215', 'F80F6FE29906', '', 'Adelphi', '2C', 22, 'Azteca'),
(33, 'Julian Aldair', 'UDF', 'FJZUPCBA14', 'FCH2247V01Z', '10.225.189.213', 'F80F6FE27C20', '', 'Adelphi', 'ASSY', 20, 'Azteca'),
(34, 'Julian Aldair', 'UDF', 'FJZUDF70', '', '10.225.189.216', '502FA86B7F7A', '', 'G48', 'ASSY', 48, 'Azteca'),
(35, 'Julian Aldair', 'UDF', 'FJZUDF71', 'FCH2243V040', '10.225.189.217', '706D1518954C', '', 'Adelphi', 'SNT', 24, 'Azteca'),
(36, 'Julian Aldair', 'UPCBA', 'FJZUPCBA5', '', '10.225.189.36', '70695A31ED42', '', 'FRANKLIN', '2C', 0, 'Franklin');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `Id_user` int(10) NOT NULL,
  `User_badge` char(20) NOT NULL,
  `User_name` varchar(20) NOT NULL,
  `User_lastname` varchar(30) NOT NULL,
  `User_shift` int(5) NOT NULL,
  `User_Supervisor` varchar(30) NOT NULL,
  `User_area` varchar(15) NOT NULL,
  `User_position` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`Id_user`, `User_badge`, `User_name`, `User_lastname`, `User_shift`, `User_Supervisor`, `User_area`, `User_position`) VALUES
(0, '4016', 'Hugo', 'Landa', 4, 'Antonio Carrillo', 'Inventory', 1),
(2, '21179', 'Antonio', 'Carrillo', 4, '', '', 1),
(11, '21431', 'Antonio', 'Medina', 2, '', '', 2),
(521, '18411', 'Jesus', 'Marquez', 0, '', '', 1),
(1435, '06355', 'Javier', 'Saenz', 1, 'Antonio Chairez', 'PCEBA', 2),
(4244, '22293', 'Carlos', 'Sandoval', 1, 'Antonio Chairez', 'PCEBA', 1),
(5252, '05295', 'Rafael', 'Alvarado ', 0, '', '', 1),
(11510, '21045', 'Adrian', 'Martinez', 0, '', '', 2),
(15499, '14613', 'Ernesto', 'Hernandez Gallegos', 1, 'Hector Guerrero', 'Integration', 2),
(15833, '7882', 'Javier', 'Osbaldo', 2, 'David Torres', 'Nyquist', 2),
(19479, '20611', 'Carlos', 'Ferman', 2, 'David Torres', 'Azteca', 2),
(20423, '22263', 'Tino', 'Carrera', 2, 'David Torres', 'Nyquist', 2),
(20882, '22237', 'Alejandro', 'Castillo', 4, '', 'undefined', 1),
(24742, '22021', 'Julio Cesar', 'Galindo Cano', 4, 'Antonio Carrillo', 'PCEBA', 1),
(26707, '123', 'Joel', 'Rivera Martinez', 2, 'David Torres', '', 2),
(28207, '21409', 'Servando', 'Castaneda Hernandez', 1, 'Antonio Chairez', 'PCEBA', 2),
(30457, '22075', 'David', 'Torres', 2, 'Antonio Carrillo', 'all', 1),
(30618, '22368', 'Juan Carlos', 'Tenorio', 2, 'David Torres', 'Maya', 2),
(30825, '22565', 'Ariel', 'Vela', 3, 'Julio Galindo', 'Nyquist', 2),
(33440, '4388', 'Manuel Candelario', 'Galindo Cano', 1, 'Hector Ramos', 'ICT', 2),
(34425, '34425', 'Quitze', 'Garcia', 1, 'Hector Guerrero', 'Nyquist', 2),
(49287, '07944', 'Joaquin', 'Diaz', 0, '', '', 1),
(53702, '21001', 'Julian Aldair', 'Antonio Joaquin', 1, 'Hector Guerrero', 'Integration', 2),
(55018, '21045', 'Adrian', 'Martinez', 1, 'Hector Guerrero', 'Integration', 2),
(58987, '123', 'Eddy Albores', 'De Paz', 3, 'Hector Ramos', 'ICT', 2),
(58988, '20239', 'Juan', 'Normando', 3, 'David Torres', 'Nyquist', 2),
(59272, '20865', 'Hector', 'Guerrero', 1, 'Antonio Carrillo', 'Integration', 1),
(59378, '59378', 'Luis Leonardo', 'NuÃ±ez Carranza', 1, 'Hector Guerrero', 'Nyquist', 2),
(59469, '21263', 'Francisco Javier', 'Ochoa', 2, 'David Torres', 'Nyquist', 2),
(59540, '21431', 'Antonio', 'Medina', 2, 'David Torres', 'Nyquist', 2),
(59547, '21438', 'Javier ', 'Herrera', 1, 'Julio Galindo', 'Nyquist', 2),
(59593, '21502', 'Jose Antonio', 'Chairez Garcia', 4, 'Antonio Carrillo', 'PCEBA', 1),
(59708, '21652', 'Aldo', 'Lopez', 1, 'Hector Guerrero', 'Integration', 2),
(60085, '22239', 'Luis ', 'Manriquez', 4, 'Antonio Carrillo', 'Prueba', 1),
(60186, '22488', 'Fernando', 'Valenzuela', 3, 'David Torres', 'Nyquist', 2),
(60312, '22724', 'Sergio', 'Pena', 2, 'Antonio Carrillo', 'Nyquist', 1),
(51022250, '21324', 'Miguel Angel ', 'Rivera', 0, '', '', 2),
(789456123, '19621', 'Luis', 'Nunez', 0, '', '', 1);

-- --------------------------------------------------------

--
-- Table structure for table `virtual_machines`
--

CREATE TABLE `virtual_machines` (
  `id_vm` int(30) NOT NULL,
  `vm_hostname` varchar(20) NOT NULL,
  `vm_ipaddress` varchar(20) NOT NULL,
  `vm_macaddress` varchar(20) NOT NULL,
  `id_ucs` int(11) NOT NULL,
  `comments` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `virtual_machines`
--

INSERT INTO `virtual_machines` (`id_vm`, `vm_hostname`, `vm_ipaddress`, `vm_macaddress`, `id_ucs`, `comments`) VALUES
(1, 'fjzpvmuabst1', '10.225.188.239', '00:0c:29:12:4d:18', 1, ''),
(2, 'fjzpvmuabst2', '10.225.188.240', '00:0c:29:cc:97:ca', 1, ''),
(3, 'fjzpvmuabst3', '10.225.188.241', '00:0c:29:66:7b:b0', 1, ''),
(4, 'fjzpvmuabst4', '10.225.188.242', '00:0c:29:67:b7:b8', 1, ''),
(5, 'fjzpvmuabst5', '10.225.188.60', '00:0c:29:d9:bc:01', 2, ''),
(6, 'fjzpvmuabst6', '10.225.188.62', '00:0c:29:56:c4:df', 2, ''),
(7, 'fjzpvmuabst7', '10.225.188.64', '00:0c:29:cd:e2:42', 2, ''),
(8, 'fjzpvmuabst8', '10.225.188.65', '00:0c:29:42:f3:97', 2, ''),
(9, 'fjzpvmuabsta', '10.225.188.41', '00:0C:29:0D:92:A3', 3, ''),
(10, 'fjzpvmuabstb', '10.225.188.97', '00:0C:29:E9:A3:F2', 4, ''),
(11, 'fjzpvmuabst9', '10.225.189.149', '00:0C:29:20:7D:8F', 5, ''),
(12, 'fjzpvmua2c1', '10.225.188.125', '00:0c:29:b0:79:f7', 6, ''),
(13, 'fjzpvmua2c2', '10.225.188.127', '00:0c:29:bf:c3:cc', 6, ''),
(14, 'fjzpvmua2c3', '10.225.188.129', '00:0c:29:c6:f7:42', 6, ''),
(15, 'fjzpvmua2c4', '10.225.188.131', '00:0c:29:83:cd:89', 6, ''),
(16, 'fjzpvmua2c5', '10.225.188.66', '00:0c:29:b0:51:04', 7, ''),
(17, 'fjzpvmua2c6', '10.225.188.68', '00:0c:29:3f:22:35', 7, ''),
(18, 'fjzpvmua2c7', '10.225.188.69', '00:0c:29:c6:d6:3b', 7, ''),
(19, 'fjzpvmua2c8', '10.225.188.70', '00:0c:29:ac:8b:c8', 1, ''),
(20, 'fjzpvmua2c9\nBAJA', '10.225.190.23', '00:0C:29:E6:4A:9C', 8, 'Baja'),
(21, 'fjzdvmuaassy1', '10.225.188.118', '00:0c:29:66:15:30', 9, ''),
(22, 'fjzdvmuafst1', '10.225.188.134', '00:0c:29:d4:a5:73', 10, ''),
(23, 'fjzdvmuafst2', '10.225.188.136', '00:0c:29:a8:46:a9', 10, ''),
(24, 'fjzdvmuafst3', '10.225.188.141', '00:0c:29:81:36:0d', 10, ''),
(25, 'fjzdvmuafst4', '10.225.188.142', '00:0c:29:be:ff:cb', 10, ''),
(26, 'fjzdvmuafst5', '10.225.188.71', '00:0c:29:86:c6:56', 11, ''),
(27, 'fjzdvmuafst6', '10.225.188.72', '00:0c:29:65:a5:80', 11, ''),
(28, 'fjzdvmuafst7', '10.225.188.73', '00:0c:29:2d:ef:39', 11, ''),
(29, 'fjzdvmuafst8', '10.225.188.74', '00:0c:29:40:04:3f', 11, ''),
(30, 'fjzdvmuaHipot1', '10.225.188.192', '00:0c:29:b7:18:05', 12, ''),
(31, 'fjzdvmuafqa1', '10.225.188.194', '00:0c:29:55:1c:83', 13, ''),
(32, 'fjzdvmuaort1', '10.225.188.159', '00:0c:29:65:32:0c', 14, ''),
(33, 'fjzdvmuaort2', '10.225.188.160', '00:0c:29:5a:e0:42', 14, ''),
(34, 'fjzdvmuaort3', '10.225.188.161', '00:0c:29:d2:d6:f9', 14, ''),
(35, 'fjzdvmuaort4', '10.225.188.162', '00:0c:29:b0:bb:1e', 14, ''),
(36, 'fjzdvmuaassy0', '10.225.188.78', '00:0c:29:fc:5b:57', 15, ''),
(37, 'fjzdvmuaort0 ', '10.225.188.81 ', '00:0c:29:46:f4:c6', 15, ''),
(38, 'fjzdvmuaHipot0', '10.225.188.86 ', '00:0c:29:8e:9b:38', 16, ''),
(39, 'fjzdvmuafqa0', '10.225.188.59', '00:0c:29:70:db:b5', 16, ''),
(40, 'fjzpvmnqtbdl1', '10.225.188.185', '00:50:56:98:e4:a3', 17, ''),
(41, 'fjzpvmnqtbdl2', '10.225.188.199', '00:50:56:98:8a:04', 17, ''),
(42, 'fjzpvmnqtbdl3', '10.225.190.1', '00:50:56:98:69:70', 17, ''),
(43, 'fjzpvmnqtbdl4', '10.225.190.9', '00:50:56:98:1b:88', 17, ''),
(44, 'fjzpvmnqtbdl5', '10.225.188.168', '00:0c:29:2e:06:67', 18, ''),
(45, 'fjzpvmnqtbdl6', '10.225.188.220', '00:0c:29:88:e1:9a', 18, ''),
(46, 'fjzpvmnqtbdl7', '10.225.188.221', '00:0c:29:d4:be:76', 18, ''),
(47, 'fjzpvmnqtbdl8', '10.225.188.222', '00:0c:29:bc:9f:72', 18, ''),
(48, 'fjzpvmnqtbst1', '10.225.191.18', '00:0c:29:ef:5f:29', 19, ''),
(49, 'fjzpvmnqtbst2', '10.225.191.19', '00:0c:29:50:f8:96', 19, ''),
(50, 'fjzpvmnqtbst3', '10.225.191.156', '00:0c:29:03:28:3c', 19, ''),
(51, 'fjzpvmnqtbst4', '10.225.191.173', '00:0c:29:fe:80:26', 19, ''),
(52, 'fjzpvmnqtbst5', '10.225.188.234', '00:0c:29:6f:b2:e2', 20, ''),
(53, 'fjzpvmnqtbst6', '10.225.188.235', '00:0c:29:48:9d:19', 20, ''),
(54, 'fjzpvmnqtbst7', '10.225.188.236', '00:50:56:98:42:fe', 20, ''),
(55, 'fjzpvmnqtbst8', '10.225.188.237', '00:50:56:98:ba:f3', 20, ''),
(56, 'fjzpvmnqtubst1', '10.225.188.158', '00:50:56:98:64:78', 21, ''),
(57, 'fjzpvmnqtubst2', '10.225.190.164', '00:50:56:98:01:80', 21, ''),
(58, 'fjzpvmnqtubst3', '10.225.189.198', '00:50:56:98:d6:fd', 21, ''),
(59, 'fjzpvmnqt2c1', '10.225.191.192', '00:0c:29:44:d6:3f', 22, ''),
(60, 'fjzpvmnqt2c2', '10.225.191.193', '00:0c:29:37:84:8d', 22, ''),
(61, 'fjzpvmnqt2c3', '10.225.191.194', '00:0c:29:b9:7e:bd', 22, ''),
(62, 'fjzpvmnqt2c4', '10.225.191.195', '00:0c:29:ad:9a:11', 22, ''),
(63, 'fzpvmnqt2c5', '10.225.188.238', '00:0c:29:2e:a3:50', 23, ''),
(64, 'fzpvmnqt2c6', '10.225.188.246', '00:0c:29:68:c5:e1', 23, ''),
(65, 'fzpvmnqt2c7', '10.225.188.248', '00:0c:29:1b:11:c5', 23, ''),
(66, 'fzpvmnqt2c8', '10.225.188.249', '00:0c:29:4d:0d:60', 23, ''),
(67, 'fjzpvmnqtu2c1', '10.225.190.60', '00:0c:29:b3:64:31', 24, ''),
(68, 'fjzpvmnqtu2c2', 'N/A', 'N/A', 24, ''),
(69, 'fjzpvmnqtu2c3', '10.225.188.225', '00:0c:29:99:73:88', 24, ''),
(70, 'fjzpvmnqtu2c4', '10.225.189.100', '00:0c:29:a4:30:b3', 24, ''),
(71, 'fjzdvmnqtassy1', '10.225.191.251', '00:50:56:98:bc:b8', 25, ''),
(72, 'fjzdvmnqtassy2', '10.225.191.99', '00:50:56:98:9c:1c', 25, ''),
(73, 'fjzdvmnqtassy3', '10.81.206.163', '00:50:56:98:91:3b', 25, ''),
(74, 'fjzdvmnqtassy4', '10.81.206.255', '00:50:56:98:11:20', 25, ''),
(75, 'fjzdvmnqtfst1', '10.225.189.1', '00:0c:29:08:4f:ce', 26, ''),
(76, 'fjzdvmnqtfst2', '10.225.189.148', '00:0c:29:c3:c0:a5', 26, ''),
(77, 'fjzdvmnqtfst3', '10.225.189.156', '00:0c:29:c3:42:36', 26, ''),
(78, 'fjzdvmnqtfst4', '10.225.189.26', '00:0c:29:0f:00:df', 26, ''),
(79, 'fjzdvmnqtrd1', '10.225.191.21', '00:0c:29:dc:b8:94', 27, ''),
(80, 'fjzdvmnqtrd2', '10.225.189.108', '00:50:56:98:7b:aa', 27, ''),
(81, 'fjzdvmnqtrd3', '10.225.189.112', '00:50:56:98:5c:08', 27, ''),
(82, 'fjzdvmnqtrd4', '10.225.189.114', '00:50:56:98:d3:dd', 27, ''),
(83, 'fjzdvmnqtrd5', '10.225.188.226', '00:0c:29:7a:14:3b', 28, ''),
(84, 'fjzdvmnqtrd6', '10.225.188.227', '00:0c:29:8a:2d:c5', 28, ''),
(85, 'fjzdvmnqtrd7', '10.225.188.229', '00:0c:29:d7:b8:a6', 28, ''),
(86, 'fjzdvmnqtrd8', '10.225.188.230', '00:0c:29:96:a0:c3', 28, ''),
(87, 'fjzdvmnqthp1', '10.225.188.173', '00:50:56:98:2b:a8', 29, ''),
(88, 'fjzdvmnqthp2', '10.225.188.174', '00:50:56:98:1f:d5', 29, ''),
(89, 'fjzdvmnqthp3', '10.225.188.175', '00:50:56:98:a1:3b', 29, ''),
(90, 'fjzdvmnqthp4', 'N/A', 'N/A', 29, ''),
(91, 'fjzdvmnqtort1', '10.225.191.28', '00:0c:29:63:c5:3e', 30, ''),
(92, 'fjzdvmnqtort2', '10.225.191.29', '00:0c:29:64:14:b9', 30, ''),
(93, 'fjzdvmnqtort3', '10.225.190.88', '', 30, ''),
(94, 'fjzdvmnqtort4', '10.225.191.139', '', 30, ''),
(95, 'fjzpvmadpassy1', '10.225.188.190', '00:1e:67:6e:96:0d', 33, ''),
(96, 'fjzpvmadp2c1', '10.225.188.104', '00:0c:29:64:44:95', 31, ''),
(97, 'fjzpvmadp2c2', '10.225.188.149', '00:50:56:98:17:e3', 31, ''),
(98, 'fjzpvmadp2c3', '10.225.188.150', '00:50:56:98:a4:62', 31, ''),
(99, 'fjzpvmadup2c1', '10.225.189.124', '00:50:56:98:14:2a', 31, ''),
(100, 'fjzpvmad2c1', '10.225.188.233', '00:0c:29:58:14:e2', 32, ''),
(101, 'fjzpvmad2c2', '10.225.188.86', '00:0c:29:93:38:43', 32, ''),
(102, 'fjzdvmadrfid1', '10.225.189.104', '00:0c:29:41:f5:5a', 34, ''),
(103, 'fjzdvmadsnt1', '10.225.189.223', '00:0c:29:da:e3:31 ', 35, ''),
(104, 'fjzpvmfk2c1', '10.225.189.90', '00:0c:29:4e:d3:66', 36, ''),
(105, 'fjzpvmfk2c2', '10.225.189.96', '00:0c:29:68:ed:03', 36, ''),
(106, 'fjzpvmfk2c3', '10.225.190.163', '00:0c:29:16:be:96', 36, ''),
(107, 'fjzpvmfk2c4', '10.225.190.173', '00:0c:29:e8:57:ab', 36, ''),
(109, 'prueba prueba2', 'prueba2', 'prueba2', 2, 'rfgrbdfgndf'),
(110, 'prueba3', 'prueba3', 'prueba3', 3, 'dfghsdfbsdfg');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `actives`
--
ALTER TABLE `actives`
  ADD PRIMARY KEY (`id_actives`);

--
-- Indexes for table `actives_inventory`
--
ALTER TABLE `actives_inventory`
  ADD PRIMARY KEY (`id_inventorya`);

--
-- Indexes for table `brand`
--
ALTER TABLE `brand`
  ADD PRIMARY KEY (`id_brand`);

--
-- Indexes for table `ciscoincidents`
--
ALTER TABLE `ciscoincidents`
  ADD PRIMARY KEY (`id_inc`);

--
-- Indexes for table `clients`
--
ALTER TABLE `clients`
  ADD PRIMARY KEY (`id_clients`);

--
-- Indexes for table `insumos`
--
ALTER TABLE `insumos`
  ADD PRIMARY KEY (`id_insumos`);

--
-- Indexes for table `inventory`
--
ALTER TABLE `inventory`
  ADD PRIMARY KEY (`id_inventory`);

--
-- Indexes for table `issues`
--
ALTER TABLE `issues`
  ADD PRIMARY KEY (`Issue_id`),
  ADD KEY `Station_id` (`Station_id`);

--
-- Indexes for table `model`
--
ALTER TABLE `model`
  ADD PRIMARY KEY (`id_model`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id_products`);

--
-- Indexes for table `stations`
--
ALTER TABLE `stations`
  ADD PRIMARY KEY (`Station_id`),
  ADD KEY `Id_user` (`Id_user`);

--
-- Indexes for table `types`
--
ALTER TABLE `types`
  ADD PRIMARY KEY (`id_type`);

--
-- Indexes for table `ucs_list`
--
ALTER TABLE `ucs_list`
  ADD PRIMARY KEY (`id_ucs`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`Id_user`);

--
-- Indexes for table `virtual_machines`
--
ALTER TABLE `virtual_machines`
  ADD PRIMARY KEY (`id_vm`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `actives`
--
ALTER TABLE `actives`
  MODIFY `id_actives` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `actives_inventory`
--
ALTER TABLE `actives_inventory`
  MODIFY `id_inventorya` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=102;

--
-- AUTO_INCREMENT for table `brand`
--
ALTER TABLE `brand`
  MODIFY `id_brand` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `ciscoincidents`
--
ALTER TABLE `ciscoincidents`
  MODIFY `id_inc` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `clients`
--
ALTER TABLE `clients`
  MODIFY `id_clients` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `insumos`
--
ALTER TABLE `insumos`
  MODIFY `id_insumos` int(40) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=197;

--
-- AUTO_INCREMENT for table `inventory`
--
ALTER TABLE `inventory`
  MODIFY `id_inventory` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=95;

--
-- AUTO_INCREMENT for table `issues`
--
ALTER TABLE `issues`
  MODIFY `Issue_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=723;

--
-- AUTO_INCREMENT for table `model`
--
ALTER TABLE `model`
  MODIFY `id_model` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=64;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id_products` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `stations`
--
ALTER TABLE `stations`
  MODIFY `Station_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=70;

--
-- AUTO_INCREMENT for table `types`
--
ALTER TABLE `types`
  MODIFY `id_type` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `ucs_list`
--
ALTER TABLE `ucs_list`
  MODIFY `id_ucs` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `virtual_machines`
--
ALTER TABLE `virtual_machines`
  MODIFY `id_vm` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=111;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
