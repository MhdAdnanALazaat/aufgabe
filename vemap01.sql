-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 07, 2019 at 12:26 PM
-- Server version: 10.1.39-MariaDB
-- PHP Version: 7.1.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `vemap01`
--

-- --------------------------------------------------------

--
-- Table structure for table `artikel`
--

CREATE TABLE `artikel` (
  `artikelID` int(10) UNSIGNED NOT NULL,
  `artikelName` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `artikelGruppe` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `artikelPreis` decimal(10,2) NOT NULL DEFAULT '0.00',
  `artikelBeschreibung` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `artikelAktion` smallint(2) UNSIGNED NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `artikel`
--

INSERT INTO `artikel` (`artikelID`, `artikelName`, `artikelGruppe`, `artikelPreis`, `artikelBeschreibung`, `artikelAktion`) VALUES
(5, 'Arbeitskittel', 'Kleidung', '98.00', 'schwarz', 1),
(6, 'Arbeitskleid', 'Kleidung', '70.00', 'rot', 1),
(7, 'Armelschoner', 'Kleidung', '51.00', 'gelb', 1),
(8, 'Artischocke', 'Lebensmittel', '2.00', '', 1),
(9, 'Auflageprofil', 'Heimwerker', '55.00', '', 1),
(10, 'Avocado', 'Lebensmittel', '4.00', 'vitamireich', 1),
(11, 'Albe', 'Heiwerker', '12321.00', 'das', 1),
(12, 'adnan', 'Kleidung', '0.00', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `laender`
--

CREATE TABLE `laender` (
  `LandID` int(3) UNSIGNED NOT NULL,
  `Land` varchar(40) DEFAULT NULL,
  `Flaeche` int(11) DEFAULT NULL,
  `Einwohner` int(10) DEFAULT NULL,
  `Region` varchar(40) DEFAULT NULL,
  `Hauptstadt` varchar(40) DEFAULT NULL,
  `BIP` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `laender`
--

INSERT INTO `laender` (`LandID`, `Land`, `Flaeche`, `Einwohner`, `Region`, `Hauptstadt`, `BIP`) VALUES
(6, 'yrtytryrty', 0, 0, '', '', 0),
(7, 'Antigua und Barbuda', 443, 89018, 'Mittelamerika', 'Saint John´s', 11592),
(8, 'Äquatorialguinea', 28051, 685991, 'Zentralafrika', 'Malabo', 4086),
(9, 'Argentinien', 2780400, 42192494, 'Süd-Südamerika', 'Buenos Aires', 4380),
(10, 'Armenien', 29743, 2970495, 'Vorderasien', 'Eriwan', 1270),
(11, 'Aserbaidschan', 86600, 9493600, 'Vorderasien', 'Baku', 1279),
(12, 'Äthiopien', 1104300, 91195675, 'Nordostafrika', 'Addis Abeba', 0),
(13, 'Australien', 7741220, 22015576, 'Indischer', 'Canberra', 33629),
(14, 'Bahamas', 13880, 316182, 'Mittelamerika', 'Nassau', 18256),
(15, 'Bahrain', 760, 1248348, 'Vorderasien', 'Manama', 14728),
(16, 'Bangladesch', 143998, 161083804, 'Südasien', 'Dhaka', 408),
(17, 'Barbados', 430, 287733, 'Mittelamerika', 'Bridgetown', 10747),
(18, 'Belarus', 207600, 9643566, 'Osteuropa', 'Minsk', 3141),
(19, 'Belgien', 30528, 10438353, 'Westeuropa', 'Brüssel', 37930),
(20, 'Belize', 22966, 327719, 'Mittelamerika', 'Belmopan', 4120),
(21, 'Benin', 112622, 9598787, 'Westafrika', 'Porto Novo', 642),
(22, 'Bhutan', 38394, 716896, 'Südasien', 'Thimphu', 879),
(23, 'Bolivien', 1098581, 10290003, 'Zentral-Südamerika', 'Sucre', 1147),
(24, 'Bosnien-Herzegowina', 51197, 3879296, 'Südosteuropa', 'Sarajevo', 2429),
(25, 'Botswana', 581730, 2098018, 'Südafrika', 'Gaborone', 5951),
(26, 'Brasilien', 8514877, 199321413, 'Ost-Südamerika', 'Brasilia', 4124),
(27, 'Brunei', 5765, 408786, 'Südostasien', 'Bandar Seri Begawan', 15764),
(28, 'Bulgarien', 110879, 7037935, 'Südosteuropa', 'Sofia', 3347),
(29, 'Burkina Faso', 274200, 17275115, 'Westafrika', 'Ouagadougou', 449),
(30, 'Burundi', 27830, 10557259, 'Ostafrika', 'Bujumbura', 0),
(31, 'Chile', 756102, 17067369, 'West-Südamerika', 'Santiago de Chile', 6272),
(32, 'China', 9596961, 1343239923, 'Ostasien', 'Peking', 1544),
(33, 'Costa Rica', 51100, 4636348, 'Mittelamerika', 'San José', 4526),
(34, 'Cote d Ivoire', 322463, 21952093, 'Westafrika', 'Yamoussoukro', 886),
(35, 'Dänemark', 43094, 5543453, 'Nordeuropa', 'Kopenhagen', 49182),
(36, 'Deutschland', 357022, 81305856, 'Zentraleuropa', 'Berlin', 35075),
(37, 'Dominika', 751, 73126, 'Mittelamerika', 'Roseau', 3772),
(38, 'Dominikanische Republik', 48670, 10088598, 'Mittelamerika', 'Santo Domingo', 2383),
(39, 'Djibouti', 23200, 774389, 'Nordostafrika', 'Djibouti', 824),
(40, 'Ecuador', 283561, 15223680, 'Nord-West-Südamerika', 'Quito', 2255),
(41, 'El Salvador', 21041, 6090646, 'Mittelamerika', 'San Salvador', 2410),
(42, 'Eritrea', 117600, 6086495, 'Nordostafrika', 'Asmara', 0),
(43, 'Estland', 45228, 1274709, 'Nordosteuropa', 'Tallinn', 9112),
(44, 'Fidschi', 18274, 890057, 'Pazifik', 'Suva', 3287),
(45, 'Finnland', 338145, 5262930, 'Nordeuropa', 'Helsinki', 39098),
(46, 'Frankreich', 551500, 65630692, 'Westeuropa', 'Paris', 35727),
(47, 'Gabun', 267667, 1608321, 'Zentralafrika', 'Libreville', 6035),
(48, 'Gambia', 11295, 1840454, 'Westafrika', 'Banjul', 305),
(49, 'Georgien', 69700, 4570934, 'Vorderasien', 'Tiflis', 927),
(50, 'Ghana', 238533, 24652402, 'Westafrika', 'Accra', 495),
(51, 'Grenada', 344, 109011, 'Mittelamerika', 'Saint George´s', 4394),
(52, 'Griechenland', 131957, 10767827, 'Südosteuropa', 'Athen', 21017),
(53, 'Großbritannien', 243610, 63047162, 'Westeuropa', 'London', 38098),
(54, 'Guatemala', 108889, 14099032, 'Mittelamerika', 'Guatemala-Stadt', 1966),
(55, 'Guinea', 245857, 10884958, 'Westafrika', 'Conakry', 382),
(56, 'Guinea-Bissau', 36125, 1628603, 'Westafrika', 'Bissau', 229),
(57, 'Guyana', 214969, 741908, 'Nord-Südamerika', 'Georgetown', 1035),
(58, 'Haiti', 27750, 9801664, 'Mittelamerika', 'Port-au-Prince', 511),
(59, 'Honduras', 112090, 8296693, 'Mittelamerika', 'Tegucigalpa', 1069),
(60, 'Indien', 3287263, 1205073612, 'Südasien', 'Neu Delhi', 678),
(61, 'Indonesien', 1904569, 248645008, 'Südostasien', 'Jakarta', 1267),
(62, 'Irak', 438317, 31129225, 'Vorderasien', 'Bagdad', 1053),
(63, 'Iran', 1648195, 78868711, 'Vorderasien', 'Teheran', 2810),
(64, 'Irland', 70273, 4722028, 'Westeuropa', 'Dublin', 50303),
(65, 'Island', 103000, 313183, 'Nordeuropa', 'Reykjavik', 52063),
(66, 'Israel', 20770, 7590758, 'Vorderasien', 'Jerusalem', 18303),
(67, 'Italien', 301340, 61261254, 'Südeuropa', 'Rom', 31874),
(68, 'Jamaika', 10991, 2889187, 'Mittelamerika', 'Kingston', 3388),
(69, 'Japan', 377915, 127368088, 'Ostasien', 'Tokio', 37566),
(70, 'Jemen', 527968, 24771809, 'Vorderasien', 'Sana', 586),
(71, 'Jordanien', 89342, 6508887, 'Vorderasien', 'Amman', 2058),
(72, 'Kambodscha', 181035, 14952665, 'Südostasien', 'Phnom Penh', 317),
(73, 'Kamerun', 475440, 20129878, 'Zentralafrika', 'Yaoundé', 882),
(74, 'Kanada', 9984670, 34300083, 'Nordamerika', 'Ottawa', 34028),
(75, 'Kap Verde', 4033, 523568, 'Westafrika', 'Praia', 2479),
(76, 'Kasachstan', 2724900, 17522010, 'Zentralasien', 'Astana', 3453),
(77, 'Katar', 11586, 1951591, 'Vorderasien', 'Doha', 29800),
(78, 'Kenia', 580367, 43013341, 'Ostafrika', 'Nairobi', 513),
(79, 'Kirgisistan', 199951, 5496737, 'Vorderasien', 'Bischkek', 444),
(80, 'Kiribati', 811, 101998, 'Pazifik', 'Bairiki', 768),
(81, 'Kolumbien', 1138910, 45239079, 'Nord-West-Südamerika', 'Bogotá', 2358),
(82, 'Komoren', 2235, 737284, 'Ostafrika', 'Moroni', 620),
(83, 'Kongo', 342000, 4366266, 'Zentralafrika', 'Brazzaville', 1563),
(84, 'Kongo, Dem. Republik', 2344858, 73599190, 'Zentralafrika', 'Kinshasa', 0),
(85, 'Korea, Demokratische Volksrepublik', 120538, 24589122, 'Südostasien', '', 0),
(86, 'Korea, Republik', 99720, 48860500, 'Südostasien', '', 0),
(87, 'Kroatien', 56594, 4480043, 'Südosteuropa', 'Zagreb', 7801),
(88, 'Kuba', 110860, 11075244, 'Mittelamerika', 'Havanna', 2643),
(89, 'Kuwait', 17818, 2646314, 'Vorderasien', 'Kuwait-Stadt', 22424),
(90, 'Laos', 236800, 6586266, 'Südostasien', 'Vientiane', 451),
(91, 'Lesotho', 30355, 1930493, 'Südafrika', 'Maseru', 702),
(92, 'Lettland', 64589, 2191580, 'Nordosteuropa', 'Riga', 6559),
(93, 'Libanon', 10400, 4140289, 'Vorderasien', 'Beirut', 5434),
(94, 'Liberia', 111369, 3887886, 'Westafrika', 'Monrovia', 0),
(95, 'Libyen', 1759540, 5613380, 'Nordafrika', 'Tripolis', 5701),
(96, 'Liechtenstein', 160, 36713, 'Zentraleuropa', 'Vaduz', 95000),
(97, 'Litauen', 65300, 3525761, 'Nordosteuropa', 'Vilnius', 6853),
(98, 'Luxemburg', 2586, 509074, 'Zentraleuropa', 'Luxemburg', 77595),
(99, 'Madagaskar', 587041, 22005222, 'Südafrika', 'Antananarivo', 276),
(100, 'Malawi', 118484, 16323044, 'Südafrika', 'Lilongwe', 164),
(101, 'Malaysia', 329847, 29179952, 'Südostasien', 'Kuala Lumpur', 4930),
(102, 'Malediven', 298, 394451, 'Südasien', 'Male', 2472),
(103, 'Mali', 1240192, 15494466, 'Westafrika', 'Bamako', 444),
(104, 'Malta', 316, 409836, 'Südeuropa', 'Valletta', 14001),
(105, 'Marokko', 446550, 32309239, 'Nordafrika', 'Rabat', 1758),
(106, 'Marschall-Inseln', 181, 68480, 'Pazifik', 'Majuro', 0),
(107, 'Mauretanien', 1030700, 3359185, 'Westafrika', 'Nouakchott', 529),
(108, 'Mauritius', 2040, 1313095, 'Südostafrika', 'Port Louis', 5033),
(109, 'Mazedonien', 25713, 2082370, 'Südosteuropa', 'Skopje', 2404),
(110, 'Mexiko', 1964375, 114975406, 'Mittelamerika', 'Mexiko-Stadt', 6771),
(111, 'Mikronesien', 702, 106487, 'Westpazifik', 'Palikir', 1970),
(112, 'Moldawien', 33851, 3656843, 'Südosteuropa', 'Chisinau', 803),
(113, 'Monaco', 2, 30510, 'Westeuropa', 'Monaco', 0),
(114, 'Mongolei', 1564116, 3179997, 'Zentralasien', 'Ulan Bator', 547),
(115, 'Montenegro', 13812, 657394, 'Südosteuropa', 'Podgorica', 3800),
(116, 'Mosambik', 799380, 23515934, 'Südafrika', 'Maputo', 343),
(117, 'Myanmar', 676578, 54584650, 'Südostasien', 'Pyinmana', 160),
(118, 'Namibia', 824292, 2165828, 'Südwestafrika', 'Windhoek', 2360),
(119, 'Nepal', 147181, 29890686, 'Südasien', 'Kathmandu', 247),
(120, 'Neuseeland', 267710, 4327944, 'Pazifik', 'Wellington', 26291),
(121, 'Nicaragua', 130370, 5727707, 'Mittelamerika', 'Managua', 821),
(122, 'Niederlande', 41543, 16730632, 'Westeuropa', 'Amsterdam', 38320),
(123, 'Niger', 1267000, 16344687, 'Westafrika', 'Niamey', 268),
(124, 'Nigeria', 923768, 170123740, 'Westafrika', 'Abuja', 626),
(125, 'Norwegen', 323802, 4707270, 'Nordeuropa', 'Oslo', 61852),
(126, 'Oman', 309500, 3090150, 'Vorderasien', 'Maskat', 10316),
(127, 'Österreich', 83871, 8219743, 'Zentraleuropa', 'Wien', 39804),
(128, 'Pakistan', 796095, 190291129, 'Südasien', 'Islamabad', 591),
(129, 'Palau', 459, 21032, 'Pazifik', 'Melekeok', 6820),
(130, 'Panama', 75420, 3510045, 'Mittelamerika', 'Panama-Stadt', 4689),
(131, 'Papua-Neuguinea', 462840, 6310129, 'Westpazifik', 'Port Moresby', 660),
(132, 'Paraguay', 406752, 6541591, 'Zentral-Südamerika', 'Asunción', 1170),
(133, 'Peru', 1285216, 29549517, 'West-Südamerika', 'Lima', 2484),
(134, 'Philippinen', 30000, 103775002, 'Südostasien', 'Manila', 1079),
(135, 'Polen', 312685, 38415284, 'Zentraleuropa', 'Warschau', 8082),
(136, 'Portugal', 92090, 10781459, 'Südwesteuropa', 'Lissabon', 18105),
(137, 'Ruanda', 26338, 11689696, 'Ostafrika', 'Kigali', 235),
(138, 'Rumänien', 238391, 21848504, 'Südosteuropa', 'Bukarest', 3600),
(139, 'Russische Föderation', 17098242, 142517670, 'Osteuropa', 'Moskau', 5341),
(140, 'Salomonen', 28896, 584578, 'Pazifik', 'Honiara', 570),
(141, 'Sambia', 752618, 13817479, 'Südafrika', 'Lusaka', 537),
(142, 'Samoa', 2831, 194320, 'Pazifik', 'Apia', 1821),
(143, 'San Marino', 61, 32140, 'Südeuropa', 'San Marino Stadt', 27000),
(144, 'Sao Tome', 964, 183176, 'Westafrika', 'Sao Tomé', 419),
(145, 'Saudi-Arabien', 2149690, 26534504, 'Vorderasien', 'Riad', 11085),
(146, 'Schweden', 450295, 9103788, 'Nordeuropa', 'Stockholm', 42392),
(147, 'Schweiz', 41277, 7925517, 'Zentraleuropa', 'Bern', 52879),
(148, 'Senegal', 196722, 12969606, 'Westafrika', 'Dakar', 835),
(149, 'Serbien', 77474, 7276604, 'Südosteuropa', 'Belgrad', 4400),
(150, 'Seychellen', 455, 90024, 'Ostafrika', 'Victoria', 7504),
(151, 'Sierra Leone', 71740, 5485998, 'Westafrika', 'Freetown', 208),
(152, 'Simbabwe', 390757, 12619600, 'Südafrika', 'Harare', 1045),
(153, 'Singapur', 697, 5353494, 'Südostasien', 'Singapur', 26481),
(154, 'Slowakei', 49035, 5483088, 'Zentraleuropa', 'Bratislava', 9305),
(155, 'Slowenien', 20273, 1996617, 'Zentraleuropa', 'Ljubljana', 17606),
(156, 'Somalia', 637657, 10085638, 'Nordostafrika', 'Mogadischu', 0),
(157, 'Spanien', 505370, 47042984, 'Südwesteuropa', 'Madrid', 27074),
(158, 'Sri Lanka', 65610, 21481334, 'Südasien', 'Colombo', 1088),
(159, 'Saint Kitts und Nevis', 261, 50726, 'Mittelamerika', 'Basseterre', 10130),
(160, 'Saint Lucia', 616, 162178, 'Mittelamerika', 'Castries', 4095),
(161, 'Saint Vincent und die Grenadinen', 389, 103537, 'Mittelamerika', 'Kingstown', 3719),
(162, 'Südafrika', 1219090, 48810427, 'Südafrika', 'Pretoria', 4698),
(163, 'Sudan', 1861484, 34206710, 'Nordostafrika', 'Khartum', 718),
(164, 'Südsudan', 644329, 10625176, 'Zentralafrika', 'Juba', 0),
(165, 'Surinam', 163820, 560157, 'Nord-Südamerika', 'Paramaribo', 2452),
(166, 'Swasiland', 17364, 1386914, 'Südostafrika', 'Mbabane', 2298),
(167, 'Syrien', 185180, 22530746, 'Vorderasien', 'Damaskus', 1378),
(168, 'Tadschikistan', 143100, 7768385, 'Vorderasien', 'Duschanbe', 369),
(169, 'Taiwan', 35980, 23234936, 'Ostasien', 'Taipeh', 14860),
(170, 'Tansania', 947300, 46912768, 'Ostafrika', 'Dodoma', 323),
(171, 'Thailand', 513120, 67091089, 'Südostasien', 'Bangkok', 2665),
(172, 'Togo', 56785, 6961049, 'Westafrika', 'Lomé', 414),
(173, 'Tonga', 747, 106146, 'Pazifik', 'Nuku´alofa', 2226),
(174, 'Trinidad und Tobago', 5128, 1226383, 'Mittelamerika', 'Port of Spain', 10533),
(175, 'Tschad', 1284000, 10975648, 'Zentralafrika', 'N`Djamena', 637),
(176, 'Tschechien', 78867, 10177300, 'Zentraleuropa', 'Prag', 12304),
(177, 'Tunesien', 163610, 10732900, 'Nordafrika', 'Tunis', 3154),
(178, 'Türkei', 783562, 79749461, 'Vorderasien/Südosteuropa', 'Ankara', 4744),
(179, 'Turkmenistan', 488100, 5054828, 'Vorderasien', 'Aschgabat', 2756),
(180, 'Tuvalu', 26, 10619, 'Pazifik', 'Funafuti', 1400),
(181, 'Uganda', 241038, 33640833, 'Ostafrika', 'Kampala', 309),
(182, 'Ukraine', 603550, 44854065, 'Osteuropa', 'Kiew', 1748),
(183, 'Ungarn', 93028, 9958453, 'Zentraleuropa', 'Budapest', 10978),
(184, 'Uruguay', 176215, 3316328, 'Süd-Ost-Südamerika', 'Montevideo', 3837),
(185, 'Usbekistan', 447400, 28394180, 'Zentralasien', 'Taschkent', 419),
(186, 'Vanuatu', 12189, 256155, 'Pazifik', 'Port Vila', 1504),
(187, 'Vatikanstadt', 0, 836, 'Südeuropa', 'Vatikanstadt', 0),
(188, 'Venezuela', 912050, 28047938, 'Nord-Südamerika', 'Caracas', 4627),
(189, 'Vereinigte Arabische Emirate', 83600, 5314317, 'Vorderasien', 'Abu Dhabi', 22009),
(190, 'USA', 9826675, 313847465, 'Nordamerika', 'Washington', 41917),
(191, 'Vietnam', 331210, 91519289, 'Südostasien', 'Hanoi', 566),
(192, 'Zentralafrikanische Republik', 622984, 5057208, 'Zentralafrika', 'Bangui', 371),
(193, 'Zypern', 9251, 1138071, 'Südosteuropa', 'Nikosia', 0),
(194, 'adnan', 0, 0, '', '', 0),
(195, 'omar', 0, 0, '', '', 0),
(196, 'adnan', 0, 0, '', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `userID` int(10) UNSIGNED NOT NULL,
  `userName` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `userEmail` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `userPassword` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `userRole` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`userID`, `userName`, `userEmail`, `userPassword`, `userRole`) VALUES
(1, 'slimlose', 'slim@es.at', 'xy', 0),
(2, 'Micky', 'Adnan@gmail.com', '12345', 1),
(3, 'Adnan', 'Adnan@gmail.com', '123123', 0),
(4, 'Omar', 'Omar@gmail.com', '12315154164', 0),
(5, 'Hani', 'Hani@gmail.com', 'pdapdasdpasdas', 0),
(6, 'lucas', 'lucas@gmail.com', '2d1s2d', 0),
(11, 'Adnsan', 'Adnasn@gmail.com', '123123', 0),
(12, 'John', 'john@example.com', '', 0),
(14, 'gdfg', 't@t.com', '$2y$10$IW8xuPFnEKrpkB7oDwzLNOLwWaZaDmnnd42ZK/wFhLNk6XktXtLXu', 0),
(15, 'Vemap', 'mesheel1992@gmail.com', '$2y$10$MJD0cYIrojTKrJ4kpKhRrOI2vQh6WXSEakTS0r3355X3N8q2J3H6q', 0),
(19, 'wqw', 'w@w.com', '$2y$10$q5NQ8z8DrpQUeu/mEVbjveHW91Xn/YGqEWOYS1TmHMUoKJLC2yZl.', 2),
(22, 'w', 'q@q.com', '$2y$10$RhPbITPq3k38CHGQ7AcZLuqcIjy2dRP4rmGOwzj74naTkVWq9hcJa', 0),
(25, 'pro', 'pro@pro.com', '$2y$10$JxK4jeLhFSyUU0Kg8m7lYOGHifQSIQR7WaQ5hyqa3lbXeB98fDUWG', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `artikel`
--
ALTER TABLE `artikel`
  ADD PRIMARY KEY (`artikelID`);

--
-- Indexes for table `laender`
--
ALTER TABLE `laender`
  ADD PRIMARY KEY (`LandID`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`userID`),
  ADD UNIQUE KEY `userName` (`userName`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `artikel`
--
ALTER TABLE `artikel`
  MODIFY `artikelID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `laender`
--
ALTER TABLE `laender`
  MODIFY `LandID` int(3) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=197;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `userID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
