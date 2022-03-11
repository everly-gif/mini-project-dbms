

--
-- Database: `car_rentals`
--

-- --------------------------------------------------------

--
-- Table structure for table `longtrip`
--

DROP TABLE IF EXISTS `longtrip`;
CREATE TABLE IF NOT EXISTS `longtrip` (
  `id` int NOT NULL AUTO_INCREMENT,
  `Model` varchar(255) NOT NULL,
  `Price` int NOT NULL,
  `pic` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `Location` text NOT NULL,
  `Car_engine_size` varchar(255) NOT NULL,
  `No_of_airbags` int NOT NULL,
  `Brake_horsep` varchar(255) NOT NULL,
  `Seats` int NOT NULL,
  `Car_desc` text NOT NULL,
  `Owner_name` text NOT NULL,
  `Owner_email` varchar(255) NOT NULL,
  `Owner_mobile` varchar(10) NOT NULL,
  `Available` varchar(40) NOT NULL,
  PRIMARY KEY (`id`)
) ;

--
-- data for table `longtrip`
--

INSERT INTO `longtrip` (`id`, `Model`, `Price`, `pic`, `Location`, `Car_engine_size`, `No_of_airbags`, `Brake_horsep`, `Seats`, `Car_desc`, `Owner_name`, `Owner_email`, `Owner_mobile`, `Available`) VALUES
(1, 'Jeep Compass', 17500, 'car_images/local/Jeep_Compass-removebg-preview (2).png', 'Chennai', '1200cc', 4, '75 bhp @ 6200 rpm petrol', 4, 'A very good in condition Jeep for rent. I have this Jeep since 2019.It is well maintained, annually serviced and engines changed periodically.', 'Kedaranth', 'Kedaranth@example.com', '777xxxxxxx', 'Scheduled Round Trips Only'),
(2, 'Nexon\r\n', 35000, 'car_images/local/car3-removebg-preview.png ', 'Banglore ', '1200cc', 4, '75 bhp @ 6200 rpm diesel', 4, 'A very good in condition Jeep for rent. I have this Jeep since 2019.It is well maintained, annually serviced and engines changed periodically.', 'Kedaranth', 'Kedaranth@example.com', '777xxxxxxx', 'Scheduled Round Trips Only'),
(3, 'Toyata 12x\r\n\r\n\r\n', 28000, 'car_images/local/car2-removebg-preview.png', 'Chandigarh', '3000cc', 4, '90 bhp @ 4000 rpm petrol', 4, 'A very good in condition Jeep for rent. I have this Jeep since 2019.It is well maintained, annually serviced and engines changed periodically.', 'Kedaranth', 'Kedaranth@example.com', '777xxxxxxx', 'Scheduled Round Trips Only'),
(4, 'Hyundai 3421', 35000, 'car_images/local/car1-removebg-preview.png', 'Ooty', '2000c', 4, '75 bhp @ 6200 rpm petrol', 4, 'A very good in condition Jeep for rent. I have this Jeep since 2019.It is well maintained, annually serviced and engines changed periodically.', 'Kedaranth', 'Kedaranth@example.com', '777xxxxxxx', 'Scheduled Round Trips Only'),
(6, 'Mahindra XUV\r\n\r\n\r\n', 38500, 'car_images/local/car4-removebg-preview.png', 'chennai', '3000cc', 4, '150 bhp @ 3000 rpm diesel', 7, 'A very good in condition Jeep for rent. I have this Jeep since 2019.It is well maintained, annually serviced and engines changed periodically.', 'Agarwal', 'Agarwal@example.com', '777xxxxxxx', 'Scheduled Round Trips Only'),
(7, 'Volkswagen polo', 21000, 'car_images/local/polo-removebg-1-preview.png', 'Banglore', '1200cc', 4, '75 bhp @ 6200 rpm petrol', 4, 'A very good in condition Jeep for rent. I have this Jeep since 2019.It is well maintained, annually serviced and engines changed periodically.', 'Ajay', 'ajay@example.com', '222xxxxxxx', 'Scheduled Round Trips Only'),
(8, 'Maruthi swift\r\n', 14000, 'car_images/local/swift02.png', 'Chandigarh', '1197cc', 4, '83 bhp @ 6000 rpm petrol', 4, 'A very good in condition Jeep for rent. I have this Jeep since 2019.It is well maintained, annually serviced and engines changed periodically.', 'Sam', 'sam@example.com', '120xxxxxxx', 'Scheduled Round Trips Only'),
(9, 'Tata Nano', 7000, 'car_images/local/20130620055944_nanodazzle-removebg-preview.png', 'Chennai', '624cc', 0, '37 bhp @ 5500 rpm diesel', 4, 'A very good in condition Jeep for rent. I have this Jeep since 2019.It is well maintained, annually serviced and engines changed periodically.', 'shruthi', 'sruthi@example.com', '342xxxxxxx', 'Scheduled Round Trips Only'),
(13, 'Hyundai 3421', 35000, 'car_images/local/car1-removebg-preview.png', 'Kodaikanal', '2000c', 4, '75 bhp @ 6200 rpm petrol', 4, 'A very good in condition Jeep for rent. I have this Jeep since 2019.It is well maintained, annually serviced and engines changed periodically.', 'Kedaranth', 'Kedaranth@example.com', '777xxxxxxx', 'Scheduled Round Trips Only');

