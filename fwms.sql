-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 09, 2023 at 07:45 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.0.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `fwms`
--

-- --------------------------------------------------------

--
-- Table structure for table `delivery_boy`
--

CREATE TABLE `delivery_boy` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `password` varchar(10) NOT NULL,
  `mobile` varchar(10) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `added_on` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `delivery_boy`
--

INSERT INTO `delivery_boy` (`id`, `name`, `password`, `mobile`, `status`, `added_on`) VALUES
(1, 'siva', '1234', '9442172161', 1, '2023-04-06'),
(2, 'Amrit', '1234', '9352657823', 1, '2023-04-06');

-- --------------------------------------------------------

--
-- Table structure for table `order_detail`
--

CREATE TABLE `order_detail` (
  `id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `dish_details_id` int(11) NOT NULL,
  `price` float NOT NULL,
  `qty` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `order_master`
--

CREATE TABLE `order_master` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `mobile` varchar(50) NOT NULL,
  `address` text NOT NULL,
  `total_price` float NOT NULL,
  `coupon_code` varchar(20) NOT NULL,
  `final_price` float NOT NULL,
  `zipcode` varchar(10) NOT NULL,
  `delivery_boy_id` int(11) NOT NULL,
  `payment_status` varchar(20) NOT NULL,
  `payment_type` varchar(10) NOT NULL,
  `payment_id` varchar(100) NOT NULL,
  `order_status` int(11) NOT NULL,
  `added_on` datetime NOT NULL,
  `delivered_on` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `order_status`
--

CREATE TABLE `order_status` (
  `id` int(11) NOT NULL,
  `order_status` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `order_status`
--

INSERT INTO `order_status` (`id`, `order_status`) VALUES
(1, 'Pending'),
(2, 'Cooking '),
(3, 'On the Way'),
(4, 'Delivered'),
(5, 'Cancel');

-- --------------------------------------------------------

--
-- Table structure for table `tbladmin`
--

CREATE TABLE `tbladmin` (
  `ID` int(10) NOT NULL,
  `AdminName` varchar(120) DEFAULT NULL,
  `UserName` varchar(120) DEFAULT NULL,
  `MobileNumber` bigint(10) DEFAULT NULL,
  `Email` varchar(120) DEFAULT NULL,
  `Password` varchar(120) DEFAULT NULL,
  `AdminRegdate` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbladmin`
--

INSERT INTO `tbladmin` (`ID`, `AdminName`, `UserName`, `MobileNumber`, `Email`, `Password`, `AdminRegdate`) VALUES
(1, 'Admin', 'admin', 8989898989, 'admin@gmail.com', 'f925916e2754e5e03f75dd58a5733251', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tblcity`
--

CREATE TABLE `tblcity` (
  `ID` int(10) NOT NULL,
  `StateID` int(10) DEFAULT NULL,
  `City` varchar(120) DEFAULT NULL,
  `CreationDate` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblcity`
--

INSERT INTO `tblcity` (`ID`, `StateID`, `City`, `CreationDate`) VALUES
(3, 3, 'Allahabad', '2019-05-07 08:41:08'),
(4, 3, 'Aligarh', '2019-05-07 08:41:20'),
(5, 3, 'Lucknow', '2019-05-07 08:41:28'),
(6, 2, 'Jaipur', '2019-05-07 08:42:16'),
(7, 8, 'Gangtok', '2019-05-07 08:43:10'),
(8, 8, 'Peeling', '2019-05-07 08:43:25'),
(9, 8, 'Namchi', '2019-05-07 08:43:38'),
(10, 8, 'Ravangla', '2019-05-07 08:43:59'),
(11, 8, 'Mangan', '2019-05-07 08:44:16'),
(12, 2, 'Bhopal', '2019-05-07 08:44:45'),
(13, 2, 'Indore', '2019-05-07 08:44:57'),
(14, 2, 'Indore', '2019-05-07 08:45:10'),
(15, 11, 'Chennai', '2019-06-18 18:15:10'),
(16, 4, 'Visakhapatnam', '2021-11-29 05:11:26'),
(17, 3, 'Noida', '2022-01-22 10:09:48'),
(18, 12, 'Amritsar', '2022-01-23 06:32:58'),
(19, 11, 'Coimbatore', '2023-04-04 15:20:44'),
(20, 11, 'Tiruchirappalli', '2023-04-04 15:20:55'),
(21, 11, 'Madurai', '2023-04-04 15:21:02'),
(22, 13, 'Pondicherry', '2023-04-04 16:13:47'),
(23, 13, 'Karaikal', '2023-04-04 16:13:57'),
(24, 13, 'Mahe', '2023-04-04 16:14:05'),
(25, 13, 'Yanam', '2023-04-04 16:14:13');

-- --------------------------------------------------------

--
-- Table structure for table `tblcontact`
--

CREATE TABLE `tblcontact` (
  `ID` int(10) NOT NULL,
  `OrgName` varchar(200) DEFAULT NULL,
  `OrgType` varchar(40) NOT NULL,
  `OrgAddress` varchar(50) NOT NULL,
  `NgoState` varchar(30) NOT NULL,
  `NgoCity` varchar(50) NOT NULL,
  `LastName` varchar(200) DEFAULT NULL,
  `Email` varchar(200) DEFAULT NULL,
  `Phone` bigint(10) DEFAULT NULL,
  `Message` mediumtext DEFAULT NULL,
  `EnquiryDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `IsRead` int(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tblcontact`
--

INSERT INTO `tblcontact` (`ID`, `OrgName`, `OrgType`, `OrgAddress`, `NgoState`, `NgoCity`, `LastName`, `Email`, `Phone`, `Message`, `EnquiryDate`, `IsRead`) VALUES
(1, 'Raj', '', '', '', '', 'Kumar', 'raj@gmail.com', 9879879879, 'Part time job wanted', '2021-11-01 04:53:55', 1),
(2, 'Anuj', '', '', '', '', 'S', 'as@gmail.com', 1234567890, 'test', '2021-11-09 17:42:29', 1),
(3, 'Deva', '', '', '', '', 'S', 'dev@gmail.com', 7977897978, 'yuiyuiyuiueyfiurbyv', '2021-12-08 12:02:22', 1),
(4, 'Rithu', '', '', '', '', 'A', 'rithu@gmail.com', 1234567789, 'dsafsd', '2022-01-23 06:34:03', 1),
(5, 'ABC Orphanage', '', '', '', '', 'Sivanandam S', 'abc@gmail.com', 7904448347, 'orphanage', '2023-03-29 13:40:37', 1),
(8, 'P Q R  NGO ', 'Mentally Retarded Home', 'Pallavaram, Chennai', 'Tamilnadu', 'Chennai', 'Vargeesh', 'pqr@gmail.com', 918765432, 'MR child care centre', '2023-03-30 17:41:30', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tbldonor`
--

CREATE TABLE `tbldonor` (
  `ID` int(10) NOT NULL,
  `FullName` varchar(200) DEFAULT NULL,
  `Email` varchar(200) DEFAULT NULL,
  `MobileNumber` bigint(10) DEFAULT NULL,
  `Password` varchar(120) DEFAULT NULL,
  `RegDate` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbldonor`
--

INSERT INTO `tbldonor` (`ID`, `FullName`, `Email`, `MobileNumber`, `Password`, `RegDate`) VALUES
(1, 'Rahul Singh', 'guru@gmail.com', 9898989898, '202cb962ac59075b964b07152d234b70', '2021-11-29 05:12:21'),
(2, 'Khusbu', 'hj@gmail.com', 8989898988, '202cb962ac59075b964b07152d234b70', '2021-11-29 05:12:21'),
(3, 'John Doe', 'johndoe@gmail.com', 1234567890, 'f925916e2754e5e03f75dd58a5733251', '2021-11-29 05:12:21'),
(4, 'Anuj Kumar', 'anuj@gmail.com', 4877799797, '202cb962ac59075b964b07152d234b70', '2021-11-29 05:12:21'),
(5, 'Rahul kumar Singh', 'rahul@gmail.com', 1236547899, 'f925916e2754e5e03f75dd58a5733251', '2022-01-23 06:25:11'),
(6, 'Buvi', 'buvi@gmail.com', 7904448347, 'f925916e2754e5e03f75dd58a5733251', '2023-03-29 14:23:20');

-- --------------------------------------------------------

--
-- Table structure for table `tblfood`
--

CREATE TABLE `tblfood` (
  `ID` int(10) NOT NULL,
  `DonorID` int(10) DEFAULT NULL,
  `foodId` int(10) DEFAULT NULL,
  `FoodItems` mediumtext DEFAULT NULL,
  `StateName` varchar(200) DEFAULT NULL,
  `CityName` varchar(200) DEFAULT NULL,
  `Description` mediumtext DEFAULT NULL,
  `Quantity` int(11) NOT NULL,
  `PickupDate` varchar(200) DEFAULT NULL,
  `PickupAddress` mediumtext DEFAULT NULL,
  `ContactPerson` varchar(200) DEFAULT NULL,
  `CPMobNumber` bigint(10) DEFAULT NULL,
  `Image` varchar(200) DEFAULT NULL,
  `CreationDate` timestamp NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tblfood`
--

INSERT INTO `tblfood` (`ID`, `DonorID`, `foodId`, `FoodItems`, `StateName`, `CityName`, `Description`, `Quantity`, `PickupDate`, `PickupAddress`, `ContactPerson`, `CPMobNumber`, `Image`, `CreationDate`, `UpdationDate`) VALUES
(6, 3, 780470633, 'Bread,Rice,briyani', 'Tamilnadu', 'Chennai', 'fresh hygienic', 218, '2023-03-31', 'D31 HIG Flats', 'RAM', 9779979090, '26d52ca6f7339f4598f6927f7e5232a9.jpg', '2023-03-27 05:41:43', NULL),
(7, 3, 972337615, 'Roti dal', 'Punjab', 'Amritsar', 'good healthy', 250, '2023-04-01', '20 Suriya Gandhi Nagar', 'Seetha', 8907897654, 'e715a8602b8251bed3c0debbcb98ed28.jpg', '2023-03-27 08:02:09', NULL),
(8, 3, 115768153, 'Full meals,payasam', 'Punjab', 'Amritsar', 'healthy , tasty and also hygienic', 250, '2023-04-09', 'MARIYAM NAGAR, PUNJAB', 'Nandhu', 9856432190, 'aa263552dd890f79e18e36e370c05f59.jpg', '2023-03-27 09:32:13', NULL),
(9, 3, 358602105, 'Bread,Rice', 'Tamilnadu', 'Chennai', 'dg', 600, '2023-04-05', 'errg', 'RAM', 9779979090, 'a3943fef404dddd4e4af66024ec9f382.jpg', '2023-03-27 09:59:27', NULL),
(10, 3, 258195619, 'Bread,Rice', 'Tamilnadu', 'Chennai', 'gth', 250, '2023-04-04', 'yui8', 'fefef', 4099999999, 'efb69979fb4f3f70e8f4ab25c22a86b6.jpg', '2023-03-29 12:31:08', NULL),
(11, 3, 332527483, 'Bread,Rice', 'Tamilnadu', 'Chennai', 'rgrr', 250, '2023-03-30', 'ytm', 'lujku', 4099999999, 'f3b7cceb00ea8cc78ef2a58037908499.jpg', '2023-03-29 13:48:29', NULL),
(12, 6, 462372409, 'Bread,Rice', 'Tamilnadu', 'Chennai', 'hjgmf', 250, '2023-04-07', 'f,gkk', 'fef', 8907897654, '1be6fa4aae6bc1fefa12e0cee87c22a7.jpg', '2023-03-29 14:24:48', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tblfoodrequests`
--

CREATE TABLE `tblfoodrequests` (
  `id` int(11) NOT NULL,
  `requestNumber` bigint(12) DEFAULT NULL,
  `foodId` int(1) DEFAULT NULL,
  `fullName` varchar(150) DEFAULT NULL,
  `mobileNumber` bigint(12) DEFAULT NULL,
  `message` mediumtext DEFAULT NULL,
  `requestDate` timestamp NULL DEFAULT current_timestamp(),
  `status` varchar(120) DEFAULT NULL,
  `donorRemark` mediumtext DEFAULT NULL,
  `requestCompletionDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tblfoodrequests`
--

INSERT INTO `tblfoodrequests` (`id`, `requestNumber`, `foodId`, `fullName`, `mobileNumber`, `message`, `requestDate`, `status`, `donorRemark`, `requestCompletionDate`) VALUES
(1, 711929393, 6, 'siva', 9087678908, 'xyz', '2023-03-27 08:24:26', 'Food Take Away/ Request Completed', 'xyz', '2023-03-27 08:30:05'),
(5, 769218898, 7, 'susi', 6789089078, 'gfd', '2023-03-27 09:06:40', 'Food Take Away/ Request Completed', 'collected by ngo', '2023-03-27 09:10:33'),
(6, 658664342, 8, 'gayu', 9087678908, 'bn', '2023-03-27 09:33:14', 'Request Rejected', 'user dont need food', '2023-03-27 09:36:54'),
(7, 777217496, 9, 'DHARSHINI', 7904448347, 'dwed', '2023-03-27 10:00:53', 'Food Take Away/ Request Completed', 'rg', '2023-03-27 10:09:25'),
(8, 838561197, 10, 'siva', 9087678908, 'sv', '2023-03-29 12:35:34', 'Request Rejected', 'fhh', '2023-03-29 12:38:35'),
(9, 669394363, 8, '', 7904448347, '', '2023-03-29 17:13:58', NULL, NULL, NULL),
(10, 650282801, 10, '', 7904448347, '', '2023-03-29 17:39:57', NULL, NULL, NULL),
(11, 303243771, 10, '', 0, '', '2023-04-04 18:07:36', NULL, NULL, NULL),
(12, 441923976, 10, '', 0, '', '2023-04-04 18:17:14', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tblpages`
--

CREATE TABLE `tblpages` (
  `ID` int(11) NOT NULL,
  `PageType` varchar(200) DEFAULT NULL,
  `PageTitle` mediumtext DEFAULT NULL,
  `PageDescription` mediumtext DEFAULT NULL,
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblpages`
--

INSERT INTO `tblpages` (`ID`, `PageType`, `PageTitle`, `PageDescription`, `UpdationDate`) VALUES
(1, 'aboutus', 'About Us', '                                <div style=\"text-align: center;\"><b><font size=\"6\">Welcome to Food Waste Management System</font></b></div><div style=\"text-align: left;\"><br></div><div style=\"text-align: left;\"><p class=\"bodytext\" style=\"margin-bottom: 10px; color: rgb(33, 37, 41); line-height: 1.5; font-family: \" open=\"\" sans\",=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\"><span style=\"font-weight: 700;\">Food waste&nbsp;</span>refers to the decrease in the quantity or quality of food resulting from decisions and actions by retailers, food service providers and consumers. &nbsp;Food is wasted in many ways:</p><ul style=\"margin-bottom: 10px; padding-left: 1.5em; color: rgb(33, 37, 41); font-family: \" open=\"\" sans\",=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\"><li style=\"margin-bottom: 6px; position: relative; padding-right: 15px; line-height: 1.5;\">Fresh produce that deviates from what is considered optimal, for example in terms of shape, size and color, is often removed from the supply chain during sorting operations.</li><li style=\"margin-bottom: 6px; position: relative; padding-right: 15px; line-height: 1.5;\">Foods that are close to, at or beyond the expiry date are often discarded by retailers and consumers.</li><li style=\"margin-bottom: 6px; position: relative; padding-right: 15px; line-height: 1.5;\">Large quantities of wholesome edible food are often unused or left over and discarded from household kitchens and eating establishments.</li></ul><p class=\"bodytext\" style=\"margin-bottom: 10px; color: rgb(33, 37, 41); line-height: 1.5; font-family: \" open=\"\" sans\",=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\">Less food loss and waste would lead to more efficient land use and better water resource management with positive impacts on climate change and livelihoods.</p></div>', '2023-03-27 08:06:01'),
(2, 'contactus', 'Contact Us', '<b>Food Waste Management System</b><div><b>Contact Number:</b>+91-7904448347</div><div><b>email: </b>info@gmail.com</div><div><b>Address : </b>XYZ street ABC</div>', '2023-03-27 05:27:40');

-- --------------------------------------------------------

--
-- Table structure for table `tblstate`
--

CREATE TABLE `tblstate` (
  `ID` int(10) NOT NULL,
  `StateName` varchar(120) DEFAULT NULL,
  `RegState` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblstate`
--

INSERT INTO `tblstate` (`ID`, `StateName`, `RegState`) VALUES
(3, 'Uttar Pradesh', '2019-05-07 07:07:21'),
(4, 'Andra Pradesh', '2019-05-07 07:07:31'),
(5, 'Delhi/NCR', '2019-05-07 07:07:39'),
(6, 'Kerala', '2019-05-07 07:07:58'),
(7, 'Arunachal Pradesh', '2019-05-07 07:08:12'),
(8, 'Sikkim', '2019-05-07 07:08:37'),
(9, 'Maharastra', '2019-05-07 07:08:49'),
(10, 'Gujrat', '2019-05-07 07:09:16'),
(11, 'Tamilnadu', '2019-06-18 18:14:43'),
(12, 'Punjab', '2022-01-23 06:32:34'),
(13, 'Puducherry', '2023-04-04 16:12:59');

-- --------------------------------------------------------

--
-- Table structure for table `volunteer`
--

CREATE TABLE `volunteer` (
  `Vname` varchar(30) NOT NULL,
  `Vaddress` varchar(50) NOT NULL,
  `Vcity` varchar(20) NOT NULL,
  `Vstate` varchar(20) NOT NULL,
  `Vmobile` varchar(10) NOT NULL,
  `VactiveStatus` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `volunteer`
--

INSERT INTO `volunteer` (`Vname`, `Vaddress`, `Vcity`, `Vstate`, `Vmobile`, `VactiveStatus`) VALUES
('Volunteer name-1', 'Volunteer address -1', '', 'Tamilnadu', '7904448347', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `delivery_boy`
--
ALTER TABLE `delivery_boy`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_detail`
--
ALTER TABLE `order_detail`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_master`
--
ALTER TABLE `order_master`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_status`
--
ALTER TABLE `order_status`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbladmin`
--
ALTER TABLE `tbladmin`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblcity`
--
ALTER TABLE `tblcity`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblcontact`
--
ALTER TABLE `tblcontact`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tbldonor`
--
ALTER TABLE `tbldonor`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblfood`
--
ALTER TABLE `tblfood`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblfoodrequests`
--
ALTER TABLE `tblfoodrequests`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblpages`
--
ALTER TABLE `tblpages`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblstate`
--
ALTER TABLE `tblstate`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `delivery_boy`
--
ALTER TABLE `delivery_boy`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `order_detail`
--
ALTER TABLE `order_detail`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `order_master`
--
ALTER TABLE `order_master`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `order_status`
--
ALTER TABLE `order_status`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tbladmin`
--
ALTER TABLE `tbladmin`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tblcity`
--
ALTER TABLE `tblcity`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `tblcontact`
--
ALTER TABLE `tblcontact`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `tbldonor`
--
ALTER TABLE `tbldonor`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tblfood`
--
ALTER TABLE `tblfood`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `tblfoodrequests`
--
ALTER TABLE `tblfoodrequests`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `tblpages`
--
ALTER TABLE `tblpages`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tblstate`
--
ALTER TABLE `tblstate`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
