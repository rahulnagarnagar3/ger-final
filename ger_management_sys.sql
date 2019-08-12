-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 12, 2019 at 12:54 PM
-- Server version: 10.3.16-MariaDB
-- PHP Version: 7.3.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ger_management_sys`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `admin_id` int(10) NOT NULL,
  `admin_email` varchar(255) NOT NULL,
  `admin_pass` varchar(255) NOT NULL,
  `admin_regdate` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`admin_id`, `admin_email`, `admin_pass`, `admin_regdate`) VALUES
(1, 'admin@gmail.com', 'test', '2019-08-07 18:53:16');

-- --------------------------------------------------------

--
-- Table structure for table `booking`
--

CREATE TABLE `booking` (
  `booking_id` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  `ordered_date` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `service_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `ID` int(10) NOT NULL,
  `VehicleCat` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`ID`, `VehicleCat`) VALUES
(1, 'Car'),
(2, 'Bikes'),
(3, 'Small buses'),
(4, 'Small Vans');

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `ID` int(10) NOT NULL,
  `Name` varchar(255) NOT NULL,
  `Email` varchar(255) NOT NULL,
  `Pass` varchar(255) NOT NULL,
  `MobileNo` varchar(255) NOT NULL,
  `RegDate` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`ID`, `Name`, `Email`, `Pass`, `MobileNo`, `RegDate`) VALUES
(1, '', 'testing@gmail.com', 'testing123', '', '2019-08-10 16:46:08'),
(2, 'Rahul', 'rahul@gmail.com', 'rahul2', '8987452326', '2019-08-01 12:46:43'),
(3, '', 'abc1@gmail.com', '7f2ababa423061c509f4923dd04b6cf1', '9807839393', '2019-08-01 13:00:20'),
(4, 'Testing', 'abc1@gmail.com', '7f2ababa423061c509f4923dd04b6cf1', '9807839393', '2019-08-01 13:04:01'),
(5, 'Testing', 'abc1@gmail.com', 'cc03e747a6afbbcbf8be7668acfebee5', '9807839393', '2019-08-02 10:34:07'),
(6, 'Rahul Nagar', 'rahuln@gmail.com', '2acb7811397a5c3bea8cba57b0388b79', '9807839393', '2019-08-02 11:14:39'),
(7, 'Bhawana', 'bh2990@gmail.com', 'cc03e747a6afbbcbf8be7668acfebee5', '9078657383', '2019-08-02 11:22:10'),
(8, '', '', 'cc03e747a6afbbcbf8be7668acfebee5', '', '2019-08-02 15:35:47'),
(9, 'Nagar Test', 'nagartest@gmail.com', '16d7a4fca7442dda3ad93c9a726597e4', '0894180497', '2019-08-06 13:11:34'),
(10, 'test', 'test123@gmail.com', 'c06db68e819be6ec3d26c6038d8e8d1f', '0894180497', '2019-08-06 13:43:26'),
(11, 'Rahul', 'rab@gmail.com', '098f6bcd4621d373cade4e832627b4f6', '0987687111', '2019-08-08 12:14:59'),
(12, 'Test', 'test2@gmail.com', '098f6bcd4621d373cade4e832627b4f6', '0894180497', '2019-08-08 12:20:46'),
(13, 'Rahul', 'rahul@gmail.com', 'test', '098753533', '2019-08-11 10:08:16');

-- --------------------------------------------------------

--
-- Table structure for table `enquiry`
--