-- --------------------------------------------------------

--
-- Table structure for table `longtrip_bookings`
--

DROP TABLE IF EXISTS `longtrip_bookings`;
CREATE TABLE IF NOT EXISTS `longtrip_bookings` (
  `order_id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `name` text NOT NULL,
  `mobile` varchar(10) NOT NULL,
  `email` varchar(255) NOT NULL,
  `car_id` int NOT NULL,
  `from_d` date NOT NULL,
  `p_time` time NOT NULL,
  `address` text NOT NULL,
  `d_time` time NOT NULL,
  `to_d` date NOT NULL,
  `t_loc` text NOT NULL,
  `paid` varchar(1) NOT NULL,
  `delivered` varchar(1) NOT NULL,
  `pay_id` varchar(255) NOT NULL,
  `timestamp` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`order_id`)
) ;

--
--  data for table `longtrip_bookings`
--

INSERT INTO `longtrip_bookings` (`order_id`, `user_id`, `name`, `mobile`, `email`, `car_id`, `from_d`, `p_time`, `address`, `d_time`, `to_d`, `t_loc`, `paid`, `delivered`, `pay_id`, `timestamp`) VALUES
(8, 17, 'Raj', '9733737702', 'ccc@gmail.com', 1, '2021-05-18', '10:30:00', 'kesa bus stand, chennai', '18:00:00', '2021-05-24', 'goa', 'Y', 'N', 'pay_H56njdxnjcZvbW', '2021-04-30 16:31:51'),
(9, 18, 'Vivek', '7081710212', 'xxx@gmail.com', 7, '2021-05-04', '10:30:00', 'kamarajar street,banglore', '20:00:00', '2021-05-05', 'outside banglore, roadtrip to chennai', 'Y', 'N', 'pay_H62jHtJtfft0SI', '2021-05-03 01:11:43'),
(6, 15, 'Everly', '9361292006', 'lll@gmail.com', 1, '2021-05-03', '10:30:00', 'kesa bus stand, bangalore', '10:40:00', '2021-05-04', 'chennai', 'Y', 'N', 'pay_H50jo2DXDnuRN6', '2021-04-30 10:35:56'),
(7, 16, 'Suresh', '2222222222', 'uuu@gmail.com', 4, '2021-05-02', '10:30:00', 'kesa bus stand, chennai', '18:00:00', '2021-05-03', 'pondicherry', 'Y', 'N', 'pay_H53PmhjlSaOtlB', '2021-04-30 13:12:58'),
(10, 19, 'Vivek', '1234123421', 'zzz@gmail.com', 7, '2021-05-09', '10:30:00', 'kamarajar street,banglore', '20:00:00', '2021-05-11', 'roadtrip to chennai', 'Y', 'N', 'pay_H6B8J0gYJwx3aj', '2021-05-03 09:25:08'),
(11, 20, 'subatra', '3333333333', 'mmm@gmail.com', 2, '2021-05-17', '10:30:00', 'kamarajar street,banglore', '18:00:00', '2021-05-18', 'chennai', 'Y', 'N', 'pay_HAYHIwEnFh4vC2', '2021-05-14 10:38:59');

-- --------------------------------------------------------

--
-- Table structure for table `shortterm_cars`
--

DROP TABLE IF EXISTS `shortterm_cars`;
CREATE TABLE IF NOT EXISTS `shortterm_cars` (
  `id` int NOT NULL AUTO_INCREMENT,
  `Model` varchar(255) NOT NULL,
  `Price` int NOT NULL,
  `pic` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `Location` text NOT NULL,
  `Car_engine_size` varchar(255) NOT NULL,
  `No_of_airbags` int NOT NULL,
  `Brake_horsep` varchar(255) NOT NULL,
  `Seats` int NOT NULL,
  `Car_desc` text NOT NULL,
  `Owner_name` text NOT NULL,
  `Owner_email` varchar(255) NOT NULL,
  `Owner_mobile` varchar(10) NOT NULL,
  `Available` varchar(40) NOT NULL,
  PRIMARY KEY (`id`)
) ;

--
-- data for table `shortterm_cars`
--

INSERT INTO `shortterm_cars` (`id`, `Model`, `Price`, `pic`, `Location`, `Car_engine_size`, `No_of_airbags`, `Brake_horsep`, `Seats`, `Car_desc`, `Owner_name`, `Owner_email`, `Owner_mobile`, `Available`) VALUES
(1, 'Jeep Compass', 3000, 'car_images/local/Jeep_Compass-removebg-preview (2).png', 'Chennai', '1200cc', 4, '75 bhp @ 6200 rpm petrol', 4, 'A very good in condition Jeep for rent. I have this Jeep since 2019.It is well maintained, annually serviced and engines changed periodically.', 'Kedaranth', 'Kedaranth@example.com', '777xxxxxxx', 'Short term trips only'),
(2, 'Nexon', 5000, 'car_images/local/car3-removebg-preview.png', 'Banglore', '1200cc', 4, '55 bhp @ 2000 rpm petrol', 4, 'A very good in condition Jeep for rent. I have this Jeep since 2019.It is well maintained, annually serviced and engines changed periodically.', 'Vivek', 'vivek@example.com', '123xxxxxxx', 'Short-term trips only!'),
(3, 'Toyata 12x', 4000, 'car_images/local/car2-removebg-preview.png', 'Chandigarh', '3000cc', 4, '90 bhp @ 4000 rpm diesel', 4, 'A very good in condition Jeep for rent. I have this Jeep since 2019.It is well maintained, annually serviced and engines changed periodically.', 'Ramesh', 'Ramesh@example.com', '456xxxxxxx', 'Short-term trips only'),
(4, 'Hyundai 3421', 5000, 'car_images/local/car1-removebg-preview.png', 'Ooty', '2000cc', 4, '100 bhp @ 6400 rpm petrol', 4, 'A very good in condition Jeep for rent. I have this Jeep since 2019.It is well maintained, annually serviced and engines changed periodically.', 'Vishnu', 'Vishnu@example.com', '000xxxxxxx', 'Short-term trips only'),
(5, 'Hyundai 3421', 5000, 'car_images/local/car1-removebg-preview.png', 'Kodaikanal', '2000cc', 4, '90 bhp @ 6000 rpm diesel', 4, 'A very good in condition Jeep for rent. I have this Jeep since 2019.It is well maintained, annually serviced and engines changed periodically.', 'Ramya', 'ramya@example.com', '121xxxxxxx', 'Short-term trips'),
(6, 'Mahindra XUV', 5500, 'car_images/local/car4-removebg-preview.png', 'Chennai', '3000cc', 4, '150 bhp @ 3000 rpm diesel', 7, 'A very good in condition Jeep for rent. I have this Jeep since 2019.It is well maintained, annually serviced and engines changed periodically.', 'Agarwal', 'Agarwal@example.com', '987xxxxxxx', 'Short-term trips only'),
(7, 'Volkswagen polo', 3000, 'car_images/local/polo-removebg-1-preview.png', 'Banglore', '1200cc', 2, '75 bhp @ 6000 rpm petrol', 4, 'A very good in condition Jeep for rent. I have this Jeep since 2019.It is well maintained, annually serviced and engines changed periodically.', 'Ajay', 'ajay@example.com', '234xxxxxxx', 'Short-term trips only'),
(8, 'Maruthi swift', 2000, 'car_images/local/swift02.png', 'Chandigarh', '1197cc', 2, '83 bhp @ 6000 rpm petrol', 4, 'A very good in condition Jeep for rent. I have this Jeep since 2019.It is well maintained, annually serviced and engines changed periodically', 'Sam', 'sam@example.com', '120xxxxxxx', 'Short-term trips only'),
(9, 'Tata Nano', 1000, 'car_images/local/20130620055944_nanodazzle-removebg-preview.png', 'Chennai', '624cc', 0, '37 bhp @ 5500 rpm diesel', 4, 'A very good in condition Jeep for rent. I have this Jeep since 2019.It is well maintained, annually serviced and engines changed periodically', 'shruthi', 'sruthi@example.com', '342xxxxxxx', 'Short-term trips only');

-- --------------------------------------------------------

--
-- Table structure for table `shorttrip_bookings`
--

DROP TABLE IF EXISTS `shorttrip_bookings`;
CREATE TABLE IF NOT EXISTS `shorttrip_bookings` (
  `order_id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `name` text NOT NULL,
  `mobile` varchar(10) NOT NULL,
  `email` varchar(255) NOT NULL,
  `car_id` int NOT NULL,
  `b_date` date NOT NULL,
  `p_t` time NOT NULL,
  `address` text NOT NULL,
  `d_t` time NOT NULL,
  `travel` text NOT NULL,
  `paid` varchar(1) NOT NULL,
  `delivered` varchar(1) NOT NULL,
  `pay_id` varchar(255) NOT NULL,
  `timestamp` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`order_id`)
) ;

