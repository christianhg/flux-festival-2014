-- phpMyAdmin SQL Dump
-- version 3.5.2
-- http://www.phpmyadmin.net
--
-- Host: internal-db.s128578.gridserver.com
-- Generation Time: May 25, 2015 at 08:27 AM
-- Server version: 5.1.67-rel14.3
-- PHP Version: 5.3.29

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `db128578_flux`
--

-- --------------------------------------------------------

--
-- Table structure for table `artists`
--

CREATE TABLE IF NOT EXISTS `artists` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `info` text COLLATE utf8_unicode_ci,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=26 ;

--
-- Dumping data for table `artists`
--

INSERT INTO `artists` (`id`, `name`, `slug`, `image`, `info`, `created_at`, `updated_at`) VALUES
(1, 'Assembler', 'assembler', 'assembler.jpg', NULL, '2014-08-20 13:13:17', '2014-08-20 13:13:17'),
(2, 'Birthgiving Toad', 'birthgivingtoad', 'birthgivingtoad.jpg', NULL, '2014-08-20 13:13:17', '2014-08-20 13:13:17'),
(3, 'Blod', 'blod', 'blod.jpg', NULL, '2014-08-20 13:13:19', '2014-08-20 13:13:19'),
(4, 'Communions', 'communions', 'communions.jpg', NULL, '2014-08-20 13:13:21', '2014-08-20 13:13:21'),
(5, 'Dature', 'dature', 'dature.jpg', NULL, '2014-08-20 13:13:24', '2014-08-20 13:13:24'),
(6, 'Gäy', 'gay', 'gay.jpg', NULL, '2014-08-20 13:13:24', '2014-08-20 13:13:24'),
(7, 'Glow Kit', 'glowkit', 'glowkit.jpg', NULL, '2014-08-20 13:13:25', '2014-08-20 13:13:25'),
(8, 'Gooms', 'gooms', 'gooms.jpg', NULL, '2014-08-20 13:13:27', '2014-08-20 13:13:27'),
(9, 'Hahn Kult', 'hahnkult', 'hahnkult.jpg', NULL, '2014-08-20 13:13:29', '2014-08-20 13:13:29'),
(10, 'Jonas Frederiksen', 'jonasfrederiksen', 'jonasfrederiksen.jpg', NULL, '2014-08-20 13:13:31', '2014-08-20 13:13:31'),
(11, 'Lower', 'lower', 'lower.jpg', NULL, '2014-08-20 13:13:32', '2014-08-20 13:13:32'),
(12, 'Morgan Square', 'morgansquare', 'morgansquare.jpg', NULL, '2014-08-20 13:13:34', '2014-08-20 13:13:34'),
(13, 'Plants', 'plants', 'plants.jpg', NULL, '2014-08-20 13:13:34', '2014-08-20 13:13:34'),
(14, 'Pleasure', 'pleasure', 'pleasure.jpg', NULL, '2014-08-20 13:13:37', '2014-08-20 13:13:37'),
(15, 'Puce Mary', 'pucemary', 'pucemary.jpg', NULL, '2014-08-20 13:13:38', '2014-08-20 13:13:38'),
(16, 'Seksuelle Mennesker', 'seksuellemennesker', 'seksuellemennesker.jpg', NULL, '2014-08-20 13:13:39', '2014-08-20 13:13:39'),
(17, 'Shiggajon', 'shiggajon', 'shiggajon.jpg', NULL, '2014-08-20 13:13:40', '2014-08-20 13:13:40'),
(18, 'Slængs', 'slaengs', 'slaengs.jpg', NULL, '2014-08-20 13:13:42', '2014-08-20 13:13:42'),
(19, 'Sol', 'sol', 'sol.jpg', NULL, '2014-08-20 13:13:45', '2014-08-20 13:13:45'),
(20, 'Sunken', 'sunken', 'sunken.jpg', NULL, '2014-08-20 13:13:47', '2014-08-20 13:13:47'),
(21, 'Teen Beams', 'teenbeams', 'teenbeams.png', NULL, '2014-08-20 13:13:48', '2014-08-20 13:13:48'),
(22, 'The Wands', 'thewands', 'thewands.jpg', NULL, '2014-08-20 13:13:50', '2014-08-20 13:13:50'),
(23, 'Yung', 'yung', 'yung.jpg', NULL, '2014-08-20 13:13:52', '2014-08-20 13:13:52'),
(24, 'The Love Coffin', NULL, NULL, NULL, '2014-08-20 13:13:54', '2014-08-20 13:13:54'),
(25, 'Scared Crow', NULL, NULL, NULL, '2014-08-20 13:13:54', '2014-08-20 13:13:54');

-- --------------------------------------------------------

