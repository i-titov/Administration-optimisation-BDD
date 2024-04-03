-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Hôte : localhost:8889
-- Généré le : mer. 03 avr. 2024 à 12:40
-- Version du serveur : 5.7.39
-- Version de PHP : 7.4.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `optim-dbb`
--

-- --------------------------------------------------------

--
-- Structure de la table `MOCK_DATA`
--

CREATE TABLE `MOCK_DATA` (
  `id` int(11) NOT NULL,
  `first_name` varchar(50) DEFAULT NULL,
  `last_name` varchar(50) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `gender` varchar(50) DEFAULT NULL,
  `ip_address` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8
PARTITION BY RANGE (id)
(
PARTITION p0 VALUES LESS THAN (50) ENGINE=InnoDB,
PARTITION p1 VALUES LESS THAN (250) ENGINE=InnoDB,
PARTITION p2 VALUES LESS THAN (750) ENGINE=InnoDB,
PARTITION p3 VALUES LESS THAN MAXVALUE ENGINE=InnoDB
);

--
-- Déchargement des données de la table `MOCK_DATA`
--

INSERT INTO `MOCK_DATA` (`id`, `first_name`, `last_name`, `email`, `gender`, `ip_address`) VALUES
(1, 'Ber', 'Caddell', 'bcaddell0@feedburner.com', 'Non-binary', '107.30.241.250'),
(2, 'Emile', 'Mc Cahey', 'emccahey1@gizmodo.com', 'Male', '185.115.172.194'),
(3, 'Myra', 'Ferrelli', 'mferrelli2@squarespace.com', 'Female', '221.11.194.140'),
(4, 'Carly', 'Rees', 'crees3@ihg.com', 'Male', '208.183.5.24'),
(5, 'Danita', 'Beddo', 'dbeddo4@globo.com', 'Genderfluid', '198.196.3.150'),
(6, 'Perl', 'Mayall', 'pmayall5@hp.com', 'Agender', '81.13.209.206'),
(7, 'Lola', 'Litt', 'llitt6@youtu.be', 'Female', '82.138.75.244'),
(8, 'Milty', 'Faucherand', 'mfaucherand7@ed.gov', 'Male', '147.118.52.8'),
(9, 'Vassily', 'Mizen', 'vmizen8@livejournal.com', 'Male', '76.159.206.254'),
(10, 'Shantee', 'Swindley', 'sswindley9@angelfire.com', 'Female', '233.113.123.15'),
(11, 'Francine', 'Henbury', 'fhenburya@people.com.cn', 'Female', '15.102.55.119'),
(12, 'Patrice', 'Crichten', 'pcrichtenb@apache.org', 'Male', '206.30.157.164'),
(13, 'Adelheid', 'Croy', 'acroyc@biglobe.ne.jp', 'Female', '47.65.155.210'),
(14, 'Balduin', 'Markos', 'bmarkosd@dell.com', 'Male', '148.33.247.212'),
(15, 'Madelene', 'McCaskill', 'mmccaskille@is.gd', 'Female', '109.163.219.237'),
(16, 'Cedric', 'Brumfitt', 'cbrumfittf@oracle.com', 'Bigender', '34.213.168.110'),
(17, 'Sheila-kathryn', 'Lowden', 'slowdeng@usnews.com', 'Genderfluid', '8.23.219.74'),
(18, 'Townsend', 'Kybert', 'tkyberth@desdev.cn', 'Male', '219.85.17.162'),
(19, 'Jamey', 'Minshull', 'jminshulli@elegantthemes.com', 'Male', '127.104.6.222'),
(20, 'Les', 'Galiford', 'lgalifordj@phpbb.com', 'Male', '142.80.87.243'),
(21, 'Stephie', 'Gariff', 'sgariffk@skyrock.com', 'Female', '224.93.215.102'),
(22, 'Lexis', 'Dagon', 'ldagonl@cisco.com', 'Female', '243.1.157.110'),
(23, 'Twyla', 'Limbourne', 'tlimbournem@narod.ru', 'Female', '15.216.93.173'),
(24, 'Sherri', 'Dawkes', 'sdawkesn@fotki.com', 'Female', '145.17.59.240'),
(25, 'Shep', 'Sheran', 'ssherano@apache.org', 'Male', '252.39.181.213'),
(26, 'Marius', 'Fathers', 'mfathersp@w3.org', 'Male', '108.5.13.49'),
(27, 'Dory', 'Duddin', 'dduddinq@cocolog-nifty.com', 'Male', '22.174.45.33'),
(28, 'Julina', 'Pattle', 'jpattler@hostgator.com', 'Female', '143.196.158.133'),
(29, 'Constance', 'ducarme', 'cducarmes@vinaora.com', 'Female', '177.219.35.46'),
(30, 'Mariann', 'Katzmann', 'mkatzmannt@infoseek.co.jp', 'Female', '253.133.31.172'),
(31, 'Tiffie', 'Boarleyson', 'tboarleysonu@sfgate.com', 'Female', '5.61.69.131'),
(32, 'Dodie', 'Membry', 'dmembryv@tinyurl.com', 'Female', '204.11.207.168'),
(33, 'Sissie', 'Bavage', 'sbavagew@netlog.com', 'Female', '64.150.234.237'),
(34, 'Kari', 'Lemm', 'klemmx@sun.com', 'Female', '149.82.55.118'),
(35, 'Carmelia', 'Olliff', 'colliffy@cbsnews.com', 'Female', '106.5.122.88'),
(36, 'Marcile', 'Stoker', 'mstokerz@phoca.cz', 'Female', '31.104.152.51'),
(37, 'Ddene', 'Olenov', 'dolenov10@newyorker.com', 'Female', '190.115.147.1'),
(38, 'Brynn', 'Bracco', 'bbracco11@tamu.edu', 'Female', '22.140.162.198'),
(39, 'Heinrik', 'Skeermor', 'hskeermor12@privacy.gov.au', 'Male', '190.221.226.66'),
(40, 'Osborn', 'Djokovic', 'odjokovic13@instagram.com', 'Polygender', '2.247.162.126'),
(41, 'Kassi', 'Ludford', 'kludford14@alibaba.com', 'Agender', '193.212.211.78'),
(42, 'Erminia', 'Sollon', 'esollon15@toplist.cz', 'Female', '46.243.172.230'),
(43, 'Morgana', 'Quernel', 'mquernel16@google.cn', 'Female', '33.57.214.41'),
(44, 'Emmott', 'Shutt', 'eshutt17@youtu.be', 'Male', '158.53.45.234'),
(45, 'Camala', 'Gotcliff', 'cgotcliff18@auda.org.au', 'Female', '126.103.217.245'),
(46, 'Ahmed', 'Halgarth', 'ahalgarth19@ask.com', 'Male', '23.147.140.18'),
(47, 'Clayton', 'Spraggon', 'cspraggon1a@dyndns.org', 'Male', '165.225.107.242'),
(48, 'Samuele', 'Caughan', 'scaughan1b@accuweather.com', 'Male', '69.179.44.209'),
(49, 'Leland', 'Brockherst', 'lbrockherst1c@cbc.ca', 'Genderfluid', '87.37.160.228'),
(50, 'Damara', 'Van Salzberger', 'dvansalzberger1d@phpbb.com', 'Female', '233.57.150.90'),
(51, 'Milt', 'Millhouse', 'mmillhouse1e@unc.edu', 'Male', '178.178.187.141'),
(52, 'Flemming', 'Meriot', 'fmeriot1f@themeforest.net', 'Male', '38.143.86.168'),
(53, 'Juana', 'Veelers', 'jveelers1g@who.int', 'Female', '24.106.107.129'),
(54, 'Clemens', 'Pownall', 'cpownall1h@archive.org', 'Male', '220.224.11.51'),
(55, 'Winifield', 'Heckney', 'wheckney1i@disqus.com', 'Male', '162.204.128.243'),
(56, 'Katheryn', 'Daintry', 'kdaintry1j@disqus.com', 'Female', '37.142.75.176'),
(57, 'Jessi', 'Venturoli', 'jventuroli1k@cbslocal.com', 'Female', '157.16.251.17'),
(58, 'Elihu', 'Parramore', 'eparramore1l@usda.gov', 'Male', '209.76.112.203'),
(59, 'Bondie', 'Ruppele', 'bruppele1m@hubpages.com', 'Bigender', '154.233.6.14'),
(60, 'Farleigh', 'Bramont', 'fbramont1n@github.com', 'Male', '68.77.139.192'),
(61, 'Goldy', 'Pentelow', 'gpentelow1o@tinypic.com', 'Female', '145.226.254.117'),
(62, 'Eddie', 'Raikes', 'eraikes1p@cargocollective.com', 'Female', '100.111.252.3'),
(63, 'Erl', 'Whopples', 'ewhopples1q@nih.gov', 'Male', '121.245.36.186'),
(64, 'Joanne', 'Sunock', 'jsunock1r@mayoclinic.com', 'Polygender', '148.62.220.117'),
(65, 'Chrysler', 'De Roos', 'cderoos1s@yandex.ru', 'Female', '68.199.24.6'),
(66, 'Baillie', 'Ganing', 'bganing1t@tripod.com', 'Male', '194.226.48.238'),
(67, 'Katherine', 'Bernardy', 'kbernardy1u@cpanel.net', 'Female', '152.7.153.250'),
(68, 'Domenico', 'OIlier', 'doilier1v@va.gov', 'Male', '134.123.124.160'),
(69, 'Kim', 'Habron', 'khabron1w@shinystat.com', 'Female', '198.90.150.188'),
(70, 'Renaud', 'Semerad', 'rsemerad1x@discovery.com', 'Male', '255.167.146.160'),
(71, 'Cello', 'Bourgeois', 'cbourgeois1y@zdnet.com', 'Male', '157.152.124.33'),
(72, 'Harlan', 'Hellin', 'hhellin1z@go.com', 'Non-binary', '76.179.110.154'),
(73, 'Paten', 'Weddeburn', 'pweddeburn20@feedburner.com', 'Male', '128.153.81.84'),
(74, 'Rosemonde', 'Wormleighton', 'rwormleighton21@yolasite.com', 'Female', '234.201.30.34'),
(75, 'Raynard', 'Van den Velde', 'rvandenvelde22@4shared.com', 'Male', '243.76.94.169'),
(76, 'Jo-ann', 'World', 'jworld23@reuters.com', 'Female', '57.50.2.243'),
(77, 'Kevyn', 'Daubney', 'kdaubney24@sbwire.com', 'Agender', '149.73.40.58'),
(78, 'Amalita', 'Tillman', 'atillman25@cpanel.net', 'Female', '252.139.234.127'),
(79, 'Shirlee', 'Torrecilla', 'storrecilla26@cloudflare.com', 'Female', '49.199.129.20'),
(80, 'Myrle', 'Epsley', 'mepsley27@ibm.com', 'Genderqueer', '65.167.69.225'),
(81, 'Belita', 'Snoding', 'bsnoding28@toplist.cz', 'Female', '2.136.218.194'),
(82, 'Joell', 'Tybalt', 'jtybalt29@un.org', 'Female', '198.5.173.52'),
(83, 'Eirena', 'Dameisele', 'edameisele2a@ning.com', 'Female', '112.51.115.186'),
(84, 'Ilse', 'Challiner', 'ichalliner2b@amazon.com', 'Female', '97.63.64.247'),
(85, 'Rivkah', 'Polk', 'rpolk2c@ucsd.edu', 'Genderfluid', '201.249.183.2'),
(86, 'Charles', 'MacKaile', 'cmackaile2d@networksolutions.com', 'Male', '212.23.236.30'),
(87, 'Valry', 'Peat', 'vpeat2e@aboutads.info', 'Female', '122.18.191.96'),
(88, 'Mirilla', 'Hounsome', 'mhounsome2f@weather.com', 'Female', '165.241.171.103'),
(89, 'Jilleen', 'Pitrollo', 'jpitrollo2g@tripadvisor.com', 'Female', '141.11.77.27'),
(90, 'Erek', 'Whight', 'ewhight2h@state.tx.us', 'Male', '188.177.254.227'),
(91, 'Belia', 'Fairhead', 'bfairhead2i@wordpress.com', 'Female', '74.67.169.198'),
(92, 'Dedie', 'Abramchik', 'dabramchik2j@goodreads.com', 'Female', '89.238.144.154');

-- --------------------------------------------------------

--
-- Structure de la table `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `fk_user_id` int(11) NOT NULL,
  `fk_order_product_id` int(11) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `price` tinyint(4) NOT NULL,
  `quantity` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `orders`
--

INSERT INTO `orders` (`id`, `fk_user_id`, `fk_order_product_id`, `created_at`, `price`, `quantity`) VALUES
(1, 65, 14, '2024-01-09 10:53:00', 17, 77),
(2, 98, 63, '2024-01-28 05:19:58', 49, 19),
(3, 4, 10, '2023-06-07 23:03:15', 96, 15),
(4, 65, 70, '2023-08-12 13:15:05', 80, 73),
(5, 84, 62, '2024-01-09 16:55:15', 11, 71),
(6, 35, 86, '2023-08-27 14:28:13', 87, 20),
(7, 66, 89, '2023-11-15 13:34:41', 7, 67),
(8, 5, 55, '2023-08-06 22:33:25', 32, 39),
(9, 72, 7, '2023-08-11 07:04:15', 45, 4),
(10, 74, 26, '2023-07-16 00:14:21', 100, 52),
(11, 78, 25, '2023-09-03 16:25:17', 35, 20),
(12, 29, 83, '2023-08-29 00:35:38', 78, 25),
(13, 53, 80, '2023-08-27 07:54:00', 14, 98),
(14, 20, 6, '2024-03-17 06:30:38', 41, 87),
(15, 86, 57, '2023-09-15 23:57:35', 100, 92),
(16, 11, 63, '2023-05-04 04:47:27', 40, 54),
(17, 38, 40, '2023-08-18 21:16:09', 78, 30),
(18, 26, 2, '2024-02-22 17:08:13', 56, 90),
(19, 78, 14, '2023-12-19 15:58:33', 77, 9),
(20, 37, 9, '2023-05-23 10:06:41', 19, 33),
(21, 6, 58, '2023-10-04 19:13:38', 86, 84),
(22, 54, 31, '2023-07-07 08:05:12', 43, 55),
(23, 53, 94, '2023-09-12 06:51:02', 35, 52),
(24, 94, 24, '2023-08-11 09:42:41', 78, 39),
(25, 54, 12, '2023-11-29 23:57:58', 1, 80),
(26, 9, 49, '2023-07-06 20:10:52', 85, 32),
(27, 17, 35, '2023-10-29 11:35:23', 3, 36),
(28, 94, 90, '2024-02-03 14:57:03', 60, 47),
(29, 93, 99, '2024-01-13 09:10:13', 11, 39),
(30, 99, 56, '2023-07-18 05:15:40', 43, 29),
(31, 16, 26, '2023-12-27 20:37:31', 37, 26),
(32, 52, 99, '2023-12-14 12:29:39', 19, 17),
(33, 68, 86, '2023-04-11 19:04:54', 68, 48),
(34, 12, 6, '2024-02-05 04:03:07', 47, 57),
(35, 84, 5, '2023-12-05 07:12:34', 84, 24),
(36, 34, 20, '2023-11-11 16:11:28', 81, 34),
(37, 6, 44, '2023-08-13 18:40:17', 38, 28),
(38, 53, 3, '2023-10-16 08:53:55', 84, 95),
(39, 40, 25, '2023-12-12 01:51:07', 46, 100),
(40, 40, 53, '2023-06-28 14:28:40', 14, 24),
(41, 93, 77, '2023-11-17 06:42:56', 49, 87),
(42, 62, 59, '2024-01-03 18:37:43', 91, 84),
(43, 55, 35, '2023-04-30 17:57:33', 12, 80),
(44, 86, 66, '2024-02-21 03:52:48', 62, 84),
(45, 21, 56, '2023-05-30 00:16:42', 11, 11),
(46, 21, 15, '2023-07-26 15:22:33', 43, 17),
(47, 65, 51, '2023-12-05 09:56:12', 82, 22),
(48, 10, 84, '2023-09-11 19:56:22', 29, 65),
(49, 11, 53, '2023-06-29 06:12:38', 29, 69),
(50, 27, 16, '2023-09-10 23:42:57', 17, 6),
(51, 27, 22, '2023-04-29 02:45:49', 92, 82),
(52, 37, 82, '2023-12-14 06:54:56', 7, 36),
(53, 51, 76, '2023-09-23 22:18:05', 53, 63),
(54, 16, 93, '2023-04-28 06:18:50', 40, 65),
(55, 28, 82, '2023-05-25 10:03:54', 88, 37),
(56, 63, 54, '2023-05-10 14:38:32', 58, 37),
(57, 77, 17, '2023-11-18 03:42:21', 31, 98),
(58, 19, 78, '2023-08-30 03:38:21', 16, 73),
(59, 68, 43, '2023-09-10 21:30:59', 85, 70),
(60, 48, 62, '2024-01-11 00:30:26', 90, 78),
(61, 39, 93, '2023-05-25 19:50:32', 67, 1),
(62, 55, 22, '2024-01-24 16:37:34', 42, 42),
(63, 72, 36, '2023-12-21 00:26:26', 24, 84),
(64, 72, 39, '2024-03-29 18:49:00', 17, 65),
(65, 53, 83, '2024-01-15 04:23:10', 67, 70),
(66, 50, 99, '2023-06-16 22:13:26', 80, 30),
(67, 44, 61, '2023-06-27 05:46:10', 53, 82),
(68, 2, 54, '2024-02-14 14:04:44', 6, 81),
(69, 55, 81, '2024-01-10 04:08:07', 5, 92),
(70, 64, 2, '2023-05-29 05:38:50', 5, 87),
(71, 63, 67, '2024-02-21 19:32:04', 37, 65),
(72, 36, 99, '2024-02-14 03:58:38', 57, 67),
(73, 65, 12, '2024-02-17 21:08:52', 77, 28),
(74, 46, 33, '2023-09-21 22:11:24', 45, 41),
(75, 15, 75, '2023-09-07 01:48:39', 10, 60),
(76, 79, 92, '2023-07-11 16:41:26', 58, 74),
(77, 16, 61, '2023-10-01 21:48:55', 31, 38),
(78, 70, 68, '2023-05-11 08:20:57', 51, 77),
(79, 11, 19, '2024-01-16 04:47:58', 100, 6),
(80, 53, 22, '2023-10-02 15:15:15', 73, 53),
(81, 72, 28, '2023-06-10 15:06:46', 43, 76),
(82, 69, 35, '2023-11-22 12:32:52', 73, 88),
(83, 100, 64, '2024-02-24 00:22:22', 29, 1),
(84, 56, 19, '2023-10-29 07:57:47', 90, 56),
(85, 78, 11, '2023-06-12 09:50:36', 79, 69),
(86, 24, 33, '2023-12-07 09:55:59', 11, 51),
(87, 63, 60, '2023-12-20 14:46:35', 50, 96),
(88, 48, 52, '2023-04-14 15:33:20', 77, 85),
(89, 62, 54, '2023-07-02 04:17:16', 51, 31),
(90, 47, 94, '2023-12-29 07:37:07', 32, 96),
(91, 71, 86, '2023-11-03 21:36:41', 10, 53),
(92, 20, 96, '2023-04-21 21:13:12', 8, 57),
(93, 43, 1, '2023-10-13 12:51:22', 86, 74),
(94, 26, 26, '2023-07-12 04:43:31', 75, 99),
(95, 84, 57, '2023-08-13 15:44:59', 63, 74),
(96, 6, 39, '2023-09-21 23:18:20', 41, 40),
(97, 68, 44, '2023-05-20 07:27:55', 25, 62),
(98, 41, 10, '2023-04-15 06:21:57', 85, 59),
(99, 15, 34, '2023-09-05 16:59:57', 72, 48),
(100, 82, 13, '2023-10-08 20:48:16', 85, 39);

-- --------------------------------------------------------

--
-- Structure de la table `order_product`
--

CREATE TABLE `order_product` (
  `fk_order` int(11) NOT NULL,
  `fk_product_id` int(11) NOT NULL,
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `order_product`
--

INSERT INTO `order_product` (`fk_order`, `fk_product_id`, `id`) VALUES
(10, 93, 1),
(9, 78, 2),
(35, 56, 3),
(41, 85, 4),
(2, 97, 5),
(4, 17, 6),
(21, 48, 7),
(37, 80, 8),
(23, 97, 9),
(4, 18, 10),
(49, 47, 11),
(10, 37, 12),
(94, 25, 13),
(81, 24, 14),
(76, 51, 15),
(100, 24, 16),
(34, 80, 17),
(23, 21, 18),
(24, 94, 19),
(74, 62, 20),
(1, 43, 21),
(99, 61, 22),
(17, 11, 23),
(47, 97, 24),
(53, 38, 25),
(93, 27, 26),
(11, 12, 27),
(27, 30, 28),
(9, 97, 29),
(25, 53, 30),
(85, 30, 31),
(42, 74, 32),
(64, 4, 33),
(67, 22, 34),
(9, 1, 35),
(60, 34, 36),
(60, 77, 37),
(74, 10, 38),
(46, 82, 39),
(60, 97, 40),
(47, 41, 41),
(28, 38, 42),
(94, 34, 43),
(66, 95, 44),
(92, 95, 45),
(95, 96, 46),
(69, 24, 47),
(31, 10, 48),
(32, 90, 49),
(21, 82, 50),
(17, 85, 51),
(57, 56, 52),
(84, 44, 53),
(40, 29, 54),
(16, 53, 55),
(80, 99, 56),
(34, 62, 57),
(55, 72, 58),
(46, 44, 59),
(29, 67, 60),
(41, 85, 61),
(58, 61, 62),
(11, 18, 63),
(99, 37, 64),
(15, 89, 65),
(53, 40, 66),
(68, 60, 67),
(38, 27, 68),
(33, 69, 69),
(43, 12, 70),
(6, 96, 71),
(59, 24, 72),
(65, 98, 73),
(8, 100, 74),
(32, 93, 75),
(83, 62, 76),
(98, 45, 77),
(82, 80, 78),
(11, 100, 79),
(63, 72, 80),
(49, 95, 81),
(90, 27, 82),
(59, 84, 83),
(21, 3, 84),
(7, 65, 85),
(12, 93, 86),
(75, 85, 87),
(37, 42, 88),
(78, 94, 89),
(44, 67, 90),
(64, 35, 91),
(75, 79, 92),
(7, 26, 93),
(98, 15, 94),
(61, 36, 95),
(41, 23, 96),
(17, 19, 97),
(98, 47, 98),
(21, 27, 99),
(57, 41, 100);

-- --------------------------------------------------------

--
-- Structure de la table `product`
--

CREATE TABLE `product` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `price` float NOT NULL,
  `stock` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `product`
--

INSERT INTO `product` (`id`, `name`, `description`, `price`, `stock`) VALUES
(1, 'Mazda', 'Mycotic corneal ulcer, unspecified eye', 52, 3),
(2, 'Mercedes-Benz', 'Sltr-haris Type I physl fx low end l femr, 7thK', 43, 73),
(3, 'Volkswagen', 'Poisoning by MAO inhib antidepressants, assault', 17, 71),
(4, 'BMW', 'Fall into other water striking wall causing other injury', 88, 87),
(5, 'Ford', 'Inj right innominate or subclavian vein, init encntr', 43, 85),
(6, 'Ford', 'Fracture of one rib, right side, subs for fx w routn heal', 88, 32),
(7, 'Mitsubishi', 'Glutaric aciduria type II', 72, 82),
(8, 'Nissan', 'Epidermal thickening, unspecified', 46, 83),
(9, 'Cadillac', 'Stress fracture, left shoulder', 78, 64),
(10, 'Jaguar', 'Foreign body granuloma of soft tissue, NEC, right hand', 94, 45),
(11, 'Lexus', 'Oth extrartic fx low end l rad, 7thJ', 27, 62),
(12, 'Toyota', 'Chronic atrophic gastritis without bleeding', 88, 95),
(13, 'Mitsubishi', 'Unspecified fracture of left calcaneus', 57, 7),
(14, 'Lexus', 'Unequal limb length (acquired)', 90, 63),
(15, 'Volkswagen', 'Acute laryngitis and tracheitis', 68, 37),
(16, 'Acura', 'Oth war operations occurring after, civilian, subs', 51, 68),
(17, 'Dodge', 'Phenothiazine antipsychotics and neuroleptics', 39, 41),
(18, 'Dodge', 'Other specified injuries unspecified forearm, subs encntr', 43, 71),
(19, 'Geo', 'Oth disp fx of upper end of unsp humerus, init for clos fx', 52, 36),
(20, 'Ford', 'Injury of unsp nerve at shldr/up arm, left arm', 42, 22),
(21, 'Honda', 'Other atelectasis of newborn', 20, 71),
(22, 'GMC', 'Burn of first deg mult sites of head, face, and neck, subs', 28, 36),
(23, 'Acura', 'Nondisp Rolando\'s fx, unsp hand, subs for fx w routn heal', 50, 39),
(24, 'Ford', 'Ulcerative blepharitis right lower eyelid', 67, 11),
(25, 'Mercedes-Benz', 'Partial traum amp at level betw knee and ankle, r low leg', 20, 68),
(26, 'Suzuki', 'Drug-induced chronic gout, left shoulder', 56, 86),
(27, 'Volvo', 'Posterior dislocation of left hip, initial encounter', 45, 14),
(28, 'Kia', 'Medial epicondylitis, unspecified elbow', 95, 22),
(29, 'Ford', 'Self-harm by jumping or lying in front of mtr veh, sequela', 99, 69),
(30, 'Chevrolet', 'Polyarteritis nodosa and related conditions', 29, 59),
(31, 'Lexus', 'Encounter for supervision of other normal pregnancy', 23, 68),
(32, 'Chevrolet', 'Other specified viral encephalitis', 59, 99),
(33, 'Mitsubishi', 'Undescended testicle, unilateral', 38, 52),
(34, 'Subaru', 'Disp fx of greater tuberosity of unsp humer, 7thD', 35, 37),
(35, 'Pontiac', 'Acute apical periodontitis of pulpal origin', 96, 31),
(36, 'Plymouth', 'Torus fracture of lower end of left ulna, init for clos fx', 27, 38),
(37, 'Mitsubishi', 'Nondisp spiral fx shaft of unsp tibia, 7thG', 66, 4),
(38, 'Cadillac', 'Striking against or struck by unsp automobile airbag, init', 35, 57),
(39, 'Buick', 'Terrorism involving nuclear weapons, civilian injured, init', 68, 4),
(40, 'BMW', 'Displ osteochon fx unsp patella, 7thD', 59, 74),
(41, 'Ford', 'Breakdown of int fix of bones of foot and toes, subs', 97, 77),
(42, 'Mercedes-Benz', 'Oth disp fx of upper end of right humerus, init for opn fx', 40, 12),
(43, 'Lincoln', 'Unspecified injury of right elbow', 75, 15),
(44, 'Toyota', 'Cereb infrc due to unsp occls or stenos of left cereblr art', 19, 19),
(45, 'Lincoln', 'I/I react d/t cranial or spinal infusion catheter, sequela', 61, 12),
(46, 'BMW', 'Other secondary chronic gout, left knee', 77, 100),
(47, 'Mercury', 'Prsn outsd pk-up/van inj in clsn w 2/3-whl mv nontraf, init', 19, 55),
(48, 'Subaru', 'Blood alcohol level of 240 mg/100 ml or more', 47, 3),
(49, 'GMC', 'Accidental pnctr & lac of a dgstv sys org dur dgstv sys proc', 34, 9),
(50, 'Volvo', 'Displ seg fx shaft of humer, unsp arm, 7thK', 83, 43),
(51, 'Ford', 'Lacerat unsp musc/fasc/tend at thigh level, left thigh, init', 77, 62),
(52, 'Chevrolet', 'Traumatic subcutaneous emphysema', 92, 28),
(53, 'Chrysler', 'Subacute cutaneous lupus erythematosus', 22, 30),
(54, 'Volkswagen', 'Chronic postrheumatic arthropathy, unsp ankle and foot', 43, 10),
(55, 'Dodge', 'Burn second deg of unsp site unsp lower limb, except ank/ft', 11, 60),
(56, 'Mazda', 'Insect bite (nonvenomous), unspecified knee, sequela', 32, 76),
(57, 'Mercury', 'Acute myeloid leuk w multilin dysplasia, not achieve remis', 13, 65),
(58, 'Mercedes-Benz', 'Nondisp fx of base of 5th MC bone. l hand, 7thG', 58, 4),
(59, 'Alfa Romeo', 'Bather struck by powered watercraft, subsequent encounter', 41, 65),
(60, 'Nissan', 'Underdosing of butyrophen/thiothixen neuroleptics, subs', 40, 55),
(61, 'GMC', 'Sprain of unspecified rotator cuff capsule, subs encntr', 31, 63),
(62, 'Chevrolet', 'Laceration of ovary, unilateral, sequela', 71, 86),
(63, 'Cadillac', 'Other fracture of base of skull, sequela', 32, 6),
(64, 'Mercedes-Benz', 'Band keratopathy, right eye', 46, 55),
(65, 'Hyundai', 'Avulsion of unspecified eye, sequela', 18, 74),
(66, 'Kia', 'Glucosaminoglycan metabolism disorder, unspecified', 53, 63),
(67, 'Mitsubishi', 'Passenger in 3-whl mv injured in clsn w pedl cyc nontraf', 25, 29),
(68, 'Mazda', 'Other specified injury of portal vein, initial encounter', 35, 95),
(69, 'Pontiac', 'Pathological fracture in oth disease, right fibula, sequela', 18, 87),
(70, 'Volvo', 'Nondisp subtrochnt fx l femr, 7thF', 23, 99),
(71, 'Mercedes-Benz', 'Multi-system degeneration of the autonomic nervous system', 39, 85),
(72, 'Ford', 'Puncture wound w/o foreign body of oral cavity, init encntr', 54, 95),
(73, 'Chevrolet', 'Injury of deep peroneal nrv at ank/ft level, unsp leg, init', 95, 65),
(74, 'Mazda', 'Pathological fracture in oth disease, right shoulder, init', 79, 46),
(75, 'Dodge', 'Contact with nonvenomous marine animal', 19, 54),
(76, 'Ford', 'Traumatic amp of part of thorax, except breast, subs', 55, 45),
(77, 'MINI', 'Unsp nondisp fx of sixth cervical vertebra, init for opn fx', 72, 51),
(78, 'BMW', 'Insect bite (nonvenomous), unspecified lesser toe(s)', 16, 5),
(79, 'Volkswagen', 'Contact w and (suspected ) exposure to oth hazardous substnc', 66, 16),
(80, 'Volkswagen', 'Familial chondrocalcinosis, left wrist', 100, 75),
(81, 'Cadillac', 'Calcifcn and ossifictn of muscles assoc w burns, left hand', 91, 83),
(82, 'Subaru', 'Ring or other jewelry causing external constriction, sequela', 96, 83),
(83, 'Audi', 'Oth psychoactive substance dependence w intox delirium', 76, 93),
(84, 'Cadillac', 'Disp fx of body of scapula, r shldr, subs for fx w nonunion', 28, 42),
(85, 'Mercury', 'Neuromyelitis optica [Devic]', 18, 3),
(86, 'Lexus', 'Burn of left eyelid and periocular area', 90, 4),
(87, 'Lexus', 'External constriction of unsp back wall of thorax, subs', 83, 6),
(88, 'Buick', 'Lordosis, unspecified, site unspecified', 34, 19),
(89, 'Lexus', 'Oth fracture of third thor vertebra, subs for fx w nonunion', 23, 80),
(90, 'Porsche', 'Nondisp longitud fx l patella, subs for clos fx w delay heal', 93, 33),
(91, 'Ford', 'Pure hypercholesterolemia, unspecified', 72, 97),
(92, 'Audi', 'Regular astigmatism, left eye', 23, 46),
(93, 'Lincoln', 'Unsp open wound of unspecified part of head, subs encntr', 78, 13),
(94, 'Mazda', 'Burn of third degree of left upper arm, sequela', 69, 89),
(95, 'Cadillac', 'Unsp fx low end unsp ulna, 7thQ', 11, 29),
(96, 'Porsche', 'Unsp focal TBI w LOC of 1-5 hrs 59 min, sequela', 34, 67),
(97, 'Kia', 'Complete traumatic amputation at level between hip and knee', 49, 33),
(98, 'Acura', 'Pre-existing essential htn comp pregnancy, first trimester', 66, 69),
(99, 'Chevrolet', 'Pyothorax with fistula', 28, 84),
(100, 'Dodge', 'Poisoning by skeletal muscle relaxants, undet, sequela', 83, 24);

-- --------------------------------------------------------

--
-- Structure de la table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `first_name` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `users`
--

INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`) VALUES
(1, 'Tristam', 'Benkhe', 'tbenkhe0@squidoo.com'),
(2, 'Lucila', 'Sisland', 'lsisland1@merriam-webster.com'),
(3, 'Salvidor', 'Brosio', 'sbrosio2@cargocollective.com'),
(4, 'Pearle', 'McElvogue', 'pmcelvogue3@edublogs.org'),
(5, 'Nonnah', 'Pesterfield', 'npesterfield4@gizmodo.com'),
(6, 'Jilli', 'Vant', 'jvant5@blogtalkradio.com'),
(7, 'Sybyl', 'Cahani', 'scahani6@telegraph.co.uk'),
(8, 'Giulietta', 'Fiander', 'gfiander7@usgs.gov'),
(9, 'Gannie', 'Hawkett', 'ghawkett8@myspace.com'),
(10, 'Duncan', 'Garbett', 'dgarbett9@nhs.uk'),
(11, 'Christy', 'Cruikshanks', 'ccruikshanksa@spiegel.de'),
(12, 'Renelle', 'Swindlehurst', 'rswindlehurstb@sciencedirect.com'),
(13, 'Giuditta', 'Bankhurst', 'gbankhurstc@flavors.me'),
(14, 'Xena', 'Jeste', 'xjested@hud.gov'),
(15, 'Jorge', 'Lillecrap', 'jlillecrape@360.cn'),
(16, 'Barn', 'Atger', 'batgerf@dmoz.org'),
(17, 'Georgeta', 'Stilly', 'gstillyg@desdev.cn'),
(18, 'Rhonda', 'Bruckstein', 'rbrucksteinh@bloglines.com'),
(19, 'Kendrick', 'Josephov', 'kjosephovi@icq.com'),
(20, 'Robinia', 'Goadby', 'rgoadbyj@last.fm'),
(21, 'Drew', 'Maunton', 'dmauntonk@cnn.com'),
(22, 'Stevena', 'Widdup', 'swiddupl@army.mil'),
(23, 'Ham', 'Menilove', 'hmenilovem@weibo.com'),
(24, 'Katharyn', 'Mandell', 'kmandelln@slideshare.net'),
(25, 'Tome', 'Cockshutt', 'tcockshutto@google.ru'),
(26, 'Mac', 'Tallent', 'mtallentp@weibo.com'),
(27, 'Jone', 'Michele', 'jmicheleq@t.co'),
(28, 'Bennie', 'Dericot', 'bdericotr@businessweek.com'),
(29, 'Francesco', 'Brunnstein', 'fbrunnsteins@cafepress.com'),
(30, 'Roberto', 'Mertel', 'rmertelt@businesswire.com'),
(31, 'Adelaide', 'Antonio', 'aantoniou@gnu.org'),
(32, 'Mollee', 'Ammer', 'mammerv@google.de'),
(33, 'Alysa', 'Caddies', 'acaddiesw@booking.com'),
(34, 'Latisha', 'Rohlf', 'lrohlfx@com.com'),
(35, 'Early', 'Steade', 'esteadey@alibaba.com'),
(36, 'Adele', 'Leckenby', 'aleckenbyz@zimbio.com'),
(37, 'Garth', 'Crump', 'gcrump10@adobe.com'),
(38, 'Elna', 'Prayer', 'eprayer11@w3.org'),
(39, 'Appolonia', 'Tupp', 'atupp12@google.co.jp'),
(40, 'Jehanna', 'Zmitruk', 'jzmitruk13@vinaora.com'),
(41, 'Jerrold', 'Stearn', 'jstearn14@xrea.com'),
(42, 'Shirley', 'Lyddyard', 'slyddyard15@utexas.edu'),
(43, 'Kelsi', 'Cowill', 'kcowill16@sohu.com'),
(44, 'Hilde', 'Gritsaev', 'hgritsaev17@ft.com'),
(45, 'Nat', 'Botton', 'nbotton18@cisco.com'),
(46, 'Ford', 'Tezure', 'ftezure19@alexa.com'),
(47, 'Antonina', 'Paice', 'apaice1a@accuweather.com'),
(48, 'Susi', 'Dupree', 'sdupree1b@cisco.com'),
(49, 'Shaylah', 'Ciccone', 'sciccone1c@cocolog-nifty.com'),
(50, 'Nedda', 'Tethcote', 'ntethcote1d@geocities.com'),
(51, 'Trenton', 'Boyce', 'tboyce1e@berkeley.edu'),
(52, 'Dalli', 'MacGarvey', 'dmacgarvey1f@howstuffworks.com'),
(53, 'Korrie', 'Casol', 'kcasol1g@msu.edu'),
(54, 'Job', 'Castelijn', 'jcastelijn1h@hhs.gov'),
(55, 'Sadella', 'Chettle', 'schettle1i@4shared.com'),
(56, 'Phedra', 'Bardey', 'pbardey1j@yellowpages.com'),
(57, 'Gonzalo', 'Gentner', 'ggentner1k@blogtalkradio.com'),
(58, 'Leila', 'Hasnney', 'lhasnney1l@wiley.com'),
(59, 'Karena', 'Manuaud', 'kmanuaud1m@addtoany.com'),
(60, 'Angelique', 'Chamberlen', 'achamberlen1n@dailymotion.com'),
(61, 'Berky', 'Baleine', 'bbaleine1o@creativecommons.org'),
(62, 'Sidoney', 'Mattingley', 'smattingley1p@wikimedia.org'),
(63, 'Theressa', 'Dungay', 'tdungay1q@yelp.com'),
(64, 'Bel', 'Nani', 'bnani1r@house.gov'),
(65, 'Nana', 'Balmann', 'nbalmann1s@webs.com'),
(66, 'Wayne', 'Bourner', 'wbourner1t@mit.edu'),
(67, 'Gunar', 'Petrolli', 'gpetrolli1u@springer.com'),
(68, 'Ginevra', 'O\'Kennavain', 'gokennavain1v@engadget.com'),
(69, 'Zonnya', 'Howerd', 'zhowerd1w@oakley.com'),
(70, 'Kathi', 'Box', 'kbox1x@plala.or.jp'),
(71, 'Fairlie', 'Clyburn', 'fclyburn1y@indiegogo.com'),
(72, 'Nona', 'Peeke', 'npeeke1z@alibaba.com'),
(73, 'Carleton', 'Juggins', 'cjuggins20@123-reg.co.uk'),
(74, 'Aidan', 'Byatt', 'abyatt21@dyndns.org'),
(75, 'Wilek', 'Budnik', 'wbudnik22@earthlink.net'),
(76, 'Sorcha', 'Crosdill', 'scrosdill23@chron.com'),
(77, 'Jemie', 'Fetherby', 'jfetherby24@mayoclinic.com'),
(78, 'Aili', 'Drinkhill', 'adrinkhill25@stumbleupon.com'),
(79, 'Nancee', 'Hanham', 'nhanham26@homestead.com'),
(80, 'Cobbie', 'Hukin', 'chukin27@meetup.com'),
(81, 'Jammie', 'Killcross', 'jkillcross28@360.cn'),
(82, 'Mariya', 'Pallasch', 'mpallasch29@twitpic.com'),
(83, 'Franciskus', 'Pischel', 'fpischel2a@timesonline.co.uk'),
(84, 'Bethanne', 'Conichie', 'bconichie2b@ameblo.jp'),
(85, 'Hermie', 'Pettko', 'hpettko2c@gizmodo.com'),
(86, 'Charlena', 'Aucoate', 'caucoate2d@mail.ru'),
(87, 'Bernhard', 'Buchan', 'bbuchan2e@usatoday.com'),
(88, 'Hermione', 'Tuddall', 'htuddall2f@amazonaws.com'),
(89, 'Chryste', 'Rego', 'crego2g@phpbb.com'),
(90, 'Federico', 'Graber', 'fgraber2h@sun.com'),
(91, 'Rodrique', 'Bende', 'rbende2i@sun.com'),
(92, 'Maribeth', 'Vondruska', 'mvondruska2j@blogger.com'),
(93, 'Horace', 'Rothman', 'hrothman2k@gov.uk'),
(94, 'Claudine', 'Lerven', 'clerven2l@cdc.gov'),
(95, 'Alastair', 'Ruppelin', 'aruppelin2m@google.co.uk'),
(96, 'Nertie', 'Trimble', 'ntrimble2n@mozilla.org'),
(97, 'Stevie', 'Liepmann', 'sliepmann2o@weebly.com'),
(98, 'Corella', 'Wycliffe', 'cwycliffe2p@linkedin.com'),
(99, 'Flem', 'Revans', 'frevans2q@usda.gov'),
(100, 'Fleur', 'Payn', 'fpayn2r@php.net');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `MOCK_DATA`
--
ALTER TABLE `MOCK_DATA`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_user_id` (`fk_user_id`);

--
-- Index pour la table `order_product`
--
ALTER TABLE `order_product`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_product_id` (`fk_product_id`),
  ADD KEY `fk_order` (`fk_order`);

--
-- Index pour la table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

--
-- AUTO_INCREMENT pour la table `order_product`
--
ALTER TABLE `order_product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

--
-- AUTO_INCREMENT pour la table `product`
--
ALTER TABLE `product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

--
-- AUTO_INCREMENT pour la table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`fk_user_id`) REFERENCES `users` (`id`);

--
-- Contraintes pour la table `order_product`
--
ALTER TABLE `order_product`
  ADD CONSTRAINT `order_product_ibfk_1` FOREIGN KEY (`fk_product_id`) REFERENCES `product` (`id`),
  ADD CONSTRAINT `order_product_ibfk_2` FOREIGN KEY (`fk_order`) REFERENCES `orders` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
