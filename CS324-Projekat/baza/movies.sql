-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jun 20, 2017 at 06:22 PM
-- Server version: 10.1.13-MariaDB
-- PHP Version: 7.0.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `movies`
--

-- --------------------------------------------------------

--
-- Table structure for table `directors`
--

CREATE TABLE `directors` (
  `id` int(11) NOT NULL,
  `name` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `directors`
--

INSERT INTO `directors` (`id`, `name`) VALUES
(43, 'Anthony Russo'),
(30, 'Barry Jenkins'),
(26, 'Brian Helgeland'),
(33, 'Bryan Singer'),
(18, 'Chad Stahelski'),
(40, 'Chris Columbus'),
(41, 'Chris Renaud'),
(13, 'Chris Williams'),
(5, 'Christophe Lourdelet'),
(34, 'Christopher Nolan'),
(16, 'Damien Chazelle'),
(3, 'David Ayer'),
(19, 'David Leitch'),
(35, 'David Leveaux'),
(15, 'David Yates'),
(36, 'Denis Villeneuve'),
(11, 'Don Hall'),
(49, 'Eli Roth'),
(24, 'Gareth Edwards'),
(27, 'Garth Davis'),
(6, 'Garth Jennings'),
(1, 'Gore Verbinski'),
(8, 'Greg McLean'),
(45, 'James Gray'),
(17, 'James Gunn'),
(29, 'Jared Hess'),
(44, 'Joe Russo'),
(12, 'John Musker'),
(46, 'Justin Lin'),
(2, 'M. Night Shyamalan'),
(20, 'Mark Williams'),
(22, 'Mel Gibson'),
(25, 'Morten Tyldum'),
(47, 'Nacho Vigalondo'),
(48, 'Quentin Tarantino'),
(38, 'Ridley Scott'),
(23, 'Rob Marshall'),
(10, 'Ron Clements'),
(7, 'Scott Derrickson'),
(28, 'Theodore Melfi'),
(21, 'Tim Burton'),
(31, 'Tim Miller'),
(42, 'Yarrow Cheney'),
(14, 'Yimou Zhang'),
(4, 'Zack Snyder');

-- --------------------------------------------------------

--
-- Table structure for table `genres`
--

CREATE TABLE `genres` (
  `id` int(11) NOT NULL,
  `name` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `genres`
--

INSERT INTO `genres` (`id`, `name`) VALUES
(6, 'Action'),
(7, 'Adventure'),
(12, 'Animation'),
(46, 'Biography'),
(13, 'Comedy'),
(40, 'Crime'),
(1, 'Drama'),
(14, 'Family'),
(2, 'Fantasy'),
(48, 'History'),
(3, 'Horror'),
(35, 'Music'),
(84, 'Mystery'),
(57, 'Romance'),
(11, 'Sci-Fi'),
(5, 'Thriller'),
(115, 'War');

-- --------------------------------------------------------

--
-- Table structure for table `movies`
--

CREATE TABLE `movies` (
  `id` int(11) NOT NULL,
  `title` varchar(45) NOT NULL,
  `movie_url` varchar(255) NOT NULL,
  `year` int(11) NOT NULL,
  `image_url` varchar(255) NOT NULL,
  `certificate` varchar(45) DEFAULT NULL,
  `runtime` int(11) DEFAULT NULL,
  `imdb_rating` float DEFAULT NULL,
  `description` text,
  `metascore` int(11) DEFAULT NULL,
  `votes` int(11) DEFAULT NULL,
  `gross` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `movies`
--

INSERT INTO `movies` (`id`, `title`, `movie_url`, `year`, `image_url`, `certificate`, `runtime`, `imdb_rating`, `description`, `metascore`, `votes`, `gross`) VALUES
(1, 'Lek Protiv Zdravlja', 'http://www.imdb.com/title/tt4731136/?ref_=adv_li_tt', 2016, 'https://images-na.ssl-images-amazon.com/images/M/MV5BMTg5Njg1MzIwNl5BMl5BanBnXkFtZTgwNDU1NjczMDI@._V1_UX67_CR0,0,67,98_AL_.jpg', 'R', 146, 6.5, 'An ambitious young executive is sent to retrieve his company''s CEO from an idyllic but mysterious "wellness center" at a remote location in the Swiss Alps, but soon suspects that the spa''s treatments are not what they seem.', 47, 24727, 8103139),
(2, 'Podeljen', 'http://www.imdb.com/title/tt4972582/?ref_=adv_li_tt', 2016, 'https://images-na.ssl-images-amazon.com/images/M/MV5BZTJiNGM2NjItNDRiYy00ZjY0LTgwNTItZDBmZGRlODQ4YThkL2ltYWdlXkEyXkFqcGdeQXVyMjY5ODI4NDk@._V1_UX67_CR0,0,67,98_AL_.jpg', 'PG-13', 117, 7.3, 'Three girls are kidnapped by a man with a diagnosed 23 distinct personalities. They must try to escape before the apparent emergence of a frightful new 24th.', 62, 171396, 138120085),
(3, 'Odred otpisanih', 'http://www.imdb.com/title/tt1386697/?ref_=adv_li_tt', 2016, 'https://images-na.ssl-images-amazon.com/images/M/MV5BMjM1OTMxNzUyM15BMl5BanBnXkFtZTgwNjYzMTIzOTE@._V1_UX67_CR0,0,67,98_AL_.jpg', 'PG-13', 123, 6.2, 'A secret government agency recruits some of the most dangerous incarcerated super-villains to form a defensive task force. Their first mission: save the world from the apocalypse.', 40, 402307, 325021779),
(5, 'Betmen protiv Supermena: Zora pravednika', 'http://www.imdb.com/title/tt2975590/?ref_=adv_li_tt', 2016, 'https://images-na.ssl-images-amazon.com/images/M/MV5BYThjYzcyYzItNTVjNy00NDk0LTgwMWQtYjMwNmNlNWJhMzMyXkEyXkFqcGdeQXVyMTQxNzMzNDI@._V1_UX67_CR0,0,67,98_AL_.jpg', 'PG-13', 151, 6.7, 'Fearing that the actions of Superman are left unchecked, Batman takes on the Man of Steel, while the world wrestles with what kind of a hero it really needs.', 44, 478036, 330249062),
(8, 'Pevajmo', 'http://www.imdb.com/title/tt3470600/?ref_=adv_li_tt', 2016, 'https://images-na.ssl-images-amazon.com/images/M/MV5BMTYzODYzODU2Ml5BMl5BanBnXkFtZTgwNTc1MTA2NzE@._V1_UX67_CR0,0,67,98_AL_.jpg', 'PG', 108, 7.2, 'In a city of humanoid animals, a hustling theater impresario''s attempt to save his theater with a singing competition becomes grander than he anticipates even as its finalists'' find that their lives will never be the same.', 59, 64950, 270322340),
(12, 'Doctor Strange', 'http://www.imdb.com/title/tt1211837/?ref_=adv_li_tt', 2016, 'https://images-na.ssl-images-amazon.com/images/M/MV5BNjgwNzAzNjk1Nl5BMl5BanBnXkFtZTgwMzQ2NjI1OTE@._V1_UX67_CR0,0,67,98_AL_.jpg', 'PG-13', 115, 7.6, 'While on a journey of physical and spiritual healing, a brilliant neurosurgeon is drawn into the world of the mystic arts.', 72, 304267, 232597113),
(17, 'The Belko Experiment', 'http://www.imdb.com/title/tt1082807/?ref_=adv_li_tt', 2016, 'https://images-na.ssl-images-amazon.com/images/M/MV5BODQyMDkyOTE2MF5BMl5BanBnXkFtZTgwNDQ1NTQwMTI@._V1_UX67_CR0,0,67,98_AL_.jpg', 'R', 89, 6.2, 'In a twisted social experiment, 80 Americans are locked in their high-rise corporate office in BogotÃ¡, Colombia and ordered by an unknown voice coming from the company''s intercom system to participate in a deadly game of kill or be killed.', 44, 7310, 10164675),
(23, 'Pirati sa Kariba - Prokletstvo Crnog bisera', 'http://www.imdb.com/title/tt0325980/?ref_=adv_li_tt', 2003, 'https://images-na.ssl-images-amazon.com/images/M/MV5BNGYyZGM5MGMtYTY2Ni00M2Y1LWIzNjQtYWUzM2VlNGVhMDNhXkEyXkFqcGdeQXVyMTMxODk2OTU@._V1_UX67_CR0,0,67,98_AL_.jpg', 'PG-13', 143, 8, 'Blacksmith Will Turner teams up with eccentric pirate "Captain" Jack Sparrow to save his love, the governor''s daughter, from Jack''s former pirate allies, who are now undead.', 63, 867676, 305388685),
(30, 'Vajana', 'http://www.imdb.com/title/tt3521164/?ref_=adv_li_tt', 2016, 'https://images-na.ssl-images-amazon.com/images/M/MV5BMjI4MzU5NTExNF5BMl5BanBnXkFtZTgwNzY1MTEwMDI@._V1_UX67_CR0,0,67,98_AL_.jpg', 'PG', 107, 7.7, 'In Ancient Polynesia, when a terrible curse incurred by the Demigod Maui reaches an impetuous Chieftain''s daughter''s island, she answers the Ocean''s call to seek out the Demigod to set things right.', 81, 124153, 248752120),
(38, 'Veliki kineski zid', 'http://www.imdb.com/title/tt2034800/?ref_=adv_li_tt', 2016, 'https://images-na.ssl-images-amazon.com/images/M/MV5BMjA3MjAzOTQxNF5BMl5BanBnXkFtZTgwOTc5OTY1OTE@._V1_UX67_CR0,0,67,98_AL_.jpg', 'PG-13', 103, 6, 'European mercenaries searching for black powder become embroiled in the defense of the Great Wall of China against a horde of monstrous creatures.', 42, 64547, 45125480),
(47, 'FantastiÄne zveri i gde ih naÄ‡i', 'http://www.imdb.com/title/tt3183660/?ref_=adv_li_tt', 2016, 'https://images-na.ssl-images-amazon.com/images/M/MV5BMjMxOTM1OTI4MV5BMl5BanBnXkFtZTgwODE5OTYxMDI@._V1_UX67_CR0,0,67,98_AL_.jpg', 'PG-13', 133, 7.4, 'The adventures of writer Newt Scamander in New York''s secret community of witches and wizards seventy years before Harry Potter reads his book in school.', 66, 239095, 234018657),
(57, 'La La Land', 'http://www.imdb.com/title/tt3783958/?ref_=adv_li_tt', 2016, 'https://images-na.ssl-images-amazon.com/images/M/MV5BMzUzNDM2NzM2MV5BMl5BanBnXkFtZTgwNTM3NTg4OTE@._V1_UX67_CR0,0,67,98_AL_.jpg', 'PG-13', 128, 8.2, 'A jazz pianist falls for an aspiring actress in Los Angeles.', 93, 269252, 151058124),
(68, 'ÄŒuvari galaksije', 'http://www.imdb.com/title/tt2015381/?ref_=adv_li_tt', 2014, 'https://images-na.ssl-images-amazon.com/images/M/MV5BMTAwMjU5OTgxNjZeQTJeQWpwZ15BbWU4MDUxNDYxODEx._V1_UX67_CR0,0,67,98_AL_.jpg', 'PG-13', 121, 8.1, 'A group of intergalactic criminals are forced to work together to stop a fanatical warrior from taking control of the universe.', 76, 763315, 333130696),
(80, 'DÅ¾on Vik', 'http://www.imdb.com/title/tt2911666/?ref_=adv_li_tt', 2014, 'https://images-na.ssl-images-amazon.com/images/M/MV5BMTU2NjA1ODgzMF5BMl5BanBnXkFtZTgwMTM2MTI4MjE@._V1_UX67_CR0,0,67,98_AL_.jpg', 'R', 101, 7.3, 'An ex-hitman comes out of retirement to track down the gangsters that took everything from him.', 68, 330256, 42996986),
(93, 'The Headhunter''s Calling', 'http://www.imdb.com/title/tt1718924/?ref_=adv_li_tt', 2016, 'https://images-na.ssl-images-amazon.com/images/M/MV5BYjdkY2MzMGEtNzI5YS00ZDVkLTliZmMtZGMxZDJiMGU2MjIwXkEyXkFqcGdeQXVyMTExNDQ2MTI@._V1_UX67_CR0,0,67,98_AL_.jpg', 'R', 108, 6.3, 'A headhunter whose life revolves around closing deals in a a survival-of-the-fittest boiler room, battles his top rival for control of their job placement company -- his dream of owning the company clashing with the needs of his family.', 0, 695, 0),
(94, 'Dom gospoÄ‘ice Peregrin za Äudnovatu decu', 'http://www.imdb.com/title/tt1935859/?ref_=adv_li_tt', 2016, 'https://images-na.ssl-images-amazon.com/images/M/MV5BMTU0Nzc5NzI5NV5BMl5BanBnXkFtZTgwNTk1MDE4MDI@._V1_UY98_CR5,0,67,98_AL_.jpg', 'PG-13', 127, 6.7, 'When Jacob discovers clues to a mystery that stretches across time, he finds Miss Peregrine''s Home for Peculiar Children. But the danger deepens after he gets to know the residents and learns about their special powers.', 57, 103781, 87240689),
(108, 'Greben spasa', 'http://www.imdb.com/title/tt2119532/?ref_=adv_li_tt', 2016, 'https://images-na.ssl-images-amazon.com/images/M/MV5BMjQ1NjM3MTUxNV5BMl5BanBnXkFtZTgwMDc5MTY5OTE@._V1_UX67_CR0,0,67,98_AL_.jpg', 'R', 139, 8.2, 'WWII American Army Medic <a href="/name/nm3691984">Desmond T. Doss</a>, who served during the Battle of Okinawa, refuses to kill people, and becomes the first man in American history to receive the Medal of Honor without firing a shot.', 71, 221025, 67115062),
(123, 'Pirati sa Kariba - Na Äudnim plimama', 'http://www.imdb.com/title/tt1298650/?ref_=adv_li_tt', 2011, 'https://images-na.ssl-images-amazon.com/images/M/MV5BMjE5MjkwODI3Nl5BMl5BanBnXkFtZTcwNjcwMDk4NA@@._V1_UX67_CR0,0,67,98_AL_.jpg', 'PG-13', 136, 6.7, 'Jack Sparrow and Barbossa embark on a quest to find the elusive fountain of youth, only to discover that Blackbeard and his daughter are after it too.', 45, 399078, 241063875),
(139, 'Odmetnik-1: Star Wars priÄa', 'http://www.imdb.com/title/tt3748528/?ref_=adv_li_tt', 2016, 'https://images-na.ssl-images-amazon.com/images/M/MV5BMjEwMzMxODIzOV5BMl5BanBnXkFtZTgwNzg3OTAzMDI@._V1_UX67_CR0,0,67,98_AL_.jpg', 'PG-13', 133, 7.9, 'The Rebel Alliance makes a risky move to steal the plans for the Death Star, setting up the epic saga to follow.', 65, 331773, 532171696),
(156, 'Putnici', 'http://www.imdb.com/title/tt1355644/?ref_=adv_li_tt', 2016, 'https://images-na.ssl-images-amazon.com/images/M/MV5BMTk4MjU3MDIzOF5BMl5BanBnXkFtZTgwMjM2MzY2MDI@._V1_UX67_CR0,0,67,98_AL_.jpg', 'PG-13', 116, 7, 'A spacecraft traveling to a distant colony planet and transporting thousands of people has a malfunction in its sleep chambers. As a result, two passengers are awakened 90 years early.', 41, 201620, 100014092),
(174, 'Legenda', 'http://www.imdb.com/title/tt3569230/?ref_=adv_li_tt', 2015, 'https://images-na.ssl-images-amazon.com/images/M/MV5BMDQ4MGY0NWUtY2MxOC00YzI5LTg0OTEtZjNmY2Q2ZmM0MTA1XkEyXkFqcGdeQXVyNTQzOTc3MTI@._V1_UX67_CR0,0,67,98_AL_.jpg', 'R', 132, 7, 'Identical twin gangsters Ronald and Reginald Kray terrorize London during the 1960s.', 55, 110190, 1865774),
(193, 'Lav', 'http://www.imdb.com/title/tt3741834/?ref_=adv_li_tt', 2016, 'https://images-na.ssl-images-amazon.com/images/M/MV5BMjA3NjkzNjg2MF5BMl5BanBnXkFtZTgwMDkyMzgzMDI@._V1_UX67_CR0,0,67,98_AL_.jpg', 'PG-13', 118, 8.1, 'A five-year-old Indian boy gets lost on the streets of Calcutta, thousands of kilometers from home. He survives many challenges before being adopted by a couple in Australia. 25 years later, he sets out to find his lost family.', 69, 108378, 51694854),
(214, 'Nevidljivi faktori', 'http://www.imdb.com/title/tt4846340/?ref_=adv_li_tt', 2016, 'https://images-na.ssl-images-amazon.com/images/M/MV5BMzg2Mzg4YmUtNDdkNy00NWY1LWE3NmEtZWMwNGNlMzE5YzU3XkEyXkFqcGdeQXVyMjA5MTIzMjQ@._V1_UX67_CR0,0,67,98_AL_.jpg', 'PG', 127, 7.8, 'The story of a team of female African-American mathematicians who served a vital role in NASA during the early years of the U.S. space program.', 74, 99249, 169338623),
(235, 'Masterminds', 'http://www.imdb.com/title/tt2461150/?ref_=adv_li_tt', 2016, 'https://images-na.ssl-images-amazon.com/images/M/MV5BMTYzMTY5Mzg1Ml5BMl5BanBnXkFtZTgwNTUzODUwNjE@._V1_UX67_CR0,0,67,98_AL_.jpg', 'PG-13', 95, 5.8, 'A guard at an armored car company in the Southern U.S. organizes one of the biggest bank heists in American history. Based on the October 1997 Loomis Fargo robbery.', 47, 28339, 17356894),
(257, 'MeseÄina', 'http://www.imdb.com/title/tt4975722/?ref_=adv_li_tt', 2016, 'https://images-na.ssl-images-amazon.com/images/M/MV5BNzQxNTIyODAxMV5BMl5BanBnXkFtZTgwNzQyMDA3OTE@._V1_UX67_CR0,0,67,98_AL_.jpg', 'R', 111, 7.5, 'A chronicle of the childhood, adolescence and burgeoning adulthood of a young, African-American, gay man growing up in a rough neighborhood of Miami.', 99, 140993, 27850912),
(282, 'Dedpul', 'http://www.imdb.com/title/tt1431045/?ref_=adv_li_tt', 2016, 'https://images-na.ssl-images-amazon.com/images/M/MV5BMjQyODg5Njc4N15BMl5BanBnXkFtZTgwMzExMjE3NzE@._V1_UY98_CR0,0,67,98_AL_.jpg', 'R', 108, 8, 'A fast-talking mercenary with a morbid sense of humor is subjected to a rogue experiment that leaves him with accelerated healing powers and a quest for revenge.', 65, 635515, 363024263),
(306, 'Pirati sa Kariba - Na kraju sveta', 'http://www.imdb.com/title/tt0449088/?ref_=adv_li_tt', 2007, 'https://images-na.ssl-images-amazon.com/images/M/MV5BMjIyNjkxNzEyMl5BMl5BanBnXkFtZTYwMjc3MDE3._V1_UX67_CR0,0,67,98_AL_.jpg', 'PG-13', 169, 7.1, 'Captain Barbossa, Will Turner and Elizabeth Swann must sail off the edge of the map, navigate treachery and betrayal, find Jack Sparrow, and make their final alliances for one last decisive battle.', 50, 504011, 309404152),
(331, 'X-men: Apokalipsa', 'http://www.imdb.com/title/tt3385516/?ref_=adv_li_tt', 2016, 'https://images-na.ssl-images-amazon.com/images/M/MV5BMjU1ODM1MzYxN15BMl5BanBnXkFtZTgwOTA4NDE2ODE@._V1_UX67_CR0,0,67,98_AL_.jpg', 'PG-13', 144, 7.1, 'After the re-emergence of the world''s first mutant, world-destroyer Apocalypse, the X-Men must unite to defeat his extinction level plan.', 52, 280463, 155333829),
(357, 'MeÄ‘uzvezdani', 'http://www.imdb.com/title/tt0816692/?ref_=adv_li_tt', 2014, 'https://images-na.ssl-images-amazon.com/images/M/MV5BMjIxNTU4MzY4MF5BMl5BanBnXkFtZTgwMzM4ODI3MjE@._V1_UX67_CR0,0,67,98_AL_.jpg', 'PG-13', 169, 8.6, 'A team of explorers travel through a wormhole in space in an attempt to ensure humanity''s survival.', 74, 1055030, 187991439),
(384, 'The Exception', 'http://www.imdb.com/title/tt4721124/?ref_=adv_li_tt', 2016, 'https://images-na.ssl-images-amazon.com/images/M/MV5BMTk4ODcyOTI3NV5BMl5BanBnXkFtZTgwMjgyOTUxMjI@._V1_UX67_CR0,0,67,98_AL_.jpg', 'R', 107, 6.7, 'A German soldier tries to determine if the Dutch resistance has planted a spy to infiltrate the home of Kaiser Wilhelm in Holland during the onset of World War II, but falls for a young Jewish Dutch woman during his investigation.', 63, 900, 43648),
(414, 'Dolazak', 'http://www.imdb.com/title/tt2543164/?ref_=adv_li_tt', 2016, 'https://images-na.ssl-images-amazon.com/images/M/MV5BMTExMzU0ODcxNDheQTJeQWpwZ15BbWU4MDE1OTI4MzAy._V1_UX67_CR0,0,67,98_AL_.jpg', 'PG-13', 116, 8, 'When twelve mysterious spacecraft appear around the world, linguistics professor Louise Banks is tasked with interpreting the language of the apparent alien visitors.', 81, 350644, 100501349),
(443, 'MraÄni vitez', 'http://www.imdb.com/title/tt0468569/?ref_=adv_li_tt', 2008, 'https://images-na.ssl-images-amazon.com/images/M/MV5BMTMxNTMwODM0NF5BMl5BanBnXkFtZTcwODAyMTk2Mw@@._V1_UX67_CR0,0,67,98_AL_.jpg', 'PG-13', 152, 9, 'When the menace known as the Joker emerges from his mysterious past, he wreaks havoc and chaos on the people of Gotham, the Dark Knight must accept one of the greatest psychological and physical tests of his ability to fight injustice.', 82, 1799270, 533316061),
(473, 'Prometej', 'http://www.imdb.com/title/tt1446714/?ref_=adv_li_tt', 2012, 'https://images-na.ssl-images-amazon.com/images/M/MV5BMTY3NzIyNTA2NV5BMl5BanBnXkFtZTcwNzE2NjI4Nw@@._V1_UX67_CR0,0,67,98_AL_.jpg', 'R', 124, 7, 'Following clues to the origin of mankind, a team finds a structure on a distant moon, but they soon realize they are not alone.', 65, 491233, 126464904),
(504, 'Pirati sa Kariba - Tajna Å¡krinje', 'http://www.imdb.com/title/tt0383574/?ref_=adv_li_tt', 2006, 'https://images-na.ssl-images-amazon.com/images/M/MV5BMTcwODc1MTMxM15BMl5BanBnXkFtZTYwMDg1NzY3._V1_UX67_CR0,0,67,98_AL_.jpg', 'PG-13', 151, 7.3, 'Jack Sparrow races to recover the heart of Davy Jones to avoid enslaving his soul to Jones'' service, as other friends and foes seek the heart for their own agenda as well.', 53, 557180, 423032628),
(536, 'Hari Poter i Kamen mudrosti', 'http://www.imdb.com/title/tt0241527/?ref_=adv_li_tt', 2001, 'https://images-na.ssl-images-amazon.com/images/M/MV5BNjQ3NWNlNmQtMTE5ZS00MDdmLTlkZjUtZTBlM2UxMGFiMTU3XkEyXkFqcGdeQXVyNjUwNzk3NDc@._V1_UX67_CR0,0,67,98_AL_.jpg', 'PG', 152, 7.5, 'Rescued from the outrageous neglect of his aunt and uncle, a young boy with a great destiny proves his worth while attending Hogwarts School of Witchcraft and Wizardry.', 64, 486136, 317557891),
(569, 'Tajne avanture kuÄ‡nih ljubimaca', 'http://www.imdb.com/title/tt2709768/?ref_=adv_li_tt', 2016, 'https://images-na.ssl-images-amazon.com/images/M/MV5BMjIzMzA1OTkzNV5BMl5BanBnXkFtZTgwODE3MjM4NzE@._V1_UX67_CR0,0,67,98_AL_.jpg', 'PG', 87, 6.6, 'The quiet life of a terrier named Max is upended when his owner takes in Duke, a stray whom Max instantly dislikes.', 61, 123307, 368305960),
(603, 'Kapetan Amerika - GraÄ‘anski rat', 'http://www.imdb.com/title/tt3498820/?ref_=adv_li_tt', 2016, 'https://images-na.ssl-images-amazon.com/images/M/MV5BMjQ0MTgyNjAxMV5BMl5BanBnXkFtZTgwNjUzMDkyODE@._V1_UX67_CR0,0,67,98_AL_.jpg', 'PG-13', 147, 7.9, 'Political interference in the Avengers'' activities causes a rift between former allies Captain America and Iron Man.', 75, 417019, 408080554),
(638, 'The Lost City of Z', 'http://www.imdb.com/title/tt1212428/?ref_=adv_li_tt', 2016, 'https://images-na.ssl-images-amazon.com/images/M/MV5BMjQzNTk3MTkyNF5BMl5BanBnXkFtZTgwMDA2MDQzMTI@._V1_UX67_CR0,0,67,98_AL_.jpg', 'PG-13', 141, 7.1, 'A true-life drama, centering on British explorer Col. Percival Fawcett, who disappeared while searching for a mysterious city in the Amazon in the 1920s.', 78, 8158, 8431075),
(674, 'Star Trek: Izvan granica', 'http://www.imdb.com/title/tt2660888/?ref_=adv_li_tt', 2016, 'https://images-na.ssl-images-amazon.com/images/M/MV5BZDRiOGE5ZTctOWIxOS00MWQwLThlMDYtNWIwMDQwNzBjZDY1XkEyXkFqcGdeQXVyNjU0OTQ0OTY@._V1_UX67_CR0,0,67,98_AL_.jpg', 'PG-13', 122, 7.1, 'The USS Enterprise crew explores the furthest reaches of uncharted space, where they encounter a new ruthless enemy who puts them and everything the Federation stands for to the test.', 68, 167184, 158804470),
(711, 'Colossal', 'http://www.imdb.com/title/tt4680182/?ref_=adv_li_tt', 2016, 'https://images-na.ssl-images-amazon.com/images/M/MV5BMTY2NTExOTA2MF5BMl5BanBnXkFtZTgwNTMwMjE2MTI@._V1_UY98_CR0,0,67,98_AL_.jpg', 'R', 109, 6.3, 'Gloria is an out-of-work party girl forced to leave her life in New York City, and move back home. When reports surface that a giant creature is destroying Seoul, she gradually comes to the realization that she is somehow connected to this phenomenon.', 70, 13184, 3011920),
(749, 'Prokletnici', 'http://www.imdb.com/title/tt0361748/?ref_=adv_li_tt', 2009, 'https://images-na.ssl-images-amazon.com/images/M/MV5BOTJiNDEzOWYtMTVjOC00ZjlmLWE0NGMtZmE1OWVmZDQ2OWJhXkEyXkFqcGdeQXVyNTIzOTk5ODM@._V1_UX67_CR0,0,67,98_AL_.jpg', 'R', 153, 8.3, 'In Nazi-occupied France during World War II, a plan to assassinate Nazi leaders by a group of Jewish U.S. soldiers coincides with a theatre owner''s vengeful plans for the same.', 69, 964061, 120523073);

-- --------------------------------------------------------

--
-- Table structure for table `movies_directors`
--

CREATE TABLE `movies_directors` (
  `movies_id` int(11) NOT NULL,
  `directors_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `movies_directors`
--

INSERT INTO `movies_directors` (`movies_id`, `directors_id`) VALUES
(1, 1),
(2, 2),
(3, 3),
(5, 4),
(8, 5),
(8, 6),
(12, 7),
(17, 8),
(23, 1),
(30, 10),
(30, 11),
(30, 12),
(30, 13),
(38, 14),
(47, 15),
(57, 16),
(68, 17),
(80, 18),
(80, 19),
(93, 20),
(94, 21),
(108, 22),
(123, 23),
(139, 24),
(156, 25),
(174, 26),
(193, 27),
(214, 28),
(235, 29),
(257, 30),
(282, 31),
(306, 1),
(331, 33),
(357, 34),
(384, 35),
(414, 36),
(443, 34),
(473, 38),
(504, 1),
(536, 40),
(569, 41),
(569, 42),
(603, 43),
(603, 44),
(638, 45),
(674, 46),
(711, 47),
(749, 48),
(749, 49);

-- --------------------------------------------------------

--
-- Table structure for table `movies_genres`
--

CREATE TABLE `movies_genres` (
  `movies_id` int(11) NOT NULL,
  `genres_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `movies_genres`
--

INSERT INTO `movies_genres` (`movies_id`, `genres_id`) VALUES
(1, 1),
(1, 2),
(1, 3),
(2, 3),
(2, 5),
(3, 2),
(3, 6),
(3, 7),
(5, 6),
(5, 7),
(5, 11),
(8, 12),
(8, 13),
(8, 14),
(12, 2),
(12, 6),
(12, 7),
(17, 3),
(17, 5),
(17, 6),
(23, 2),
(23, 6),
(23, 7),
(30, 7),
(30, 12),
(30, 13),
(38, 2),
(38, 6),
(38, 7),
(47, 2),
(47, 7),
(47, 14),
(57, 1),
(57, 13),
(57, 35),
(68, 6),
(68, 7),
(68, 11),
(80, 5),
(80, 6),
(80, 40),
(93, 1),
(94, 1),
(94, 7),
(94, 14),
(108, 1),
(108, 46),
(108, 48),
(123, 2),
(123, 6),
(123, 7),
(139, 6),
(139, 7),
(139, 11),
(156, 1),
(156, 7),
(156, 57),
(174, 1),
(174, 40),
(174, 46),
(193, 1),
(193, 46),
(214, 1),
(214, 46),
(214, 48),
(235, 6),
(235, 13),
(235, 40),
(257, 1),
(282, 6),
(282, 7),
(282, 13),
(306, 2),
(306, 6),
(306, 7),
(331, 6),
(331, 7),
(331, 11),
(357, 1),
(357, 7),
(357, 11),
(384, 1),
(414, 1),
(414, 11),
(414, 84),
(443, 1),
(443, 6),
(443, 40),
(473, 7),
(473, 11),
(473, 84),
(504, 2),
(504, 6),
(504, 7),
(536, 2),
(536, 7),
(536, 14),
(569, 7),
(569, 12),
(569, 13),
(603, 6),
(603, 7),
(603, 11),
(638, 6),
(638, 7),
(638, 46),
(674, 6),
(674, 7),
(674, 11),
(711, 1),
(711, 6),
(711, 13),
(749, 1),
(749, 7),
(749, 115);

-- --------------------------------------------------------

--
-- Table structure for table `movies_stars`
--

CREATE TABLE `movies_stars` (
  `movies_id` int(11) NOT NULL,
  `stars_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `movies_stars`
--

INSERT INTO `movies_stars` (`movies_id`, `stars_id`) VALUES
(1, 1),
(1, 2),
(1, 3),
(2, 4),
(2, 5),
(2, 6),
(3, 7),
(3, 8),
(3, 9),
(5, 10),
(5, 11),
(5, 12),
(8, 13),
(8, 14),
(8, 15),
(12, 16),
(12, 17),
(12, 18),
(17, 19),
(17, 20),
(17, 21),
(23, 22),
(23, 23),
(23, 24),
(30, 25),
(30, 26),
(30, 27),
(38, 28),
(38, 29),
(38, 30),
(47, 31),
(47, 32),
(47, 33),
(57, 34),
(57, 35),
(57, 36),
(68, 37),
(68, 38),
(68, 39),
(80, 40),
(80, 41),
(80, 42),
(93, 30),
(93, 43),
(93, 44),
(94, 46),
(94, 47),
(94, 48),
(108, 49),
(108, 50),
(108, 51),
(123, 22),
(123, 53),
(123, 54),
(139, 55),
(139, 56),
(139, 57),
(156, 37),
(156, 58),
(156, 60),
(174, 61),
(174, 62),
(174, 63),
(193, 64),
(193, 65),
(193, 66),
(214, 67),
(214, 68),
(214, 69),
(235, 70),
(235, 71),
(235, 72),
(257, 73),
(257, 74),
(257, 75),
(282, 76),
(282, 77),
(282, 78),
(306, 22),
(306, 24),
(306, 81),
(331, 4),
(331, 58),
(331, 83),
(357, 13),
(357, 86),
(357, 87),
(384, 88),
(384, 89),
(384, 90),
(414, 12),
(414, 92),
(414, 93),
(443, 94),
(443, 95),
(443, 96),
(473, 83),
(473, 97),
(473, 98),
(504, 22),
(504, 24),
(504, 81),
(536, 103),
(536, 104),
(536, 105),
(569, 106),
(569, 107),
(569, 108),
(603, 109),
(603, 110),
(603, 111),
(638, 112),
(638, 113),
(638, 114),
(674, 115),
(674, 116),
(674, 117),
(711, 86),
(711, 119),
(711, 120),
(749, 121),
(749, 122),
(749, 123);

-- --------------------------------------------------------

--
-- Table structure for table `stars`
--

CREATE TABLE `stars` (
  `id` int(11) NOT NULL,
  `name` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `stars`
--

INSERT INTO `stars` (`id`, `name`) VALUES
(96, 'Aaron Eckhart'),
(21, 'Adria Arjona'),
(57, 'Alan Tudyk'),
(42, 'Alfie Allen'),
(43, 'Alison Brie'),
(33, 'Alison Sudol'),
(12, 'Amy Adams'),
(49, 'Andrew Garfield'),
(86, 'Anne Hathaway'),
(5, 'Anya Taylor-Joy'),
(47, 'Asa Butterfield'),
(25, 'Auli''i Cravalho'),
(120, 'Austin Stowell'),
(10, 'Ben Affleck'),
(16, 'Benedict Cumberbatch'),
(121, 'Brad Pitt'),
(39, 'Bradley Cooper'),
(112, 'Charlie Hunnam'),
(17, 'Chiwetel Ejiofor'),
(109, 'Chris Evans'),
(115, 'Chris Pine'),
(37, 'Chris Pratt'),
(94, 'Christian Bale'),
(90, 'Christopher Plummer'),
(1, 'Dane DeHaan'),
(103, 'Daniel Radcliffe'),
(64, 'Dev Patel'),
(122, 'Diane Kruger'),
(56, 'Diego Luna'),
(75, 'Duan Sanderson'),
(26, 'Dwayne Johnson'),
(31, 'Eddie Redmayne'),
(123, 'Eli Roth'),
(62, 'Emily Browning'),
(35, 'Emma Stone'),
(107, 'Eric Stonestreet'),
(46, 'Eva Green'),
(55, 'Felicity Jones'),
(93, 'Forest Whitaker'),
(23, 'Geoffrey Rush'),
(44, 'Gerard Butler'),
(6, 'Haley Lu Richardson'),
(95, 'Heath Ledger'),
(11, 'Henry Cavill'),
(54, 'Ian McShane'),
(89, 'Jai Courtney'),
(4, 'James McAvoy'),
(69, 'Janelle MonÃ¡e'),
(8, 'Jared Leto'),
(2, 'Jason Isaacs'),
(119, 'Jason Sudeikis'),
(58, 'Jennifer Lawrence'),
(92, 'Jeremy Renner'),
(87, 'Jessica Chastain'),
(19, 'John Gallagher Jr.'),
(22, 'Johnny Depp'),
(117, 'Karl Urban'),
(32, 'Katherine Waterston'),
(40, 'Keanu Reeves'),
(81, 'Keira Knightley'),
(108, 'Kevin Hart'),
(71, 'Kristen Wiig'),
(88, 'Lily James'),
(98, 'Logan Marshall-Green'),
(106, 'Louis C.K.'),
(51, 'Luke Bracey'),
(73, 'Mahershala Ali'),
(9, 'Margot Robbie'),
(28, 'Matt Damon'),
(13, 'Matthew McConaughey'),
(3, 'Mia Goth'),
(83, 'Michael Fassbender'),
(41, 'Michael Nyqvist'),
(60, 'Michael Sheen'),
(77, 'Morena Baccarin'),
(65, 'Nicole Kidman'),
(97, 'Noomi Rapace'),
(68, 'Octavia Spencer'),
(24, 'Orlando Bloom'),
(72, 'Owen Wilson'),
(53, 'PenÃ©lope Cruz'),
(27, 'Rachel House'),
(18, 'Rachel McAdams'),
(14, 'Reese Witherspoon'),
(105, 'Richard Harris'),
(110, 'Robert Downey Jr.'),
(113, 'Robert Pattinson'),
(66, 'Rooney Mara'),
(36, 'Rosemarie DeWitt'),
(104, 'Rupert Grint'),
(34, 'Ryan Gosling'),
(76, 'Ryan Reynolds'),
(50, 'Sam Worthington'),
(48, 'Samuel L. Jackson'),
(111, 'Scarlett Johansson'),
(15, 'Seth MacFarlane'),
(74, 'Shariff Earp'),
(114, 'Sienna Miller'),
(78, 'T.J. Miller'),
(67, 'Taraji P. Henson'),
(63, 'Taron Egerton'),
(29, 'Tian Jing'),
(61, 'Tom Hardy'),
(20, 'Tony Goldwyn'),
(38, 'Vin Diesel'),
(7, 'Will Smith'),
(30, 'Willem Dafoe'),
(70, 'Zach Galifianakis'),
(116, 'Zachary Quinto');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `username` varchar(30) NOT NULL,
  `password` varchar(128) NOT NULL,
  `email` varchar(50) NOT NULL,
  `name` varchar(30) NOT NULL,
  `surname` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `username`, `password`, `email`, `name`, `surname`) VALUES
(3, 'sava.jeremic', 'ebc894eade9f117fd97ddaf76967f7c4', 'jack96@gmail.com', 'Sava', 'Jeremic');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `directors`
--
ALTER TABLE `directors`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name_UNIQUE` (`name`);

--
-- Indexes for table `genres`
--
ALTER TABLE `genres`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name_UNIQUE` (`name`);

--
-- Indexes for table `movies`
--
ALTER TABLE `movies`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `title_UNIQUE` (`title`);

--
-- Indexes for table `movies_directors`
--
ALTER TABLE `movies_directors`
  ADD PRIMARY KEY (`movies_id`,`directors_id`),
  ADD KEY `fk_movies_has_directors_directors1_idx` (`directors_id`),
  ADD KEY `fk_movies_has_directors_movies_idx` (`movies_id`);

--
-- Indexes for table `movies_genres`
--
ALTER TABLE `movies_genres`
  ADD PRIMARY KEY (`movies_id`,`genres_id`),
  ADD KEY `fk_movies_has_genres_genres1_idx` (`genres_id`),
  ADD KEY `fk_movies_has_genres_movies1_idx` (`movies_id`);

--
-- Indexes for table `movies_stars`
--
ALTER TABLE `movies_stars`
  ADD PRIMARY KEY (`movies_id`,`stars_id`),
  ADD KEY `fk_movies_has_stars_stars1_idx` (`stars_id`),
  ADD KEY `fk_movies_has_stars_movies1_idx` (`movies_id`);

--
-- Indexes for table `stars`
--
ALTER TABLE `stars`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name_UNIQUE` (`name`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `directors`
--
ALTER TABLE `directors`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;
--
-- AUTO_INCREMENT for table `genres`
--
ALTER TABLE `genres`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=116;
--
-- AUTO_INCREMENT for table `movies`
--
ALTER TABLE `movies`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=750;
--
-- AUTO_INCREMENT for table `stars`
--
ALTER TABLE `stars`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=124;
--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `movies_directors`
--
ALTER TABLE `movies_directors`
  ADD CONSTRAINT `fk_movies_has_directors_directors1` FOREIGN KEY (`directors_id`) REFERENCES `directors` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_movies_has_directors_movies` FOREIGN KEY (`movies_id`) REFERENCES `movies` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `movies_genres`
--
ALTER TABLE `movies_genres`
  ADD CONSTRAINT `fk_movies_has_genres_genres1` FOREIGN KEY (`genres_id`) REFERENCES `genres` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_movies_has_genres_movies1` FOREIGN KEY (`movies_id`) REFERENCES `movies` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `movies_stars`
--
ALTER TABLE `movies_stars`
  ADD CONSTRAINT `fk_movies_has_stars_movies1` FOREIGN KEY (`movies_id`) REFERENCES `movies` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_movies_has_stars_stars1` FOREIGN KEY (`stars_id`) REFERENCES `stars` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