--
--  data for table `shorttrip_bookings`
--

INSERT INTO `shorttrip_bookings` (`order_id`, `user_id`, `name`, `mobile`, `email`, `car_id`, `b_date`, `p_t`, `address`, `d_t`, `travel`, `paid`, `delivered`, `pay_id`, `timestamp`) VALUES
(12, 15, 'Everly', '9361292006', 'ccc@gmail.com', 1, '2021-05-01', '10:30:00', 'kesavarthini bus stand', '21:00:00', 'within chennai', 'Y', 'N', 'pay_H505RxFhaTKxxx', '2021-04-30 09:57:46'),
(25, 19, 'Vivek', '1234123421', 'xxx@gmail.com', 1, '2021-05-19', '10:30:00', 'vadapalini bus stand', '20:00:00', 'within chennai,vandalur zoo', 'Y', 'N', 'pay_H6B6i1DaozEuZm', '2021-05-03 09:23:28'),
(22, 16, 'Suresh', '2222222222', 'lll@gmail.com', 1, '2021-05-04', '10:30:00', 'vadapalini bus stand', '20:00:00', 'within chennai', 'Y', 'N', 'pay_H5EVnnAyMMixMP', '2021-05-01 00:04:21'),
(23, 15, 'Everly', '9361292006', 'uuu@gmail.com', 6, '2021-05-03', '10:30:00', 'kesavarthini bus stand', '20:00:00', 'within chennai', 'Y', 'N', 'pay_H5Os2W5R7EaMUY', '2021-05-01 10:11:59'),
(24, 18, 'Vivek', '7081710212', 'mmm@gmail.com', 6, '2021-05-05', '10:30:00', 'vadapalini bus stand', '20:00:00', 'within chennai, vandalur zoo', 'Y', 'N', 'pay_H62ehenCvNE8Z3', '2021-05-03 01:07:20'),
(20, 16, 'Suresh', '2222222222', 'xxx@gmail.com', 1, '2021-05-03', '10:20:00', 'chennai', '10:30:00', 'jdfla', 'Y', 'N', 'pay_H53NmyajndaYSn', '2021-04-30 13:11:06'),
(26, 15, 'Everly', '9361292006', 'ttt@gmail.com', 9, '2021-05-18', '10:30:00', 'kesavarithini bus stand', '20:00:00', 'within chennai', 'Y', 'N', 'pay_H7Qr4NymHjLLwK', '2021-05-06 13:25:48'),
(27, 19, 'Vivek', '1234123421', 'ppp@gmail.com', 2, '2021-06-21', '10:30:00', 'sdka', '20:00:00', 'gduiwk', 'Y', 'N', 'pay_HITM1UXDTqdigB', '2021-06-03 11:02:28'),
(28, 19, 'Vivek', '1234123421', 'mmm@gmail.com', 9, '2021-06-21', '10:30:00', 'dwks', '20:00:00', 'dsjoad', 'Y', 'N', 'pay_HITlPQDMwnzz1T', '2021-06-03 11:26:38'),
(29, 19, 'Vivek', '1234123421', 'ddd@gmail.com', 9, '2021-06-22', '10:30:00', 'jdisk', '11:30:00', 'dhsiw', 'Y', 'N', 'pay_HIUxfmZVdxIR74', '2021-06-03 12:36:53'),
(31, 20, 'subatra', '3333333333', 'qqq@gmail.com', 3, '2021-08-24', '10:30:00', 'id', '10:30:00', 'jk', 'Y', 'N', 'pay_HnqLcWw6OG0eBi', '2021-08-21 17:40:45');

