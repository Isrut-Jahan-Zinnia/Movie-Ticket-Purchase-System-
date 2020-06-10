-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 05, 2020 at 12:21 AM
-- Server version: 10.4.6-MariaDB
-- PHP Version: 7.2.22

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dbdbmov`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_bookings`
--

CREATE TABLE `tbl_bookings` (
  `book_id` int(11) NOT NULL,
  `ticket_id` varchar(30) NOT NULL,
  `t_id` int(11) NOT NULL COMMENT 'theater id',
  `user_id` int(11) NOT NULL,
  `show_id` int(11) NOT NULL,
  `screen_id` int(11) NOT NULL,
  `no_seats` int(3) NOT NULL COMMENT 'number of seats',
  `amount` int(5) NOT NULL,
  `ticket_date` date NOT NULL,
  `date` date NOT NULL,
  `status` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_bookings`
--

INSERT INTO `tbl_bookings` (`book_id`, `ticket_id`, `t_id`, `user_id`, `show_id`, `screen_id`, `no_seats`, `amount`, `ticket_date`, `date`, `status`) VALUES
(3, '', 4, 4, 3, 3, 200, 75, '2017-05-21', '2017-05-21', 1),
(4, '', 4, 4, 1, 3, 2, 150, '2017-05-22', '2017-05-22', 1),
(5, '', 3, 3, 6, 1, 200, 70, '2017-05-25', '2017-05-22', 1),
(6, '', 3, 3, 6, 1, 100, 70, '2017-05-22', '2017-05-22', 1),
(7, '', 3, 3, 5, 1, 1, 70, '2017-05-22', '2017-05-22', 1),
(11, 'BKID5258816', 4, 2, 3, 3, 1, 75, '2017-05-22', '2017-05-22', 1),
(13, 'BKID5313215', 3, 4, 6, 1, 4, 1000, '2019-10-29', '2019-10-29', 1),
(14, 'BKID1951468', 3, 4, 11, 2, 2, 600, '2019-10-29', '2019-10-29', 1),
(16, 'BKID4077109', 3, 4, 13, 1, 1, 250, '2019-10-29', '2019-10-29', 1),
(17, 'BKID4361868', 3, 4, 8, 1, 1, 250, '2019-11-02', '2019-11-02', 1),
(20, 'BKID6970237', 4, 7, 4, 3, 2, 900, '2019-11-03', '2019-11-03', 1),
(21, 'BKID2671217', 4, 4, 3, 3, 2, 900, '2019-11-03', '2019-11-03', 1),
(22, 'BKID6770032', 3, 4, 7, 1, 2, 500, '2019-11-03', '2019-11-03', 1),
(24, 'BKID2340976', 4, 4, 15, 3, 1, 450, '2019-11-10', '2019-11-10', 1),
(25, 'BKID7758275', 3, 4, 9, 2, 1, 300, '2019-11-10', '2019-11-10', 1),
(26, 'BKID1794176', 4, 4, 3, 3, 1, 450, '2019-11-10', '2019-11-10', 1),
(27, 'BKID7399155', 3, 4, 10, 2, 1, 300, '2019-11-11', '2019-11-11', 1),
(28, 'BKID5129573', 4, 8, 2, 3, 1, 450, '2019-12-04', '2019-12-04', 1),
(29, 'BKID5347508', 3, 7, 6, 1, 1, 250, '2019-12-04', '2019-12-04', 1),
(30, 'BKID3126129', 3, 7, 7, 1, 1, 250, '2019-12-04', '2019-12-04', 1),
(31, 'BKID2760211', 3, 7, 6, 1, 1, 250, '2019-12-04', '2019-12-04', 1),
(32, 'BKID6507672', 3, 7, 7, 1, 1, 250, '2019-12-04', '2019-12-04', 1),
(34, 'BKID5893246', 4, 9, 4, 3, 1, 450, '2019-12-14', '2019-12-14', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_contact`
--

CREATE TABLE `tbl_contact` (
  `contact_id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `mobile` int(11) NOT NULL,
  `subject` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_contact`
--

INSERT INTO `tbl_contact` (`contact_id`, `name`, `email`, `mobile`, `subject`) VALUES
(5, 'zinnia', 'isrut.zinnia@gmail.com', 1999043993, ' say something good. ');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_login`
--

CREATE TABLE `tbl_login` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL COMMENT 'email',
  `password` varchar(50) NOT NULL,
  `user_type` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_login`
--

INSERT INTO `tbl_login` (`id`, `user_id`, `username`, `password`, `user_type`) VALUES
(1, 0, 'admin', 'password', 0),
(2, 3, 'theatre', 'password', 1),
(3, 4, 'theatre2', 'password', 1),
(4, 5, 'USR858911', 'PWD608105', 1),
(5, 6, 'USR389436', 'PWD214748', 1),
(6, 7, 'USR389436', 'PWD214748', 1),
(7, 8, 'USR389436', 'PWD214748', 1),
(8, 9, 'USR503036', 'PWD713319', 1),
(9, 10, 'USR447274', 'PWD420652', 1),
(10, 11, 'USR486163', 'PWD790452', 1),
(12, 2, 'rahulreghunath11@gmail.com', 'rahul', 2),
(13, 12, 'USR568113', 'PWD334935', 1),
(14, 13, 'USR280780', 'PWD906419', 1),
(15, 14, 'USR295127', 'PWD195747', 1),
(16, 3, 'vishnut300@gmail.com', 'vishnut300', 2),
(17, 15, 'USR394196', 'PWD130672', 1),
(18, 4, 'isrut.zinnia@gmail.com', '0987654321', 2),
(19, 5, 'isrut.zinnia@yahoo.com', '1234567890', 2),
(20, 6, 'md@gmail.com', '1234567', 2),
(21, 7, 'isrut.zinnia@yahoo.com', '1234567', 2),
(22, 16, 'USR351705', 'PWD709050', 1),
(23, 17, 'USR756744', 'PWD300479', 1),
(24, 8, 'nisher@gmail.com', '1234567', 2),
(25, 9, 'farhan.tanvir199720@gmail.com', '1234567', 2),
(26, 18, 'USR410755', '123456', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_movie`
--

CREATE TABLE `tbl_movie` (
  `movie_id` int(11) NOT NULL,
  `t_id` int(11) NOT NULL COMMENT 'theatre id',
  `movie_name` varchar(100) NOT NULL,
  `cast` varchar(500) NOT NULL,
  `desc` varchar(1000) NOT NULL,
  `release_date` date NOT NULL,
  `image` varchar(200) NOT NULL,
  `video_url` varchar(200) NOT NULL,
  `status` int(1) NOT NULL COMMENT '0 means active '
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_movie`
--

INSERT INTO `tbl_movie` (`movie_id`, `t_id`, `movie_name`, `cast`, `desc`, `release_date`, `image`, `video_url`, `status`) VALUES
(1, 3, 'It Chpater 2', 'Jessica Chastain, James McAvoy, Bill Hader', 'Twenty-seven years after their first encounter with the terrifying Pennywise, the Losers Club have grown up and moved away, until a devastating phone call brings them back.', '2019-10-30', 'images/it2.jfif', 'https://www.youtube.com/watch?v=zqUopiAYdRg', 0),
(2, 3, 'Joker', 'Joaquin Phoenix, Robert De Niro, Zazie Beetz', 'In Gotham City, mentally-troubled comedian Arthur Fleck is disregarded and mistreated by society. He then embarks on a downward spiral of revolution and bloody crime. This path brings him face-to-face with his alter-ego: \"The Joker\".', '2019-10-04', 'images/jocker.jfif', 'https://www.youtube.com/watch?v=zAGVQLHvwOY&t=2s', 0),
(3, 3, 'Zombieland: Double Tap', 'Woody Harrelson, Jesse Eisenberg, Emma Stone', 'Columbus, Tallahassee, Wichita, and Little Rock move to the American heartland as they face off against evolved zombies, fellow survivors, and the growing pains of the snarky makeshift family.', '2019-10-18', 'images/zombie.jfif', 'https://www.youtube.com/watch?v=ZlW9yhUKlkQ', 0),
(8, 3, 'Gemini Man', 'Will Smith, Mary Elizabeth Winstead, Clive Owen ', 'An over-the-hill hitman faces off against a younger clone of himself.', '2019-10-11', 'images/gimi.jfif', 'https://www.youtube.com/watch?v=AbyJignbSj0', 0),
(10, 3, 'Maleficent: Mistress of Evil', ' Angelina Jolie, Elle Fanning, Harris Dickinson ', 'Maleficent and her goddaughter Aurora begin to question the complex family ties that bind them as they are pulled in different directions by impending nuptials, unexpected allies, and dark new forces at play.', '2019-10-18', 'images/malif.jfif', 'https://www.youtube.com/watch?v=yL1f8yNxGBk&t=1s', 0);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_news`
--

CREATE TABLE `tbl_news` (
  `news_id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `cast` varchar(100) NOT NULL,
  `news_date` date NOT NULL,
  `description` varchar(200) NOT NULL,
  `attachment` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_news`
--

INSERT INTO `tbl_news` (`news_id`, `name`, `cast`, `news_date`, `description`, `attachment`) VALUES
(3, 'The Mummy', 'Tom Cruiz', '2017-06-15', 'Thought safely entombed in a crypt deep beneath the desert, an ancient princess whose destiny was unjustly taken from her is awakened in the modern era', 'news_images/mummy.jpg'),
(5, 'Transformers: The Last Knight', ' Mark Wahlberg , Isabela Moner ', '2017-07-21', 'Humans are at war with the Transformers, and Optimus Prime is gone. The key to saving the future lies buried in the secrets of the past and the hidden history of Transformers on Earth', 'news_images/tra.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_registration`
--

CREATE TABLE `tbl_registration` (
  `user_id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `phone` varchar(12) NOT NULL,
  `age` int(2) NOT NULL,
  `gender` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_registration`
--

INSERT INTO `tbl_registration` (`user_id`, `name`, `email`, `phone`, `age`, `gender`) VALUES
(4, 'isrut', 'isrut.zinnia@gmail.com', '01999043993', 23, 'gender'),
(5, 'zinnia jahan', 'isrut.zinnia@yahoo.com', '01999043993', 24, 'gender'),
(6, 'zinnia', 'md@gmail.com', '01999043993', 24, 'gender'),
(7, 'zinnia', 'isrut.zinnia@yahoo.com', '01999043993', 24, 'gender'),
(8, 'nisher', 'nisher@gmail.com', '01726524463', 24, 'gender'),
(9, 'Farhan Tanvir', 'farhan.tanvir199720@gmail.com', '01875001213', 23, 'gender');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_screens`
--

CREATE TABLE `tbl_screens` (
  `screen_id` int(11) NOT NULL,
  `t_id` int(11) NOT NULL COMMENT 'theatre id',
  `screen_name` varchar(110) NOT NULL,
  `seats` int(11) NOT NULL COMMENT 'number of seats',
  `charge` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_screens`
--

INSERT INTO `tbl_screens` (`screen_id`, `t_id`, `screen_name`, `seats`, `charge`) VALUES
(1, 3, 'Screen 1', 100, 250),
(2, 3, 'Screen 2', 150, 300),
(3, 4, 'Screen 1', 200, 450),
(4, 14, 'Screen1', 34, 400),
(5, 3, 'Screen3', 200, 600),
(6, 16, 'screen 4', 150, 250),
(7, 17, 'Screen 2', 150, 300);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_shows`
--

CREATE TABLE `tbl_shows` (
  `s_id` int(11) NOT NULL,
  `st_id` int(11) NOT NULL COMMENT 'show time id',
  `theatre_id` int(11) NOT NULL,
  `movie_id` int(11) NOT NULL,
  `start_date` date NOT NULL,
  `status` int(11) NOT NULL COMMENT '1 means show available',
  `r_status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_shows`
--

INSERT INTO `tbl_shows` (`s_id`, `st_id`, `theatre_id`, `movie_id`, `start_date`, `status`, `r_status`) VALUES
(1, 9, 4, 1, '2017-05-01', 1, 1),
(2, 10, 4, 1, '2017-05-01', 1, 1),
(3, 11, 4, 2, '2017-05-01', 1, 1),
(4, 12, 4, 2, '2017-05-01', 1, 1),
(5, 1, 3, 1, '2017-05-01', 0, 1),
(6, 2, 3, 1, '2017-05-01', 1, 1),
(7, 3, 3, 1, '2017-05-01', 1, 1),
(8, 4, 3, 1, '2017-05-01', 1, 0),
(9, 5, 3, 2, '2017-05-01', 1, 1),
(10, 6, 3, 2, '2017-05-01', 1, 1),
(11, 7, 3, 2, '2017-05-01', 1, 1),
(12, 8, 3, 2, '2017-05-01', 1, 1),
(13, 1, 3, 10, '2017-02-25', 1, 0),
(15, 9, 4, 8, '2017-05-28', 1, 0),
(19, 15, 3, 2, '2019-10-30', 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_show_time`
--

CREATE TABLE `tbl_show_time` (
  `st_id` int(11) NOT NULL,
  `screen_id` int(11) NOT NULL,
  `name` varchar(40) NOT NULL COMMENT 'noon,second,etc',
  `start_time` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_show_time`
--

INSERT INTO `tbl_show_time` (`st_id`, `screen_id`, `name`, `start_time`) VALUES
(1, 1, 'Noon', '10:00:00'),
(2, 1, 'Matinee', '14:00:00'),
(3, 1, 'First', '18:00:00'),
(4, 1, 'Second', '21:00:00'),
(5, 2, 'Noon', '10:00:00'),
(6, 2, 'Matinee', '14:00:00'),
(7, 2, 'First', '18:00:00'),
(8, 2, 'Second', '21:00:00'),
(9, 3, 'Noon', '10:00:00'),
(10, 3, 'Matinee', '14:00:00'),
(11, 3, 'First', '18:00:00'),
(12, 3, 'Second', '21:00:00'),
(14, 4, 'Noon', '12:03:00'),
(15, 5, 'Second', '17:44:00'),
(16, 5, 'Noon', '16:30:00'),
(17, 6, 'First', '10:45:00'),
(18, 7, 'Second', '12:05:00');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_theatre`
--

CREATE TABLE `tbl_theatre` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `address` varchar(100) NOT NULL,
  `place` varchar(100) NOT NULL,
  `state` varchar(50) NOT NULL,
  `pin` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_theatre`
--

INSERT INTO `tbl_theatre` (`id`, `name`, `address`, `place`, `state`, `pin`) VALUES
(2, 'Bashundhora Star Cineplex', 'Bashundhora shopping complex', 'panthapath', 'Dhaka, Bangladesh', 691523),
(3, 'Blockbluster cinema hall', 'Jumuna Futura Park', 'bashundhora', 'Dhaka, Bangladesh', 691523),
(4, 'Shayamoli cinema Hall', 'Shaymoli', 'Shaymoli shopping complex', 'Dhaka, Bangladesh', 691523),
(15, 'Bashundhora Star Cineplex', 'Bashundhora,panthapath', 'Dhaka, Bangladesh', 'Dhaka Division', 1207),
(16, 'SKS Tower', 'Mohakhali', 'Dhaka, Bangladesh', 'Dhaka Division', 123456),
(17, 'SKS Tower', 'Mohakhali', 'Dhaka, Bangladesh', 'Dhaka Division', 123456),
(18, 'twsd', 'Mohakhali', 'sdds', 'Dhaka Division', 123456);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_bookings`
--
ALTER TABLE `tbl_bookings`
  ADD PRIMARY KEY (`book_id`);

--
-- Indexes for table `tbl_contact`
--
ALTER TABLE `tbl_contact`
  ADD PRIMARY KEY (`contact_id`);

--
-- Indexes for table `tbl_login`
--
ALTER TABLE `tbl_login`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_movie`
--
ALTER TABLE `tbl_movie`
  ADD PRIMARY KEY (`movie_id`);

--
-- Indexes for table `tbl_news`
--
ALTER TABLE `tbl_news`
  ADD PRIMARY KEY (`news_id`);

--
-- Indexes for table `tbl_registration`
--
ALTER TABLE `tbl_registration`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `tbl_screens`
--
ALTER TABLE `tbl_screens`
  ADD PRIMARY KEY (`screen_id`);

--
-- Indexes for table `tbl_shows`
--
ALTER TABLE `tbl_shows`
  ADD PRIMARY KEY (`s_id`);

--
-- Indexes for table `tbl_show_time`
--
ALTER TABLE `tbl_show_time`
  ADD PRIMARY KEY (`st_id`);

--
-- Indexes for table `tbl_theatre`
--
ALTER TABLE `tbl_theatre`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_bookings`
--
ALTER TABLE `tbl_bookings`
  MODIFY `book_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `tbl_contact`
--
ALTER TABLE `tbl_contact`
  MODIFY `contact_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tbl_login`
--
ALTER TABLE `tbl_login`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `tbl_movie`
--
ALTER TABLE `tbl_movie`
  MODIFY `movie_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `tbl_news`
--
ALTER TABLE `tbl_news`
  MODIFY `news_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tbl_registration`
--
ALTER TABLE `tbl_registration`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `tbl_screens`
--
ALTER TABLE `tbl_screens`
  MODIFY `screen_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `tbl_shows`
--
ALTER TABLE `tbl_shows`
  MODIFY `s_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `tbl_show_time`
--
ALTER TABLE `tbl_show_time`
  MODIFY `st_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `tbl_theatre`
--
ALTER TABLE `tbl_theatre`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