--
-- Table structure for table `colors`
--

CREATE TABLE IF NOT EXISTS `colors` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `hex` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `artist_id` int(11) NOT NULL,
  `primary` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=46 ;

--
-- Dumping data for table `colors`
--

INSERT INTO `colors` (`id`, `hex`, `artist_id`, `primary`, `created_at`, `updated_at`) VALUES
(1, '#764340', 2, 0, '2014-08-20 13:13:18', '2014-08-20 13:13:18'),
(2, '#a4ad7d', 2, 1, '2014-08-20 13:13:19', '2014-08-20 13:13:19'),
(3, '#614e1c', 2, 0, '2014-08-20 13:13:19', '2014-08-20 13:13:19'),
(4, '#9f2f2b', 3, 1, '2014-08-20 13:13:20', '2014-08-20 13:13:20'),
(5, '#401212', 3, 0, '2014-08-20 13:13:20', '2014-08-20 13:13:20'),
(6, '#6b1e1c', 3, 0, '2014-08-20 13:13:21', '2014-08-20 13:13:21'),
(7, '#ac7c5c', 4, 1, '2014-08-20 13:13:22', '2014-08-20 13:13:22'),
(8, '#8c9c9c', 4, 0, '2014-08-20 13:13:22', '2014-08-20 13:13:22'),
(9, '#a1a78a', 4, 0, '2014-08-20 13:13:23', '2014-08-20 13:13:23'),
(10, '#474747', 7, 1, '2014-08-20 13:13:26', '2014-08-20 13:13:26'),
(11, '#5f5f5f', 7, 0, '2014-08-20 13:13:26', '2014-08-20 13:13:26'),
(12, '#949494', 7, 0, '2014-08-20 13:13:27', '2014-08-20 13:13:27'),
(13, '#4c505e', 8, 1, '2014-08-20 13:13:28', '2014-08-20 13:13:28'),
(14, '#a6b580', 8, 0, '2014-08-20 13:13:28', '2014-08-20 13:13:28'),
(15, '#b6914c', 8, 0, '2014-08-20 13:13:29', '2014-08-20 13:13:29'),
(16, '#677c84', 9, 1, '2014-08-20 13:13:30', '2014-08-20 13:13:30'),
(17, '#5a6564', 9, 0, '2014-08-20 13:13:30', '2014-08-20 13:13:30'),
(18, '#8c8c8b', 9, 0, '2014-08-20 13:13:31', '2014-08-20 13:13:31'),
(19, '#ddcfc7', 11, 1, '2014-08-20 13:13:33', '2014-08-20 13:13:33'),
(20, '#886357', 11, 0, '2014-08-20 13:13:33', '2014-08-20 13:13:33'),
(21, '#79858d', 11, 0, '2014-08-20 13:13:33', '2014-08-20 13:13:33'),
(22, '#924650', 13, 1, '2014-08-20 13:13:35', '2014-08-20 13:13:35'),
(23, '#6b1841', 13, 0, '2014-08-20 13:13:36', '2014-08-20 13:13:36'),
(24, '#bb8676', 13, 0, '2014-08-20 13:13:36', '2014-08-20 13:13:36'),
(25, '#3c3c3c', 15, 1, '2014-08-20 13:13:38', '2014-08-20 13:13:38'),
(26, '#5f5f5f', 15, 0, '2014-08-20 13:13:39', '2014-08-20 13:13:39'),
(27, '#bdbdbd', 15, 0, '2014-08-20 13:13:39', '2014-08-20 13:13:39'),
(28, '#8c9c9c', 17, 1, '2014-08-20 13:13:41', '2014-08-20 13:13:41'),
(29, '#a4495a', 17, 0, '2014-08-20 13:13:42', '2014-08-20 13:13:42'),
(30, '#c6a687', 17, 0, '2014-08-20 13:13:42', '2014-08-20 13:13:42'),
(31, '#444444', 18, 1, '2014-08-20 13:13:43', '2014-08-20 13:13:43'),
(32, '#848484', 18, 0, '2014-08-20 13:13:44', '2014-08-20 13:13:44'),
(33, '#a0a0a0', 18, 0, '2014-08-20 13:13:44', '2014-08-20 13:13:44'),
(34, '#505050', 19, 1, '2014-08-20 13:13:45', '2014-08-20 13:13:45'),
(35, '#7a7a7a', 19, 0, '2014-08-20 13:13:46', '2014-08-20 13:13:46'),
(36, '#c3c3c3', 19, 0, '2014-08-20 13:13:47', '2014-08-20 13:13:47'),
(37, '#424e45', 21, 1, '2014-08-20 13:13:49', '2014-08-20 13:13:49'),
(38, '#d73341', 21, 0, '2014-08-20 13:13:49', '2014-08-20 13:13:49'),
(39, '#4b937b', 21, 0, '2014-08-20 13:13:49', '2014-08-20 13:13:49'),
(40, '#6da785', 22, 1, '2014-08-20 13:13:51', '2014-08-20 13:13:51'),
(41, '#d0413a', 22, 0, '2014-08-20 13:13:51', '2014-08-20 13:13:51'),
(42, '#6f8997', 22, 0, '2014-08-20 13:13:52', '2014-08-20 13:13:52'),
(43, '#bfbbb6', 23, 1, '2014-08-20 13:13:53', '2014-08-20 13:13:53'),
(44, '#8c969c', 23, 0, '2014-08-20 13:13:53', '2014-08-20 13:13:53'),
(45, '#bb9e84', 23, 0, '2014-08-20 13:13:54', '2014-08-20 13:13:54');

