-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: mysql
-- Generation Time: Jul 20, 2021 at 12:00 PM
-- Server version: 8.0.25
-- PHP Version: 7.4.20

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `demo`
--

-- --------------------------------------------------------

--
-- Table structure for table `AnswerCoices`
--

CREATE TABLE `AnswerCoices` (
  `id` int NOT NULL,
  `text` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `Choices` tinyint(1) NOT NULL DEFAULT '0',
  `quId` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `AnswerCoices`
--

INSERT INTO `AnswerCoices` (`id`, `text`, `Choices`, `quId`) VALUES
(1, '1986', 1, 1),
(2, '2000', 0, 1),
(3, '1999', 0, 1),
(5, 'The Legend of Zelda', 0, 2),
(6, 'The Legend of Zelda: Skyward Sword', 1, 2),
(7, 'The Legend of Zelda and Link: First Encounter', 0, 2),
(8, 'Gold', 0, 3),
(9, 'Gems', 0, 3),
(10, 'Rupees', 1, 3),
(11, 'Rubys', 0, 3),
(12, '22 Million Copies ', 1, 4),
(13, '10 Million Copies', 0, 4),
(14, '15 Million Copies', 0, 4),
(15, '5 Goddess ', 0, 5),
(16, '3 Goddess', 1, 5),
(17, '7 Gods', 0, 5),
(18, 'The Hero of Time doesn\'t care about the World so he choose to be on Ganondorf Fighter.', 0, 6),
(19, 'The Hero of Time din\'t defeat Ganon at the End and dead to him.', 1, 6),
(20, 'The Hero of Time has Defeat Ganondorf and is now married to the Princess. ', 0, 6),
(21, 'He has the Tryforce of the fate', 0, 7),
(22, 'He has the Tryforce of the Soul', 0, 7),
(23, 'He has the Tryforce of the Courage', 1, 7),
(24, '4 Billion USD', 1, 8),
(25, '50 Billion USD', 0, 8),
(26, '500 Million USD', 0, 8),
(27, 'Link Full name is Link Hyrules', 0, 9),
(28, 'Link Full name is Link Link', 1, 9),
(29, 'Link Full name Link van Hygrule', 0, 9),
(30, 'He likes to be Quiet all the Time and only talks when is necessary.', 0, 10),
(31, 'He is Shy', 0, 10),
(32, 'Link does not talk because with so much at stake, and so many eyes on him, he feels it necessary to stay strong and silently bear any burden.', 1, 10);

-- --------------------------------------------------------

--
-- Table structure for table `Intro`
--

CREATE TABLE `Intro` (
  `quizid` int NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nextAction` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nextQuestionId` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `Intro`
--

INSERT INTO `Intro` (`quizid`, `title`, `nextAction`, `nextQuestionId`) VALUES
(1, 'Zelda Quiz', 'question.php', 1);

-- --------------------------------------------------------

--
-- Table structure for table `Question`
--

CREATE TABLE `Question` (
  `id` int NOT NULL,
  `text` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `nextAction` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nextQuestionId` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `Question`
--

INSERT INTO `Question` (`id`, `text`, `nextAction`, `nextQuestionId`) VALUES
(1, 'When was the first Release of the first Legend of Zelda Game?', 'question.php', 2),
(2, 'In the Legend of Zelda the developer create a universe that can tell you the timeline of each current release game.\r\nWith which Zelda game did the Developer secretly tells you the beginning of the Zelda universe?  \r\n', 'question.php', 3),
(3, 'In the Zelda games also have a currency.\r\nWhat is the Name of the currency?  ', 'question.php', 4),
(4, 'The Game \"Zelda Breath of the Wild\" is currently the most sold Action-Adventure of all time.\r\nHow many copies where sold by March 2021?  ', 'question.php', 5),
(5, 'How many Gods exist in the Legend of Zelda?', 'question.php', 6),
(6, 'In the Zelda Universe the Timeline split in three direction which of the following answers is one of the right Path of the timeline?', 'question.php', 7),
(7, 'Ganondorf, Zelda and Link all have one piece of the Tryforce.\r\nGanon has the Tryforce of Strength, Zelda has the Tryforce of Wisdom.\r\nWhat\'s the of Links Tryforce?', 'question.php', 8),
(8, 'What is the net Worth of the Legend of Zelda Franchise by 2021?', 'question.php', 9),
(9, 'What is the full name of the Main Character Link?', 'question.php', 10),
(10, 'Link is know to not to talk what is the reason for his quiet behavior?', 'result.php', 11);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `AnswerCoices`
--
ALTER TABLE `AnswerCoices`
  ADD PRIMARY KEY (`id`),
  ADD KEY `QuestionNumber` (`quId`);

--
-- Indexes for table `Intro`
--
ALTER TABLE `Intro`
  ADD PRIMARY KEY (`quizid`),
  ADD KEY `in->question` (`nextQuestionId`);

--
-- Indexes for table `Question`
--
ALTER TABLE `Question`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `AnswerCoices`
--
ALTER TABLE `AnswerCoices`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `Intro`
--
ALTER TABLE `Intro`
  MODIFY `quizid` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `Question`
--
ALTER TABLE `Question`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `AnswerCoices`
--
ALTER TABLE `AnswerCoices`
  ADD CONSTRAINT `QuestionNumber` FOREIGN KEY (`quId`) REFERENCES `Question` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT;

--
-- Constraints for table `Intro`
--
ALTER TABLE `Intro`
  ADD CONSTRAINT `in->question` FOREIGN KEY (`nextQuestionId`) REFERENCES `Question` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
