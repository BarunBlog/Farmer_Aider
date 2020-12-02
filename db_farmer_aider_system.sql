-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Sep 09, 2019 at 08:25 AM
-- Server version: 5.7.19
-- PHP Version: 5.6.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_farmer_aider_system`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_all_users`
--

DROP TABLE IF EXISTS `tbl_all_users`;
CREATE TABLE IF NOT EXISTS `tbl_all_users` (
  `User_Id` int(200) NOT NULL AUTO_INCREMENT,
  `User_Name` text NOT NULL,
  `Email_Address` text NOT NULL,
  `Password` text NOT NULL,
  `Type_Of_Account` varchar(100) NOT NULL,
  `Current_Address` text NOT NULL,
  PRIMARY KEY (`User_Id`)
) ENGINE=MyISAM AUTO_INCREMENT=43 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_all_users`
--

INSERT INTO `tbl_all_users` (`User_Id`, `User_Name`, `Email_Address`, `Password`, `Type_Of_Account`, `Current_Address`) VALUES
(6, 'Barun', 'barun@gmail.com', '$2b$10$cp5I1UKameV4sSzr8HJdLefIU2FY4/vTY2.yF2otTyW4p2b5cznVy', 'Specialist', 'Lamabazar, Sylhet'),
(2, 'Partho', 'partho@gmail.com', '$2b$10$.EYtRzhe.vlOLZhT5XXy.e5bqRKgXfM9dNt6N8uckoML6ombxjmK2', 'User', 'Sylhet'),
(3, '_Barun', '_barun@gmail.com', '$2b$10$9TX/WMGFlrcRkWy0IaXKYOPOs9uUh9NKW4Ai.Jf2/O77rG7K5V266', 'User', 'Sylhet'),
(4, 'Bonhyee', 'bonhyee@gmail.com', '$2b$10$/uHRcxfsYElUHT3QB6v3suFZm63Kf8qFNsFxeu01Cq3nBi36OPzWi', 'Specialist', 'Lamabazar'),
(5, 'Monika', 'monika@gmail.com', '$2b$10$/V6y7BytqirnXlmwykbkSewXg3Kmj42wGLiCzS2MtRDWXIimebY1q', 'User', 'Gazipur'),
(7, 'Peter', 'peter4564@gmail.com', '$2b$10$fX/jF4nX.q.TqXoTt/.uU.Ff364sMxLsxLluMeRka.3ajtIz3WrKC', 'Specialist', 'london'),
(16, 'AdminBarun', 'adminbarun@gmail.com', '$2b$10$qnM8nOqkrL7kiI9qXHtv.uMIId1sHv3YoLJ6Mky82rtczNbSGHpUK', 'Admin', 'Lamabazar, Sylhet'),
(17, 'John', 'john@gmail.com', '$2b$10$bzGApNR89ZDXLELVKqJLm.CTGHjF1gDxOi8yTGgWjUYLZAdWoZPj6', 'User', 'Norway'),
(19, 'Shanon', 'shanon@gmail.com', '$2b$10$hdD/y88.56XtH2Aa6JzNxOeHWrZz4wSVzI4XCl80xtQwJHW1VwgsO', 'User', 'Manchester'),
(21, 'Stoinis', 'stoinis@gmail.com', '$2b$10$FgtoV57SR8vK9j.8iDr.x.M1QxZHNguuPQ.OgZ2ptFsAigsj.q0A2', 'Specialist', 'Melbourne'),
(25, 'BarunBhattacharjee', 'barunb@gmail.com', '$2b$10$Kyuv6ihJA.Oc75Rinfg4Hu5i/TpFX/Ur23A8l2pjidTm2oHZSkl1C', 'User', 'Mirzajangle, Sylhet'),
(24, 'johnny', 'johnny@gmail.com', '$2b$10$in3XEj.VcYGSsruA9s6pgut8zZlDuSqyLJto6nYNDAOr4eGnSItiK', 'Specialist', 'Harare');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_answer_bank`
--