-- --------------------------------------------------------

--
-- Table structure for table `concerts`
--

CREATE TABLE IF NOT EXISTS `concerts` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `day` enum('torsdag','fredag','lørdag') COLLATE utf8_unicode_ci NOT NULL,
  `time` datetime DEFAULT NULL,
  `venue_id` int(11) DEFAULT NULL,
  `festival_id` int(11) DEFAULT NULL,
  `info` text COLLATE utf8_unicode_ci,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=23 ;

--
-- Dumping data for table `concerts`
--

INSERT INTO `concerts` (`id`, `title`, `day`, `time`, `venue_id`, `festival_id`, `info`, `created_at`, `updated_at`) VALUES
(1, NULL, 'torsdag', '2014-08-21 21:00:00', 1, 2, 'Multi-instrumentalisten Lasse Bækby står bag dette projekt, der i udtrykket virker uhyre skizofrent, da det genremæssigt er én stor leg med blandt andet jazz, lo-fi, stoner, og rock’n’roll. Men lad dig ikke skræmme - det ender ud i en virkelig frisk og farverig cocktail. Birthgiving Toad har tre båndudgivelser - For Awkward Company, As Fruit Hat og Music for Young Centaurs - bag sig og er pt. aktuel med sit fjerde album Served in its Juices, hvor Bækby synes er været nået ind til kernen i sit udsyrede og tiltrækkende univers. Lasse Bækby præsenterer projektet i en 5-mands konstellation når Birthgiving Toad gæster årets Flux Festival.', '2014-08-20 13:13:56', '2014-08-20 13:13:56'),
(2, NULL, 'torsdag', '2014-08-21 22:00:00', 1, 2, 'Aarhusianske Teen Beams er Niklas Langeland Pedersens soloprojekt, men bliver nu akkompagneret af et liveband denne sommer. Teen Beams udgav forrige år sit debutalbum ”Cathedral Volume” via københavnske Subsuburban (Town Portal, Fluorescent Heights, m.fl.), der bød på luftig og stærkt melodisk chill-pop med stærke associationer til bl.a. 80’er bands såsom Cocteau Twins og den lidt nyere strømning af svensk indie, såsom The Radio Dept, The Embassy og The Tough Alliance. Med dét sagt er Teen Beams ingen anden end sin egen, og Cathedral Volume en på mange måder en dybt personlig affære.\n\nSoundvenue om Cathedral Volume:\n“Pedersens fjerne hviskevokaler lægger et slør af mystik over de ellers så nøgterne, vaniljesøde og ligefrem catchy sange, mens rumklang og flanger-effekter sørger for en drømmende, introspektiv atmosfære.”', '2014-08-20 13:13:57', '2014-08-20 13:13:57'),
(3, NULL, 'torsdag', '2014-08-21 23:00:00', 1, 2, 'Den københavnske trio Gooms består af Aske Zidore fra hedengangne Oh No Ono, Suni a Argjaboda og Jens Ramon (Figurines). Det er en større udfordring at indkapsle, hvad der definerer Gooms lyd ud fra deres indtil videre to musikvideoer, men musikken emmer af lige dele psych, surf-pop og meget mere. Gooms har varslet deres debutalbum til engang i år, og det er ikke for lidt sagt, at vi oprigtigt glæder os til at opleve, hvordan Gooms med god sandsynlighed kommer til at rykke på den danske befolknings opfattelse af, hvad der definerer den ideelle popsang.', '2014-08-20 13:13:58', '2014-08-20 13:13:58'),
(4, NULL, 'fredag', '2014-08-22 18:00:00', 2, 2, 'Pleasure er endnu et nyt og dugfrisk rockband fra det sprudlende århusianske musikmiljø. Bandet er startet af Jeppe Grønbæk Andersen - kendt fra Happy Hookers for Jesus, Urban Achievers og Perennial Flax – sammen med Emil Zethsen og Magnus Jeppe Lykke. Med Jeppe på trommer, Magnus på bas og Emil på guitar og vokal spiller Pleasure melodisk og skramlende rockmusik, der sender varme tanker til eksempelvis Strokes og Libertines. Pleasure har endnu ikke udgivet noget endnu, men har ved deres koncerter i Aarhus og København allerede vagt opsigt ved deres ørefængende melodier og energiske sceneoptræden.', '2014-08-20 13:13:59', '2014-08-20 13:13:59'),
(5, NULL, 'fredag', '2014-08-22 18:45:00', 3, 2, 'Slængs blev dannet tilbage i 1982, hvor de blev berygtede for deres beskidte minimal wave/ punkmusik. Bandet blev opløst i starten af 1990’erne, men rejste sig i 2011 fra asken og blev atter liveaktuelle. Slængs er det levende bevis på, at punken ikke dør hen med alderen, hvilket blot er én ud af flere grunde til, at Slængs bør tages imod med åbne arme (og knyttede næver).', '2014-08-20 13:14:00', '2014-08-20 13:14:00'),
(6, NULL, 'lørdag', '2014-08-23 19:30:00', 2, 2, 'Sunken er et nyere Århusiansk metal band, der spiller atmosfærisk black metal, som nogle af de få i Århus. Normalvis er black metal nem at sætte i lydmæssig kategori, men med doom såvel som post-rock elementer blandet ind i lydbilledet skiller Sunken sig utrolig meget ud og står med en virkelig stærk og interessant lyd. Bandet har for nyligt været support for de hypede og drilske Deafheaven og udgiver sidst på året deres debut album via portugisiske Nordavind Records.', '2014-08-20 13:14:00', '2014-08-20 13:14:00'),
(7, NULL, 'fredag', '2014-08-22 20:15:00', 3, 2, 'Communions er et af de nyeste skud på den evigt voksende scene af rock- og noise-musik fra København. Bandet adskiller sig dog markant fra størstedelen af de bands, de ofte bliver sat i en kontekst med (Lower, Iceage, m.fl.), ved et mere umiddelbart og poppet udtryk, der i langt højere grad skaber associationer til 90’ernes britpop, end 70’ernes postpunk, som ellers er tilfældet for førnævnte, m.fl. Communions var senest aktuelle med deres debut-EP, ”Coublestones”, der vækkede international opvækst med dets fire fængende popnumre.', '2014-08-20 13:14:01', '2014-08-20 13:14:01'),
(8, NULL, 'fredag', '2014-08-22 21:15:00', 2, 2, 'Den aarhusianske impro-freejazz gruppe Shiggajon udgav tilbage i 2012 den suveræne lp, Dansen, på Mastermind, hvor der arbejdes med et spirituelt udtryk mellem freejazz, noise og drone. \nShiggajon startede ud som en duo tilbage i 2005 bestående af Mikkel Reher-Langberg og Nikolai Brix Vartenberg, men er med tiden blevet en mere løs størrelse med utallige medspillere. Både live og musikalsk er bandet en uhåndterlig størrelse som befinder sig i et grænseland, hvis eneste fællesnævner er improvisation, der på en måde sørger mod den rituelle ekstase, hvor fokus er på frihed til at skabe forløb der går uden om skabeloner og prædefinition, og hvor man befinder sig i et lydligt nu og her.\nDet er en sjældenhed at fange Shiggajon live (bandet seneste koncert var i 2012 på Fanø Free Folk Festival), derfor er vi ret stolte over at bandet har valgt at springe ud af dvale for at optrædende på Flux Festival.', '2014-08-20 13:14:02', '2014-08-20 13:14:02'),
(9, NULL, 'fredag', '2014-08-22 22:15:00', 3, 2, 'Puce Mary er den københavnske eksperimenterende musiker, Frederikke Hoffmeier’s solo-projekt og udgav i slutning af sidste år sin første solovinyl Succes på ligesindende posh isolation. Puce Mary er som projekt i konstant udvikling og på Succes er lyden præget af langsomme, tunge droner som blandes med distortet synth og manifesterer på den måde den totale fuckfinger på en underligt underspillet måde. \nMed sine overbevisende og kompromisløse koncerter både herhjemme, i Europa og USA med bl.a. Iceage, Pharmakon og Haxan Cloak har Frederikke Hoffmeier etableret sig som en af Danmarks mest overbevisende ambient musikere.', '2014-08-20 13:14:03', '2014-08-20 13:14:03'),
(10, NULL, 'fredag', '2014-08-22 23:20:00', 2, 2, 'Assembler er Claus Haxholms elektroniske alias, der lyder som et ondt hack i din Mac-computer under din sidste eksamen. Med et undergrundsdystert og ildevarslende lydbillede, skaber Assembler musik der både er udfordrende og tungt i sit udtryk, men samtidigt sætter ens krop i ustandselig bevægelse. Assemblers debutbånd, ”Hacking the Reproduction”, blev udgivet sidste år gennem et af Danmarks i øjeblikket mest bemærkelsesværdige båndlabels, nemlig Infinte Waves, og har derudover en række uudgivne sange i cyberspace; formentlig vidner dette også om Assemblers fremtidige udgiveler. Produktiviteten stopper dog ikke her, da Haxholm også medvirker til både Shiggajons såvel som Seksuelle Menneskers koncerter til Flux Festival i år.', '2014-08-20 13:14:04', '2014-08-20 13:14:04'),
(11, NULL, 'fredag', '2014-08-23 00:00:00', 3, 2, 'Det københavnske rockband Lower har længe været en af de stærkeste profiler indenfor hvad 9 ud af 10 medier referer til som ”scenen centreret omkring spillestedet Mayhem”. Lower har musikalsk en vis fælleskarakteristika med en genre såsom postpunk, men deres lyd er på ingen måde præget af en forkærlighed for én bestemt nichegenre. Lowers lyd er både fri og særdeles eksplosiv, hvilket har resulteret i, at bandet nu varsler deres debutalbum, ”Seek Warmer Climes” via det mastodontiske pladeselskab Matador. Som nogle husker, blev Lower desværre nødsaget til at aflyse sidste år, men derfor er vi også yderst spændte over at have Lower på årets program, nu mere aktuelle end nogensinde før.', '2014-08-20 13:14:04', '2014-08-20 13:14:04'),
(12, NULL, 'fredag', '2014-08-23 01:00:00', 3, 2, 'Plants består af Kasper Vang og Theis Ørntoft, der udover deres musikalske udfoldelser som denne bevidsthedsudvidende duo, også har baggrund i henholdsvis visuel kunst og litteratur. Lydmæssigt kan Plants karakteriseres som varm og repeterende syntehzeiser-kraut; en kosmisk affære, der lyder som en russisk sci-fi film, du aldrig har set. Plants udgav i 2013 båndet, ”Telemark”, via det danske båndselskab Infinite Waves, men der har også længe rumsteret rygter om en kommende 7’er. Vi krydser fingre og glæder os under alle omstændigheder til at præsentere Plants live.', '2014-08-20 13:14:05', '2014-08-20 13:14:05'),
(13, NULL, 'lørdag', '2014-08-23 18:00:00', 2, 2, 'Blod er et helt nyt band på den århusianske rockscene, som består af Jesper Moeslund fra URR og Rasmus Palludan fra hedengangne Woven Blush. Duoen har endnu ikke udgivet noget, men deres debutkoncert på Trøjborgbeboerhus var så lovende, at de nu er at finde på årets Flux Festival-plakat. De to venner kommer med et forfriskende take på dansksproget rock, som umiddelbart har nogle klassiske post-punk-elementer over sig, krydret op med en art af darkwave. Med kun trommer og bas bevæger Blod sig indenfor et minimalistisk univers, hvor de udforsker alle de muligheder, der er i denne begrænsning. Duoen har proklameret, at de indenfor meget kort tid løfter sløret for deres to første officielle sange. Vi glæder os!', '2014-08-20 13:14:06', '2014-08-20 13:14:06'),
(14, NULL, 'fredag', '2014-08-22 19:30:00', 2, 2, 'Morgan Square er det nyeste skud på stammen af spirende, psykedeliske bands med bopæl i Aarhus. En romantisering af den samme vibe der kendetegner adskillige plader med The Doors virker som et bærende element i bandets lyd, uden at det på noget tidspunkt bliver et plagiat. Bandet har indtil nu endnu ikke udgivet noget i fysisk format, men flere sange florerer alligevel på Youtube. Rygtet lyder dog, at der er en udgivelse på trapperne, så vi krydser vores fingre og ser fortsat frem til Morgan Squares exceptionelle energi live.', '2014-08-20 13:14:07', '2014-08-20 13:14:07'),
(15, NULL, 'lørdag', '2014-08-23 18:45:00', 3, 2, 'Gäy består af de fire knægte Asger, Thor, Jacob og Jonas, der skriver nedbarberede rocksange med et snært af New Wave. Bandet opnåede alverdens opmærksomhed blot ved deres demoer, forinden at de havde udgivet noget, men er nu også aktuelle med deres debut-ep fra først på året. Ep’en er udgivet af Zoo Music, der bl.a. også har udgivet Crocodiles og Dirty Beaches, og er et tydeligt eksempel på bandets evner til at skrive fængende popmusik på deres egne præmisser.', '2014-08-20 13:14:08', '2014-08-20 13:14:08'),
(16, NULL, 'lørdag', '2014-08-23 20:15:00', 3, 2, 'Det er gået stærkt for den hjørringensiske/københavnske psych duo, The Wands, siden de i november 2012 udgav 10” Hello I Know The Blow You Grow Is Magic, som med psykedeliske klangflader og smagen af tør ørkensand har lagt store dele af Europa ned, med adskillige shows i bl.a. England, Frankring, Tyskland & Holland. The Wands’ lyd tager udgangspunkt i 60’ernes hippiepsych med improvisation og “østlig mystik”, dog med sig helt eget unikke tag, hvor bl.a. elementer fra post-punk. \nLive optræder duoen altid med flere musikere og atmosfæren er rå, men på samme tid fuld af farver imens tunge droner og skramlende fuzzguitarer kombineres med lettere naive og fængende melodier. Bandet varsler, desuden, deres debutalbum til efteråret.', '2014-08-20 13:14:08', '2014-08-20 13:14:08'),
(17, NULL, 'lørdag', '2014-08-23 21:15:00', 2, 2, 'Jonas Frederiksen har i flere år gjort sig bemærket som en af de mere alternative kunstnere indenfor den sprudlende musikscene i København. Udgivelserne stemmer stilmæssigt utrolig bredt, men virker alle til at have en retrospekt og udefinerbart akavet følelse til fælles - Om det så kommer til J. Frederiksen medvirke i Girlseeker, hans hedengangne projekt, Dreamers Cloth, eller hans to udgivelser fra sidste år, Confessions of a Flâneur (Escho) eller Toekomstje. Det er som om, at J. Frederiksen idéer ingen ende tager i hans auditive opgør med musikkens form og indhold, der konstant udfordres i hans kompositioner.', '2014-08-20 13:14:09', '2014-08-20 13:14:09'),
(18, NULL, 'lørdag', '2014-08-23 22:00:00', 3, 2, 'Det er en sjælden fornøjelse, at opleve det lokale garagepop band Glow Kit, der har gjort sig bemærket med deres udødelige melodier. Kasper Brinck og Kristoffer Kjersgaard Nohrs – kendt for keys i Cola Freaks – fik et gennembrud efter deres legendariske koncert på Rosenkrantzgade sammen med Emenkaya, Urban Achievers og Tumor Warlord, som et flertal formentlig gerne står inde for, har haft stor betydning for den aarhusianske undergrundsscene i dag. Glow Kit udgav deres selvbetitlede debut-lp i 2012 gennem Kanel Records, og har senest udgivet noget så utraditionelt som en jule-single, ”Christmas Daze”, i vinters, limiteret til 24 eksemplarer. Det er derfor med stor begejstring, at vi kan præsentere Glow Kit på årets program, der længe har været en velgemt, men skinnende perle fra/i den aarhusianske punkscene.', '2014-08-20 13:14:10', '2014-08-20 13:14:10'),
(19, NULL, 'lørdag', '2014-08-23 23:00:00', 2, 2, 'SOL er et aarhusiansk doom-metal band, centreret omkring Emil Brahe, der bl.a. også er kendt fra EP-aktuelle Singvogel. SOL startede ud som et studie-projekt i 2004, men blev først aktuelle som live-band i 2012, med en besætning bestående af musikere fra blandt andre Hahn Kult og Mammatus Cloud. Senest var SOL aktuelle med albummet ”And the Mouth of Time is Open” via det aarhusianske selskab Drowning, tilbage i december sidste år. SOL er et band i stadig bevægelse, og kommer eftersigende til at lyde mere som en art akustisk drone på de kommende udgivelser.', '2014-08-20 13:14:11', '2014-08-20 13:14:11'),
(20, NULL, 'lørdag', '2014-08-24 00:00:00', 3, 2, 'Der er ingen tvivl om, hvor stor betydning Mikkel Holm har haft for den aarhusianske undergrund med sin optræden i bands såsom Urban Achievers, Happy Hookers For Jesus og Fright Eyes. Med Holms nye – og indtil videre mest personlige – projekt, Yung, er fokuset på den mere beskidte garagerock, hvor han i live-regi får stærk assistance af Tobias Tarp og Frederik Nybo, der begge også har gjort sig bemærket i det album-aktuelle rockband, Snaredrum. Det er sjældent, at man oplever et talent som Mikkel Holm/Yung, der formår at holde så suverænt højt et bundniveau i sit ørefængende sangmateriale, samtidigt med at produktiviteten er så høj, som tilfældet er. Det hele munder ud i et umiddelbart og oprigtigt udtryk, hvilket både bliver demonstreret på Yungs debutbånd, der allerede er ude i tredje oplag via Shordwood Records, men også bandets seneste selvbetitlede 7’er, der nu er tilgængeligt gennem Mastermind Records.', '2014-08-20 13:14:11', '2014-08-20 13:14:11'),
(21, NULL, 'lørdag', '2014-08-24 01:00:00', 3, 2, 'Seksuelle Mennesker består af Holger Hartvig og Lasse Latz, og vil i denne livekonstellationer derudover også bestå af Cæcilie Trier ( CTM, Choir of Young Believers og Valby Vokalgruppe), Claus Haxholm (Assembler, Shiggajon) og Simon Latz (Synd og Skam). Bandet udgav deres debut via den københavnske pladebutik og label Insula Music, der med et bredt udtryk favnede om både tætbarberede popmelodier og udsyrede eksperimenter indenfor en let - men altid seriøs – legende tilgang til musikken. Seksuelle Mennesker er altid en overraskelse i livekonstellation, hvor de både har eksperimenteret indenfor et repeterende og lettere avantgarde udtryk til udfordrende r’n’b.', '2014-08-20 13:14:12', '2014-08-20 13:14:12'),
(22, NULL, 'lørdag', '2014-08-24 02:00:00', 3, 2, 'Dature består af Kristoffer Nohrs, Jacob Elving og Mads Stobberup, altså tre medlemmer fra Århus-legenderne Cola Freaks. Det første der slår én af da også; dette er Cola Freaks - blot forsynet med en god portion LSD og synth. Dette bør i sig selv være tæt på et tykt kvalitetsstempel og med det eneste offentliggjorte nummer, knytnæveindbydelsen Min Arm, kan man kun glæde sig til at høre mere fra Dature. Særligt i livesammenhængen, der med Mads Stobberup i front bringer smilet og næven frem hos de fleste.', '2014-08-20 13:14:13', '2014-08-20 13:14:13');

