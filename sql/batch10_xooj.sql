-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 01, 2020 at 07:42 AM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.2.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `batch10_xooj`
--

-- --------------------------------------------------------

--
-- Table structure for table `albums`
--

CREATE TABLE `albums` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `artist` bigint(20) UNSIGNED NOT NULL,
  `genre` bigint(20) UNSIGNED NOT NULL,
  `artworkPath` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `albums`
--

INSERT INTO `albums` (`id`, `title`, `artist`, `genre`, `artworkPath`, `created_at`, `updated_at`) VALUES
(1, '25', 1, 4, 'images/albumphoto/adele.jpg', NULL, NULL),
(2, 'My Everything', 2, 9, 'images/albumphoto/arina.jpg', NULL, NULL),
(3, '24K Magic', 3, 8, 'images/albumphoto/bruno.jpg', NULL, NULL),
(4, 'Liar', 4, 6, 'images/albumphoto/camila.jpg', NULL, NULL),
(5, 'Dualipa', 5, 1, 'images/albumphoto/dualipa.jpg', NULL, NULL),
(6, 'The Neon lights  Tours', 6, 2, 'images/albumphoto/demi.png', NULL, NULL),
(7, 'Devide', 7, 3, 'images/albumphoto/ed.jpg', NULL, NULL),
(8, 'Lights The Remixes Part2', 8, 5, 'images/albumphoto/ellie.jpg', NULL, NULL),
(9, 'Sinatra', 9, 6, 'images/albumphoto/frank.jpg', NULL, NULL),
(10, 'BELIEVE', 10, 7, 'images/albumphoto/justiber.jpg', NULL, NULL),
(12, 'STAR', 12, 9, 'images/albumphoto/grant.jpg', NULL, NULL),
(13, 'SYRE', 13, 3, 'images/albumphoto/jaden.jpg', NULL, NULL),
(14, 'PRISM', 14, 3, 'images/albumphoto/katy.jpg', NULL, NULL),
(15, 'JOANNE', 15, 2, 'images/albumphoto/lady.jpg', NULL, NULL),
(16, 'SOY', 16, 4, 'images/albumphoto/lali.png', NULL, NULL),
(17, 'CAN\'T BE TAMED', 17, 6, 'images/albumphoto/miley.jpg', NULL, NULL),
(18, 'WHIP IT', 18, 7, 'images/albumphoto/nicki.jpg', NULL, NULL),
(19, 'I Hate You ', 19, 1, 'images/albumphoto/olivia.jpg', '2019-11-18 08:41:57', '2019-11-18 08:41:57'),
(20, 'Euro Tour', 20, 2, 'images/albumphoto/post.jpg', NULL, NULL),
(21, 'Dancing In Heaven', 21, 2, 'images/albumphoto/q-feel.jpg', NULL, NULL),
(22, 'A Girl Like Me', 22, 3, 'images/albumphoto/rihanna.jpg', NULL, NULL),
(23, 'Reggae Remix', 23, 4, 'images/albumphoto/selena.jpg', NULL, NULL),
(24, 'Water', 24, 5, 'images/albumphoto/ugly-god.jpg', NULL, NULL),
(25, 'LIBER MAN', 25, 8, 'images/albumphoto/vanessa.jpg', NULL, NULL),
(26, 'Whip My Hair', 26, 4, 'images/albumphoto/willow.jpg', NULL, NULL),
(27, 'Get Of Me', 27, 3, 'images/albumphoto/x-raided.jpg', NULL, NULL),
(28, 'LOVER', 28, 9, 'images/albumphoto/taylor.webp', NULL, NULL),
(29, 'The Essentials', 29, 4, 'images/albumphoto/icecube.jpg', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `artists`
--

CREATE TABLE `artists` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `gender` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `photo` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `artists`
--

INSERT INTO `artists` (`id`, `name`, `gender`, `photo`, `created_at`, `updated_at`) VALUES
(1, 'Adele', 'Female', 'images/artistphoto/a1.jpg', NULL, NULL),
(2, 'Arina Grande', 'Female', 'images/artistphoto/a2.jpg', NULL, NULL),
(3, 'Bruno Mars', 'Female', 'images/artistphoto/b.jpg', NULL, NULL),
(4, 'Camila Cabello', 'Female', 'images/artistphoto/c.jpg', NULL, '2019-11-15 06:00:10'),
(5, 'Dua Lipa', 'Female', 'images/artistphoto/d1.jpg', NULL, NULL),
(6, 'Demilovato', 'Female', 'images/artistphoto/d2.jpg', NULL, NULL),
(7, 'Ed Shreen', 'Male', 'images/artistphoto/e1.jpg', NULL, NULL),
(8, 'Eile Glouding', 'Female', 'images/artistphoto/e2.jpg', NULL, NULL),
(9, 'Frank Sinatra', 'Male', 'images/artistphoto/f.jpg', NULL, NULL),
(10, 'Justin Bieber', 'Male', 'images/artistphoto/j1.jpg', NULL, NULL),
(12, 'Grant Gustin', 'Male', 'images/artistphoto/g.jpg', NULL, NULL),
(13, 'Jaden Smith', 'Male', 'images/artistphoto/j2.jpg', NULL, NULL),
(14, 'Katy Perry', 'Female', 'images/artistphoto/k.jpg', NULL, NULL),
(15, 'Lady Gaga', 'Female', 'images/artistphoto/l1.jpg', NULL, NULL),
(16, 'Lali', 'Female', 'images/artistphoto/l2.jpg', NULL, NULL),
(17, 'Miley Cyrus', 'Female', 'images/artistphoto/m.jpg', NULL, NULL),
(18, 'Niki Minaj', 'Female', 'images/artistphoto/n.jpg', NULL, NULL),
(19, 'Olivia O\'Brien', 'Female', 'images/artistphoto/o.jpg', NULL, NULL),
(20, 'Post Malone', 'Male', 'images/artistphoto/p.jpg', NULL, NULL),
(21, 'Q-FEEL', 'Male', 'images/artistphoto/q.jpg', NULL, NULL),
(22, 'Rihanna', 'Female', 'images/artistphoto/r.jpg', NULL, NULL),
(23, 'Selena Gomez', 'Female', 'images/artistphoto/s.jpg', NULL, NULL),
(24, 'Ugly God', 'Male', 'images/artistphoto/u.jpg', NULL, NULL),
(25, 'Vanessa Carlton', 'Female', 'images/artistphoto/v.jpg', NULL, NULL),
(26, 'Willow Smith', 'Female', 'images/artistphoto/w.jpg', NULL, NULL),
(27, 'X-Raided', 'Male', 'images/artistphoto/x.jpg', NULL, NULL),
(28, 'Taylor Swift', 'Female', 'images/artistphoto/t.jpg', NULL, NULL),
(29, 'Ice Cube', 'Male', 'images/artistphoto/i.jpg', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `genres`
--

CREATE TABLE `genres` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `genres`
--

INSERT INTO `genres` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'pop', NULL, NULL),
(2, 'rock', NULL, NULL),
(3, 'jazz', NULL, NULL),
(4, 'hip-hop', NULL, NULL),
(5, 'edm', NULL, NULL),
(6, 'country', NULL, NULL),
(7, 'k-pop', NULL, NULL),
(8, 'folk', NULL, NULL),
(9, 'punk', NULL, NULL),
(10, 'slow-rock', NULL, '2019-11-18 09:00:01');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_11_14_072713_create_songs_table', 1),
(5, '2019_11_14_074934_create_artists_table', 1),
(6, '2019_11_14_075206_create_genres_table', 1),
(7, '2019_11_14_075540_create_albums_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `songs`
--

CREATE TABLE `songs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `artist` bigint(20) UNSIGNED NOT NULL,
  `album` bigint(20) UNSIGNED NOT NULL,
  `genre` bigint(20) UNSIGNED NOT NULL,
  `duration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `path` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `albumOrder` int(11) NOT NULL DEFAULT 0,
  `plays` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `songs`
--

INSERT INTO `songs` (`id`, `title`, `artist`, `album`, `genre`, `duration`, `path`, `albumOrder`, `plays`, `created_at`, `updated_at`) VALUES
(1, 'Acoustic Breeze', 28, 28, 1, '4:15', 'assets/music/Taylor Swift - Look What You Made Me Do(MP3_160K).mp3', 1, 56, NULL, '2020-01-16 22:21:00'),
(2, 'A new beginning', 28, 28, 1, '4:32', 'assets/music/Taylor Swift - Blank Space(MP3_160K).mp3', 2, 32, NULL, '2020-01-16 22:18:00'),
(3, 'Better Days', 28, 28, 2, '4:08', 'assets/music/Taylor Swift - ME_ (feat. Brendon Urie of Panic_ A(MP3_160K)Taylor Swift - ME_ (feat. Brendon Urie of Panic_ A(MP3_160K).mp3', 3, 20, NULL, '2020-01-20 21:52:05'),
(4, 'Buddy', 28, 28, 3, '4:01', 'assets/music/Taylor Swift - Shake It Off(MP3_160K).mp3', 4, 23, NULL, '2020-01-16 22:12:15'),
(5, 'Clear Day', 28, 28, 4, '3:39', 'assets/music/Taylor Swift - The Archer (Lyric Video)(MP3_160K).mp3', 5, 21, NULL, '2020-01-16 22:21:54'),
(6, 'Going Higher', 28, 28, 1, '3:48', 'assets/music/Taylor Swift - You Belong With Me(MP3_160K).mp3', 1, 22, NULL, '2020-01-16 22:20:07'),
(7, 'Funny Song', 28, 28, 2, '3:30', 'assets/music/Taylor Swift - You Need To Calm Down(MP3_160K).mp3', 2, 21, NULL, '2020-01-16 22:16:00'),
(8, 'Funky Element', 4, 4, 3, '3:25', 'assets/music/Shawn Mendes_ Camila Cabello - Señorita(MP3_160K).mp3', 2, 32, NULL, '2020-01-31 00:23:21'),
(9, 'Extreme Action', 4, 4, 4, '3:25', 'assets/music/Señorita -Shawn mendes ft.  Camila Cabello-(MP3_160K).mp3', 3, 19, NULL, '2020-01-16 22:18:14'),
(10, 'Epic', 23, 23, 5, '3:32', 'assets/music/Selena Gomez_ Marshmello - Wolves(MP3_160K).mp3', 3, 18, NULL, '2020-01-16 22:20:54'),
(11, 'Energy', 23, 23, 6, '3:26', 'assets/music/SELENA GOMEZ_ JUSTIN BIEBER - Lose You To Love Me(MP3_160K).mp3', 4, 14, NULL, '2020-01-12 11:32:09'),
(12, 'Dubstep', 23, 23, 7, '3:20', 'assets/music/Selena Gomez _ The Scene - Who Says(MP3_160K).mp3', 5, 21, NULL, '2020-01-05 10:01:59'),
(13, 'Happiness', 23, 23, 8, '3:57', 'assets/music/Selena Gomez - Undercover(MP3_160K).mp3', 5, 8, NULL, '2020-01-05 10:09:47'),
(14, 'Happy Rock', 23, 23, 9, '4:35', 'assets/music/Selena Gomez - The Heart Wants What It Wants(MP3_160K).mp3', 4, 17, NULL, '2020-01-16 22:16:07'),
(16, 'Little Idea', 23, 23, 1, '2:43', 'assets/music/Selena Gomez - Look At Her Now(MP3_160K).mp3', 2, 12, NULL, '2020-01-31 00:23:28'),
(17, 'Memories', 23, 23, 2, '3:14', 'assets/music/Selena Gomez - Good For You(MP3_160K).mp3', 1, 14, NULL, '2020-01-30 13:49:39'),
(18, 'Moose', 2, 2, 1, '3:24', 'assets/music/Last Christmas - Ariana Grande LYRICS(MP3_160K).mp3', 5, 50, NULL, '2020-01-16 22:22:05'),
(19, 'What Do You Mean', 10, 10, 2, '4:57', 'assets/music/Justin Bieber - What Do You Mean(MP3_160K) - Copy.mp3', 4, 79, NULL, '2020-01-05 10:41:52'),
(20, 'Sorry', 10, 10, 3, '3:18', 'assets/music/Justin Bieber - Sorry(MP3_160K).mp3', 3, 19, NULL, '2019-11-23 00:05:47'),
(21, 'Pray', 10, 10, 2, '3:32', 'assets/music/Justin Bieber - Pray(MP3_160K) - Copy.mp3', 2, 23, NULL, '2020-01-31 00:14:17'),
(22, 'One Time', 10, 10, 5, '4:02', 'assets/music/DJ Khaled - I_m The One ft. Justin Bieber_ Quavo(MP3_160K) - Copy.mp3', 1, 15, NULL, '2020-01-16 22:17:54'),
(23, 'One Less Lonely Girl', 10, 10, 1, '3:48', 'assets/music/Justin Bieber - One Less Lonely Girl(MP3_160K).mp3', 1, 10, NULL, '2019-11-20 08:52:19'),
(24, 'Sci-fi', 28, 28, 2, '3:12', 'assets/music/Taylor Swift - Crazier [HD](MP3_160K).mp3', 2, 12, NULL, '2020-01-05 10:26:16'),
(25, 'Slow Motion', 28, 28, 3, '3:56', 'assets/music/Taylor Swift - Love Story(MP3_160K).mp3', 3, 10, NULL, '2020-01-12 11:22:43'),
(26, 'Sunny', 10, 10, 4, '3:40', 'assets/music/Justin Bieber - All That Matters(MP3_160K) - Copy.mp3', 4, 15, NULL, '2020-01-12 11:24:08'),
(27, 'Boyfriend', 10, 10, 5, '3:30', 'assets/music/Justin Bieber - Boyfriend(MP3_160K).mp3', 5, 6, NULL, '2020-01-12 11:32:55'),
(28, 'Quavo', 10, 10, 7, '5:21', 'assets/music/DJ Khaled - I_m The One ft. Justin Bieber_ Quavo(MP3_160K) - Copy.mp3', 4, 17, NULL, '2020-01-30 13:49:36'),
(29, 'Baby', 10, 10, 8, '3:44', 'assets/music/Justin Bieber - Baby ft. Ludacris(MP3_160K).mp3 ', 3, 11, NULL, '2019-11-20 21:46:20'),
(30, 'Never Say', 10, 10, 9, '3:49', 'assets/music/Justin Bieber - Never Say Never ft. Jaden Smith(MP3_160K) - Copy.mp3 ', 2, 7, NULL, '2020-01-05 10:41:28'),
(32, 'love Yourself', 10, 10, 1, '3:51', 'assets/music/Justin Bieber - Love Yourself (Lyrics)(MP3_160K) - Copy.mp3', 0, 11, '2019-11-15 22:41:58', '2019-11-23 00:12:09'),
(36, 'Beauty And A Beat', 10, 10, 6, '3:48', 'assets/music/Justin Bieber - Beauty And A Beat(MP3_160K).mp3', 0, 6, NULL, '2019-11-20 22:32:00'),
(37, 'Despacito', 10, 10, 5, '4:10', 'assets/music/Justin Bieber - Despacito(MP3_160K).mp3', 0, 7, NULL, '2020-01-16 22:16:55'),
(38, 'Water Under The Bridge', 1, 1, 2, '3:53', 'assets/music/Adele - Water Under The Bridge(MP3_160K).mp3', 0, 51, NULL, '2020-01-12 11:23:36'),
(39, ' Make You Feel My Love', 1, 1, 2, '3:43', 'assets/music/Adele - Make You Feel My Love(MP3_160K).mp3', 0, 11, NULL, '2020-01-16 22:22:07'),
(40, ' All I Ask', 1, 1, 2, '4:30', 'assets/music/Adele - All I Ask(MP3_160K).mp3', 0, 8, NULL, '2020-01-05 10:10:11'),
(41, 'Someone Like You', 1, 1, 2, '4:39', 'assets/music/Adele - Someone Like You(MP3_160K).mp3', 0, 11, NULL, '2019-11-20 08:50:42'),
(42, 'Send My Love', 1, 1, 2, '3:45', 'assets/music/Adele - Send My Love(MP3_160K).mp3', 0, 6, NULL, '2020-01-05 10:07:46'),
(43, ' Skyfall', 1, 1, 2, '4:49', 'assets/music/Adele - Skyfall(MP3_160K).mp3', 0, 11, NULL, '2019-11-20 20:41:47'),
(44, ' Set Fire To The Rain', 1, 1, 2, '3:58', 'assets/music/Adele - Set Fire To The Rain (Live at The Royal Al(MP3_160K).mp3', 0, 7, NULL, '2019-11-20 21:15:58'),
(45, 'Rolling in the Deep', 1, 1, 2, '3:53', 'assets/music/Adele - Rolling in the Deep(MP3_160K).mp3', 0, 9, NULL, '2020-01-31 00:12:44'),
(46, 'Someone Like You', 1, 1, 2, '4:44', 'assets/music/Adele - Someone Like You(MP3_70K).mp3', 0, 6, NULL, '2019-11-20 20:51:58'),
(47, ' Hello', 1, 1, 2, '6:06', 'assets/music/Adele - Hello(MP3_70K).mp3', 0, 1, NULL, '2019-11-20 21:03:06'),
(48, ' Side To Side ft. Nicki Minaj', 2, 2, 3, '3:57', 'assets/music/Ariana Grande - Side To Side ft. Nicki Minaj(MP3_70K).mp3', 0, 8, NULL, '2020-01-16 22:15:49'),
(49, ' Miley Cyrus_ Lana Del Rey', 2, 2, 3, '3:52', 'assets/music/Ariana Grande_ Miley Cyrus_ Lana Del Rey(MP3_160K).mp3', 0, 8, NULL, '2019-11-20 21:43:00'),
(50, 'Break Free ft. Zedd', 2, 2, 3, '4:07', 'assets/music/Ariana Grande - Break Free ft. Zedd(MP3_160K).mp3', 0, 4, NULL, '2020-01-16 22:21:05'),
(51, '7 Rings', 2, 2, 3, '3:04', 'assets/music/Ariana Grande _7 rings(MP3_160K).mp3', 0, 5, NULL, '2020-01-16 22:21:33'),
(52, ' It Will Rain', 3, 3, 4, '4:26', 'assets/music/Bruno Mars - It Will Rain(MP3_160K).mp3', 0, 34, NULL, '2020-01-16 22:16:57'),
(53, 'Versace on the Floor', 3, 3, 4, '5:36', 'assets/music/Bruno Mars - Versace on the Floor(MP3_160K).mp3', 0, 3, NULL, '2019-11-20 01:02:32'),
(54, ' When I Was Your Man', 3, 3, 4, '3:54', 'assets/music/Bruno Mars - When I Was Your Man(MP3_160K).mp3', 0, 8, NULL, '2020-01-16 22:15:32'),
(55, 'It Will Rain', 3, 3, 4, '4:20', 'assets/music/It Will Rain - Bruno Mars(MP3_160K).mp3', 0, 8, NULL, '2019-11-20 03:26:22'),
(56, 'Marry You', 3, 3, 4, '3:50', 'assets/music/Bruno Mars - Marry You(MP3_160K).mp3', 0, 5, NULL, '2020-01-16 22:22:08'),
(57, 'Talking To The Moon', 3, 3, 4, '3:37', 'assets/music/Bruno Mars - Talking To The Moon(MP3_160K).mp3', 0, 5, NULL, '2019-11-20 09:50:40'),
(58, ' The Lazy Song', 3, 3, 4, '3:28', 'assets/music/Bruno Mars - The Lazy Song(MP3_160K).mp3', 0, 3, NULL, '2019-11-20 21:16:26'),
(59, '24K Magic', 3, 3, 4, '3:46', 'assets/music/Bruno Mars - 24K Magic(MP3_160K).mp3', 0, 4, NULL, '2019-11-20 08:46:53'),
(60, 'Grenade', 3, 3, 4, '3:55', 'assets/music/Bruno Mars - Grenade(MP3_160K).mp3', 0, 0, NULL, NULL),
(61, 'That_s What I Like', 3, 3, 4, '3:30', 'assets/music/Bruno Mars - That_s What I Like(MP3_160K).mp3', 0, 1, NULL, '2019-11-20 08:49:46'),
(62, 'Just The Way You Are', 3, 3, 4, '4:01', 'assets/music/Bruno Mars - Just The Way You Are(MP3_160K).mp3', 0, 2, NULL, '2020-01-05 10:24:22'),
(63, 'South of the Border', 4, 4, 5, '4:45', 'assets/music/Ed Sheeran - South of the Border (feat. Camila Cab(MP3_160K) - Copy.mp3', 0, 3, NULL, '2020-01-05 10:10:08'),
(64, 'Real Friends', 4, 4, 3, '3:35', 'assets/music/Camila Cabello - Real Friends(MP3_160K) - Copy.mp3', 0, 0, NULL, NULL),
(65, ' Someone You Loved', 4, 4, 4, '3:13', 'assets/music/Camila Cabello - Someone You Loved(MP3_160K) - Copy.mp3', 0, 2, NULL, '2020-01-12 10:06:58'),
(66, 'LIAR', 4, 4, 5, '3:35', 'assets/music/Camila Cabello - Liar (Lyrics)(MP3_160K) - Copy.mp3', 0, 2, NULL, '2019-11-20 21:16:20'),
(67, 'Cry for Me', 4, 4, 3, '3:11', 'assets/music/Camila Cabello - Cry for Me(MP3_160K) - Copy.mp3', 0, 1, NULL, '2019-11-19 23:41:31'),
(68, ' Easy', 4, 4, 5, '3:17', 'assets/music/Camila Cabello - Easy(MP3_160K) - Copy.mp3', 0, 3, NULL, '2020-01-05 10:06:37'),
(69, ' Never Be the Same', 4, 4, 5, '4:01', 'assets/music/Camila Cabello - Never Be the Same(MP3_160K) - Copy.mp3', 0, 1, NULL, '2019-11-20 08:51:29'),
(70, ' Havana', 4, 4, 5, '6:42', 'assets/music/Camila Cabello - Havana(MP3_160K) - Copy (2).mp3', 0, 3, NULL, '2019-11-20 22:46:46'),
(71, 'Shameless', 4, 4, 5, '3:46', 'assets/music/Camila Cabello - Shameless(MP3_160K) - Copy.mp3', 0, 2, NULL, '2019-11-19 18:14:54'),
(72, 'Be The One', 5, 5, 3, '3:29', 'assets/music/Dua Lipa - Be The One(MP3_70K)_1.mp3', 0, 15, NULL, '2020-01-16 22:20:14'),
(73, 'Thinking _Bout You', 5, 5, 6, '2:52', 'assets/music/Dua Lipa - Thinking _Bout You(MP3_70K).mp3', 0, 1, NULL, '2019-11-20 20:41:55'),
(74, 'Kiss and Make Up', 5, 5, 6, '3:09', 'assets/music/Dua Lipa _ BLACKPINK - Kiss and Make Up(MP3_70K).mp3', 0, 2, NULL, '2019-11-20 20:41:57'),
(75, 'Last Dance', 5, 5, 4, '3:47', 'assets/music/Dua Lipa - Last Dance(MP3_70K).mp3', 0, 1, NULL, '2019-11-19 22:13:02'),
(76, 'IDGAF ft. Charli XCX_ Zara Larsson_ MØ', 5, 5, 4, '3:45', 'assets/music/Dua Lipa - IDGAF ft. Charli XCX_ Zara Larsson_ MØ(MP3_70K).mp3', 0, 2, NULL, '2019-11-20 03:32:34'),
(77, 'Bang Bang', 5, 5, 6, '2:17', 'assets/music/Dua Lipa -  Bang Bang(MP3_70K).mp3', 0, 8, NULL, '2020-01-16 22:15:54'),
(78, 'Homesick', 5, 5, 6, '3:50', 'assets/music/Dua Lipa - Homesick(MP3_70K).mp3', 0, 0, NULL, NULL),
(79, ' Be The One', 5, 5, 6, '3:24', 'assets/music/Dua Lipa - Be The One(MP3_70K).mp3', 0, 3, NULL, '2019-11-20 01:51:32'),
(80, 'Blow Your Mind', 5, 5, 6, '2:57', 'assets/music/Dua Lipa - Blow Your Mind(MP3_70K).mp3', 0, 1, NULL, '2019-11-19 22:48:04'),
(81, 'IDGAF', 5, 5, 6, '3:50', 'assets/music/Dua Lipa - IDGAF(MP3_70K).mp3', 0, 0, NULL, NULL),
(82, ' New Rules', 5, 5, 6, '3:44', 'assets/music/Dua Lipa - New Rules(MP3_70K).mp3', 0, 1, NULL, '2019-11-20 08:48:18'),
(83, ' Don_t Start Now', 5, 5, 7, '3:01', 'assets/music/Dua Lipa - Don_t Start Now(MP3_70K).mp3', 0, 3, NULL, '2019-11-20 08:51:18'),
(84, 'Really Don_t Care', 6, 6, 7, '3:47', 'assets/music/Demi Lovato - Really Don_t Care(MP3_160K).mp3', 0, 5, NULL, '2020-01-05 10:41:59'),
(85, 'Skyscraper', 6, 6, 7, '3:42', 'assets/music/Skyscraper - Demi Lovato(MP3_160K).mp3', 0, 2, NULL, '2019-11-22 23:56:36'),
(86, 'Confident', 6, 6, 7, '3:34', 'assets/music/Demi Lovato - Confident(MP3_160K).mp3', 0, 2, NULL, '2020-01-16 22:16:24'),
(87, ' Let It Go', 6, 6, 7, '3:50', 'assets/music/Demi Lovato - Let It Go(MP3_160K).mp3', 0, 2, NULL, '2020-01-16 22:18:15'),
(88, 'Cool for the Summer', 6, 6, 7, '3:47', 'assets/music/Demi Lovato - Cool for the Summer(MP3_160K).mp3', 0, 7, NULL, '2020-01-05 10:06:50'),
(89, 'The Vamps - Somebody To You', 6, 6, 7, '3:18', 'assets/music/The Vamps - Somebody To You ft. Demi Lovato(MP3_160K).mp3', 0, 0, NULL, NULL),
(90, ' Made in the USA', 6, 6, 7, '4:44', 'assets/music/Demi Lovato - Made in the USA(MP3_160K).mp3', 0, 3, NULL, '2020-01-16 22:22:10'),
(91, ' Tell Me You Love M', 6, 6, 7, '6:47', 'assets/music/Demi Lovato - Tell Me You Love M(MP3_160K).mp3', 0, 0, NULL, NULL),
(92, ' Échame La Culpa', 6, 6, 7, '3:30', 'assets/music/Luis Fonsi_ Demi Lovato - Échame La Culpa(MP3_160K).mp3', 0, 2, NULL, '2020-01-12 10:06:59'),
(93, 'Sorry Not Sorry', 6, 6, 7, '3:50', 'assets/music/Demi Lovato - Sorry Not Sorry(MP3_160K).mp3', 0, 0, NULL, NULL),
(94, ' Heart Attack', 6, 6, 7, '3:35', 'assets/music/Demi Lovato - Heart Attack(MP3_160K).mp3', 0, 1, NULL, '2019-11-19 21:19:32'),
(95, ' Stone Cold', 6, 6, 7, '3:31', 'assets/music/Demi Lovato - Stone Cold(MP3_160K).mp3', 0, 1, NULL, '2020-01-05 10:26:25'),
(96, 'Give Your Heart a Break', 6, 6, 7, '3:35', 'assets/music/Demi Lovato - Give Your Heart a Break(MP3_160K).mp3', 0, 1, NULL, '2020-01-05 10:24:13'),
(97, ' Shape of You', 7, 7, 8, '4:23', 'assets/music/Ed Sheeran - Shape of You(MP3_160K) - Copy.mp3', 0, 8, NULL, '2019-11-20 01:18:40'),
(98, ' Take Me Back To London', 7, 7, 8, '3:51', 'assets/music/Ed Sheeran - Take Me Back To London(MP3_160K) - Copy.mp3', 0, 1, NULL, '2019-11-19 22:54:33'),
(99, ' Take Me Back To London', 7, 7, 8, '3:51', 'assets/music/Ed Sheeran - Take Me Back To London(MP3_160K).mp3', 0, 1, NULL, '2020-01-12 11:32:41'),
(100, ' Thinking Out Loud', 7, 7, 8, '3:56', 'assets/music/Ed Sheeran - Thinking Out Loud(MP3_160K).mp3', 0, 0, NULL, NULL),
(101, 'Perfect', 7, 7, 8, '4:39', 'assets/music/Ed Sheeran - Perfect(MP3_160K) - Copy.mp3', 0, 0, NULL, NULL),
(102, ' Beautiful People', 7, 7, 8, '3:47', 'assets/music/Ed Sheeran - Beautiful People (feat. Khalid)(MP3_160K) - Copy.mp3', 0, 0, NULL, NULL),
(103, ' South of the Border', 7, 7, 8, '4:45', 'assets/music/Ed Sheeran - South of the Border (feat. Camila Cab(MP3_160K) - Copy.mp3', 0, 3, NULL, '2019-11-20 03:32:36'),
(104, ' Starry Eyed', 8, 8, 7, '3:01', 'assets/music/Ellie Goulding - Starry Eyed(MP3_70K).mp3', 0, 4, NULL, '2019-11-20 01:09:48'),
(105, ' Something In The Way You Move', 8, 8, 7, '3:51', 'assets/music/Ellie Goulding - Something In The Way You Move(MP3_70K).mp3', 0, 0, NULL, NULL),
(106, ' Army', 8, 8, 7, '4:02', 'assets/music/Ellie Goulding - Army(MP3_70K).mp3', 0, 1, NULL, '2019-11-19 23:05:26'),
(107, ' How Long Will I Love You', 8, 8, 7, '2:37', 'assets/music/Ellie Goulding - How Long Will I Love You(MP3_70K).mp3', 0, 0, NULL, NULL),
(108, 'Still Falling For You', 8, 8, 7, '4:12', 'assets/music/Ellie Goulding - Still Falling For You(MP3_70K).mp3', 0, 0, NULL, NULL),
(109, 'Beating Heart', 8, 8, 7, '3:46', 'assets/music/Ellie Goulding - Beating Heart(MP3_70K).mp3', 0, 0, NULL, NULL),
(110, ' On My Mind', 8, 8, 7, '4:04', 'assets/music/Ellie Goulding - On My Mind(MP3_70K).mp3', 0, 0, NULL, NULL),
(111, 'Love Me Like You Do', 8, 8, 7, '4:12', 'assets/music/Ellie Goulding - Love Me Like You Do(MP3_70K)_1.mp3', 0, 0, NULL, NULL),
(112, ' Close To Me', 8, 8, 7, '3:02', 'assets/music/Ellie Goulding_ Diplo_ Swae Lee - Close To Me(MP3_70K).mp3', 0, 0, NULL, NULL),
(113, 'Burn', 8, 8, 7, '3:58', 'assets/music/Ellie Goulding - Burn(MP3_70K).mp3', 0, 0, NULL, NULL),
(114, ' Hate Me', 8, 8, 7, '3:25', 'assets/music/Ellie Goulding_ Juice WRLD - Hate Me(MP3_70K).mp3', 0, 0, NULL, NULL),
(115, 'Love Me Like You Do', 8, 8, 7, '4:09', 'assets/music/Ellie Goulding - Love Me Like You Do(MP3_70K).mp3', 0, 2, NULL, '2020-01-16 22:16:22'),
(116, 'You make me feel so young', 9, 9, 7, '2:55', 'assets/music/Frank Sinatra- You make me feel so young(MP3_160K).mp3', 0, 8, NULL, '2020-01-30 13:50:09'),
(117, 'Jingle Bells', 9, 9, 7, '2:05', 'assets/music/Frank Sinatra - Jingle Bells(MP3_160K).mp3', 0, 2, NULL, '2020-01-30 13:50:10'),
(118, 'That_s Life', 9, 9, 7, '3:13', 'assets/music/Frank Sinatra - That_s Life(MP3_160K).mp3', 0, 3, NULL, '2019-11-20 03:32:38'),
(119, 'New York_ New York', 9, 9, 7, '3:26', 'assets/music/Frank Sinatra - New York_ New York(MP3_160K).mp3', 0, 1, NULL, '2019-11-19 21:25:23'),
(120, 'Fly Me To The Moon', 9, 9, 7, '2:35', 'assets/music/Frank Sinatra Fly Me To The Moon(MP3_160K).mp3', 0, 1, NULL, '2019-11-20 03:10:33'),
(121, 'Strangers In the Night', 9, 9, 7, '2:37', 'assets/music/Frank Sinatra_ Strangers In the Night(MP3_160K).mp3', 0, 0, NULL, NULL),
(122, 'I Love You Baby', 9, 9, 7, '3:56', 'assets/music/Frank Sinatra   I Love You Baby(MP3_160K).mp3', 0, 2, NULL, '2020-01-30 13:50:15'),
(123, 'Killing me softly', 9, 9, 7, '4:33', 'assets/music/Frank Sinatra-Killing me softly(MP3_160K).mp3', 0, 1, NULL, '2019-11-23 00:05:13'),
(124, 'sing Running home to you', 12, 12, 9, '3:01', 'assets/music/Grant Gustin sing Running home to you(MP3_160K).mp3', 0, 9, NULL, '2019-11-20 02:10:33'),
(125, 'Running Home To You ', 12, 12, 9, '3:24', 'assets/music/Running Home To You - Grant Gustin(MP3_160K).mp3', 0, 0, NULL, NULL),
(126, 'Super Friends', 12, 12, 9, '2:19', 'assets/music/Grant gustin _Super Friends(MP3_160K).mp3', 0, 0, NULL, NULL),
(127, 'Benoist', 12, 12, 9, '2:13', 'assets/music/Grant Gustin and Melissa Benoist(MP3_160K).mp3', 0, 1, NULL, '2019-11-19 23:03:27'),
(128, 'Running Home To You', 12, 12, 9, '2:57', 'assets/music/Grant Gustin -  Running Home To You(MP3_160K).mp3', 0, 2, NULL, '2020-01-30 13:49:43'),
(129, ' Scarface', 13, 13, 4, '2:44', 'assets/music/Jaden Smith - Scarface(MP3_70K).mp3', 0, 3, NULL, '2020-01-05 10:14:42'),
(130, 'Blue Ocean', 13, 13, 4, '3:22', 'assets/music/Jaden Smith - Blue Ocean(MP3_70K).mp3', 0, 0, NULL, NULL),
(131, 'Again ft. SYRE', 13, 13, 4, '4:30', 'assets/music/Jaden - Again ft. SYRE(MP3_70K).mp3', 0, 0, NULL, NULL),
(132, 'The Coolest', 13, 13, 4, '3:14', 'assets/music/JADEN - The Coolest(MP3_128K).mp3', 0, 1, NULL, '2019-11-20 08:48:28'),
(133, ' GHOST ft. Christian Rich', 13, 13, 4, '2:18', 'assets/music/Jaden - GHOST ft. Christian Rich(MP3_70K).mp3', 0, 0, NULL, NULL),
(134, 'Batman', 13, 13, 4, '4:32', 'assets/music/Jaden - Batman(MP3_70K).mp3', 0, 0, NULL, NULL),
(135, ' Plastic', 13, 13, 4, '2:28', 'assets/music/Jaden - Plastic(MP3_70K).mp3', 0, 0, NULL, NULL),
(136, 'Icon', 13, 13, 4, '3:22', 'assets/music/Jaden - Icon(MP3_70K).mp3', 0, 0, NULL, NULL),
(137, ' Making of _Bon Appétit)', 14, 14, 3, '5:13', 'assets/music/Katy Perry - Making of _Bon Appétit(MP3_70K).mp3', 0, 2, NULL, '2019-11-20 02:22:48'),
(138, 'Rise', 14, 14, 3, '3:17', 'assets/music/Katy Perry - Rise(MP3_128K).mp3', 0, 1, NULL, '2019-11-20 04:27:08'),
(139, 'Hey Hey Hey', 14, 14, 3, '3:45', 'assets/music/Katy Perry - Hey Hey Hey(MP3_128K).mp3', 0, 0, NULL, NULL),
(140, 'This Is How We Do', 14, 14, 3, '3:29', 'assets/music/Katy Perry - This Is How We Do(MP3_128K).mp3', 0, 1, NULL, '2020-01-30 13:49:49'),
(141, ' Unconditionally', 14, 14, 3, '3:56', 'assets/music/Katy Perry - Unconditionally(MP3_128K).mp3', 0, 0, NULL, NULL),
(142, 'Small Talk', 14, 14, 3, '2:48', 'assets/music/Katy Perry - Small Talk(MP3_128K).mp3', 0, 0, NULL, NULL),
(143, 'California Gurls', 14, 14, 3, '3:54', 'assets/music/Katy Perry - California Gurls(MP3_128K).mp3', 0, 0, NULL, NULL),
(144, ' Firework', 14, 14, 3, '3:53', 'assets/music/Katy Perry - Firework(MP3_128K).mp3', 0, 0, NULL, NULL),
(145, ' Roar', 14, 14, 3, '4:29', 'assets/music/Katy Perry - Roar(MP3_128K).mp3', 0, 0, NULL, NULL),
(146, ' Dark Horse', 14, 14, 3, '3:44', 'assets/music/Katy Perry - Dark Horse(MP3_128K).mp3', 0, 0, NULL, NULL),
(147, ' Never Really Over', 14, 14, 3, '4:00', 'assets/music/Katy Perry - Never Really Over(MP3_128K).mp3', 0, 0, NULL, NULL),
(148, 'Harleys In Hawaii', 14, 14, 3, '3:14', 'assets/music/Katy Perry - Harleys In Hawaii(M4A_128K).mp3', 0, 0, NULL, NULL),
(149, ' John Wayne', 15, 15, 3, '2:56', 'assets/music/Lady Gaga - John Wayne(MP3_70K).mp3', 0, 9, NULL, '2019-11-20 02:27:40'),
(150, 'Eh_ Eh (Nothing Else I Can Say)', 15, 15, 3, '2:56', 'assets/music/Lady Gaga - Eh_ Eh (Nothing Else I Can Say)(MP3_70K).mp3', 0, 1, NULL, '2019-11-20 02:27:42'),
(151, 'I Want Your Love', 15, 15, 3, '3:26', 'assets/music/Lady Gaga - I Want Your Love(MP3_70K).mp3', 0, 1, NULL, '2019-11-20 02:27:44'),
(152, ' This One_s For You', 15, 15, 3, '3:59', 'assets/music/Lady Gaga - This One_s For You(MP3_70K).mp3', 0, 0, NULL, NULL),
(153, 'Venus', 15, 15, 3, '4:13', 'assets/music/Lady Gaga - Venus(MP3_70K).mp3', 0, 0, NULL, NULL),
(154, ' Applause', 15, 15, 3, '3:34', 'assets/music/Lady Gaga - Applause(MP3_70K).mp3', 0, 0, NULL, NULL),
(155, 'Just Dance', 15, 15, 3, '4:06', 'assets/music/Lady Gaga - Just Dance(MP3_70K).mp3', 0, 0, NULL, NULL),
(156, 'LoveGame', 15, 15, 3, '3:37', 'assets/music/Lady Gaga - LoveGame(MP3_70K).mp3', 0, 0, NULL, NULL),
(157, ' Always Remember Us This Way', 15, 15, 3, '4:01', 'assets/music/Lady Gaga - Always Remember Us This Way(MP3_70K).mp3', 0, 0, NULL, NULL),
(158, ' Poker Face', 15, 15, 3, '3:33', 'assets/music/Lady Gaga - Poker Face(MP3_70K).mp3', 0, 0, NULL, NULL),
(159, ' Bradley Cooper - Shallow ', 15, 15, 3, '3:36', 'assets/music/Lady Gaga_ Bradley Cooper - Shallow (A Star Is Bor(MP3_70K).mp3', 0, 0, NULL, NULL),
(160, ' Bad Romance', 15, 15, 3, '5:08', 'assets/music/Lady Gaga - Bad Romance(MP3_70K).mp3', 0, 0, NULL, NULL),
(161, 'Unico', 16, 16, 4, '3:42', 'assets/music/Lali - Unico(MP3_160K).mp3', 0, 5, NULL, '2019-11-20 00:34:21'),
(162, ' Besarte Mucho', 16, 16, 4, '3:45', 'assets/music/Lali - Besarte Mucho(MP3_160K).mp3', 0, 0, NULL, NULL),
(163, ' Soy', 16, 16, 4, '4:05', 'assets/music/Lali - Soy(MP3_160K).mp3', 0, 0, NULL, NULL),
(164, 'Ego(', 16, 16, 4, '4:48', 'assets/music/Lali - Ego(MP3_160K).mp3', 0, 0, NULL, NULL),
(165, 'Boomerang', 16, 16, 4, '4:33', 'assets/music/Lali - Boomerang(MP3_160K).mp3', 0, 0, NULL, NULL),
(166, ' Una Na', 16, 16, 4, '3:49', 'assets/music/Lali - Una Na(MP3_160K).mp3', 0, 0, NULL, NULL),
(167, ' Caliente', 16, 16, 4, '3:12', 'assets/music/Lali - Caliente(MP3_160K).mp3', 0, 1, NULL, '2020-01-05 10:17:27'),
(168, 'Lali Susana Gimenez - Laliger', 16, 16, 4, '3:09', 'assets/music/Lali Susana Gimenez - Laligera(MP3_160K).mp3', 0, 0, NULL, NULL),
(169, ' Somos Amantes', 16, 16, 4, '3:53', 'assets/music/Lali - Somos Amantes(MP3_160K).mp3', 0, 0, NULL, NULL),
(170, 'Sin Querer Queriendo', 16, 16, 4, '3:56', 'assets/music/Lali - Sin Querer Queriendo(MP3_160K).mp3', 0, 0, NULL, NULL),
(171, 'LALIGERA', 16, 16, 4, '3:10', 'assets/music/Lali - LALIGERA(MP3_160K).mp3', 0, 0, NULL, NULL),
(172, 'Como Así', 16, 16, 4, '3:08', 'assets/music/Lali - Como Así(MP3_160K).mp3', 0, 0, NULL, NULL),
(173, 'Stay ft. Mikky Ekko', 17, 17, 7, '4:07', 'assets/music/Rihanna - Stay ft. Mikky Ekko(M4A_128K).mp3', 0, 4, NULL, '2020-01-05 10:06:19'),
(174, ' Barbie Tingz', 18, 18, 8, '3:30', 'assets/music/Nicki Minaj - Barbie Tingz(MP3_70K).mp3', 0, 4, NULL, '2019-11-20 22:45:12'),
(175, ' Your Love', 18, 18, 8, '4:05', 'assets/music/Nicki Minaj - Your Love(MP3_70K).mp3', 0, 0, NULL, NULL),
(176, 'Nicki Minaj - Chun Li (Lyric Video)(MP3_70K)', 18, 18, 8, '3:11', 'assets/music/Nicki Minaj - Chun Li (Lyric Video)(MP3_70K).mp3', 0, 1, NULL, '2020-01-05 10:26:29'),
(177, ' My Type ', 18, 18, 8, '4:32', 'assets/music/Saweetie - My Type (feat. Nicki Minaj _ YG)(MP3_70K).mp3', 0, 0, NULL, NULL),
(178, 'Nicki Minaj - Va Va Voom', 18, 18, 8, '3:20', 'assets/music/Nicki Minaj - Va Va Voom (Explicit)(MP3_70K).mp3', 0, 0, NULL, NULL),
(179, 'Starships ', 18, 18, 8, '4:21', 'assets/music/Nicki Minaj - Starships (Clean)(MP3_70K).mp3', 0, 0, NULL, NULL),
(180, 'Side To Side ft', 18, 18, 8, '3:57', 'assets/music/Ariana Grande - Side To Side ft. Nicki Minaj(MP3_70K).mp3', 0, 0, NULL, NULL),
(181, ' Baby ', 18, 18, 8, '2:25', 'assets/music/Nicki Minaj feat. Anitta - Baby (Official Music Vi(MP3_70K).mp3', 0, 0, NULL, NULL),
(182, ' Turn Me On ft. Nicki Minaj', 18, 18, 8, '3:30', 'assets/music/David Guetta - Turn Me On ft. Nicki Minaj(MP3_70K).mp3', 0, 0, NULL, NULL),
(183, ' Barbie Dreams', 18, 18, 8, '5:00', 'assets/music/Nicki Minaj - Barbie Dreams(MP3_70K).mp3', 0, 0, NULL, NULL),
(184, 'Super Bass', 18, 18, 8, '3:38', 'assets/music/Nicki Minaj - Super Bass(MP3_70K).mp3', 0, 0, NULL, NULL),
(185, ' Fuck Feelings', 19, 19, 4, '3:01', 'assets/music/Olivia O_Brien - Fuck Feelings(MP3_160K).mp3', 0, 3, NULL, '2019-11-22 23:51:39'),
(186, 'I Don_t Exist', 19, 19, 4, '3:44', 'assets/music/Olivia O_Brien - I Don_t Exist(MP3_160K).mp3', 0, 0, NULL, NULL),
(187, 'complicated', 19, 19, 4, '3:03', 'assets/music/olivia o_brien - complicated(MP3_160K).mp3', 0, 0, NULL, NULL),
(188, ' RIP', 19, 19, 4, '3:40', 'assets/music/Olivia O_Brien - RIP(MP3_160K).mp3', 0, 0, NULL, NULL),
(189, ' Care Less More', 19, 19, 4, '2:50', 'assets/music/Olivia O_Brien - Care Less More(MP3_160K).mp3', 0, 0, NULL, NULL),
(190, ' Just A Boy', 19, 19, 4, '3:36', 'assets/music/Olivia O_Brien - Just A Boy(MP3_160K).mp3', 0, 1, NULL, '2019-11-22 23:51:45'),
(191, ' Love Myself', 19, 19, 4, '3:37', 'assets/music/Olivia O_Brien - Love Myself(MP3_160K).mp3', 0, 0, NULL, NULL),
(192, 'Empty', 19, 19, 4, '3:36', 'assets/music/Olivia O_Brien - Empty(MP3_160K).mp3', 0, 0, NULL, NULL),
(193, ' Almost In Love', 19, 19, 4, '3:23', 'assets/music/Olivia O_Brien - Almost In Love(MP3_160K).mp3', 0, 0, NULL, NULL),
(194, ' Sad Songs In The Summer', 19, 19, 4, '2:58', 'assets/music/Olivia O_Brien - Sad Songs In The Summer(MP3_160K).mp3', 0, 0, NULL, NULL),
(195, 'Myself', 20, 20, 1, '2:38', 'assets/music/Post Malone – Myself(MP3_160K).mp3', 0, 1, NULL, '2019-11-20 00:41:12'),
(196, 'Goodbye', 20, 20, 1, '3:28', 'assets/music/Post Malone - Goodbyes ft. Young Thu(MP3_160K).mp3', 0, 0, NULL, NULL),
(197, ' Die For Me', 20, 20, 1, '4:06', 'assets/music/Post Malone - Die For Me(MP3_160K).mp3', 0, 0, NULL, NULL),
(198, ' Congratulations', 20, 20, 1, '3:46', 'assets/music/Post Malone - Congratulations(MP3_160K).mp3', 0, 0, NULL, NULL),
(199, 'Sunflower', 20, 20, 1, '2:41', 'assets/music/Post Malone_ Swae Lee - Sunflower(MP3_160K).mp3', 0, 0, NULL, NULL),
(200, 'Psycho', 20, 20, 1, '3:56', 'assets/music/Post Malone - Psycho ft. Ty Dolla _ign(MP3_160K).mp3', 0, 0, NULL, NULL),
(201, ' Better Now', 20, 20, 1, '3:52', 'assets/music/Post Malone - Better Now(MP3_160K).mp3', 0, 0, NULL, NULL),
(202, ' 21 Savage', 20, 20, 1, '4:01', 'assets/music/Post Malone - rockstar ft. 21 Savage(MP3_160K).mp3', 0, 0, NULL, NULL),
(203, 'Wow', 20, 20, 1, '2:37', 'assets/music/Post Malone - _Wow(MP3_160K).mp3', 0, 0, NULL, NULL),
(204, ' Saint-Tropez', 20, 20, 1, '2:36', 'assets/music/Post Malone - Saint-Tropez(MP3_160K).mp3', 0, 0, NULL, NULL),
(205, 'Goodbyes', 20, 20, 1, '4:16', 'assets/music/Post Malone - _Goodbyes_ ft. Young Thug(MP3_160K).mp3', 0, 0, NULL, NULL),
(206, ' Heroes Never Die', 21, 21, 2, '3:37', 'assets/music/Q Feel - Heroes Never Die(MP3_160K).mp3', 0, 0, NULL, NULL),
(207, 'Time Waits For No One', 21, 21, 2, '3:54', 'assets/music/Q - Feel - Time Waits For No One(MP3_160K).mp3', 0, 0, NULL, NULL),
(208, ' Electric Feet', 21, 21, 2, '4:24', 'assets/music/Q-Feel - Electric Feet(MP3_160K).mp3', 0, 0, NULL, NULL),
(209, ' Crosstalk', 21, 21, 2, '3:39', 'assets/music/Q-FEEL -- Crosstalk(MP3_160K).mp3', 0, 0, NULL, NULL),
(210, ' Dancing in Heave', 21, 21, 2, '3:05', 'assets/music/Q-Feel_ Dancing in Heave(MP3_160K).mp3', 0, 0, NULL, NULL),
(211, 'Dancing in Heaven', 21, 21, 2, '2:59', 'assets/music/Q-Feel -- _Dancing in Heaven(MP3_160K).mp3', 0, 0, NULL, NULL),
(212, 'Dancing in Heaven', 21, 21, 2, '3:01', 'assets/music/Q-FEEL  Dancing in Heaven(MP3_160K).mp3', 0, 1, NULL, '2019-11-20 03:32:40'),
(213, 'Heroes Never Die', 21, 21, 2, '3:38', 'assets/music/Heroes Never Die-Q-Feel(MP3_160K).mp3', 0, 0, NULL, NULL),
(214, 'Dancing In Heaven Orbital Be-Bop', 21, 21, 2, '3:04', 'assets/music/Q-FEEL _Dancing In Heaven Orbital Be-Bop(MP3_160K).mp3', 0, 0, NULL, NULL),
(215, 'Rude Boy', 22, 22, 3, '3:45', 'assets/music/Rihanna - Rude Boy(M4A_128K).mp3', 0, 2, NULL, '2020-01-05 10:09:58'),
(216, 'Take A Bow', 22, 22, 3, '3:49', 'assets/music/Rihanna - Take A Bow(M4A_128K).mp3', 0, 0, NULL, NULL),
(217, 'Don_t Stop TheMusic', 22, 22, 3, '3:53', 'assets/music/Rihanna - Don_t Stop TheMusic(M4A_128K).mp3', 0, 1, NULL, '2020-01-05 10:10:01'),
(218, ' Disturbia', 22, 22, 3, '4:21', 'assets/music/Rihanna - Disturbia(M4A_128K).mp3', 0, 0, NULL, NULL),
(219, 'You Da One', 22, 22, 3, '3:28', 'assets/music/Rihanna - You Da One(M4A_128K).mp3', 0, 0, NULL, NULL),
(220, ' What_s My Name_ ft. Drake', 22, 22, 3, '4:23', 'assets/music/Rihanna - What_s My Name_ ft. Drake(M4A_128K).mp3', 0, 0, NULL, NULL),
(221, ' California King Bed', 22, 22, 3, '4:43', 'assets/music/Rihanna - California King Bed(M4A_128K).mp3', 0, 0, NULL, NULL),
(222, ' Stay', 22, 22, 3, '4:07', 'assets/music/Rihanna - Stay ft. Mikky Ekko(M4A_128K).mp3', 0, 0, NULL, NULL),
(223, ' Umbrella ', 22, 22, 3, '4:13', 'assets/music/Rihanna - Umbrella (Orange Version) ft. JAY-Z(M4A_128K).mp3', 0, 0, NULL, NULL),
(224, 'Where Have You Been', 22, 22, 3, '4:28', 'assets/music/Rihanna - Where Have You Been(M4A_128K).mp3', 0, 0, NULL, NULL),
(225, 'We Found Love ft. Calvin Harris', 22, 22, 3, '4:35', 'assets/music/Rihanna - We Found Love ft. Calvin Harris(M4A_128K).mp3', 0, 0, NULL, NULL),
(226, ' Diamonds', 22, 22, 3, '4:42', 'assets/music/Rihanna - Diamonds(M4A_128K).mp3', 0, 0, NULL, NULL),
(227, ' Let_s Do It_ Feat', 24, 24, 5, '3:23', 'assets/music/Ugly God _Let_s Do It_ Feat(MP3_160K).mp3', 0, 0, NULL, NULL),
(228, 'One Two Lyrics', 24, 24, 5, '1:54', 'assets/music/Ugly God- One Two Lyrics(MP3_160K).mp3', 0, 0, NULL, NULL),
(229, 'Aim assist', 24, 24, 5, '2:07', 'assets/music/Ugly God - Aim assist(MP3_160K).mp3', 0, 0, NULL, NULL),
(230, 'Hello ft. Lil Pump', 24, 24, 5, '2:44', 'assets/music/Ugly God - Hello ft. Lil Pump(MP3_160K).mp3', 0, 0, NULL, NULL),
(231, 'Bless The Booth Freest', 24, 24, 5, '3:13', 'assets/music/Ugly God - Bless The Booth Freest(MP3_160K).mp3', 0, 0, NULL, NULL),
(232, 'Lost in the Sauce', 24, 24, 5, '1:59', 'assets/music/Ugly God - Lost in the Sauce(MP3_160K).mp3', 0, 0, NULL, NULL),
(233, ' Batman', 24, 24, 5, '3:26', 'assets/music/Ugly God - Batman(MP3_160K).mp3', 0, 0, NULL, NULL),
(234, ' Water', 24, 24, 5, '4:03', 'assets/music/Ugly God - Water(MP3_160K).mp3', 0, 0, NULL, NULL),
(235, 'Hear The Bells', 25, 25, 2, '3:40', 'assets/music/Vanessa Carlton - Hear The Bells(MP3_160K).mp3', 0, 2, NULL, '2019-11-20 08:49:32'),
(236, ' Paint It Black', 25, 25, 2, '3:35', 'assets/music/Vanessa Carlton Paint It Black(MP3_160K).mp3', 0, 0, NULL, NULL),
(237, 'Why Vanessa Carlton Disappeared', 25, 25, 2, '2:46', 'assets/music/Why Vanessa Carlton Disappeared(MP3_160K).mp3', 0, 0, NULL, NULL),
(238, ' Carousel', 25, 25, 2, '3:22', 'assets/music/Vanessa Carlton - Carousel(MP3_160K).mp3', 0, 0, NULL, NULL),
(239, 'Hands On Me', 25, 25, 2, '2:59', 'assets/music/Vanessa Carlton - Hands On Me(MP3_160K).mp3', 0, 0, NULL, NULL),
(240, 'Nolita Fairytale', 25, 25, 2, '3:34', 'assets/music/Vanessa Carlton - Nolita Fairytale(MP3_160K).mp3', 0, 1, NULL, '2019-11-20 08:49:36'),
(241, 'Pretty Baby', 25, 25, 2, '4:09', 'assets/music/Vanessa Carlton - Pretty Baby(MP3_160K).mp3', 0, 1, NULL, '2019-11-20 08:49:39'),
(242, 'White House', 25, 25, 2, '3:46', 'assets/music/Vanessa Carlton - White House(MP3_160K).mp3', 0, 1, NULL, '2019-11-20 08:49:42'),
(243, 'Ordinary Day', 25, 25, 2, '4:00', 'assets/music/Vanessa Carlton - Ordinary Day(MP3_160K).mp3', 0, 1, NULL, '2019-11-20 03:32:43'),
(244, 'A Thousand Miles', 25, 25, 2, '4:28', 'assets/music/Vanessa Carlton - A Thousand Miles(MP3_160K).mp3', 0, 0, NULL, NULL),
(245, 'Whip My Hair', 26, 26, 3, '3:32', 'assets/music/Willow Smith - Whip My Hair(MP3_160K).mp3', 0, 3, NULL, '2019-11-20 09:52:13'),
(246, 'Everything Stays', 26, 26, 3, '3:06', 'assets/music/Willow Smith - Everything Stays(MP3_160K).mp3', 0, 0, NULL, NULL),
(247, 'Summer Fling', 26, 26, 3, '3:57', 'assets/music/Willow Smith   Summer Fling(MP3_160K).mp3', 0, 1, NULL, '2019-11-20 09:51:52'),
(248, 'Overthinking It', 26, 26, 3, '4:57', 'assets/music/Willow smith-Overthinking It(MP3_160K).mp3', 0, 0, NULL, NULL),
(249, ' Perfoms', 26, 26, 3, '5:35', 'assets/music/Willow Smith Performs at the(MP3_160K).mp3', 0, 0, NULL, NULL),
(250, 'Oh Nadine', 26, 26, 3, '3:09', 'assets/music/Willow Smith - Oh Nadine(MP3_160K).mp3', 0, 0, NULL, NULL),
(251, 'Why Don_t You Cry', 26, 26, 3, '4:15', 'assets/music/Willow Smith - Why Don_t You Cry(MP3_160K).mp3', 0, 0, NULL, NULL),
(252, '21st Century Girl', 26, 26, 3, '4:48', 'assets/music/Willow Smith - 21st Century Girl - Music Video(MP3_160K).mp3', 0, 0, NULL, NULL),
(253, 'Wait a Minute', 26, 26, 3, '3:16', 'assets/music/Willow smith-wait a Minute(MP3_160K).mp3', 0, 0, NULL, NULL),
(254, 'Fireball', 26, 26, 3, '4:59', 'assets/music/Willow Smith-fireball(MP3_160K).mp3', 0, 0, NULL, NULL),
(255, 'Female Energy', 26, 26, 3, '3:42', 'assets/music/Willow Smith - Female Energy(MP3_160K).mp3', 0, 0, NULL, NULL),
(256, 'Heated', 27, 27, 4, '4:16', 'assets/music/X-Raided- Heated(MP3_160K).mp3', 0, 1, NULL, '2019-11-20 00:49:12'),
(257, 'Stacc Chips', 27, 27, 4, '4:13', 'assets/music/X-Raided - Stacc Chips(MP3_160K).mp3', 0, 0, NULL, NULL),
(258, 'Incarcerated', 27, 27, 4, '4:32', 'assets/music/X-Raided - Incarcerated(MP3_160K).mp3', 0, 0, NULL, NULL),
(259, 'That Siccness', 27, 27, 4, '5:52', 'assets/music/X-Raided - That Siccness(MP3_160K).mp3', 0, 0, NULL, NULL),
(260, 'Body Count', 27, 27, 4, '3:49', 'assets/music/X-Raided - Body Count(MP3_160K).mp3', 0, 0, NULL, NULL),
(261, 'Sac a indo', 27, 27, 4, '4:02', 'assets/music/X-Raided - Sac a indo(MP3_160K).mp3', 0, 0, NULL, NULL),
(262, 'I Told You So', 27, 27, 4, '3:44', 'assets/music/X Raided - I Told You So(MP3_160K).mp3', 0, 0, NULL, NULL),
(263, 'Psychotic', 27, 27, 4, '4:05', 'assets/music/X-Raided Ft. Twisted Insane _ C Dubb - Psychotic(MP3_160K).mp3', 0, 0, NULL, NULL),
(264, 'Get Off Me', 27, 27, 4, '3:06', 'assets/music/X-Raided - Get Off Me(MP3_160K).mp3', 0, 0, NULL, NULL),
(265, 'It Wasn_t True', 27, 27, 4, '3:45', 'assets/music/X-Raided - It Wasn_t True(MP3_160K).mp3', 0, 0, NULL, NULL),
(266, 'The Hole', 27, 27, 4, '3:41', 'assets/music/X-Raided - The Hole(MP3_160K).mp3', 0, 0, NULL, NULL),
(267, 'California Dreamin', 27, 27, 4, '3:55', 'assets/music/X-Raided - California Dreamin(MP3_160K).mp3', 0, 0, NULL, NULL),
(268, 'Ghetto Bird', 29, 29, 1, '3:51', 'assets/music/Ice Cube - Ghetto Bird(MP3_70K).mp3', 0, 1, NULL, '2019-11-20 00:49:05'),
(269, 'Friday', 29, 29, 1, '3:53', 'assets/music/Ice Cube - Friday (Explicit)(MP3_70K).mp3', 0, 0, NULL, NULL),
(270, 'Untou', 29, 29, 1, '2:51', 'assets/music/Snoop Dogg_ Rick Ross_ Lil Wayne_ Ice Cube - Untou(MP3_70K).mp3', 0, 0, NULL, NULL),
(271, '2 Chainz', 29, 29, 1, '3:34', 'assets/music/Ice Cube - Drop Girl ft. Redfoo _ 2 Chainz (UZ Rem(MP3_70K).mp3', 0, 0, NULL, NULL),
(272, 'The Gam', 29, 29, 1, '4:32', 'assets/music/Ice Cube - WestSide Problems (Ft. 2Pac _ The Gam(MP3_70K).mp3', 0, 0, NULL, NULL),
(273, 'Nothing To It', 29, 29, 1, '3:34', 'assets/music/Dr. Dre _ Ice Cube - Nothing To It ft. MC Ren(MP3_70K).mp3', 0, 0, NULL, NULL),
(274, 'Good Cop Bad Cop', 29, 29, 1, '4:18', 'assets/music/Ice Cube - Good Cop Bad Cop(MP3_70K).mp3', 0, 0, NULL, NULL),
(275, 'Ain_t Got No Haters', 29, 29, 1, '3:31', 'assets/music/Ice Cube - Ain_t Got No Haters ft. Too Short(MP3_70K).mp3', 0, 0, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'kk', 'kk@gmail.com', NULL, '$2y$10$Ny3ri4ASDUDGAvKSj887K.ws/WbmrFl/Tbqhfile5yO95Khh5vAUu', NULL, '2019-11-17 20:34:29', '2019-11-17 20:34:29'),
(2, 'admin', 'admin@gmail.com', NULL, '$2y$10$CAeV2JwApIVgok.eOzsYyefDsTjbPmOYfakvXFHUBeU70.R.Rdbw2', NULL, '2019-11-18 09:21:27', '2019-11-18 09:21:27');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `albums`
--
ALTER TABLE `albums`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `artists`
--
ALTER TABLE `artists`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `genres`
--
ALTER TABLE `genres`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`(191));

--
-- Indexes for table `songs`
--
ALTER TABLE `songs`
  ADD PRIMARY KEY (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