CREATE TABLE `enquiry` (
  `ID` int(11) NOT NULL,
  `UserId` int(10) NOT NULL,
  `EnquiryNumber` varchar(255) NOT NULL,
  `EnquiryType` varchar(255) DEFAULT NULL,
  `Description` varchar(255) DEFAULT NULL,
  `EnquiryDate` timestamp NULL DEFAULT current_timestamp(),
  `AdminResponse` varchar(255) NOT NULL,
  `AdminStatus` int(11) NOT NULL,
  `AdminRemarkdate` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `enquiry`
--

INSERT INTO `enquiry` (`ID`, `UserId`, `EnquiryNumber`, `EnquiryType`, `Description`, `EnquiryDate`, `AdminResponse`, `AdminStatus`, `AdminRemarkdate`) VALUES
(1, 7, '161182921', 'Service Related Enquiry', 'Testing enquiry form', '2019-08-03 13:46:57', 'Testing', 1, '2019-08-03 13:46:57'),
(2, 0, '421762533', 'Price Related Enquiry', 'Testing', '2019-08-10 09:40:31', '', 0, '2019-08-10 09:40:31'),
(3, 0, '556777432', 'Service Related Enquiry', 'testing', '2019-08-10 09:40:59', '', 0, '2019-08-10 09:40:59'),
(4, 0, '208342857', 'Service Related Enquiry', 'testing', '2019-08-10 09:41:11', '', 0, '2019-08-10 09:41:11'),
(5, 0, '761480149', 'Service Related Enquiry', 'testing', '2019-08-10 09:41:36', '', 0, '2019-08-10 09:41:36'),
(6, 12, '270454128', 'Service Related Enquiry', 'test', '2019-08-10 19:02:06', 'Test', 1, '2019-08-10 19:02:06'),
(7, 12, '649839126', 'Service Related Enquiry', 'test', '2019-08-10 19:02:50', '', 0, '2019-08-10 19:02:50'),
(8, 12, '799448638', 'Price Related Enquiry', 'Test', '2019-08-10 19:16:19', 'Responsded', 1, '2019-08-10 19:16:19'),
(9, 12, '941133046', 'Price Related Enquiry', 'Test', '2019-08-10 19:17:15', '', 0, '2019-08-10 19:17:15');

-- --------------------------------------------------------

--
-- Table structure for table `enquirytype`
--

CREATE TABLE `enquirytype` (
  `ID` int(11) NOT NULL,
  `EnquiryType` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `enquirytype`
--

INSERT INTO `enquirytype` (`ID`, `EnquiryType`) VALUES
(1, 'Service Related Enquiry'),
(2, 'Price Related Enquiry'),
(3, 'Parts Related Enquiry'),
(4, 'Other Enquiry');

-- --------------------------------------------------------

--
-- Table structure for table `mechanics`
--

CREATE TABLE `mechanics` (
  `ID` int(11) NOT NULL,
  `FullName` varchar(120) DEFAULT NULL,
  `MobileNumber` bigint(20) DEFAULT NULL,
  `Email` varchar(120) DEFAULT NULL,
  `Address` varchar(120) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mechanics`
--

INSERT INTO `mechanics` (`ID`, `FullName`, `MobileNumber`, `Email`, `Address`) VALUES
(1, 'Shonaya', 8287654547, 'lal@gmail.com', 'H.NO 6/8 New Delhi'),
(2, 'Naveen', 7967890288, 'munna@gmail.com', '6790 Plot, Delhi'),
(3, 'Rashid', 5399365859, 'rashid@gmail.com', '45-A, gali no 50, new colony new delhi'),
(4, 'Rahul Kumar', 9865486484, 'rahul@gmail.com', 'c/o, Mohan Rajnagar near metro place B3/4144'),
(5, 'Harish Singh', 7697547903, 'harish@gmail.com', 'gh-67, sohna road haryana'),
(6, 'Jone', 8976565718, 'jone@gmail.com', 'shastri Niketan gali no:75 near baikund dham neelgari Himchal Pradesh'),
(7, 'test mech', 423423423, 'restmech@gmail.com', 'New Delhi India');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `product_id` int(10) NOT NULL,
  `p_cat_id` int(10) NOT NULL,
  `cat_id` int(10) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `product_title` text NOT NULL,
  `product_img1` text NOT NULL,
  `product_price` int(10) NOT NULL,
  `product_keywords` text NOT NULL,
  `product_desc` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`product_id`, `p_cat_id`, `cat_id`, `date`, `product_title`, `product_img1`, `product_price`, `product_keywords`, `product_desc`) VALUES
(6, 1, 1, '2019-08-11 13:58:55', 'Front Left Side Window motor', 'product-1.jpg', 29, 'Window Motor', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. '),
(7, 1, 1, '2019-08-11 14:01:27', 'Back Door Outer Door Handles', 'product-2.jpg', 11, 'Back Door Outer Door Handles', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. '),
(8, 1, 1, '2019-08-11 14:05:37', 'Rear Left Side Inner door handle', 'product-3.jpg', 16, 'Rear Left Side Inner door handle ', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit'),
(9, 1, 1, '2019-08-11 14:08:09', 'Fuel tank', 'product-4.jpg', 60, 'Fuel tank', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit'),
(10, 1, 1, '2019-08-11 14:10:17', 'Sunroof', 'product-5.jpg', 80, 'Lorem ipsum dolor sit amet, consectetur adipisicing elit', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit'),
(11, 2, 1, '2019-08-11 14:12:31', 'WindowShield', 'product-6.jpg', 45, 'Lorem ipsum dolor sit amet, consectetur adipisicing elit', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit'),
(12, 5, 1, '2019-08-11 14:15:20', 'Roof Rack', 'product-7.jpg', 111, 'Lorem ipsum dolor sit amet, consectetur adipisicing elit', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit'),
(13, 4, 1, '2019-08-11 14:18:23', 'Low high beam headlights', 'product-8.jpg', 56, 'low high beam headlights', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. '),
(14, 4, 1, '2019-08-11 14:26:04', 'Headlights', 'product-10.jpg', 37, 'Low high beam headlights', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. '),
(15, 4, 1, '2019-08-11 14:28:15', 'Fog Lights', 'product-9.jpg', 23, 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. ', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. '),
(16, 4, 1, '2019-08-11 15:10:16', 'Signal Light', 'product-11.jpg', 21, 'Signal Light', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit.'),
(17, 3, 1, '2019-08-11 15:11:13', 'Car Battery', 'product-12.jpg', 165, 'Car Battery', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit.'),
(18, 6, 2, '2019-08-11 15:46:01', 'Bike Brakes', 'product-13.jpg', 25, 'Lorem ipsum dolor sit amet, consectetur adipisicing elit.Lorem ipsum dolor sit amet, consectetur adipisicing elit.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit.Lorem ipsum dolor sit amet, consectetur adipisicing elit.'),
(19, 8, 2, '2019-08-11 15:47:32', 'Bike Tyre', 'product-14.jpg', 9, 'Lorem ipsum dolor sit amet, consectetur adipisicing elit.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit.'),
(20, 8, 2, '2019-08-11 15:48:40', 'Bike Chain', 'product-15.jpg', 19, 'Bike Chain', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit.'),
(21, 6, 2, '2019-08-11 15:49:40', 'Bike Lock', 'product-16.jpg', 12, 'Locker', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit.'),
(22, 8, 2, '2019-08-11 15:50:41', 'Lock', 'product-17.jpg', 10, 'Locker', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit.'),
(23, 8, 2, '2019-08-11 15:51:44', 'Bike Mudguard', 'product-18.jpg', 27, 'Bike', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit.'),
(24, 8, 2, '2019-08-11 15:52:23', 'Rim', 'product-19.jpg', 65, 'Rim', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit.'),
(25, 8, 3, '2019-08-11 15:54:28', 'Tyre', 'product-20.jpg', 150, 'Tyre', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit.'),
(26, 6, 3, '2019-08-11 15:55:36', 'Advance Brakes', 'product-21.jpg', 45, 'Brakes', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit.'),
(27, 4, 4, '2019-08-11 15:56:19', 'Light', 'product-22.jpg', 67, 'Lorem ipsum dolor sit amet, consectetur adipisicing elit.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit.'),
(28, 8, 3, '2019-08-11 15:57:05', 'Bus Tyre', 'product-23.jpg', 276, 'Lorem ipsum dolor sit amet, consectetur adipisicing elit.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit.'),
(29, 1, 4, '2019-08-11 16:16:22', 'Door', 'product-24.jpg', 190, 'Doors', '  Lorem ipsum dolor sit amet, consectetur adipisicin...'),
(30, 2, 4, '2019-08-11 16:17:48', 'Rear View Mirror', 'product-25.jpg', 78, 'Rear View Mirror', 'Lorem ipsum dolor sit amet, consectetur adipisicin...'),
(31, 2, 0, '2019-08-11 16:19:18', 'Side Rear View', 'product-26.jpg', 90, 'type', 'Lorem ipsum dolor sit amet, consectetur adipisicin...'),
(32, 7, 1, '2019-08-11 16:20:10', 'Music System', 'product-27.jpg', 140, 'type', 'Lorem ipsum dolor sit amet, consectetur adipisicin...'),
(33, 7, 3, '2019-08-11 16:20:57', 'Radio Music System', 'product-28.jpg', 56, 'Speaker', 'Lorem ipsum dolor sit amet, consectetur adipisicin...'),
(34, 7, 3, '2019-08-11 16:21:36', 'Radio Van System', 'product-29.jpg', 78, 'type', 'Lorem ipsum dolor sit amet, consectetur adipisicin...'),
(35, 6, 4, '2019-08-11 16:22:25', 'Van Brakes', 'product-30.jpg', 56, 'Locker', 'Lorem ipsum dolor sit amet, consectetur adipisicin...'),
(36, 4, 4, '2019-08-11 16:23:07', 'Side Rear Lights', 'product-31.jpg', 23, 'Locker', 'Lorem ipsum dolor sit amet, consectetur adipisicin...'),
(37, 6, 2, '2019-08-11 16:23:55', 'Brakes lite', 'product-32.jpg', 7, 'type', 'Lorem ipsum dolor sit amet, consectetur adipisicin...'),
(38, 5, 0, '2019-08-11 16:24:37', 'Roof Rack Van', 'product-33.jpg', 50, 'Locker', 'Lorem ipsum dolor sit amet, consectetur adipisicin...'),
(39, 7, 3, '2019-08-11 16:26:26', 'Vans Music Special System', 'product-34.jpg', 67, 'type', 'Lorem ipsum dolor sit amet, consectetur adipisicin...'),
(40, 3, 2, '2019-08-11 16:27:02', 'Battery Meter', 'product-35.jpg', 67, 'Locker', 'Lorem ipsum dolor sit amet, consectetur adipisicin...'),
(41, 6, 2, '2019-08-11 16:27:40', 'Bike Wire', 'product-36.jpg', 8, 'Lorem ipsum dolor sit amet, consectetur adipisicing elit.', 'Lorem ipsum dolor sit amet, consectetur adipisicin...'),
(42, 6, 4, '2019-08-11 16:28:27', 'Cars Wire', 'product-37.jpg', 7, 'Lorem ipsum dolor sit amet, consectetur adipisicin...', 'Lorem ipsum dolor sit amet, consectetur adipisicin...'),
(43, 2, 1, '2019-08-11 16:29:06', 'Car Front Glass', 'product-38.jpg', 250, 'Lorem ipsum dolor sit amet, consectetur adipisicing elit.', 'Lorem ipsum dolor sit amet, consectetur adipisicin...'),
(44, 2, 3, '2019-08-11 16:29:47', 'Back Glass', 'product-39.jpg', 250, 'type', 'Lorem ipsum dolor sit amet, consectetur adipisicin...'),
(45, 2, 3, '2019-08-11 16:29:47', 'Back Glass', 'product-39.jpg', 250, 'type', 'Lorem ipsum dolor sit amet, consectetur adipisicin...'),
(46, 8, 3, '2019-08-11 16:31:25', 'Fuel tank', 'product-40.jpg', 45, 'Bike', 'Lorem ipsum dolor sit amet, consectetur adipisicin...');

-- --------------------------------------------------------

--
-- Table structure for table `product_categories`
--

CREATE TABLE `product_categories` (
  `p_cat_id` int(10) NOT NULL,
  `p_cat_title` text NOT NULL,
  `p_cat_desc` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `product_categories`
--

INSERT INTO `product_categories` (`p_cat_id`, `p_cat_title`, `p_cat_desc`) VALUES
(1, 'Doors', 'A car door is a type of door, typically hinged, but sometimes attached by other mechanisms such as tracks, in front of an opening which is used for entering and exiting a vehicle. A vehicle door can be opened to provide access to the opening, or closed to secure it. These doors can be opened manually, or powered electronically. Powered doors are usually found on minivans, high-end cars, or modified cars. '),
(2, 'Glass', 'Car glass includes windscreens, side and rear windows, and glass panel roofs on a vehicle. Side windows can be either fixed or raised and lowered by depressing a button (power window) or switch or using a hand-turned crank. The power moonroof, a transparent, retractable sunroof, may be considered as an extension of the power window concept. Some vehicles include sun blinds for rear and rear side windows. The windshield of a car is appropriate for safety and protection of debris on the road. The majority of car glass is held in place by glass run channels, which also serve to contain any fragments of glass if the glass breaks.\r\n\r\nBack Glass also called rear window glass, rear windshield, or rear glass, is the piece of glass opposite the windshield in a vehicle. Back glass is made from tempered glass, also known as safety glass, and when broken will shatter into small, round pieces. This is different from a front windshield, which is made of laminated glass, glass which consists of two pieces of glass, with vinyl in between.\r\n\r\nThis piece of glass may contain heating coils or antennae, depending on the year, make, and model of the vehicle. When broken, a back glass may be replaced by a technician to the specifications of the original glass of the vehicle '),
(3, 'Battery', 'An automotive battery is a rechargeable battery that supplies electrical current to a motor vehicle. Its main purpose is to feed the starter, which starts the engine. Once the engine is running, power for the car\'s electrical systems is supplied by the alternator. '),
(4, 'Light', 'The lighting system of a motor vehicle consists of lighting and signalling devices mounted or integrated to the front, rear, sides, and in some cases the top of a motor vehicle. This lights the roadway for the driver and increases the visibility of the vehicle, allowing other drivers and pedestrians to see a vehicle\'s presence, position, size, direction of travel, and the driver\'s intentions regarding direction and speed of travel. Emergency vehicles usually carry distinctive lighting equipment to warn drivers and indicate priority of movement in traffic. '),
(5, 'Roof Rack', 'A roof rack is a set of bars secured to the roof of a motor car.It is used to carry bulky items such as luggage, bicycles, canoes, kayaks, skis, or various carriers and containers.\r\n\r\nThey allow users of an automobile to transport objects on the roof of the vehicle without reducing interior space for occupants, or the cargo area volume limits such as in the typical car\'s trunk design. These include car top weatherproof containers, some designed for specific cargo such as skis or luggage'),
(6, 'Brakes', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit.'),
(7, 'Speakers', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit.'),
(8, 'Tyre', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit.');

-- --------------------------------------------------------

--
-- Table structure for table `serviceprice`
--

CREATE TABLE `serviceprice` (
  `ID` int(10) NOT NULL,
  `s_id` int(10) NOT NULL,
  `ServicePrice` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `serviceprice`
--

INSERT INTO `serviceprice` (`ID`, `s_id`, `ServicePrice`) VALUES
(1, 3, 275),
(2, 7, 99),
(3, 6, 175),
(4, 4, 200),
(5, 5, 150);

-- --------------------------------------------------------

--
-- Table structure for table `services`
--

CREATE TABLE `services` (
  `ID` int(10) NOT NULL,
  `UserId` char(10) DEFAULT NULL,
  `ServiceType` varchar(255) DEFAULT NULL,
  `ServicePrice` int(10) NOT NULL,
  `ServiceNumber` char(10) NOT NULL,
  `Category` varchar(300) DEFAULT NULL,
  `VehicleName` varchar(255) DEFAULT NULL,
  `VehicleModel` varchar(255) DEFAULT NULL,
  `VehicleBrand` varchar(255) DEFAULT NULL,
  `VehicleRegno` varchar(255) DEFAULT NULL,
  `EngineType` varchar(255) NOT NULL,
  `ServiceTime` varchar(255) DEFAULT NULL,
  `DeliveryType` varchar(255) DEFAULT NULL,
  `PickupAddress` varchar(255) DEFAULT NULL,
  `ServicerequestDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `ServiceBy` varchar(255) NOT NULL,
  `ServiceCharge` int(10) NOT NULL,
  `PartsChange` int(10) NOT NULL,
  `OtherCharge` int(10) NOT NULL,
  `Description` text NOT NULL,
  `AdminRemark` varchar(255) NOT NULL,
  `AdminStatus` varchar(255) DEFAULT NULL,
  `AdminRemarkdate` timestamp(6) NULL DEFAULT NULL,
  `vehilelicence` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `services`
--

INSERT INTO `services` (`ID`, `UserId`, `ServiceType`, `ServicePrice`, `ServiceNumber`, `Category`, `VehicleName`, `VehicleModel`, `VehicleBrand`, `VehicleRegno`, `EngineType`, `ServiceTime`, `DeliveryType`, `PickupAddress`, `ServicerequestDate`, `ServiceBy`, `ServiceCharge`, `PartsChange`, `OtherCharge`, `Description`, `AdminRemark`, `AdminStatus`, `AdminRemarkdate`, `vehilelicence`) VALUES
(18, '12', 'Annual Service', 0, '845893776', 'Car', 'Volkwagen', '2015', 'Esteem', '6751590', '', '09:09', 'dropservice', '', '2019-08-10 19:30:11', '', 0, 0, 0, '', 'Testing Status', '', NULL, 0);

-- --------------------------------------------------------

--
-- Table structure for table `service_type`
--

CREATE TABLE `service_type` (
  `ID` int(11) NOT NULL,
  `ServiceType` varchar(255) NOT NULL,
  `ServicePrice` int(11) NOT NULL,
  `ServiceDesc` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `service_type`
--

INSERT INTO `service_type` (`ID`, `ServiceType`, `ServicePrice`, `ServiceDesc`) VALUES
(3, 'Annual Service', 275, 'Lorem ipsum dolor sit amet, consectetur adipisicing elit.'),
(4, 'Major Service', 175, 'Lorem ipsum dolor sit amet, consectetur adipisicing elit.'),
(5, 'Repair/Fault', 150, 'Lorem ipsum dolor sit amet, consectetur adipisicing elit.'),
(6, 'Major Repair', 200, 'Lorem ipsum dolor sit amet, consectetur adipisicing elit.'),
(7, 'Lubrication oil ', 99, 'Lorem ipsum dolor sit amet, consectetur adipisicing elit.');

-- --------------------------------------------------------

--
-- Table structure for table `slider`
--

CREATE TABLE `slider` (
  `slide_id` int(10) NOT NULL,
  `slide_name` varchar(255) NOT NULL,
  `slide_image` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `slider`
--

INSERT INTO `slider` (`slide_id`, `slide_name`, `slide_image`) VALUES
(1, 'Slide number 1', 'slide-1.jpg'),
(2, 'Slide number 2', 'slide-2.jpg'),
(3, 'Slide number 3', 'slide-3.jpg'),
(4, 'slide number 4', 'slide-4.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `vehicle`
--

CREATE TABLE `vehicle` (
  `vehicle_id` int(11) NOT NULL,
  `vehicle_name` varchar(20) NOT NULL,
  `license_no` varchar(100) NOT NULL,
  `engine_type` varchar(20) NOT NULL,
  `make` varchar(255) NOT NULL,
  `model_year` int(4) NOT NULL,
  `vehicle_type` varchar(20) NOT NULL,
  `customer_id_fk` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vehicle`
--

INSERT INTO `vehicle` (`vehicle_id`, `vehicle_name`, `license_no`, `engine_type`, `make`, `model_year`, `vehicle_type`, `customer_id_fk`) VALUES
(1, '2cv', 'AB211311A', 'petrol', 'alfa romeo', 2019, 'car', 1);

-- --------------------------------------------------------

--
-- Table structure for table `vehicle_type`
--

CREATE TABLE `vehicle_type` (
  `ID` int(10) NOT NULL,
  `vehicletype` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vehicle_type`
--

INSERT INTO `vehicle_type` (`ID`, `vehicletype`) VALUES
(1, 'Diesel'),
(2, 'Petrol'),
(3, 'Hybrid'),
(4, 'Electric');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indexes for table `booking`
--
ALTER TABLE `booking`
  ADD PRIMARY KEY (`booking_id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `enquiry`
--
ALTER TABLE `enquiry`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `enquirytype`
--
ALTER TABLE `enquirytype`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `mechanics`
--
ALTER TABLE `mechanics`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`product_id`);

--
-- Indexes for table `product_categories`
--
ALTER TABLE `product_categories`
  ADD PRIMARY KEY (`p_cat_id`);

--
-- Indexes for table `serviceprice`
--
ALTER TABLE `serviceprice`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `services`
--
ALTER TABLE `services`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `service_type`
--
ALTER TABLE `service_type`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `slider`
--
ALTER TABLE `slider`
  ADD PRIMARY KEY (`slide_id`);

--
-- Indexes for table `vehicle`
--
ALTER TABLE `vehicle`
  ADD PRIMARY KEY (`vehicle_id`),
  ADD KEY `customer_id_fk` (`customer_id_fk`);

--
-- Indexes for table `vehicle_type`
--
ALTER TABLE `vehicle_type`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `admin_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `booking`
--
ALTER TABLE `booking`
  MODIFY `booking_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `enquiry`
--
ALTER TABLE `enquiry`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `enquirytype`
--
ALTER TABLE `enquirytype`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `mechanics`
--
ALTER TABLE `mechanics`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `product_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT for table `product_categories`
--
ALTER TABLE `product_categories`
  MODIFY `p_cat_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `serviceprice`
--
ALTER TABLE `serviceprice`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `services`
--
ALTER TABLE `services`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `service_type`
--
ALTER TABLE `service_type`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `slider`
--
ALTER TABLE `slider`
  MODIFY `slide_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `vehicle`
--
ALTER TABLE `vehicle`
  MODIFY `vehicle_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `vehicle_type`
--
ALTER TABLE `vehicle_type`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `vehicle`
--
ALTER TABLE `vehicle`
  ADD CONSTRAINT `vehicle_ibfk_1` FOREIGN KEY (`customer_id_fk`) REFERENCES `customer` (`customer_id`) ON DELETE CASCADE ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