-- --------------------------------------------------------

--
-- Table structure for table `concerts_artists`
--

CREATE TABLE IF NOT EXISTS `concerts_artists` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `concert_id` int(11) NOT NULL,
  `artist_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=23 ;

--
-- Dumping data for table `concerts_artists`
--

INSERT INTO `concerts_artists` (`id`, `concert_id`, `artist_id`, `created_at`, `updated_at`) VALUES
(1, 1, 2, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2, 2, 21, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(3, 3, 8, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(4, 4, 14, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(5, 5, 18, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(6, 6, 20, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(7, 7, 4, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(8, 8, 17, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(9, 9, 15, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(10, 10, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(11, 11, 11, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(12, 12, 13, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(13, 13, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(14, 14, 12, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(15, 15, 6, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(16, 16, 22, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(17, 17, 10, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(18, 18, 7, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(19, 19, 19, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(20, 20, 23, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(21, 21, 16, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(22, 22, 5, '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `festivals`
--

CREATE TABLE IF NOT EXISTS `festivals` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `start` date NOT NULL,
  `end` date NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=3 ;

--
-- Dumping data for table `festivals`
--

INSERT INTO `festivals` (`id`, `title`, `start`, `end`, `created_at`, `updated_at`) VALUES
(1, 'Flux Festival 2013', '2013-09-19', '2013-09-21', '2014-08-20 13:13:16', '2014-08-20 13:13:16'),
(2, 'Flux Festival 2014', '2014-08-21', '2014-08-23', '2014-08-20 13:13:16', '2014-08-20 13:13:16');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE IF NOT EXISTS `migrations` (
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`migration`, `batch`) VALUES
('2014_04_14_074032_create_artists_table', 1),
('2014_04_14_101018_create_venues_table', 1),
('2014_04_14_102107_create_festivals_table', 1),
('2014_04_14_184658_create_concerts_table', 1),
('2014_04_14_184720_create_concerts_artists_table', 1),
('2014_07_03_085927_create_sponsors_table', 1),
('2014_07_03_085957_create_colors_table', 1),
('2014_07_05_081103_create_sounds_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `sounds`
--

CREATE TABLE IF NOT EXISTS `sounds` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `type` enum('soundcloud','youtube') COLLATE utf8_unicode_ci NOT NULL,
  `link` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `artist_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=24 ;