DROP TABLE IF EXISTS `tbl_answer_bank`;
CREATE TABLE IF NOT EXISTS `tbl_answer_bank` (
  `Answer_Id` int(150) NOT NULL AUTO_INCREMENT,
  `Question_Id` int(150) NOT NULL,
  `Specialist_Name` text NOT NULL,
  `Answer` text NOT NULL,
  PRIMARY KEY (`Answer_Id`)
) ENGINE=MyISAM AUTO_INCREMENT=31 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_answer_bank`
--

INSERT INTO `tbl_answer_bank` (`Answer_Id`, `Question_Id`, `Specialist_Name`, `Answer`) VALUES
(26, 1, 'Barun', 'You can use the type of plants growing in an area to estimate soil quality. I think you can get some data for this at the agricultural department where you live.'),
(27, 3, 'Barun', 'In practice you really don\'t want to plant a field that is even close to capacity. Doing so will result in ruts, soil compaction, breakdown of soil structure and a large increase in fuel consumption.'),
(28, 4, 'johnny', 'Soft cheeses such as cream cheese, cottage cheese, shredded cheeses, and goat cheese must be refrigerated for safety.'),
(29, 4, 'Barun', 'As a general rule, hard cheeses such as cheddar, processed cheeses (American), and both block and grated Parmesan do not require refrigeration for safety, but they will last longer if kept refrigerated.'),
(30, 5, 'Barun', 'Plant Early, Plant Effectively, Practice Seasonal Soil Rotation, Know The Yield Potential, Always Scout Your Fields,  Ensure Proper Water Drainage, Test Your SoilUtilize Fertilizers');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_loan`
--

