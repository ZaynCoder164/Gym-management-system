
SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";

-- Database: `loginsystem`
--

-- --------------------------------------------------------


-- Table structure for table `Member`


CREATE TABLE `Member` (
  `fname` varchar(40) NOT NULL,
  `lname` varchar(40) NOT NULL,
  `email` varchar(40) NOT NULL,
  `contact` varchar(40) NOT NULL,
  `mem_id` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


-- Dumping data for table `Member`

INSERT INTO `Member` (`fname`, `lname`, `email`, `contact`, `mem_id`) VALUES
('Raj', 'kumar', 'kumar@gmail.com', '201', '101'),
('saurabh', 'kumar', 'kumar121@gmail.com', '202', '102'),
('surya', 'raj', 'raj1242gmail.com', '203', '101'),
('Raman', 'kumar', 'raman@gmail.com', '204', '103'),
('Aadarsh', 'thakur', 'thakur@gmail.com', '205', '103'),
('Rahul', 'kumar', 'rahul@gmail.com', '206', '102'),
('Sanjeev', 'Verma', 'verma12@gmail.com', '207', '103');

----------------------------------------------------------


-- Table structure for table `login`


CREATE TABLE `login` (
  `username` varchar(40) NOT NULL,
  `password` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


-- Dumping data for table `login`


INSERT INTO `login` (`username`, `password`) VALUES
('admin', 'pass');

----------------------------------------------------------


-- Table structure for table `Package`


CREATE TABLE `Package` (
  `Package_id` varchar(40) NOT NULL,
  `Package_name` varchar(40) NOT NULL,
  `Amount` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


-- Dumping data for table `Package`


INSERT INTO `Package` (`Package_id`, `Package_name`, `Amount`) VALUES
('121', 'preliminary', 800),
('122', 'Wt. gain', 1500),
('123', 'Wt.loss', 1000);


----------------------------------------------------------


-- Table structure for table `Payment`


CREATE TABLE `Payment` (
  `Payment_id` int(10) NOT NULL,
  `Amount` int(20) NOT NULL,
  `customer_id` varchar(20) NOT NULL,
  `payment_type` varchar(20) NOT NULL,
  `customer_name` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


-- Dumping data for table `Payment`


INSERT INTO `Payment` (`Payment_id`, `Amount`, `customer_id`, `payment_type`,`customer_name`) VALUES
(301, 1500, '201', 'cash'),
(302, 800, '202', 'card'),
(303, 1000, '203', 'cheque'),
(304, 1500, '204', 'cash');

----------------------------------------------------------


-- Table structure for table `Trainer`


CREATE TABLE `Trainer` (
  `Trainer_id` int(20) NOT NULL,
  `Name` varchar(40) NOT NULL,
  `phone` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


-- Dumping data for table `Trainer`


INSERT INTO `Trainer` (`Trainer_id`, `Name`, `phone`) VALUES
(101, 'Rakesh', 12365489),
(102, 'Ravi', 21365789),
(103, 'wasim', 123564789),
(104, 'Sameer', 12536987);


-- Indexes for dumped tables



-- Indexes for table `Member`

ALTER TABLE `Member`
  ADD PRIMARY KEY (`mem_id`);


-- Indexes for table `Package`

ALTER TABLE `Package`
  ADD PRIMARY KEY (`Package_id`);


-- Indexes for table `Payment`

ALTER TABLE `Payment`
  ADD PRIMARY KEY (`Payment_id`);


-- Indexes for table `Trainer`

ALTER TABLE `Trainer`
  ADD PRIMARY KEY (`Trainer_id`);
COMMIT;