--
-- Dumping data for table `sounds`
--

INSERT INTO `sounds` (`id`, `type`, `link`, `artist_id`, `created_at`, `updated_at`) VALUES
(1, 'soundcloud', '143094640', 1, '2014-08-20 13:13:17', '2014-08-20 13:13:17'),
(2, 'youtube', 'o8uFNsA5ErI', 2, '2014-08-20 13:13:18', '2014-08-20 13:13:18'),
(3, 'soundcloud', '162896044', 3, '2014-08-20 13:13:20', '2014-08-20 13:13:20'),
(4, 'youtube', 'FQN7uacxnQY', 4, '2014-08-20 13:13:22', '2014-08-20 13:13:22'),
(5, 'youtube', '1CVGu0cRonU', 5, '2014-08-20 13:13:24', '2014-08-20 13:13:24'),
(6, 'youtube', 'LcAgNmt0stc', 6, '2014-08-20 13:13:25', '2014-08-20 13:13:25'),
(7, 'youtube', 'RuvxSztUt3M', 7, '2014-08-20 13:13:26', '2014-08-20 13:13:26'),
(8, 'youtube', 'lqGNeZYVrQ8', 8, '2014-08-20 13:13:27', '2014-08-20 13:13:27'),
(9, 'youtube', 'BcbMgzW3_1U', 9, '2014-08-20 13:13:29', '2014-08-20 13:13:29'),
(10, 'soundcloud', '96556654', 10, '2014-08-20 13:13:31', '2014-08-20 13:13:31'),
(11, 'youtube', 'dWcGAmiOZT0', 11, '2014-08-20 13:13:32', '2014-08-20 13:13:32'),
(12, 'youtube', 'Bp788uoK3qw', 12, '2014-08-20 13:13:34', '2014-08-20 13:13:34'),
(13, 'youtube', '9hXnvD69pdg', 13, '2014-08-20 13:13:35', '2014-08-20 13:13:35'),
(14, 'youtube', 'Aaw5pJAUUmI', 14, '2014-08-20 13:13:37', '2014-08-20 13:13:37'),
(15, 'youtube', 'VWFybzy32A4', 15, '2014-08-20 13:13:38', '2014-08-20 13:13:38'),
(16, 'soundcloud', '85369515', 16, '2014-08-20 13:13:40', '2014-08-20 13:13:40'),
(17, 'youtube', '3le5N06mz7Y', 17, '2014-08-20 13:13:41', '2014-08-20 13:13:41'),
(18, 'youtube', 'HONr2dy5HbY', 18, '2014-08-20 13:13:43', '2014-08-20 13:13:43'),
(19, 'youtube', '6BTE9-TsG3Q', 19, '2014-08-20 13:13:45', '2014-08-20 13:13:45'),
(20, 'youtube', 'BXwWfqzrVOs', 20, '2014-08-20 13:13:47', '2014-08-20 13:13:47'),
(21, 'youtube', '8fYLt32VEoo', 21, '2014-08-20 13:13:48', '2014-08-20 13:13:48'),
(22, 'youtube', 'ssXCrrAQHGU', 22, '2014-08-20 13:13:50', '2014-08-20 13:13:50'),
(23, 'soundcloud', '133520892', 23, '2014-08-20 13:13:52', '2014-08-20 13:13:52');

