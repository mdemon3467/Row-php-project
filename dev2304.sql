-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jan 08, 2024 at 05:25 PM
-- Server version: 8.0.30
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dev2304`
--

-- --------------------------------------------------------

--
-- Table structure for table `abouts`
--

CREATE TABLE `abouts` (
  `id` int NOT NULL,
  `designation` varchar(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `watertext` varchar(12) NOT NULL,
  `about` text NOT NULL,
  `image` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `abouts`
--

INSERT INTO `abouts` (`id`, `designation`, `name`, `watertext`, `about`, `image`) VALUES
(1, 'PHP developer', 'ABDULLAH EMON', 'developer', 'I work in the sweet spot for innovation, somewhere between strategy, design and technology.I love the Web and the work we do.', 'about.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `expertises`
--

CREATE TABLE `expertises` (
  `id` int NOT NULL,
  `title` varchar(100) NOT NULL,
  `rate` int NOT NULL,
  `status` varchar(100) NOT NULL DEFAULT 'deactive'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `expertises`
--

INSERT INTO `expertises` (`id`, `title`, `rate`, `status`) VALUES
(11, 'HTML', 95, 'active'),
(12, 'CSS', 85, 'active'),
(13, 'JAVASCRIPT', 70, 'active'),
(14, 'BOOTSTRAP', 85, 'active'),
(22, 'REACT', 65, 'active'),
(23, 'TAILWIND', 75, 'active');

-- --------------------------------------------------------

--
-- Table structure for table `logos`
--

CREATE TABLE `logos` (
  `id` int NOT NULL,
  `header` varchar(100) NOT NULL,
  `footer` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `logos`
--

INSERT INTO `logos` (`id`, `header`, `footer`) VALUES
(1, 'header_logo.png', 'footer_logo.png');

-- --------------------------------------------------------

--
-- Table structure for table `messages`
--

CREATE TABLE `messages` (
  `id` int NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `subject` varchar(100) DEFAULT NULL,
  `message` text NOT NULL,
  `status` varchar(100) NOT NULL DEFAULT 'deactive'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `messages`
--

INSERT INTO `messages` (`id`, `name`, `email`, `subject`, `message`, `status`) VALUES
(27, 'Galena Shepard', 'weqequ@mailinator.com', 'Praesentium deleniti', 'Nostrud consectetur', 'active'),
(28, 'Daria Walker', 'fusejuha@mailinator.com', 'Commodi dolorem labo', 'Enim minima non elit', 'deactive'),
(29, 'Allen Parrish', 'jyferereha@mailinator.com', 'Proident minus atqu', 'Eu quae in dolore de', 'deactive'),
(30, 'Neville Mcgee', 'viza@mailinator.com', 'Eos dolores omnis do', 'Qui voluptates vitae', 'deactive'),
(31, 'Ebony Bowen', 'rufuzojo@mailinator.com', 'Sunt obcaecati dolor', 'Ipsum et sit eaque ', 'deactive'),
(32, 'Cora Mckinney', 'vyse@mailinator.com', 'Sed rerum voluptas e', 'Earum aut sed in ex ', 'deactive');

-- --------------------------------------------------------

--
-- Table structure for table `protfolios`
--

CREATE TABLE `protfolios` (
  `id` int NOT NULL,
  `catagory` varchar(100) NOT NULL,
  `title` varchar(100) NOT NULL,
  `photo` varchar(100) NOT NULL,
  `status` varchar(100) NOT NULL DEFAULT 'deactive'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `protfolios`
--

INSERT INTO `protfolios` (`id`, `catagory`, `title`, `photo`, `status`) VALUES
(16, 'Web development', 'wordpress', '65957b713d6c1.jpg', 'active'),
(17, 'Web development', 'wordpress', '65957b8b10065.jpg', 'active'),
(18, 'Web development', 'wordpress', '65957ba6a871a.jpg', 'active'),
(19, 'Web development', 'wordpress', '65957bba0d2a4.jpg', 'active'),
(20, 'Web development', 'wordpress', '65957bd32c7df.jpg', 'active'),
(21, 'Web development', 'wordpress', '65957be63eba1.jpg', 'active');

-- --------------------------------------------------------

--
-- Table structure for table `services`
--

CREATE TABLE `services` (
  `id` int NOT NULL,
  `title` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `short_desp` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `status` varchar(100) DEFAULT 'deactive'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `services`
--

INSERT INTO `services` (`id`, `title`, `short_desp`, `status`) VALUES
(21, 'Graphics Branding Design', 'It can change the way we feel about a company and the products & services they offer.', 'active'),
(22, 'Front End Design Development', 'It can change the way we feel about a company and the products & services they offer.', 'active'),
(23, 'Digital Content Marketing', 'It can change the way we feel about a company and the products & services they offer.', 'active'),
(24, 'Application devlopment', 'It can change the way we feel about a company and the products & services they offer.', 'active'),
(25, 'Videography Photography', 'It can change the way we feel about a company and the products & services they offer.', 'active'),
(26, 'Wordpress Development', 'It can change the way we feel about a company and the products & services they offer.', 'active');

-- --------------------------------------------------------

--
-- Table structure for table `teams`
--

CREATE TABLE `teams` (
  `id` int NOT NULL,
  `about` text NOT NULL,
  `name` varchar(100) NOT NULL,
  `title` varchar(100) NOT NULL,
  `photo` varchar(100) NOT NULL,
  `status` varchar(100) NOT NULL DEFAULT 'deactive'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `teams`
--

INSERT INTO `teams` (`id`, `about`, `name`, `title`, `photo`, `status`) VALUES
(38, 'They do this through collaboration between our strategists, designers and technologists.They craft beautiful and unique digital experiences.Unlimited power and customization possibilities.Pixel perfect design & clear code delivered to you.', 'Smith Austin', 'Developer', '659954dd16ab3.jpg', 'active'),
(39, 'They do this through collaboration between our strategists, designers and technologists.They craft beautiful and unique digital experiences.Unlimited power and customization possibilities.Pixel perfect design & clear code delivered to you.', 'Mike jack', 'Marketer', '65995518a668a.jpg', 'active'),
(40, 'They do this through collaboration between our strategists, designers and technologists.They craft beautiful and unique digital experiences.Unlimited power and customization possibilities.Pixel perfect design & clear code delivered to you.', 'Robarto carlos', 'Marketer', '6599556900ee6.jpg', 'active');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int NOT NULL,
  `role` int DEFAULT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `number` int NOT NULL,
  `gender` varchar(100) NOT NULL,
  `address` text NOT NULL,
  `country` varchar(100) NOT NULL,
  `hobbie` varchar(100) DEFAULT NULL,
  `password` varchar(100) NOT NULL,
  `user_photo` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `role`, `name`, `email`, `number`, `gender`, `address`, `country`, `hobbie`, `password`, `user_photo`) VALUES
(18, 1, 'Francis Stark', 'zovi@mailinator.com', 46312312, 'male', 'Doloremque et iusto ', 'Nepal', 'Jumping', '$2y$10$5.VHKPv9Yzp3l0BKnZ00M.tSfvTpuxXMIDV/QlV3bFLQ7BbyXJUIS', '6594df7967ac3.jpg'),
(22, 2, 'Buffy Bruce', 'numuzadygo@mailinator.com', 850434324, 'female', 'Ut fugit optio sae', 'Japan', 'Jumping', '$2y$10$ucU7xCHblOfiQvzjukxqmeAQTohJ.BhrBO.UbKe6bLrQpw4Mr3yhq', NULL),
(23, 3, 'Phyllis Sampson', 'pilekezejy@mailinator.com', 55542144, 'male', 'Veniam ex nostrum d', 'Japan', 'Song', '$2y$10$zC8cFNCdVxgRnwC2t5TDcuJ7Ph/w2kqMpv4cHhuzQANy7XTxanP4K', NULL),
(27, NULL, 'Andrew Blanchard', 'genygunor@mailinator.com', 95712345, 'female', 'Natus numquam aut vo', 'Japan', 'Ride', '$2y$10$zRjl6W7p6DGLl3BE3yLF7.MsxEkL7bOijXKl8VMe3Ov7DVs4ovPmS', NULL),
(29, NULL, 'Calista Henry', 'saga@mailinator.com', 87645654, 'male', 'Commodi ratione anim', 'Japan', 'Ride', '$2y$10$G5xAWlSY0Xln5iXup24MyeoH.wnwnDo6V0LE3snwJnT4fHFZC/6ey', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `abouts`
--
ALTER TABLE `abouts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `expertises`
--
ALTER TABLE `expertises`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `logos`
--
ALTER TABLE `logos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `protfolios`
--
ALTER TABLE `protfolios`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `services`
--
ALTER TABLE `services`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `teams`
--
ALTER TABLE `teams`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `abouts`
--
ALTER TABLE `abouts`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `expertises`
--
ALTER TABLE `expertises`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `logos`
--
ALTER TABLE `logos`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `messages`
--
ALTER TABLE `messages`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `protfolios`
--
ALTER TABLE `protfolios`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `services`
--
ALTER TABLE `services`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `teams`
--
ALTER TABLE `teams`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
