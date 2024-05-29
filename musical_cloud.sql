-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jan 26, 2023 at 12:41 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `musical_cloud`
--

-- --------------------------------------------------------

--
-- Table structure for table `Album`
--

CREATE TABLE `Album` (
  `album_id` int(11) NOT NULL,
  `year` int(11) DEFAULT NULL,
  `title` varchar(40) DEFAULT NULL,
  `genre` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `Album`
--

INSERT INTO `Album` (`album_id`, `year`, `title`, `genre`) VALUES
(100, 2021, 'MoonChild Era', 'Indian Pop'),
(101, 2017, 'Divided', 'Pop'),
(103, 2020, 'G.O.A.T', 'Indian Pop'),
(104, 2020, 'Future Nostalgia', 'Pop'),
(105, 2018, 'Icarus Falls', 'Pop'),
(106, 2017, 'Reputation', 'Pop'),
(107, 2016, 'Ae Dil Hai Mushkil', 'Bollywood'),
(108, 2013, 'Yeh Jawaani Hai Deewani', 'Bollywood'),
(109, 2007, 'Jab We Met', 'Bollywood');

-- --------------------------------------------------------

--
-- Table structure for table `Artist`
--

CREATE TABLE `Artist` (
  `artist_name` varchar(30) NOT NULL,
  `artist_country` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `Artist`
--

INSERT INTO `Artist` (`artist_name`, `artist_country`) VALUES
('Arjit Singh', 'India'),
('Diljit Dosanjh', 'India'),
('Dua Lipa', 'England'),
('Ed Sheeran', 'England'),
('Mika Singh', 'India'),
('Mohit Chauhan', 'India'),
('Pritam Chakraborty', 'India'),
('Sreeram', 'India'),
('Taylor Swift', 'United States of America'),
('Zayn Malik', 'England');

-- --------------------------------------------------------

--
-- Table structure for table `bollyoldedited`
--

CREATE TABLE `bollyoldedited` (
  `Song Name` varchar(71) DEFAULT NULL,
  `Lyricist` varchar(21) DEFAULT NULL,
  `Singer` varchar(33) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `bollyoldedited`
--

INSERT INTO `bollyoldedited` (`Song Name`, `Lyricist`, `Singer`) VALUES
('Ude Jab Jab Zulfe Teri', 'Sahir Ludhianvi', 'Asha Bhosle & Mohammed Rafi'),
('Dheere Dheere Bol Koi Sun Na Le', 'Anand Bakshi', 'Lata Mangeshkar & Mukesh'),
('Jaate Huye Yeh Pal Chin Kyun Jaate Hai', 'Ravindra Jain', 'Ravindra Jain'),
('Kai Din Se Mujhe Hindi Lyrics,Ravindra Jain,\"Hemlata, Shailendra Singh\"', NULL, NULL),
('Jab Haal-E-Dil Tumse Kehne Ko', 'Surendra Sathi', 'Alka Yagnik'),
('Mausam Ki Tarah Lyrics', 'Sameer', 'Alka Yagnik'),
('Teri Ummed Tera Intezar Lyrics', 'Sameer', 'Kishore Kumar'),
('Silsila Ye Chaahat Ka Lyrics', 'Nusrat Badr', 'Shreya Ghoshal'),
('Bahut Pyaar Karte Hain (Male) Lyrics', 'Sameer', 'S.P Balasubrahmanyam'),
('Pal Pal Dil Ke Paas', 'Rajinder Krishan', 'Kishore Kumar and Lata Mangeshkar'),
('Pyaar Deewana Hota Hai', 'Anand-Bakshi', 'Kishore Kumar'),
('Roop Tera Mastana', 'Anand Bakshi', 'Kishore Kumar'),
('Mere Sapno Ki Rani Kab Aayegi Tu', 'Anand Bakshi', 'Kishre Kumar'),
('Chhup Gaye Saare Nazaare', 'Anand Bakshi', 'Lata Mangeshkar & Mohd. Rafi'),
('Aaj Kal Tere Mere Pyar Ke', 'Hasrat Jaipuri', 'Mohammed Rafi & Suman Kalyanpur'),
('Milo Na Tum To Hum Ghabraye', 'Kaifi Azmi.', 'Madan Mohan'),
('Aane Se Uske Aaye Bahar', 'Anand Bakshi', 'Mohammad Rafi'),
('Ek Pardesi Mera Dil Le Gaya', 'Qamar Jalalabadi', 'Asha Bhosle & Mohd Rafi'),
('Koi Haseena Jab', 'Anand Bakshi', 'Kishore Kumar'),
('Mere Rashke Qamar', 'Nusrat Fateh Ali Khan', 'Nusrat Fateh Ali Khan'),
('Main Hoon Khushrang Heena', 'Ravindra Jain', 'Lata Mangeshkar'),
('Dushman Na Kare', 'Indivar', 'Lata Mangeshkar'),
('Der Naa Ho Jaye Kahin', 'Ravindra Jain', 'Lata Mangeshkar'),
('Tu Is Tarah Se', 'Nida Fazli', 'Mohammed Rafi'),
('TUNE O RANGEELE', 'Majrooh Sultanpuri', 'Lata Mangeshkar'),
('KAJRA MOHABBAT WALA', 'H S Bihari', 'Asha Bhosle');

-- --------------------------------------------------------

--
-- Table structure for table `Bollywood`
--

CREATE TABLE `Bollywood` (
  `Song_No` int(11) NOT NULL,
  `Song_Name` varchar(100) NOT NULL,
  `Artists` varchar(100) NOT NULL,
  `Song_File` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `Bollywood`
--

INSERT INTO `Bollywood` (`Song_No`, `Song_Name`, `Artists`, `Song_File`) VALUES
(1, 'Ik Vaari Aa', 'Pritam & Arjit Singh', 'Bollywood/Ik Vaari Aa (Raabta) 128 Kbps.mp3 '),
(2, 'Subhanallah', 'Sreeram', 'Bollywood/SubhanAllah.mp3'),
(3, 'Amplifier', 'Imran Khan', 'Bollywood/Amplifier Imran Khan.mp3'),
(4, 'Jehda Nasha', 'IP Singh', 'Bollywood/Jeda Nasha.mp3'),
(5, 'Badtameez Dil', 'Benny Dayal', 'Bollywood/Batameez Dil.mp3'),
(6, 'Apna Bana Le', 'Sachin Jigar & Arjit Singh', 'Bollywood/Apna-Bana-Le(PaglaSongs).mp3'),
(7, 'Morni Banke', 'Guru Randhawa & Neha Kakkar', 'Bollywood/Morni Banke (Badhaai Ho) 128 Kbps.mp3'),
(8, 'Firecracker', 'Vishal Dadlani', 'Bollywood/Firecracker Jayeshbhai Jordaar 128 Kbps.mp3'),
(9, 'Humraah', 'Sachet Tandon', 'Bollywood/Humraah - Malang 128 Kbps.mp3'),
(10, 'Subah Subah', 'Arjit Singh & Prakriti Kakkar', 'Bollywood/Subah Subah (Sonu Ke Titu Ki Sweety) 128 Kbps.mp3'),
(11, 'Samjhawan', 'Jawad Ahmed', 'Bollywood/Samjhawan.mp3'),
(12, 'Tum Se Hi ', 'Pritam & Mohit Chauhan', 'Bollywood/Tum Se Hi 128 Kbps.mp3'),
(13, 'Dil Diyan Gallan', 'Atif Aslam', 'Bollywood/Dil Diyan Gallan (Tiger Zinda Hai) 128 Kbps.mp3'),
(14, 'Kya Mujhe Pyaar Hain', 'Kailash Kher', 'Bollywood/Kya Mujhe Pyaar Hai - Woh Lamhe 128 Kbps.mp3'),
(15, 'Lat Lag Gaye', 'Benny Dayal', 'Bollywood/Lat Lag Gayee - Race 2 128 Kbps.mp3'),
(16, 'Bulleya', 'Arjit Singh', 'Bollywood/Bulleya Ae Dil Hai Mushkil 128 Kbps.mp3'),
(17, 'Banjaara', 'Mohammed Irfan', 'Bollywood/Banjaara.mp3'),
(18, 'Khuda Jaane', 'Kailash Kher', 'Bollywood/Khuda Jaane.mp3'),
(19, 'Moh Moh Ke Dhaage', 'Monali Thakur', 'Bollywood/Moh Moh Ke Dhaage (Female).mp3'),
(20, 'Masakali', 'Mohit Chauhan', 'Bollywood/Masakali.mp3');

-- --------------------------------------------------------

--
-- Table structure for table `EnglishPop`
--

CREATE TABLE `EnglishPop` (
  `Song_No` int(11) NOT NULL,
  `Song_Name` varchar(100) NOT NULL,
  `Artists` varchar(100) NOT NULL,
  `Song_File` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `EnglishPop`
--

INSERT INTO `EnglishPop` (`Song_No`, `Song_Name`, `Artists`, `Song_File`) VALUES
(1, 'Shape Of You', 'Ed Sheeran', 'EnglishPop/Ed_Sheeran_-_Shape_of_You_(ColdMP3.com).mp3'),
(2, 'Levitating', 'Dua Lipa', 'EnglishPop/Dua_Lipa_-_Levitating.mp3'),
(3, 'One more night', 'Maroon 5', 'EnglishPop/Maroon_5_-_One_More_Night_(Jesusful.com).mp3'),
(4, 'Stressed Out', 'Twenty One Pilots', 'EnglishPop/Y2Mate.is - twenty one pilots Stressed Out [OFFICIAL VIDEO]-pXRviuL6vMY-160k-1654916648637.mp3'),
(5, 'I Ain\'t Worried', 'One Republic', 'EnglishPop/OneRepublic_-_I_Aint_Worried_luvmp.com.mp3'),
(6, 'Peaches', 'Justin Bieber', 'EnglishPop/Ed_Sheeran_-_Bad_Habits_9jaBam.com.mp3'),
(7, 'Bad Habits', 'Ed Sheeran', 'EnglishPop/Ed_Sheeran_-_Bad_Habits_9jaBam.com.mp3'),
(8, 'Counting Stars', 'OneRepublic', 'EnglishPop/Counting Stars - OneRepublic- [PagalWorld.NL].mp3'),
(9, 'Perfect', 'Logic', 'EnglishPop/Logic_-_Perfect_Soloplay.ng.mp3'),
(10, 'Nancy Mulligan', 'Ed Sheeran', 'EnglishPop/Ed Sheeran - Nancy Mulligan [Official Audio].mp3'),
(11, 'Bad Butterflies', 'Camila Cabello', 'EnglishPop/Camila-Cabello-Bad-Kind-of-Butterflies_-_Soloplay.ng.mp3'),
(12, 'Youth', 'Shawn Mendez', 'EnglishPop/Shawn Mendes - Youth (Official Lyric Video) ft. Khalid.mp3'),
(13, 'Pov', 'Ariana Grande', 'EnglishPop/Ariana_Grande_Pov_(thinkNews.com.ng).mp3'),
(14, 'Nothing Breaks Like A Heart', 'Miley Cyrus', 'EnglishPop/Mark-Ronson-Nothing-Breaks-Like-A-Heart-Ft.-Miley-Cyrus-via-Naijafinix.com_.mp3'),
(15, 'Kiwi', 'Harry Styles', 'EnglishPop/Harry Styles Kiwi Lyrics.mp3'),
(16, 'Better Not Together', 'Anne Marie', 'EnglishPop/Anne-Marie_-_Better_Not_Together.mp3'),
(17, 'Confetti', 'Little Mix', 'EnglishPop/Little Mix - Confetti (Official Audio Video Version) ft. Saweetie.mp3'),
(18, 'Everything I Wanted', 'Billie Eilish', 'EnglishPop/Billie_Eilish_-_Everything_I_Wanted_(Jesusful.com).mp3'),
(19, 'Lets Fall In Love For The Night', 'Finneas', 'EnglishPop/Finneas-Lets-Fall-In-Love-For-The-Night-via-Naijafinix.com_.mp3'),
(20, 'Until I Found You', 'Stephen Sanchez', 'EnglishPop/Until-I-Found-You(PagalWorld).mp3'),
(21, 'There\'s Nothing Holding\' Me Back', 'Shawn Mendez', 'EnglishPop/Shawn_Mendes_-_Theres_Nothing_Holding_Me_Back.mp3');

-- --------------------------------------------------------

--
-- Table structure for table `hiphop`
--

CREATE TABLE `hiphop` (
  `Song_No` int(11) NOT NULL,
  `Song_Name` varchar(100) NOT NULL,
  `Artists` varchar(100) NOT NULL,
  `Song_File` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `Kannada`
--

CREATE TABLE `Kannada` (
  `Song_No` int(3) NOT NULL,
  `Song_Name` varchar(100) NOT NULL,
  `Artists` varchar(100) NOT NULL,
  `Song_File` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `Kannada`
--

INSERT INTO `Kannada` (`Song_No`, `Song_Name`, `Artists`, `Song_File`) VALUES
(1, 'Kannale Karedaaga', 'Sanjith Hegde', 'Kannada/KANNALE KAREDAAGA - Lyrical Video Shaibya M.G.R  Sanjith Hegde  Sanmith Vihaan Meghashree Gowda.mp3'),
(2, 'Neeli Neeli', 'Javed Ali', 'Kannada/Neeli Neeli.mp3'),
(3, 'Enendu Hesaridalli', 'Sonu Nigam', 'Kannada/Anna Bond Kannada Movie HD Video Songs  Yenendu Hesaridali  Puneeth Rajkumar, Priyamani.mp3'),
(4, 'Gamanava', 'Javed Ali', 'Kannada/Gamanava.mp3'),
(5, 'Madhura Huchhu', 'Tippu', 'Kannada/Madhura Huchchu-Shreya Ghoshal.mp3'),
(6, 'Aakasmika Geleyanu', 'Kunal Ganjawala', 'Kannada/Aakasmika Geleyanu.mp3'),
(7, 'Hoovina Santhege', 'Sonu Nigam', 'Kannada/Hoovina Santhege Video Song  Lucky Kannada Movie  Full HD  Yash, Ramya.mp3'),
(8, 'Hey Hoove', 'Ravindra Soragavi', 'Kannada/Hey Hoove.mp3'),
(9, 'Hey Manase', 'Akash Talapatra', 'Kannada/Hey Manase.mp3'),
(10, 'Oh Parijatha', 'Sonu Nigam', 'Kannada/Parijatha  O Parijatha  Sonu Nigam  Shreya Ghoshal  Diganth  Aindrita Ray  Manomurthy.mp3');

-- --------------------------------------------------------

--
-- Table structure for table `oldies`
--

CREATE TABLE `oldies` (
  `Song_No` int(11) NOT NULL,
  `Song_Name` varchar(100) NOT NULL,
  `Artists` varchar(100) NOT NULL,
  `Song_File` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `oldies`
--

INSERT INTO `oldies` (`Song_No`, `Song_Name`, `Artists`, `Song_File`) VALUES
(1, 'Ude Jab Jab Zulfe Teri', 'Asha Bhosle & Mohammed Rafi', 'oldies/udejabterisulfe.mp3'),
(2, 'KAJRA MOHABBAT WALA', 'Asha Bhosle', 'oldies/Kajra Mohabbat Wala - Kismat.mp3'),
(3, 'Dheere Dheere Bol Koi Sun Na Le', 'Lata Mangeshkar & Mukesh', 'oldies/Dheere Dheere Bol Koi Sun Na Le 128 Kbps.mp3'),
(4, 'Roop Tera Masthana', 'Kishore Kumar', 'oldies/roopteramasthana.mp3'),
(5, 'Chhup Gaye Saare Nazaare', 'Lata Mangeshkar & Mohd. Rafi', 'oldies/old_DR-Dil Ne Dil Ko Pukara.mp3'),
(6, 'Aane Se Uske Aaye Bahar', 'Mohammed Rafi', 'oldies/Aane Se Uske Aaye Bahar Jeene Ki Raah 128 Kbps.mp3'),
(7, 'Dushman Na Kare', 'Lata Mangeshkar', 'oldies/Dushman Na Kare Dost Ne Wo Kaam Kiya Hai.mp3'),
(8, 'Koi Haseena Jab', 'Kishore Kumar', 'oldies/Koi Haseena - Sholay 128 Kbps.mp3'),
(9, 'Tu Is Tarah Se', 'Mohammed Rafi', 'oldies/Tu Is Tarah Se.mp3'),
(10, 'Pal Pal Dil Ke Paas', 'Kishore Kumar and Lata Mangeshkar', 'oldies/Pal Pal Dil Ke Paas - Blackmail.mp3'),
(11, 'Der Naa Ho Jaye Kahin', 'Lata Mangeshkar', 'oldies/Der Na Ho Jaye Kahin 128 Kbps.mp3'),
(12, 'Mausam Ki Tarah', 'Alka Yagnik', 'oldies/Mausam-Alka-Yagnik-Manhar-Udhas.mp3'),
(13, 'Koi Haseena Jab', 'Kishore Kumar', 'oldies/Koi Haseena - Sholay 128 Kbps.mp3');

-- --------------------------------------------------------

--
-- Table structure for table `Rock`
--

CREATE TABLE `Rock` (
  `Song_No` int(11) NOT NULL,
  `Song_Name` varchar(100) NOT NULL,
  `Artists` varchar(100) NOT NULL,
  `Song_File` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `Song`
--

CREATE TABLE `Song` (
  `song_id` int(11) NOT NULL,
  `album_id` int(11) DEFAULT NULL,
  `song_name` varchar(35) DEFAULT NULL,
  `artist_name` varchar(30) DEFAULT NULL,
  `Duration` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `Song`
--

INSERT INTO `Song` (`song_id`, `album_id`, `song_name`, `artist_name`, `Duration`) VALUES
(1000, 100, 'Lover', 'Diljit Dosanjh', '00:03:10'),
(1001, 101, 'Perfect', 'Ed Sheeran', '00:04:25'),
(1002, 101, 'Shape Of You', 'Ed Sheeran', '00:03:53'),
(1003, 103, 'Born To Shine', 'Diljit Dosanjh', '00:03:32'),
(1004, 104, 'Levitating', 'Dua Lipa', '00:03:20'),
(1005, 105, 'Let Me', 'Zayn Malik', '00:03:05'),
(1006, 106, 'Delicate', 'Taylor Swift', '00:03:46'),
(1007, 109, 'Tum Se Hi', 'Mohit Chauhan', '00:05:43'),
(1008, 109, 'Ye Ishq Hain', 'Pritam Chakraborty', '00:04:41'),
(1009, 107, 'Channa Mereya', 'Arjit Singh', '00:04:49'),
(1010, 107, 'Bulleya', 'Pritam Chakraborty', '00:04:13');

-- --------------------------------------------------------

--
-- Table structure for table `Song_Requests`
--

CREATE TABLE `Song_Requests` (
  `Song_No` int(11) NOT NULL,
  `Song_Name` varchar(100) NOT NULL,
  `Artists` varchar(100) NOT NULL,
  `Genre` varchar(100) NOT NULL,
  `Email` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `Song_Requests`
--

INSERT INTO `Song_Requests` (`Song_No`, `Song_Name`, `Artists`, `Genre`, `Email`) VALUES
(1, 'Banjaara', 'Mohammed Irfan', 'Indian Pop', 'rohannagula@gmail.com'),
(2, 'Galliyan', 'Ankit Tiwari', 'Indian Pop', 'ravimadan_2000@yahoo.com'),
(3, 'Tum Hi Ho', 'Arjit Singh', 'Indian Pop', 'ravimadan_2000@yahoo.com'),
(4, 'Milne Hai Mujhse Aayi', 'Arjit Singh', 'Indian Pop', 'rohannagula@gmail.com'),
(5, 'Animal', 'Maroon 5', 'English Pop', 'ravimadan_2000@yahoo.com'),
(6, 'Mirrors', 'Justin Timberlake', 'English Pop', 'rohannagula@gmail.com'),
(7, 'Despacito', 'Daddy Yankee', 'Spanish pop', 'rohannagula@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `user_name` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `user_id`, `user_name`, `password`, `date`) VALUES
(1, 694935, 'Sakshi', '1234', '2023-01-11 02:16:23'),
(2, 72196, 'Rohan', '12345', '2023-01-11 05:25:51'),
(3, 6517, 'Sathyagnana', '1234', '2023-01-19 12:40:25'),
(4, 40976407837845, 'Rohit', '1234', '2023-01-19 17:28:56'),
(9, 777264380684583, 'Revathi', '1234', '2023-01-20 01:34:52'),
(10, 38829632304507, 'Ravi', '1234', '2023-01-20 01:42:16'),
(11, 7483571620235573023, 'Rajini', '1234', '2023-01-20 08:30:15'),
(12, 19167861995, 'Maharsh', '1234', '2023-01-20 08:37:12'),
(13, 5030, 'Samarth Bharadwaj', '1234', '2023-01-20 17:27:25'),
(14, 530538174465843, 'Raushan Neckar', '1234', '2023-01-26 10:58:08');

--
-- Triggers `users`
--
DELIMITER $$
CREATE TRIGGER `after_users_insert` AFTER INSERT ON `users` FOR EACH ROW BEGIN
INSERT INTO users_backup VALUES(NEW.id, NEW.user_id, NEW.user_name, NEW.password, NEW.date);
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `users_backup`
--

CREATE TABLE `users_backup` (
  `id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `user_name` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users_backup`
--

INSERT INTO `users_backup` (`id`, `user_id`, `user_name`, `password`, `date`) VALUES
(1, 694935, 'Sakshi', '1234', '2023-01-11 02:16:23'),
(2, 72196, 'Rohan', '12345', '2023-01-11 05:25:51'),
(3, 6517, 'Sathyagnana', '1234', '2023-01-19 12:40:25'),
(4, 40976407837845, 'Rohit', '1234', '2023-01-19 17:28:56'),
(9, 777264380684583, 'Revathi', '1234', '2023-01-20 01:34:52'),
(10, 38829632304507, 'Ravi', '1234', '2023-01-20 01:42:16'),
(11, 7483571620235573023, 'Rajini', '1234', '2023-01-20 08:30:15'),
(12, 19167861995, 'Maharsh', '1234', '2023-01-20 08:37:12'),
(13, 5030, 'Samarth Bharadwaj', '1234', '2023-01-20 17:27:25'),
(14, 530538174465843, 'Raushan Neckar', '1234', '2023-01-26 10:58:08');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `Album`
--
ALTER TABLE `Album`
  ADD PRIMARY KEY (`album_id`);

--
-- Indexes for table `Artist`
--
ALTER TABLE `Artist`
  ADD PRIMARY KEY (`artist_name`);

--
-- Indexes for table `Bollywood`
--
ALTER TABLE `Bollywood`
  ADD PRIMARY KEY (`Song_No`);

--
-- Indexes for table `EnglishPop`
--
ALTER TABLE `EnglishPop`
  ADD PRIMARY KEY (`Song_No`);

--
-- Indexes for table `hiphop`
--
ALTER TABLE `hiphop`
  ADD PRIMARY KEY (`Song_No`);

--
-- Indexes for table `Kannada`
--
ALTER TABLE `Kannada`
  ADD PRIMARY KEY (`Song_No`);

--
-- Indexes for table `oldies`
--
ALTER TABLE `oldies`
  ADD PRIMARY KEY (`Song_No`);

--
-- Indexes for table `Rock`
--
ALTER TABLE `Rock`
  ADD PRIMARY KEY (`Song_No`);

--
-- Indexes for table `Song`
--
ALTER TABLE `Song`
  ADD PRIMARY KEY (`song_id`),
  ADD KEY `album_id` (`album_id`),
  ADD KEY `artist_name` (`artist_name`);

--
-- Indexes for table `Song_Requests`
--
ALTER TABLE `Song_Requests`
  ADD PRIMARY KEY (`Song_No`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `date` (`date`),
  ADD KEY `user_name` (`user_name`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `users_backup`
--
ALTER TABLE `users_backup`
  ADD PRIMARY KEY (`id`),
  ADD KEY `date` (`date`),
  ADD KEY `user_name` (`user_name`),
  ADD KEY `user_id` (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `Bollywood`
--
ALTER TABLE `Bollywood`
  MODIFY `Song_No` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `EnglishPop`
--
ALTER TABLE `EnglishPop`
  MODIFY `Song_No` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `hiphop`
--
ALTER TABLE `hiphop`
  MODIFY `Song_No` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `Kannada`
--
ALTER TABLE `Kannada`
  MODIFY `Song_No` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `oldies`
--
ALTER TABLE `oldies`
  MODIFY `Song_No` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `Rock`
--
ALTER TABLE `Rock`
  MODIFY `Song_No` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `Song`
--
ALTER TABLE `Song`
  MODIFY `song_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1016;

--
-- AUTO_INCREMENT for table `Song_Requests`
--
ALTER TABLE `Song_Requests`
  MODIFY `Song_No` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `users_backup`
--
ALTER TABLE `users_backup`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `Song`
--
ALTER TABLE `Song`
  ADD CONSTRAINT `song_ibfk_1` FOREIGN KEY (`album_id`) REFERENCES `Album` (`album_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `song_ibfk_2` FOREIGN KEY (`artist_name`) REFERENCES `Artist` (`artist_name`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