-- --------------------------------------------------------

--
-- Table structure for table `sponsors`
--

CREATE TABLE IF NOT EXISTS `sponsors` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `url` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=5 ;

--
-- Dumping data for table `sponsors`
--

INSERT INTO `sponsors` (`id`, `name`, `image`, `url`, `created_at`, `updated_at`) VALUES
(1, 'Aarhus Kommune', 'aarhuskommune.png', 'http://www.aarhus.dk/', '2014-08-20 13:14:14', '2014-08-20 13:14:14'),
(2, 'Radar', 'radar.png', 'http://www.radarlive.dk/', '2014-08-20 13:14:14', '2014-08-20 13:14:14'),
(3, 'Tuborg', 'tuborg.png', 'http://www.tuborg.dk/', '2014-08-20 13:14:14', '2014-08-20 13:14:14'),
(4, 'B-Huset', 'lydrum.png', NULL, '2014-08-20 13:14:15', '2014-08-20 13:14:15');

-- --------------------------------------------------------

--
-- Table structure for table `venues`
--

CREATE TABLE IF NOT EXISTS `venues` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `color` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=5 ;

--
-- Dumping data for table `venues`
--

INSERT INTO `venues` (`id`, `name`, `color`, `created_at`, `updated_at`) VALUES
(1, 'Radar', '#bb9e84', '2014-08-20 13:13:55', '2014-08-20 13:13:55'),
(2, 'A-Huset', '#5c727b', '2014-08-20 13:13:55', '2014-08-20 13:13:55'),
(3, 'B-Huset', '#a4495a', '2014-08-20 13:13:56', '2014-08-20 13:13:56'),
(4, 'Trøjborg Beboerhus', NULL, '2014-08-20 13:13:56', '2014-08-20 13:13:56');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