-- --------------------------------------------------------

--
-- Table structure for table `user_info`
--

DROP TABLE IF EXISTS `user_info`;
CREATE TABLE IF NOT EXISTS `user_info` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name_input` text NOT NULL,
  `email` varchar(50) NOT NULL,
  `password_input` varchar(15) NOT NULL,
  `license_number` varchar(13) NOT NULL,
  `expiry_date_input` varchar(20) NOT NULL,
  `license_copy` varchar(255) NOT NULL,
  `mobile_no` varchar(10) NOT NULL,
  PRIMARY KEY (`id`)
) ;

--
-- data in table `user_info`
--

INSERT INTO `user_info` (`id`, `name_input`, `email`, `password_input`, `license_number`, `expiry_date_input`, `license_copy`, `mobile_no`) VALUES
(20, 'subatra', 'ccc@gmail.com', '', 'WB14201100628', '2030-06', 'license-uploads/26-1620968709-DAA-PLA4-Lab Assignment (1).docx', '3333333333'),
(19, 'Vivek', 'xxx@gmail.com', '', 'MH14201100628', '2060-06', 'license-uploads/80-1620013861-11nano1.jpg', '1234123421'),
(18, 'Vivek', 'aaa@gmail.com', '', 'MH14201100628', '2060-07', 'license-uploads/58-1619984109-banner-1 (3).png', '7081710212'),
(17, 'Raj', 'bbb@gmail.com', '', 'WB14201100628', '2080-01', 'license-uploads/78-1619780334-ComponentDiagram1.png', '9733737702'),
(16, 'Suresh', 'ddd@gmail.com', '', 'TN14201100628', '2065-04', 'license-uploads/99-1619767644-banner (2).png', '2222222222'),
(15, 'Everly', 'eee@gmail.com', '', 'TN14201100628', '2051-04', 'license-uploads/37-1619755699-ActivityDiagram1.png', '9361292006');