DROP TABLE IF EXISTS `tbl_loan`;
CREATE TABLE IF NOT EXISTS `tbl_loan` (
  `Loan_No` int(150) NOT NULL AUTO_INCREMENT,
  `User_Id` int(200) NOT NULL,
  `User_Name` text NOT NULL,
  `Loan_Amount` text NOT NULL,
  `Postal_Code` int(100) NOT NULL,
  PRIMARY KEY (`Loan_No`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_loan`
--

INSERT INTO `tbl_loan` (`Loan_No`, `User_Id`, `User_Name`, `Loan_Amount`, `Postal_Code`) VALUES
(1, 2, 'Partho', '$10,000 or less', 3100),
(3, 19, 'Shanon', '$50,001 - $400,000', 1600),
(4, 19, 'Shanon', '$10,000 or less', 1200),
(8, 19, 'Shanon', '$10,000 or less', 1200),
(9, 19, 'Shanon', '$10,000 or less', 1200);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_plant_aider`
--

DROP TABLE IF EXISTS `tbl_plant_aider`;
CREATE TABLE IF NOT EXISTS `tbl_plant_aider` (
  `Problem_Id` int(150) NOT NULL AUTO_INCREMENT,
  `Problem_Name` varchar(255) DEFAULT NULL,
  `Problem` text NOT NULL,
  `Symptom` text NOT NULL,
  `Solution` text NOT NULL,
  PRIMARY KEY (`Problem_Id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_plant_aider`
--

INSERT INTO `tbl_plant_aider` (`Problem_Id`, `Problem_Name`, `Problem`, `Symptom`, `Solution`) VALUES
(1, 'Calcium Deficiency', 'A Calcium deficiency is relatively rare unless a plant is underwatered or in a really dry environment, and is usually accompanied by other types of nutrient or pH problems that appear as problems with the leaves.\r\nThe first signs of Calcium deficiency are abnormal or thick growth tips along with brown or yellow spotting on new leaves.\r\n\r\nWith a Calcium deficiency, upper leaves display abnormal and/or slowed growth. Growing tips may not grow properly, may display twisted growth, and may die off. New leaves may wrinkle or curl.\r\nPlant roots can also be affected by a Calcium deficiency, showing unhealthy or slow growth. Stems may become rough or hollow.\r\nA plant with a boron deficiency may look like it has a calcium deficiency because boron is needed for the plant to properly use calcium. New growth is affected the most and may look like it’s been burnt or scorched.', 'Bronze or brown patches, Twisted growth, Yellow leaves.', '1.) Use Good Sources of Nutrients.\r\n2.) Adjust pH to Correct Range.\r\n3.) Give Plants Enough Moisture.\r\n4.) Watch Leaves for Recovery'),
(2, 'Root Rot', 'The curled, drooping, unhealthy leaves are the result of the plant not being able to get enough oxygen through the roots. Root rot symptoms often look like a soil plant that has been severely over or under-watered.\r\nAn example of what plants root rot can look like “under the hood”. Every infection looks a little different, but brown roots are usually the main symptom. It may affect all or just parts of the roots, and the sick sections usually become slimy or mushy and start twisting together.\r\nRoot rot can be caused by several different organisms including types of bacteria, fungi, algae and parasitic oomycotes. Although the symptoms are similar between different types, they don’t always look exactly the same. However, growers generally refer to all types of unhealthy root browning as just “root rot.”', 'Bronze or brown patches\r\nBrown or slimy roots\r\nBrown or yellow leaf tips/edges\r\nBuds dying\r\nCurling or clawing leaves\r\nDrooping plant\r\nSpots or markings\r\nTwisted growth\r\nWilting leaves\r\nYellow leaves', '1.) Add Beneficial Root Bacteria – Crucial!\r\n2.) Lots of Bubbles.\r\n3.) No Light Leaks in the Reservoir!\r\n4.) Keep Grow Room Cool.\r\n5.) Avoid Disturbing Roots, Especially Young Plants.\r\n6.) Keep Everything Extremely Clean & Sterile.\r\n'),
(3, 'Copper Deficiency', ' A plants copper deficiency appears with leaf symptoms such as dark leaves that take on blue or even purple undertones. The tips and edges of leaves turn pale yellow or white in stark contrast to the rest of the leaves which have turned dark. In flowering it’s important to correct a plant copper deficiency as soon as possible because buds may stop maturing if the plant isn’t fixed up right away. Copper doesn’t move easily through the plant and is considered “low-mobile” which means the yellowing leaves might not necessarily turn green again, but the problem should stop spreading to new plant leaves.', 'Leaves turn dark with blue or purple undertones\r\nTips and edges of leaves turn bright yellow or white\r\nShiny or metallic sheen on leaves\r\nLeaves may feel stiff and start turning under\r\nTends to affect leaves directly under the light\r\nBuds do not ripen, or grow very slowly', '1.) Adjust pH to Correct Range.\r\n2.) Give the Right Nutrients.\r\n3.) Take Good Care of the Roots.\r\n4.) Watch for Leaf Recovery.');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_question_bank`
--

DROP TABLE IF EXISTS `tbl_question_bank`;
CREATE TABLE IF NOT EXISTS `tbl_question_bank` (
  `Question_Id` int(255) NOT NULL AUTO_INCREMENT,
  `User_Id` int(255) NOT NULL,
  `Question_Date` date NOT NULL,
  `Question` text NOT NULL,
  `Question_Topic` varchar(100) NOT NULL,
  `Approval_Status` varchar(100) NOT NULL,
  PRIMARY KEY (`Question_Id`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_question_bank`
--

INSERT INTO `tbl_question_bank` (`Question_Id`, `User_Id`, `Question_Date`, `Question`, `Question_Topic`, `Approval_Status`) VALUES
(1, 2, '2019-08-19', 'What\'s a Good Soil Quality Index for Plowed Farm Lands?', 'Plant Nutrition', 'Yes'),
(2, 5, '2019-08-19', 'How strong wind is needed for crop lodging?', 'Plants and Crops', 'Yes'),
(3, 5, '2019-08-19', 'How much excess water prevents planting of a crop?', 'Plants and Crops', 'Yes'),
(4, 19, '2019-09-07', 'Does all cheese need to be refrigerated?', 'Food', 'Yes'),
(5, 25, '2019-09-09', 'How to gain crops easily', 'Plants and Crops', 'Yes'),
(6, 17, '2019-09-09', 'How to make some silly questions', 'Animal', 'No'),
(7, 17, '2019-09-09', 'Is anyone aware of studies that have addressed the specific issue of knowledge transfer impact on productivity in agricultural in recent times?', 'Plants and Crops', 'No');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
