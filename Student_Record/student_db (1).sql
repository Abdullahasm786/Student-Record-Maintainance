-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 27, 2023 at 06:27 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.1.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `login`
--

-- --------------------------------------------------------

--
-- Table structure for table `activities`
--

CREATE TABLE `activities` (
  `S_id` int(11) NOT NULL,
  `Roll_no` int(8) NOT NULL,
  `event_name` int(11) NOT NULL,
  `event_place` varchar(30) NOT NULL,
  `event_date` date NOT NULL,
  `result` varchar(15) NOT NULL,
  `certificate` blob NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `activity`
--

CREATE TABLE `activity` (
  `event_name` varchar(20) NOT NULL,
  `event_place` varchar(30) NOT NULL,
  `event_date` varchar(10) NOT NULL,
  `result` varchar(15) NOT NULL,
  `file` blob NOT NULL,
  `roll_no` varchar(8) NOT NULL,
  `student_name` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `activity`
--

INSERT INTO `activity` (`event_name`, `event_place`, `event_date`, `result`, `file`, `roll_no`, `student_name`) VALUES
('quiz', 'CIT,COIMBATORE', '18/12/2022', 'p2', 0x61646d696e5f706167652e706e67, '22mcr001', 'Abdullah S'),
('paper', 'PSG,COIMBATORE', '28/12/2022', 'p1', 0x41494354455f524547495354524154494f4e2e706e67, '22mcr001', 'Abdullah S'),
('', '', '', '', 0x494d472d36336237313530346439666130312e35383137363733352e6a7067, '', ''),
('', '', '', '', 0x494d472d36336237313531363830303862332e34363237393236342e6a7067, '', ''),
('coding', 'KCT,COIMBATORE', '2022-12-25', '2nd prize', 0x61646d696e5f706167652e706e67, '22mcr002', 'Abhi'),
('coding', 'KCT,COIMBATORE', '2022-12-25', '2nd prize', '', '22mcr002', 'Abitha'),
('', '', '', '', 0x61646d696e5f706167652e706e67, '', ''),
('', '', '', '', 0x41494354455f524547495354524154494f4e2e706e67, '', ''),
('', '', '', '', 0x41494354455f524547495354524154494f4e2e706e67, '', ''),
('', '', '', '', 0x41494354455f524547495354524154494f4e2e706e67, '', ''),
('', '', '', '', 0x41494354455f524547495354524154494f4e2e706e67, '', ''),
('debugging', 'SKCET,COIMBATORE', '2022-12-28', '1st prize', '', '22mcr002', 'Gopika'),
('debugging', 'KCT,COIMBATORE', '2022-12-30', '2nd prize', '', '22mcr002', 'Gopika'),
('quiz', 'HICAS,COIMBATORE', '2022-12-31', '1st prize', '', '22mcr026', 'Gopika'),
('Hackathon', 'CIT,COIMBATORE', '2022-12-31', '1st prize', '', '22mcr009', 'Azeem'),
('coding', 'TCE,MADURAI', '2022-12-31', '2nd prize', 0x696d67312e6a7067, '22mcr026', 'Gopika'),
('quiz', 'TCE,MADURAI', '2023-01-01', 'participation', 0x7472616e73616374696f6e5f7363686564756c652e706e67, '22mcr002', 'Abitha'),
('coding', 'KCT,COIMBATORE', '2022-12-23', '2nd prize', 0x41494354455f524547495354524154494f4e2e706e67, '22mcr002', 'Gopika'),
('', '', '', '', '', '', ''),
('', '', '', '', '', '', ''),
('', '', '', '', '', '', ''),
('', '', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `final_sem`
--

CREATE TABLE `final_sem` (
  `roll_no` varchar(8) NOT NULL,
  `sem_no` int(11) NOT NULL,
  `sub_code` int(10) NOT NULL,
  `sub_name` varchar(40) NOT NULL,
  `credits` int(11) NOT NULL,
  `gpa` float NOT NULL,
  `grade` varchar(2) NOT NULL,
  `result` varchar(4) NOT NULL,
  `pass_year` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `grades`
--

CREATE TABLE `grades` (
  `roll_no` varchar(8) NOT NULL,
  `sem_no` int(11) NOT NULL,
  `sub_no` int(11) NOT NULL,
  `cat1_marks` int(11) DEFAULT NULL,
  `cat2_marks` int(11) DEFAULT NULL,
  `sem_marks` int(11) DEFAULT NULL,
  `total` int(11) DEFAULT NULL,
  `grade` varchar(2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `grades`
--

INSERT INTO `grades` (`roll_no`, `sem_no`, `sub_no`, `cat1_marks`, `cat2_marks`, `sem_marks`, `total`, `grade`) VALUES
('22mcr001', 1, 1, 31, 40, 92, 77, 'B+'),
('22mcr001', 1, 2, 30, 33, 90, 71, 'B+'),
('22mcr001', 1, 3, 34, 33, 95, 79, 'B+'),
('22mcr001', 1, 4, 32, 35, 94, 78, 'B+'),
('22mcr001', 1, 5, 35, 37, 91, 78, 'B+'),
('22mcr001', 1, 6, 38, 40, 90, 75, 'B+'),
('22mcr001', 1, 7, 35, 35, 88, 69, 'B'),
('22mcr001', 1, 8, 36, 36, 85, 72, 'B+'),
('22mcr001', 2, 1, 45, 52, 93, 78, 'B+'),
('22mcr001', 2, 2, 48, 55, 92, 75, 'B+'),
('22mcr001', 2, 3, 50, 53, 88, 79, 'B+'),
('22mcr001', 2, 4, 52, 54, 90, 74, 'B+'),
('22mcr001', 2, 5, 50, 55, 95, 78, 'B+'),
('22mcr001', 2, 6, 45, 48, 94, 75, 'B+'),
('22mcr001', 2, 7, 49, 43, 90, 69, 'B'),
('22mcr001', 2, 8, 50, 50, NULL, 100, 'O'),
('22mcr001', 2, 9, 52, 49, 87, 85, 'A'),
('22mcr001', 3, 1, 57, 48, 95, 78, 'B+'),
('22mcr001', 3, 2, 58, 56, 89, 75, 'B+'),
('22mcr001', 3, 3, 48, 52, 97, 79, 'B+'),
('22mcr001', 3, 4, 51, 49, 87, 70, 'B+'),
('22mcr001', 3, 5, 52, 58, 97, 72, 'B+'),
('22mcr001', 4, 1, 50, 50, 96, 81, 'A'),
('22mcr002', 1, 1, 39, 40, 95, 0, 'A'),
('22mcr002', 1, 2, 40, 34, 88, 0, 'B'),
('22mcr002', 1, 3, 38, 39, 97, 0, 'O'),
('22mcr002', 1, 4, 35, 36, 93, 0, 'A'),
('22mcr002', 1, 5, 37, 35, 92, 0, 'A'),
('22mcr002', 1, 6, 34, 36, 89, 0, 'B'),
('22mcr002', 1, 7, 38, 33, 92, 0, 'A'),
('22mcr002', 1, 8, 39, 37, 95, 0, 'O'),
('22mcr003', 1, 1, 31, 32, 83, 0, 'C'),
('22mcr003', 1, 2, 35, 37, 90, 0, 'A'),
('22mcr003', 1, 3, 35, 36, 90, 0, 'A'),
('22mcr003', 1, 4, 38, 39, 98, 0, 'O'),
('22mcr003', 1, 5, 37, 36, 95, 0, 'O'),
('22mcr003', 1, 6, 34, 37, 94, 0, 'A'),
('22mcr003', 1, 7, 36, 37, 95, 0, 'O'),
('22mcr003', 1, 8, 33, 36, 91, 0, 'A'),
('22mcr004', 1, 1, 50, 48, 90, 0, 'A'),
('22mcr004', 1, 2, 35, 48, 90, 0, 'A'),
('22mcr004', 1, 3, 44, 48, 90, 0, NULL),
('22mcr004', 1, 4, 50, 48, 90, 0, NULL),
('22mcr004', 1, 5, 50, 48, 90, 0, NULL),
('22mcr004', 1, 6, 50, 48, 90, 85, 'A'),
('22mcr004', 2, 1, 50, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `sem_marks`
--

CREATE TABLE `sem_marks` (
  `sem_no` int(11) NOT NULL,
  `roll_no` varchar(8) NOT NULL,
  `exam_no` int(11) NOT NULL,
  `sub1_mark` int(11) DEFAULT NULL,
  `sub2_mark` int(11) DEFAULT NULL,
  `sub3_mark` int(11) DEFAULT NULL,
  `sub4_mark` int(11) DEFAULT NULL,
  `sub5_mark` int(11) DEFAULT NULL,
  `elective1_mark` int(11) DEFAULT NULL,
  `elective2_mark` int(11) DEFAULT NULL,
  `elective3_mark` int(11) DEFAULT NULL,
  `elective4_mark` int(11) DEFAULT NULL,
  `lab1_mark` int(11) DEFAULT NULL,
  `lab2_mark` int(11) DEFAULT NULL,
  `lab3_mark` int(11) DEFAULT NULL,
  `lab4_mark` int(11) DEFAULT NULL,
  `mini_project1` int(11) DEFAULT NULL,
  `mini_project2` int(11) DEFAULT NULL,
  `grade` varchar(2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `sem_marks`
--

INSERT INTO `sem_marks` (`sem_no`, `roll_no`, `exam_no`, `sub1_mark`, `sub2_mark`, `sub3_mark`, `sub4_mark`, `sub5_mark`, `elective1_mark`, `elective2_mark`, `elective3_mark`, `elective4_mark`, `lab1_mark`, `lab2_mark`, `lab3_mark`, `lab4_mark`, `mini_project1`, `mini_project2`, `grade`) VALUES
(1, '22MCR001', 1, 30, 33, 31, 32, 35, NULL, NULL, NULL, NULL, 48, 50, NULL, NULL, 42, NULL, ''),
(1, '22MCR001', 2, 30, 32, 34, 33, 35, NULL, NULL, NULL, NULL, 45, 40, NULL, NULL, 40, NULL, ''),
(1, '22mcr001', 3, 40, 33, 40, 38, 42, NULL, NULL, NULL, NULL, 30, 40, NULL, NULL, 40, NULL, 'A');

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

CREATE TABLE `students` (
  `Photo` blob NOT NULL,
  `S_id` int(11) NOT NULL,
  `Roll_no` varchar(8) NOT NULL,
  `FirstName` varchar(20) NOT NULL,
  `MiddleName` varchar(10) DEFAULT NULL,
  `LastName` varchar(1) NOT NULL,
  `Gender` varchar(6) NOT NULL,
  `Age` int(2) NOT NULL,
  `Dob` date NOT NULL,
  `Blood_Group` varchar(3) NOT NULL,
  `Email` varchar(30) NOT NULL,
  `Mobile_no` bigint(10) NOT NULL,
  `Father_Name` varchar(20) NOT NULL,
  `Mother_Name` varchar(20) NOT NULL,
  `Occupation` varchar(30) NOT NULL,
  `Parent_no` bigint(10) NOT NULL,
  `Address` varchar(50) NOT NULL,
  `City` varchar(30) NOT NULL,
  `District` varchar(30) NOT NULL,
  `State` varchar(20) NOT NULL,
  `Country` varchar(10) NOT NULL,
  `Community` varchar(3) NOT NULL,
  `Sslc_mark` int(3) NOT NULL,
  `Sslc_school` varchar(30) NOT NULL,
  `Pass_year1` int(4) NOT NULL,
  `Hsc_mark` int(4) NOT NULL,
  `Hsc_school` varchar(30) NOT NULL,
  `Pass_year2` int(4) NOT NULL,
  `Ug_course` varchar(30) NOT NULL,
  `Ug_cgpa` float NOT NULL,
  `Ug_college` varchar(30) NOT NULL,
  `Ug_university` varchar(30) NOT NULL,
  `Ug_location` varchar(25) NOT NULL,
  `Ug_pass_year` int(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `students`
--

INSERT INTO `students` (`Photo`, `S_id`, `Roll_no`, `FirstName`, `MiddleName`, `LastName`, `Gender`, `Age`, `Dob`, `Blood_Group`, `Email`, `Mobile_no`, `Father_Name`, `Mother_Name`, `Occupation`, `Parent_no`, `Address`, `City`, `District`, `State`, `Country`, `Community`, `Sslc_mark`, `Sslc_school`, `Pass_year1`, `Hsc_mark`, `Hsc_school`, `Pass_year2`, `Ug_course`, `Ug_cgpa`, `Ug_college`, `Ug_university`, `Ug_location`, `Ug_pass_year`) VALUES
(0x696d67382e6a7067, 1, '22mcr001', 'Abdullah', '', 'S', 'Male', 21, '2001-08-10', 'B', 'abdullahs.22mca@kongu.edu', 9876543210, 'Mohammed', 'Fathima', 'Bussiness', 8796523156, '18,Gandhipuram,Coimbatore', 'Gandhipuram', 'Coimbatore', 'TamilNadu', 'India', 'MBC', 460, 'Kongu school management', 2017, 500, 'Kongu school management', 2019, 'BCA', 7.8, 'Kongu arts college', 'Bharathiyar university', 'Perundurai', 2022),
(0x696d67382e6a7067, 2, '22mcr002', 'Abitha', '', 'M', 'Female', 21, '2001-09-18', 'A', 'abitha@kongu.edu', 8762910235, 'Muthukumar', 'Saratha', 'Agriculture', 9823451772, '13,Avadi,Chennai', 'Avadi', 'Chennai', 'TamilNadu', 'India', 'BC', 450, 'kongu school management', 2017, 520, 'kongu school management', 2019, 'BCA', 8, 'Kongu engineering college', 'Anna university', 'Perundurai', 2022),
(0x696d67382e6a7067, 3, '22mcr003', 'Aravind', '', 'M', 'Male', 21, '2001-07-06', 'B', 'aravind@kongu.edu', 7623091458, 'Venkatesh', 'Eswari', 'Teacher', 7950034812, '7,Perundurai,Erode', 'Perundurai', 'Erode', 'TamilNadu', 'India', 'BC', 475, 'kongu school management', 2017, 530, 'kongu school management', 2019, 'Computer science', 8.8, 'Kongu engineering college', 'Anna university', 'Perundurai', 2022),
(0x696d67382e6a7067, 4, '22mcr004', 'Dheiva', '', 'G', 'Female', 22, '2000-04-24', 'AB+', 'dheiva@kongu.edu', 9994947811, 'Gandhi', 'Banumathi', 'Business', 9025429435, '17,Karaikudi,Sivaganga', 'Karaikudi', 'Sivaganga', 'TamilNadu', 'India', 'BC', 484, 'Govt girls hr sec school', 2017, 1152, 'Govt girls hr sec school', 2019, 'Computer science', 9.2, 'Thiagarajar college of enginee', 'Anna university', 'Madurai', 2021),
(0x696d67382e6a7067, 5, '22mcr005', 'Gandhi', '', 'P', 'Male', 21, '2001-10-20', 'AB+', 'gandhip@kongu.edu', 9243552910, 'Sakthi', 'Kamala', 'Agriculture', 7863626034, '10,Karaikudi,Sivaganga', 'Karaikudi', 'Sivaganga', 'TamilNadu', 'India', 'MBC', 450, 'kongu school management', 2017, 500, 'kongu school management', 2019, '', 8.5, 'Kongu engineering college', 'Anna university', 'Perundurai', 2022),
(0x696d67322e6a7067, 6, '22mcr006', 'Gopika', '', 'P', 'Female', 21, '2001-12-31', 'O+', 'gopikap@gmail.com', 8687677310, 'Ponnusamy', 'Leelavathi', 'Agriculture', 9787865453, '23,Periyamanali,Namakkal', 'Periyamanali', 'Namakkal', 'TamilNadu', 'India', 'BC', 466, 'kongu school management', 2017, 530, 'kongu school management', 2019, '', 8.1, 'Hindusthan arts college', 'Bharathiyar university', 'Coimbatore', 2022),
(0x61646d696e2e706e67, 7, '22mcr007', 'Dharani', '', 'K', 'Female', 21, '2001-10-20', 'A', 'dharani@gmail.com', 9076543235, 'Muthukumar', 'Lakshmi', 'Agriculture', 8765433789, 'Karaiku', 'Gandhipuram', 'Chennai', 'TamilNadu', 'India', 'MBC', 450, 'kongu school management', 2017, 500, 'kongu school management', 2019, '', 8.8, 'Kongu engineering college', 'Anna university', 'Madurai', 2021);

-- --------------------------------------------------------

--
-- Table structure for table `subjects`
--

CREATE TABLE `subjects` (
  `sem_no` int(11) NOT NULL,
  `sub_code` varchar(9) NOT NULL,
  `sub_name` varchar(50) NOT NULL,
  `sub_no` int(2) NOT NULL,
  `max_cats` int(11) DEFAULT NULL,
  `average_cat` int(11) DEFAULT NULL,
  `average_ese` int(11) DEFAULT NULL,
  `max_ese` int(11) DEFAULT NULL,
  `credits` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `subjects`
--

INSERT INTO `subjects` (`sem_no`, `sub_code`, `sub_name`, `sub_no`, `max_cats`, `average_cat`, `average_ese`, `max_ese`, `credits`) VALUES
(1, '22MCC11', 'Python Programming', 2, 60, 50, 50, 100, 4),
(1, '22MCL11', 'Advanced Data Structures and Algorithms Laboratory', 6, 60, 60, 40, 100, 2),
(1, '22MCL12', 'Advanced Database Technologies Laboratory', 7, 60, 60, 40, 100, 2),
(1, '22MCP11', 'Mini Project-I', 8, 60, 50, 50, 100, 2),
(1, '22MCT11', 'Mathematical Foundation of Computer Applications', 1, 60, 40, 60, 100, 4),
(1, '22MCT12', 'Advanced Data Structures and Algorithms', 3, 60, 40, 60, 100, 3),
(1, '22MCT13', 'Advanced Database Technologies', 4, 60, 40, 60, 100, 3),
(1, '22MCT14', 'Software Engineering Methodologies', 5, 60, 40, 60, 100, 4),
(2, '22GEL21', 'Professional Skills Training', 8, 100, 100, NULL, NULL, 3),
(2, '22MCC21', 'Internet Of Things', 4, 60, 50, 50, 100, 4),
(2, '22MCE21', 'Professional Elective-I', 5, 60, 40, 60, 100, 2),
(2, '22MCL21', 'Advanced Java Programming Laboratory', 6, 60, 60, 40, 100, 2),
(2, '22MCL22', 'Machine Learning Laboratory', 7, 60, 60, 40, 100, 2),
(2, '22MCP21', 'Mini Project-II', 9, 60, 50, 50, 100, 2),
(2, '22MCT21', 'Advanced Java Programming', 1, 60, 40, 60, 100, 3),
(2, '22MCT22', 'Machine Learning', 2, 60, 40, 60, 100, 3),
(2, '22MCT23', 'Data Communication Networks', 3, 60, 40, 60, 100, 4),
(3, '22MCL31', 'Cloud Computing Technologies Laboratory', 4, 60, 60, 40, 100, 2),
(3, '22MCL32', 'C# and ASP.NET Laboratory', 5, 60, 60, 40, 100, 2),
(3, '22MCT31', 'Cloud Computing Technologies', 1, 60, 40, 60, 100, 3),
(3, '22MCT32', 'C# and ASP.NET', 2, 60, 40, 60, 100, 3),
(3, '22MCT33', 'Data Science', 3, 60, 40, 60, 100, 4),
(3, '22mct34', 'artificial intelligence', 5, 0, 0, 60, 100, 2),
(4, '22MCP41', 'Project work', 1, 50, 50, 50, 100, 12);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `UserID` int(3) NOT NULL,
  `FirstName` varchar(15) NOT NULL,
  `MiddleName` varchar(10) NOT NULL,
  `LastName` varchar(20) NOT NULL,
  `UserName` varchar(35) NOT NULL,
  `Password` varchar(15) NOT NULL,
  `Role` varchar(8) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`UserID`, `FirstName`, `MiddleName`, `LastName`, `UserName`, `Password`, `Role`) VALUES
(17, 'Dharshini', '', 'M', 'dharshinim.22mca@kongu.edu', 'Dhars@22', '22mcr017'),
(57, 'Lalitha', 'Muthumari', 'G', 'lalithamuthumarig.22mca@kongu.edu', 'Lalli@22', '22mcr057'),
(101, 'Thamilselvan', '', 'R', 'admin@kongu.edu', 'Admin22@kec', 'Admin'),
(102, 'Chitra', '', 'K', 'chitrak.mca@kongu.edu', 'Chitra@kec', 'Staff'),
(104, 'Abdullah', '', 'S', 'abdullahs.22mca@kongu.edu', 'Abdul@22', '22mcr001'),
(105, 'Abitha', '', 'M', 'abitha@kongu.edu', 'Abi22@kec', '22mcr002'),
(106, 'Aravind', '', 'M', 'aravindm@kongu.edu', 'aravind@12', '22mcr003'),
(107, 'Dheiva', '', 'G', 'dheiva@kongu.edu', 'Dheiva#123', '22mcr004'),
(108, 'Gandhi', '', 'P', 'gandhip@kongu.edu', 'gandhip22@kec', '22mcr005'),
(109, 'kavin', '', 'K', 'kavin@kongu.edu', 'Kavin@123', '22mcr007'),
(110, 'Gopika', '', 'P', 'gopika@kongu.edu', 'gopi@#12', '22mcr006'),
(111, 'Kavya', '', 'TM', 'kavyatm.22mca@kongu.edu', 'Kavya#12', '22mcr008');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `activities`
--
ALTER TABLE `activities`
  ADD KEY `S_id` (`S_id`);

--
-- Indexes for table `grades`
--
ALTER TABLE `grades`
  ADD PRIMARY KEY (`roll_no`,`sem_no`,`sub_no`);

--
-- Indexes for table `sem_marks`
--
ALTER TABLE `sem_marks`
  ADD KEY `fk_sem` (`sem_no`);

--
-- Indexes for table `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`S_id`,`FirstName`,`LastName`),
  ADD UNIQUE KEY `unique` (`Roll_no`);

--
-- Indexes for table `subjects`
--
ALTER TABLE `subjects`
  ADD PRIMARY KEY (`sem_no`,`sub_code`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`UserID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `students`
--
ALTER TABLE `students`
  MODIFY `S_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `UserID` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=112;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `activities`
--
ALTER TABLE `activities`
  ADD CONSTRAINT `activities_ibfk_1` FOREIGN KEY (`S_id`) REFERENCES `students` (`S_id`);

--
-- Constraints for table `sem_marks`
--
ALTER TABLE `sem_marks`
  ADD CONSTRAINT `fk_sem` FOREIGN KEY (`sem_no`) REFERENCES `subjects` (`sem_no`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
