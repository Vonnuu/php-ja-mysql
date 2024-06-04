-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 16, 2024 at 02:41 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `kthindakogemust`
--

-- --------------------------------------------------------

--
-- Table structure for table `hinnangud`
--

CREATE TABLE `hinnangud` (
  `id` int(255) NOT NULL,
  `nimi` varchar(255) NOT NULL,
  `hinnang` int(255) NOT NULL,
  `kommentaar` varchar(255) NOT NULL,
  `id_koht` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `hinnangud`
--

INSERT INTO `hinnangud` (`id`, `nimi`, `hinnang`, `kommentaar`, `id_koht`) VALUES
(1, 'Billie', 2, 'viverra diam vitae quam suspendisse potenti nullam porttitor lacus at turpis donec posuere metus vitae ipsum aliquam non', '52'),
(3, 'Arlen', 6, 'odio curabitur convallis duis consequat dui nec nisi volutpat eleifend donec ut dolor morbi vel lectus in quam fringilla rhoncus', '12'),
(4, 'Merrilee', 9, 'nunc proin at turpis a pede posuere nonummy integer non velit donec diam neque vestibulum eget vulputate ut', '55'),
(5, 'Zilvia', 8, 'ac diam cras pellentesque volutpat dui maecenas tristique', '63'),
(6, 'Jonas', 10, 'nulla nisl nunc nisl duis bibendum felis', '31'),
(7, 'Kellyann', 6, 'faucibus orci luctus et ultrices posuere cubilia curae nulla dapibus dolor vel', '63'),
(8, 'Quill', 3, 'hendrerit at vulputate vitae nisl aenean lectus pellentesque eget nunc donec quis orci eget orci vehicula condimentum curabitur in libero', '98'),
(9, 'Emelyne', 8, 'rutrum at lorem integer tincidunt ante vel', '98'),
(10, 'Cherish', 4, 'curae mauris viverra diam vitae quam suspendisse potenti nullam porttitor lacus at', '8'),
(11, 'Leon', 1, 'elementum nullam varius nulla facilisi cras non velit', '6'),
(12, 'Shannon', 9, 'erat eros viverra eget congue eget semper rutrum nulla nunc purus phasellus in felis donec semper sapien', '48'),
(13, 'Raynor', 8, 'enim blandit mi in porttitor pede justo eu massa donec dapibus duis at velit eu est congue', '23'),
(14, 'Estelle', 7, 'a odio in hac habitasse platea dictumst maecenas ut', '74'),
(15, 'Blythe', 6, 'libero rutrum ac lobortis vel dapibus at diam nam tristique tortor', '86'),
(16, 'Gorden', 10, 'quis turpis eget elit sodales scelerisque mauris sit', '29'),
(17, 'Clarinda', 9, 'sapien dignissim vestibulum vestibulum ante ipsum primis in faucibus orci luctus', '67'),
(18, 'Neville', 1, 'magna bibendum imperdiet nullam orci pede venenatis non sodales sed tincidunt', '29'),
(19, 'Maryl', 10, 'sit amet diam in magna bibendum imperdiet nullam orci', '39'),
(20, 'Onofredo', 8, 'et tempus semper est quam pharetra magna ac consequat metus sapien ut nunc vestibulum ante', '41'),
(21, 'Mame', 7, 'donec pharetra magna vestibulum aliquet ultrices erat tortor sollicitudin mi sit amet lobortis sapien sapien non', '77'),
(22, 'Omar', 5, 'ridiculus mus etiam vel augue vestibulum rutrum rutrum', '97'),
(23, 'Jehanna', 1, 'non ligula pellentesque ultrices phasellus id sapien in sapien iaculis congue vivamus metus arcu adipiscing molestie', '13'),
(25, 'Virgie', 6, 'rhoncus aliquam lacus morbi quis tortor id nulla ultrices aliquet maecenas leo odio condimentum', '1'),
(26, 'Albie', 3, 'massa tempor convallis nulla neque libero convallis', '65'),
(27, 'Adam', 2, 'aliquet ultrices erat tortor sollicitudin mi sit amet lobortis sapien sapien non mi integer ac', '50'),
(28, 'Rossy', 9, 'semper est quam pharetra magna ac consequat metus sapien ut nunc vestibulum ante ipsum primis in', '70'),
(29, 'Ketty', 9, 'lacus curabitur at ipsum ac tellus semper interdum mauris ullamcorper purus sit amet nulla quisque arcu libero rutrum ac', '90'),
(30, 'Stearne', 4, 'vel enim sit amet nunc viverra dapibus nulla suscipit ligula in lacus curabitur at ipsum', '97'),
(31, 'Kinnie', 2, 'volutpat dui maecenas tristique est et tempus semper est quam pharetra magna ac', '3'),
(32, 'Mellie', 1, 'convallis nulla neque libero convallis eget eleifend luctus ultricies eu nibh quisque id justo sit', '2'),
(33, 'Shelton', 2, 'in purus eu magna vulputate luctus cum sociis natoque penatibus', '5'),
(34, 'Finley', 7, 'mollis molestie lorem quisque ut erat curabitur gravida nisi', '19'),
(35, 'Wilhelmine', 8, 'in faucibus orci luctus et ultrices posuere cubilia', '38'),
(36, 'Derrek', 1, 'quis orci nullam molestie nibh in lectus pellentesque', '37'),
(37, 'Phillipp', 9, 'justo sollicitudin ut suscipit a feugiat et eros vestibulum ac', '29'),
(38, 'Tadeo', 4, 'quam suspendisse potenti nullam porttitor lacus at turpis donec posuere metus vitae ipsum', '99'),
(39, 'Maye', 7, 'platea dictumst etiam faucibus cursus urna ut tellus nulla ut erat id mauris vulputate elementum nullam varius', '64'),
(40, 'Haven', 5, 'justo nec condimentum neque sapien placerat ante nulla justo aliquam quis', '2'),
(41, 'Chandler', 2, 'morbi porttitor lorem id ligula suspendisse ornare consequat lectus in est risus auctor sed tristique in tempus sit', '81'),
(42, 'Ignaz', 4, 'sed lacus morbi sem mauris laoreet ut', '35'),
(43, 'Donnajean', 10, 'congue elementum in hac habitasse platea dictumst morbi vestibulum velit id pretium iaculis diam erat fermentum justo nec condimentum neque', '39'),
(44, 'Garrard', 4, 'sit amet eleifend pede libero quis orci nullam molestie nibh in lectus pellentesque at nulla', '84'),
(45, 'Sarajane', 1, 'platea dictumst aliquam augue quam sollicitudin vitae consectetuer eget rutrum at', '51'),
(46, 'Sutton', 2, 'habitasse platea dictumst morbi vestibulum velit id pretium iaculis', '48'),
(47, 'Ivy', 9, 'cubilia curae mauris viverra diam vitae quam suspendisse potenti nullam porttitor lacus at turpis donec posuere metus', '81'),
(48, 'Kerby', 1, 'purus phasellus in felis donec semper sapien a libero nam dui proin leo odio porttitor id consequat in consequat', '47'),
(49, 'Estel', 7, 'vestibulum ante ipsum primis in faucibus orci luctus et', '72'),
(50, 'Aggy', 9, 'pede posuere nonummy integer non velit donec diam neque vestibulum eget vulputate ut ultrices vel augue vestibulum ante ipsum primis', '37'),
(51, 'Hasheem', 2, 'massa id nisl venenatis lacinia aenean sit amet justo', '6'),
(52, 'Toby', 1, 'elementum in hac habitasse platea dictumst morbi vestibulum velit id pretium iaculis diam erat fermentum', '94'),
(53, 'Dunstan', 1, 'posuere cubilia curae nulla dapibus dolor vel est donec odio justo sollicitudin ut suscipit a feugiat', '38'),
(54, 'Lemmie', 8, 'sit amet eros suspendisse accumsan tortor quis turpis sed ante', '79'),
(55, 'Jennine', 3, 'velit eu est congue elementum in hac habitasse platea', '81'),
(56, 'Melloney', 6, 'praesent lectus vestibulum quam sapien varius ut blandit non', '5'),
(57, 'Granthem', 2, 'molestie nibh in lectus pellentesque at nulla suspendisse potenti cras in purus eu magna', '70'),
(58, 'Nichole', 5, 'eget tempus vel pede morbi porttitor lorem id ligula', '13'),
(59, 'Eleonore', 2, 'molestie sed justo pellentesque viverra pede ac diam cras pellentesque volutpat', '92'),
(60, 'Elana', 2, 'diam neque vestibulum eget vulputate ut ultrices vel augue', '82'),
(61, 'Babara', 3, 'sapien iaculis congue vivamus metus arcu adipiscing molestie hendrerit at vulputate vitae nisl aenean lectus pellentesque', '4'),
(62, 'Dwain', 1, 'consequat morbi a ipsum integer a nibh in quis justo maecenas rhoncus aliquam lacus morbi quis tortor id nulla', '3'),
(63, 'Giraldo', 5, 'rhoncus sed vestibulum sit amet cursus id turpis integer aliquet massa id lobortis', '2'),
(64, 'Tucky', 3, 'maecenas rhoncus aliquam lacus morbi quis tortor id nulla ultrices aliquet maecenas leo odio', '17'),
(65, 'Shaylah', 9, 'nisl nunc rhoncus dui vel sem sed', '13'),
(66, 'Maxy', 5, 'aliquet ultrices erat tortor sollicitudin mi sit amet lobortis sapien sapien non mi', '9'),
(68, 'Mia', 10, 'dapibus nulla suscipit ligula in lacus curabitur', '54'),
(69, 'Rosalinde', 4, 'lobortis sapien sapien non mi integer ac neque duis bibendum', '65'),
(70, 'Gwenneth', 2, 'quam a odio in hac habitasse platea dictumst maecenas ut massa quis augue luctus', '87'),
(71, 'Audrie', 10, 'donec odio justo sollicitudin ut suscipit a feugiat et eros vestibulum ac est lacinia', '95'),
(72, 'Sibbie', 10, 'a ipsum integer a nibh in quis justo maecenas rhoncus aliquam lacus morbi quis tortor', '45'),
(73, 'Aaren', 2, 'mattis odio donec vitae nisi nam ultrices libero non mattis pulvinar nulla pede ullamcorper augue a', '21'),
(75, 'Irena', 10, 'natoque penatibus et magnis dis parturient montes nascetur ridiculus mus vivamus', '73'),
(76, 'Susanna', 2, 'vestibulum sed magna at nunc commodo placerat praesent blandit nam nulla integer pede justo lacinia eget tincidunt', '44'),
(77, 'Bonnee', 1, 'rhoncus sed vestibulum sit amet cursus id turpis integer', '26'),
(78, 'Albina', 7, 'magnis dis parturient montes nascetur ridiculus mus etiam vel augue vestibulum rutrum rutrum neque aenean auctor gravida sem', '97'),
(79, 'Aurora', 1, 'lobortis ligula sit amet eleifend pede libero', '88'),
(80, 'Goldia', 2, 'condimentum curabitur in libero ut massa volutpat convallis morbi odio odio elementum', '35'),
(81, 'Maurice', 8, 'tortor duis mattis egestas metus aenean fermentum donec ut mauris eget massa tempor convallis', '71'),
(82, 'Bond', 3, 'in felis donec semper sapien a libero nam dui proin leo odio porttitor id consequat in consequat ut nulla', '61'),
(83, 'Eugenio', 2, 'a ipsum integer a nibh in quis justo maecenas rhoncus aliquam lacus morbi quis', '67'),
(85, 'Ferdie', 4, 'nulla eget eros elementum pellentesque quisque porta volutpat erat quisque erat eros viverra eget congue', '56'),
(86, 'Ddene', 3, 'odio cras mi pede malesuada in imperdiet et commodo', '40'),
(87, 'Lyman', 6, 'sapien arcu sed augue aliquam erat volutpat in congue etiam justo etiam pretium iaculis justo in hac habitasse platea dictumst', '12'),
(88, 'Andy', 2, 'tincidunt nulla mollis molestie lorem quisque ut erat curabitur gravida nisi at nibh in hac habitasse', '40'),
(89, 'Horatius', 3, 'consequat morbi a ipsum integer a nibh in quis', '13'),
(90, 'Milo', 5, 'fringilla rhoncus mauris enim leo rhoncus sed vestibulum sit amet cursus id turpis integer aliquet massa', '5'),
(91, 'Lise', 10, 'est phasellus sit amet erat nulla tempus vivamus in felis eu sapien cursus vestibulum', '80'),
(92, 'Kristina', 2, 'consequat morbi a ipsum integer a nibh in quis justo maecenas rhoncus aliquam lacus', '22'),
(93, 'Muire', 9, 'sed sagittis nam congue risus semper porta volutpat quam', '57'),
(94, 'Berte', 5, 'erat tortor sollicitudin mi sit amet lobortis sapien sapien', '39'),
(95, 'Andras', 10, 'odio in hac habitasse platea dictumst maecenas ut massa quis augue luctus tincidunt nulla mollis molestie', '45'),
(96, 'Celka', 1, 'ut rhoncus aliquet pulvinar sed nisl nunc rhoncus dui vel sem sed sagittis nam', '29'),
(97, 'Gae', 5, 'at vulputate vitae nisl aenean lectus pellentesque eget nunc donec quis orci eget orci vehicula condimentum curabitur', '41'),
(98, 'Ethelin', 3, 'turpis adipiscing lorem vitae mattis nibh ligula nec sem duis aliquam convallis nunc', '65'),
(99, 'Nadine', 2, 'integer ac neque duis bibendum morbi non quam nec dui luctus rutrum nulla tellus in sagittis dui vel nisl duis', '93'),
(100, 'Siouxie', 6, 'sapien iaculis congue vivamus metus arcu adipiscing molestie', '42'),
(120, 'Tom', 7, 'Mulle meeldis.', '102');

-- --------------------------------------------------------

--
-- Table structure for table `kasutajad`
--

CREATE TABLE `kasutajad` (
  `id` int(255) NOT NULL,
  `kasutaja` varchar(255) NOT NULL,
  `parool` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `kasutajad`
--

INSERT INTO `kasutajad` (`id`, `kasutaja`, `parool`) VALUES
(1, 'admin', '$2y$10$iUFt42q4uo8b1EecP983AOLk4cx5a6pBDNizS5GIbSyXSUHlbpEsu');

-- --------------------------------------------------------

--
-- Table structure for table `kohad`
--

CREATE TABLE `kohad` (
  `id` int(255) NOT NULL,
  `nimi` varchar(255) NOT NULL,
  `asukoht` varchar(255) NOT NULL,
  `keskmine_hinne` float NOT NULL,
  `hinnanute_arv` int(255) NOT NULL,
  `tyyp` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `kohad`
--

INSERT INTO `kohad` (`id`, `nimi`, `asukoht`, `keskmine_hinne`, `hinnanute_arv`, `tyyp`) VALUES
(1, 'Dock Sour Sheep Sorrel', 'Keila', 6, 1, 'hotell'),
(2, 'White Petrolatum', 'Rapla', 3.7, 3, 'pood'),
(3, 'Isopropyl Alcohol', 'Pärnu', 3, 1, 'soogikoht'),
(4, 'PETROLATUM', 'Haapsalu', 3, 1, 'pood'),
(5, 'Loratadine', 'Võru', 4.3, 3, 'hostel'),
(6, 'verapamil hydrochloride', 'Haapsalu', 1.5, 2, 'motell'),
(7, 'FLUDEOXYGLUCOSE F-18', 'Tallinn', 2, 1, 'motell'),
(8, 'Acetaminophen Caffeine', 'Rakvere', 4, 1, 'pood'),
(9, 'clopidogrel bisulfate', 'Võru', 5, 1, 'pood'),
(10, 'Acetaminophen Aspirin', 'Rapla', 0, 0, 'hotell'),
(11, 'FLUORIDE TREATMENT', 'Pärnu', 4, 1, 'motell'),
(12, 'Phenol', 'Haapsalu', 6, 2, 'motell'),
(13, 'Salicylic Acid', 'Tartu', 4.5, 4, 'hostel'),
(14, 'Lemon', 'Tallinn', 0, 0, 'soogikoht'),
(15, 'Echinacea Baptisia tinctoria', 'Võru', 0, 0, 'motell'),
(16, 'Arnica Bryonia officinalis', 'Viljandi', 0, 0, 'hotell'),
(17, 'Amoxicillin and Clavulanate Potassium', 'Rakvere', 3, 1, 'soogikoht'),
(18, 'Diphenhydramine HCl', 'Viljandi', 0, 0, 'soogikoht'),
(19, 'Dextromethorphan Hydrobromide and Menthol', 'Võru', 7, 1, 'pood'),
(20, 'lansoprazole', 'Rakvere', 0, 0, 'hotell'),
(21, 'SODIUM CHLORIDE', 'Tartu', 2, 1, 'hostel'),
(22, 'Piperonyl Pyrethrum Extract', 'Keila', 2, 1, 'pood'),
(23, 'sus scrofa small intestine mucosa lymph follicle', 'Pärnu', 8, 1, 'motell'),
(24, 'Citalopram Hydrobromide', 'Keila', 2, 1, 'motell'),
(25, 'ACEPHENYLEPHRINE HYDROCHLORIDE', 'Viljandi', 0, 0, 'hostel'),
(26, 'Escitalopram Oxalate', 'Rapla', 3, 1, 'motell'),
(27, 'Dextromethorphan hydrobromide', 'Rakvere', 4, 1, 'hotell'),
(29, 'Doxycycline hyclate', 'Pärnu', 5.3, 4, 'hotell'),
(30, 'HYDROCORTISONE', 'Rapla', 0, 0, 'motell'),
(31, 'Echinacea Purpurea Perennis', 'Rakvere', 4, 1, 'motell'),
(32, 'Hypothalamus B12', 'Keila', 0, 0, 'soogikoht'),
(33, 'Triticum aestivum digitata', 'Viljandi', 0, 0, 'soogikoht'),
(34, 'Sotalol Hydrochloride', 'Rapla', 0, 0, 'hotell'),
(35, 'ETHYL ALCOHOL', 'Võru', 3, 2, 'hostel'),
(36, 'Triclosan', 'Võru', 0, 0, 'soogikoht'),
(37, 'Aluminum Hydroxide Simethicone', 'Tartu', 5, 2, 'pood'),
(38, 'risperidone', 'Tallinn', 0, 0, 'pood'),
(39, 'AVOBENZONE OXYBENZONE', 'Tartu', 8.3, 3, 'motell'),
(40, 'AVOBENZONE OCTISALATE OCTINOXATE', 'Haapsalu', 2.5, 2, 'hostel'),
(41, 'BRYONIA ALBA', 'Võru', 6.5, 2, 'hotell'),
(42, 'Diethylpropion hydrochloride', 'Tallinn', 6, 1, 'hostel'),
(43, 'OCTINOXATE TITANIUM DIOXIDE', 'Rakvere', 3.7, 1, 'hostel'),
(44, 'Tryptophan', 'Tallinn', 2, 1, 'soogikoht'),
(45, 'Tramadol Hydrochloride', 'Haapsalu', 10, 2, 'motell'),
(46, 'Octinoxate', 'Võru', 0, 0, 'soogikoht'),
(47, 'sodium fluoride', 'Tallinn', 0, 0, 'motell'),
(48, 'OXYGEN', 'Tartu', 4.3, 1, 'pood'),
(49, 'Cockroach American', 'Tallinn', 0, 1, 'hostel'),
(50, 'lidocaine and prilocaine', 'Tartu', 0, 1, 'pood'),
(51, 'Propranolol Hydrochloride', 'Pärnu', 0, 0, 'hostel'),
(52, 'Doxylamine succinate', 'Pärnu', 2, 1, 'pood'),
(53, 'HALOPERIDOL LACTATE', 'Haapsalu', 0, 0, 'hostel'),
(54, 'Hydroxyzine Pamoate', 'Keila', 0, 1, 'pood'),
(55, 'Acitretin', 'Tallinn', 9, 1, 'hostel'),
(56, 'Kali Pituitary bovine', 'Pärnu', 2, 1, 'hotell'),
(57, 'SALICYLIC ACID', 'Võru', 9, 1, 'soogikoht'),
(58, 'buspirone hydrochloride', 'Viljandi', 0, 0, 'motell'),
(60, 'Triclosan', 'Viljandi', 0, 0, 'motell'),
(61, 'Wheat Bunt', 'Tartu', 3, 1, 'hostel'),
(62, 'somatropin', 'Tartu', 0, 0, 'motell'),
(63, 'Piroxicam', 'Võru', 7, 2, 'soogikoht'),
(64, 'Estradiol', 'Rapla', 0, 1, 'motell'),
(65, 'OCTINOXATE and TITANIUM DIOXIDE', 'Tallinn', 4, 1, 'soogikoht'),
(66, 'Pantoprazole Sodium', 'Võru', 5, 1, 'soogikoht'),
(67, 'Beet', 'Viljandi', 5, 1, 'soogikoht'),
(68, 'Loratadine', 'Tallinn', 0, 0, 'pood'),
(69, 'codeine phosphate and guaifenesin', 'Haapsalu', 0, 0, 'pood'),
(70, 'Warfarin Sodium', 'Võru', 5.5, 2, 'motell'),
(71, 'Wart Remover Strips', 'Keila', 8, 1, 'hotell'),
(72, 'Lisinopril', 'Tartu', 5, 1, 'hostel'),
(73, 'donepezil hydrochloride', 'Viljandi', 3, 1, 'soogikoht'),
(74, 'Metformin Hydrochloride', 'Keila', 1, 1, 'motell'),
(75, 'Sumatriptan', 'Tartu', 0, 0, 'hotell'),
(76, 'methscopolamine bromide', 'Haapsalu', 0, 0, 'hostel'),
(77, 'TITANIUM DIOXIDE', 'Võru', 0, 0, 'pood'),
(78, 'fluoxetine hydrochloride', 'Keila', 5, 1, 'motell'),
(79, 'OCTINOXATE', 'Tartu', 8, 1, 'soogikoht'),
(80, 'pravastatin sodium', 'Rapla', 0, 0, 'pood'),
(81, 'Oxymetazoline Hydrochloride', 'Tartu', 0, 1, 'hotell'),
(82, 'Povidone Iodine', 'Võru', 0, 0, 'hostel'),
(83, 'Chloroxylenol', 'Pärnu', 0, 1, 'hostel'),
(84, 'Haloperidol Decanoate', 'Rakvere', 4, 1, 'hostel'),
(85, 'RIBAVIRIN', 'Tallinn', 0, 0, 'hostel'),
(86, 'Levothyroxine Sodium', 'Tallinn', 2, 1, 'motell'),
(87, 'Eplerenone', 'Keila', 0, 1, 'hostel'),
(88, 'Cefdinir', 'Tallinn', 0, 1, 'hotell'),
(89, 'conjugated estrogens', 'Keila', 0, 1, 'motell'),
(90, 'Ibuprofen', 'Rapla', 3, 1, 'soogikoht'),
(91, 'Clonidine Hydrochloride', 'Tartu', 0, 1, 'pood'),
(92, 'clindamycin phosphate', 'Võru', 0, 1, 'hotell'),
(93, 'Camphor Menthol Methyl Salicylate', 'Viljandi', 0, 1, 'pood'),
(94, 'OCTINOXATE TITANIUM DIOXIDE', 'Tartu', 3.7, 1, 'hostel'),
(95, 'ALUMINUM CHLOROHYDRATE', 'Keila', 10, 1, 'motell'),
(96, 'OCTINOXATE and OXYBENZONE', 'Rakvere', 2, 1, 'motell'),
(97, 'Norgestimate and ethinyl estradiol', 'Haapsalu', 5.3, 3, 'pood'),
(98, 'Naproxen', 'Haapsalu', 5.5, 2, 'pood'),
(99, 'Zolpidem Tartrate', 'Pärnu', 4, 1, 'motell');

-- --------------------------------------------------------

--
-- Table structure for table `tyybid`
--

CREATE TABLE `tyybid` (
  `id` int(255) NOT NULL,
  `tyyp` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tyybid`
--

INSERT INTO `tyybid` (`id`, `tyyp`) VALUES
(1, 'hotell'),
(2, 'hostel'),
(3, 'motell'),
(4, 'pood'),
(5, 'soogikoht');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `hinnangud`
--
ALTER TABLE `hinnangud`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `kasutajad`
--
ALTER TABLE `kasutajad`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `kohad`
--
ALTER TABLE `kohad`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tyybid`
--
ALTER TABLE `tyybid`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `hinnangud`
--
ALTER TABLE `hinnangud`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=122;

--
-- AUTO_INCREMENT for table `kasutajad`
--
ALTER TABLE `kasutajad`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `kohad`
--
ALTER TABLE `kohad`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=104;

--
-- AUTO_INCREMENT for table `tyybid`
--
ALTER TABLE `tyybid`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
