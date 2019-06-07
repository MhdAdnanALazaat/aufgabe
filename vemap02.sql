-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 07, 2019 at 12:27 PM
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
-- Database: `vemap02`
--

-- --------------------------------------------------------

--
-- Table structure for table `artikel`
--

CREATE TABLE `artikel` (
  `artikelID` int(10) UNSIGNED NOT NULL,
  `artikelName` varchar(100) COLLATE utf8_bin NOT NULL,
  `artikelGruppe` varchar(100) COLLATE utf8_bin NOT NULL,
  `artikelPreis` decimal(10,2) NOT NULL DEFAULT '0.00',
  `artikelBeschreibung` text COLLATE utf8_bin NOT NULL,
  `artikelAktion` smallint(2) UNSIGNED NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `artikel`
--

INSERT INTO `artikel` (`artikelID`, `artikelName`, `artikelGruppe`, `artikelPreis`, `artikelBeschreibung`, `artikelAktion`) VALUES
(1, 'Abendanzug', 'Kleidung', '120.60', 'schwarz', 1),
(3, 'Anorak ', 'Kleidung', '61.08', 'gelb', 1),
(4, 'Anzug ', 'Kleidung', '80.40', 'grün', 1),
(5, 'Arbeitskittel', 'Kleidung', '117.60', 'schwarz', 1),
(7, 'Ärmelschoner', 'Kleidung', '61.20', 'gelb', 1),
(11, 'Babykleider', 'Kleidung', '64.80', 'grün', 1),
(12, 'Badeanzug', 'Kleidung', '49699.20', 'schwarz', 1),
(13, 'Badehose', 'Kleidung', '78.00', 'rot', 1),
(16, 'Barret', 'Kleidung', '97.20', 'schwarz', 1),
(18, 'Baseballmütze', 'Kleidung', '44.40', 'gelb', 1),
(20, 'Befestigungsprofil ST', 'Heimwerker', '28.00', '', 1),
(21, 'Befestigungsprofil U', 'Heimwerker', '28.00', '', 1),
(22, 'Befestigungsprofil UHK', 'Heimwerker', '53.00', 'für Profis', 1),
(28, 'Bikini ', 'Kleidung', '82.80', 'rot', 1),
(29, 'Birret', 'Kleidung', '48.00', 'gelb', 1),
(30, 'Blattsalate ', 'Lebensmittel', '4.00', '', 1),
(31, 'Blaumann', 'Kleidung', '52.80', 'schwarz', 1),
(32, 'Blazer', 'Kleidung', '87.60', 'rot', 1),
(33, 'Blechplatte AAKAIW', 'Heimwerker', '41.00', '', 1),
(34, 'Blouson', 'Kleidung', '90.00', 'gelb', 1),
(35, 'Blumenerde', 'Heimwerker', '21.00', '', 1),
(36, 'Blumenkohl', 'Lebensmittel', '4.00', 'sehr gesund', 1),
(37, 'Bluse', 'Kleidung', '106.80', 'grün', 1),
(38, 'Bohrer', 'Heimwerker', '17.00', 'für Profis', 1),
(39, 'Bohrungen', 'Heimwerker', '11.00', '', 1),
(40, 'Broccoli', 'Lebensmittel', '9.00', '', 1),
(41, 'Deckprofil Fugen H', 'Heimwerker', '9.00', '', 1),
(42, 'Deckprofil Raster', 'Heimwerker', '53.00', 'für Profis', 1),
(43, 'Deo', 'Kosmetik', '14.88', '', 1),
(44, 'Deokristall', 'Kosmetik', '4.00', '', 1),
(45, 'Distelöl', 'Lebensmittel', '10.00', 'vitamireich', 1),
(47, 'Duschbad', 'Kosmetik', '6.00', 'Bio', 1),
(48, 'Eckplatten gelocht', 'Heimwerker', '13.00', '', 1),
(49, 'Eckprofil ', 'Heimwerker', '54.00', 'für Profis', 1),
(50, 'Eyeliner', 'Kosmetik', '5.00', 'Ohne Tierversuche', 1),
(51, 'Farbbeschichten', 'Heimwerker', '44.00', '', 1),
(52, 'Flachprofil', 'Heimwerker', '59.00', '', 1),
(53, 'Fugenband schwarz', 'Heimwerker', '48.00', 'für Profis', 1),
(54, 'Gesichtswasser', 'Kosmetik', '5.00', '', 1),
(55, 'Glasfenster', 'Heimwerker', '45.00', '', 1),
(56, 'Glasklammer E', 'Heimwerker', '39.00', '', 1),
(57, 'Glasklammer N', 'Heimwerker', '26.00', 'für Profis', 1),
(58, 'Grüne Bohnen', 'Lebensmittel', '3.00', '', 1),
(59, 'Gummidichtung', 'Heimwerker', '50.00', '', 1),
(60, 'Gurke', 'Lebensmittel', '8.00', 'sehr gesund', 1),
(61, 'Gürtel ', 'Kleidung', '58.80', 'schwarz', 1),
(62, 'Halteprofil Glas FLA', 'Heimwerker', '11.00', '', 1),
(63, 'Halteprofil Glas FLI', 'Heimwerker', '43.00', 'für Profis', 1),
(64, 'Handcreme', 'Kosmetik', '3.00', 'Bio', 1),
(65, 'Helm A', 'Heimwerker', '46.00', '', 1),
(66, 'Helm B', 'Heimwerker', '39.00', 'für Profis', 1),
(67, 'ISO-Clip', 'Heimwerker', '47.00', '', 1),
(68, 'Jacke', 'Kleidung', '78.00', 'rot', 1),
(69, 'Jacket', 'Kleidung', '96.00', 'gelb', 1),
(70, 'Janker', 'Kleidung', '48.00', 'grün', 1),
(71, 'Jeans ', 'Kleidung', '108.00', 'schwarz', 1),
(72, 'Klammer E', 'Heimwerker', '10.00', '', 1),
(73, 'Klammer ESB', 'Heimwerker', '38.00', 'für Profis', 1),
(74, 'Klammer N', 'Heimwerker', '27.00', '', 1),
(75, 'Klammer NSB', 'Heimwerker', '20.00', '', 1),
(76, 'Klemmknopf 16mm', 'Heimwerker', '9.00', 'für Profis', 1),
(77, 'Klemmknopf 8mm', 'Heimwerker', '15.00', '', 1),
(78, 'Koffer', 'Heimwerker', '37.00', '', 1),
(79, 'Kohlgemüse', 'Lebensmittel', '6.00', '', 1),
(80, 'Körperöl', 'Kosmetik', '9.00', 'Ohne Tierversuche', 1),
(81, 'Latz', 'Kleidung', '55.20', 'rot', 1),
(82, 'Latzhose', 'Kleidung', '50.40', 'blau', 1),
(83, 'Lavaerde', 'Kosmetik', '9.00', '', 1),
(84, 'Lederhose', 'Kleidung', '108.00', 'grün', 1),
(85, 'Leinsamen-Öl ', 'Lebensmittel', '3.00', 'vitamireich', 1),
(86, 'Lidschatten', 'Kosmetik', '4.00', 'Bio', 1),
(87, 'Lipliner', 'Kosmetik', '2.00', 'Ohne Tierversuche', 1),
(88, 'Lippenpflege', 'Kosmetik', '7.00', '', 1),
(89, 'Lippenstifte', 'Kosmetik', '4.00', 'Bio', 1),
(90, 'Lotion', 'Kosmetik', '9.00', 'Ohne Tierversuche', 1),
(91, 'Makeup', 'Kosmetik', '2.00', '', 1),
(92, 'Mandeln', 'Lebensmittel', '8.00', 'Bio', 1),
(93, 'Mascara', 'Kosmetik', '5.00', 'Bio', 1),
(94, 'Maschine', 'Heimwerker', '40.00', 'für Profis', 1),
(95, 'Massagebänder', 'Kosmetik', '8.00', 'Ohne Tierversuche', 1),
(97, 'Massageöl', 'Kosmetik', '4.00', 'Bio', 1),
(98, 'Massageroller', 'Kosmetik', '9.00', 'Ohne Tierversuche', 1),
(99, 'Montagewinkel', 'Heimwerker', '10.00', '', 1),
(100, 'Nussöl ', 'Lebensmittel', '9.00', 'sehr gesund', 1),
(101, 'Olivenöl', 'Lebensmittel', '9.00', 'aus Bio-Anbau', 1),
(102, 'Öllampe', 'Heimwerker', '27.00', '', 1),
(103, 'Paprika', 'Lebensmittel', '9.00', 'vitamireich', 1),
(104, 'Pflanzenhaarfarbe', 'Kosmetik', '2.00', '', 1),
(105, 'Pilze', 'Lebensmittel', '6.00', '', 1),
(106, 'Pistazien', 'Lebensmittel', '6.00', 'sehr gesund', 1),
(107, 'Plattenhalter A', 'Heimwerker', '44.00', 'für Profis', 1),
(108, 'Plattenhalter A spez.', 'Heimwerker', '8.00', '', 1),
(109, 'Plattenhalter B', 'Heimwerker', '25.00', '', 1),
(110, 'Puder', 'Kosmetik', '9.00', 'Bio', 1),
(111, 'Rapsöl ', 'Lebensmittel', '3.00', 'aus Bio-Anbau', 1),
(112, 'Rasiercreme', 'Kosmetik', '10.00', 'Ohne Tierversuche', 1),
(113, 'Rasierwasser', 'Kosmetik', '3.00', '', 1),
(114, 'Riegelprofil', 'Heimwerker', '18.00', 'für Profis', 1),
(115, 'Röhre 23423', 'Heimwerker', '47.00', '', 1),
(116, 'Rouge', 'Kosmetik', '8.00', 'Bio', 1),
(117, 'Rutschsicherung', 'Heimwerker', '39.00', '', 1),
(118, 'Scharnieren 4098', 'Heimwerker', '32.00', 'für Profis', 1),
(119, 'Schraube L ', 'Heimwerker', '59.00', '', 1),
(120, 'Schraube N', 'Heimwerker', '27.00', '', 1),
(121, 'Seife', 'Kosmetik', '10.00', 'Ohne Tierversuche', 1),
(122, 'Seil 303', 'Heimwerker', '11.00', 'für Profis', 1),
(123, 'Seitenklammer L', 'Heimwerker', '46.00', '', 1),
(124, 'Seitenklammer R', 'Heimwerker', '31.00', '', 1),
(125, 'Shampoo', 'Kosmetik', '7.00', '', 1),
(126, 'Sicherheitsgurte', 'Heimwerker', '16.00', 'für Profis', 1),
(127, 'Spargel', 'Lebensmittel', '9.00', 'vitamireich', 1),
(128, 'Spinat', 'Lebensmittel', '3.00', '', 1),
(129, 'Spülung', 'Kosmetik', '10.00', 'Bio', 1),
(130, 'Stanzungen', 'Heimwerker', '40.00', '', 1),
(131, 'Stockwerkprofil', 'Heimwerker', '47.00', 'für Profis', 1),
(132, 'Stulpklammer', 'Heimwerker', '9.00', 'für Profis', 1),
(133, 'Tomaten', 'Lebensmittel', '4.00', 'sehr gesund', 1),
(134, 'T-Profil', 'Heimwerker', '59.00', '', 1),
(135, 'Tragprofil ', 'Heimwerker', '48.00', '', 1),
(136, 'U-Gummi für Glaspl.', 'Heimwerker', '31.00', 'für Profis', 1),
(137, 'Unterlagsgummi', 'Heimwerker', '6.00', '', 1),
(138, 'Untersichtsklammer', 'Heimwerker', '16.00', '', 1),
(139, 'Verbindungsteil', 'Heimwerker', '13.00', 'für Profis', 1),
(140, 'Verbindungsteil TSG', 'Heimwerker', '19.00', '', 1),
(141, 'Verbindungsteil TSV', 'Heimwerker', '13.00', '', 1),
(142, 'Verbindunsrohr', 'Heimwerker', '47.00', 'für Profis', 1),
(143, 'Walnüsse', 'Lebensmittel', '2.00', 'Fair Trande', 1),
(144, 'Weste', 'Kleidung', '33.60', 'schwarz', 1),
(145, 'Zahnbürste', 'Kosmetik', '3.00', 'Ohne Tierversuche', 1),
(146, 'Zahnpasta', 'Kosmetik', '10.00', '', 1),
(154, 'nnnnnnnnnnnnnnnn', 'Kleidung', '888.00', 'erjhertju', 1);

-- --------------------------------------------------------

--
-- Table structure for table `reisen`
--

CREATE TABLE `reisen` (
  `reiseID` int(11) NOT NULL,
  `reisenHeader` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `reisenText` text COLLATE utf8_bin,
  `reisenBild` varchar(255) COLLATE utf8_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `reisen`
--

INSERT INTO `reisen` (`reiseID`, `reisenHeader`, `reisenText`, `reisenBild`) VALUES
(1, 'Hallo von reisen', 'Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet.   \r\n\r\nDuis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim qui blandit praesent luptatum zzril delenit augue duis dolore te feugait nulla facilisi. Lorem ipsum dolor sit amet,', 'flugzeug.png'),
(3, 'Hallo World', 'Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim qui blandit praesent luptatum zzril delenit augue duis dolore te feugait nulla facilisi. Lorem ipsum dolor sit amet,', 'schiff.png');

-- --------------------------------------------------------

--
-- Table structure for table `werbung`
--

CREATE TABLE `werbung` (
  `werbungID` int(11) NOT NULL,
  `werbungHeader` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `werbungText` text COLLATE utf8_bin
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `werbung`
--

INSERT INTO `werbung` (`werbungID`, `werbungHeader`, `werbungText`) VALUES
(1, 'Hello from werbung', 'Hello from werbungText ');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `artikel`
--
ALTER TABLE `artikel`
  ADD PRIMARY KEY (`artikelID`);

--
-- Indexes for table `reisen`
--
ALTER TABLE `reisen`
  ADD PRIMARY KEY (`reiseID`);

--
-- Indexes for table `werbung`
--
ALTER TABLE `werbung`
  ADD PRIMARY KEY (`werbungID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `reisen`
--
ALTER TABLE `reisen`
  MODIFY `reiseID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `werbung`
--
ALTER TABLE `werbung`
  MODIFY `werbungID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
