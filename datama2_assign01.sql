-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 28, 2019 at 07:41 AM
-- Server version: 10.1.38-MariaDB
-- PHP Version: 7.3.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `mydb`
--

-- --------------------------------------------------------

--
-- Table structure for table `cafeteria`
--

CREATE TABLE `cafeteria` (
  `id` int(11) NOT NULL,
  `caf_store` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `cafeteria`
--

INSERT INTO `cafeteria` (`id`, `caf_store`) VALUES
(1, 'Lotlux'),
(2, 'Treeflex'),
(3, 'Tresom'),
(4, 'Ronstring'),
(5, 'Sonsing');

-- --------------------------------------------------------

--
-- Table structure for table `cafeteria_has_food`
--

CREATE TABLE `cafeteria_has_food` (
  `cafeteria_cafeteria_id` int(11) NOT NULL,
  `food_food_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `dean`
--

CREATE TABLE `dean` (
  `d_lic` varchar(255) DEFAULT NULL,
  `d_office` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `employee`
--

CREATE TABLE `employee` (
  `id` int(11) NOT NULL,
  `emp_fname` varchar(255) DEFAULT NULL,
  `emp_lname` varchar(255) DEFAULT NULL,
  `emp_email` varchar(255) DEFAULT NULL,
  `emp_dob` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `employee`
--

INSERT INTO `employee` (`id`, `emp_fname`, `emp_lname`, `emp_email`, `emp_dob`) VALUES
(1, 'Basilio', 'Hallt', 'bhallt0@usgs.gov', '1975-12-05'),
(2, 'Hildy', 'Gilmartin', 'hgilmartin1@constantcontact.com', '1996-08-07'),
(3, 'Laina', 'Midford', 'lmidford2@merriam-webster.com', '1966-04-07'),
(4, 'Kristal', 'Gollin', 'kgollin3@businesswire.com', '1963-07-04'),
(5, 'Alleen', 'Zannutti', 'azannutti4@unicef.org', '1968-06-25'),
(6, 'Karel', 'Grafhom', 'kgrafhom5@huffingtonpost.com', '1968-06-07'),
(7, 'Lona', 'Woodwind', 'lwoodwind6@cyberchimps.com', '1963-06-21'),
(8, 'Corri', 'Guite', 'cguite7@wisc.edu', '1989-03-17'),
(9, 'Jillayne', 'Mayfield', 'jmayfield8@uol.com.br', '1961-03-10'),
(10, 'Marty', 'Di Francecshi', 'mdifrancecshi9@angelfire.com', '1987-03-01'),
(11, 'Georgi', 'McCarroll', 'gmccarrolla@taobao.com', '1971-05-02'),
(12, 'Tommie', 'Kovacs', 'tkovacsb@fema.gov', '1983-03-22'),
(13, 'Bartholomeo', 'Crowder', 'bcrowderc@mtv.com', '1973-04-06'),
(14, 'Dael', 'Sayburn', 'dsayburnd@domainmarket.com', '1976-03-15'),
(15, 'Darcy', 'Hessing', 'dhessinge@mit.edu', '1985-10-31'),
(16, 'Wernher', 'Umpleby', 'wumplebyf@intel.com', '1970-10-14'),
(17, 'Maris', 'O''Longain', 'molongaing@creativecommons.org', '1979-10-17'),
(18, 'Cordy', 'Heikkinen', 'cheikkinenh@pagesperso-orange.fr', '1997-08-20'),
(19, 'Derk', 'Blessed', 'dblessedi@noaa.gov', '1998-07-04'),
(20, 'Amerigo', 'Maddy', 'amaddyj@facebook.com', '1963-12-24'),
(21, 'Raffaello', 'Dumphries', 'rdumphriesk@mediafire.com', '1977-08-09'),
(22, 'Kelley', 'Blenkhorn', 'kblenkhornl@ycombinator.com', '1961-04-08'),
(23, 'Lawton', 'Gayler', 'lgaylerm@baidu.com', '1965-03-13'),
(24, 'Reinaldo', 'Parriss', 'rparrissn@redcross.org', '1996-09-04'),
(25, 'Rocky', 'Thurber', 'rthurbero@google.com.hk', '1965-04-04'),
(26, 'Vassily', 'Jubert', 'vjubertp@nhs.uk', '1995-02-24'),
(27, 'Consalve', 'Tuxwell', 'ctuxwellq@over-blog.com', '1964-02-08'),
(28, 'Jeffrey', 'Mussilli', 'jmussillir@domainmarket.com', '1982-06-08'),
(29, 'Abbe', 'Pods', 'apodss@youtu.be', '1965-11-08'),
(30, 'Roseline', 'Heijnen', 'rheijnent@artisteer.com', '1976-08-30'),
(31, 'Brena', 'Mitford', 'bmitfordu@apache.org', '1979-11-22'),
(32, 'Sacha', 'McFaell', 'smcfaellv@telegraph.co.uk', '1982-08-08'),
(33, 'Stearn', 'Shambrooke', 'sshambrookew@salon.com', '1997-09-20'),
(34, 'Marya', 'Justice', 'mjusticex@cocolog-nifty.com', '1973-12-11'),
(35, 'Mikol', 'Farrears', 'mfarrearsy@purevolume.com', '1990-12-26'),
(36, 'Rourke', 'McGonnell', 'rmcgonnellz@constantcontact.com', '1984-06-13'),
(37, 'Carmelle', 'Parmenter', 'cparmenter10@telegraph.co.uk', '1962-09-04'),
(38, 'Trix', 'Ivashnyov', 'tivashnyov11@globo.com', '1972-08-31'),
(39, 'Zara', 'Janaud', 'zjanaud12@infoseek.co.jp', '1974-03-11'),
(40, 'Franni', 'Lechmere', 'flechmere13@google.cn', '1992-10-18'),
(41, 'Ivan', 'Nockles', 'inockles14@statcounter.com', '1990-03-22'),
(42, 'Elianore', 'Duligall', 'eduligall15@github.io', '1989-03-11'),
(43, 'Oliviero', 'Blundin', 'oblundin16@ted.com', '1976-12-29'),
(44, 'Rois', 'Girodias', 'rgirodias17@ow.ly', '1987-07-19'),
(45, 'Bibbie', 'McBeth', 'bmcbeth18@tmall.com', '1962-09-23'),
(46, 'Toby', 'Harnell', 'tharnell19@cam.ac.uk', '1990-03-12'),
(47, 'Jase', 'Hindshaw', 'jhindshaw1a@europa.eu', '1965-11-01'),
(48, 'Alisha', 'Thew', 'athew1b@edublogs.org', '1967-01-02'),
(49, 'Noami', 'Lothlorien', 'nlothlorien1c@wired.com', '1990-09-23'),
(50, 'Farra', 'Cantillon', 'fcantillon1d@jalbum.net', '1973-03-12');

-- --------------------------------------------------------

--
-- Table structure for table `fee`
--

CREATE TABLE `fee` (
  `id` int(11) NOT NULL,
  `fee_refnum` varchar(255) DEFAULT NULL,
  `fee_name` varchar(255) DEFAULT NULL,
  `office_of_idnum` int(11) NOT NULL,
  `medical` enum('m') DEFAULT NULL,
  `registration` enum('re') DEFAULT NULL,
  `library` enum('li') DEFAULT NULL,
  `guidance` enum('g') DEFAULT NULL,
  `athletic` enum('at') DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `food`
--

CREATE TABLE `food` (
  `id` int(11) NOT NULL,
  `food_nut` varchar(45) DEFAULT NULL,
  `food_aller` varchar(45) DEFAULT NULL,
  `food_type` varchar(45) DEFAULT NULL,
  `grain` enum('gr') DEFAULT NULL,
  `solid foods` enum('sf') DEFAULT NULL,
  `shellfish` enum('sh') DEFAULT NULL,
  `crustacean` enum('cr') DEFAULT NULL,
  `milk` enum('mi') DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `food`
--

INSERT INTO food (id, food_nut, food_aller, food_type, grain, solid_foods, shellfish, crustacean, milk)
VALUES
(1, 'Capetown Pea', 'Durian Fruit', 'Nasua nasua', NULL, NULL, NULL, NULL, NULL),
(2, 'Spring Phacelia', 'Beef - Chuck, Boneless', 'Mephitis mephitis', NULL, NULL, NULL, NULL, NULL),
(3, 'Kenya Clover', 'Oats Large Flake', 'Phalaropus lobatus', NULL, NULL, NULL, NULL, NULL),
(4, 'Sensitive Partridge Pea', 'Tea - Darjeeling, Azzura', 'Anathana ellioti', NULL, NULL, NULL, NULL, NULL),
(5, 'Shield Lichen', 'Quail - Whole, Boneless', 'Panthera leo persica', NULL, NULL, NULL, NULL, NULL),
(6, 'Heartleaf Fanpetals', 'Muffin Batt - Ban Dream Zero', 'Bucephala clangula', NULL, NULL, NULL, NULL, NULL),
(7, 'Flymallow', 'V8 Splash Strawberry Banana', 'Nasua nasua', NULL, NULL, NULL, NULL, NULL),
(8, 'Forest False Ohelo', 'Beer - Blue', 'Gymnorhina tibicen', NULL, NULL, NULL, NULL, NULL),
(9, 'Bulletwood', 'Cumin - Ground', 'Aquila chrysaetos', NULL, NULL, NULL, NULL, NULL),
(10, 'Schreber''s Pondweed', 'Pepper - Black, Crushed', 'Gekko gecko', NULL, NULL, NULL, NULL, NULL),
(11, 'Tube Lichen', 'Cranberry Foccacia', 'Alligator mississippiensis', NULL, NULL, NULL, NULL, NULL),
(12, 'Tulip Poppy', 'Radish - Pickled', 'Spizaetus coronatus', NULL, NULL, NULL, NULL, NULL),
(13, 'Washoe Pine', 'The Pop Shoppe - Root Beer', 'Petaurus breviceps', NULL, NULL, NULL, NULL, NULL),
(14, 'Dot Lichen', 'Lamb - Whole, Fresh', 'Ciconia ciconia', NULL, NULL, NULL, NULL, NULL),
(15, 'Pygmy Alpinegold', 'Muffin Hinge - 211n', 'Diomedea irrorata', NULL, NULL, NULL, NULL, NULL),
(16, 'Brownfruit Rush', 'Danishes - Mini Raspberry', 'Hystrix indica', NULL, NULL, NULL, NULL, NULL),
(17, 'Wright''s False Threadleaf', 'Soho Lychee Liqueur', 'Tamiasciurus hudsonicus', NULL, NULL, NULL, NULL, NULL),
(18, 'Coastal Sandmat', 'Capon - Breast, Wing On', 'Mirounga angustirostris', NULL, NULL, NULL, NULL, NULL),
(19, 'Gorman''s Dwarf-primrose', 'Rabbit - Whole', 'Trichoglossus haematodus moluccanus', NULL, NULL, NULL, NULL, NULL),
(20, 'Goosegrass', 'Trout Rainbow Whole', 'Gabianus pacificus', NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `food_has_students`
--

CREATE TABLE `food_has_students` (
  `food_food_id` int(11) NOT NULL,
  `students_stu_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `nurse`
--

CREATE TABLE `nurse` (
  `nur_lic` varchar(255) DEFAULT NULL,
  `nur_sched` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `office`
--

CREATE TABLE `office` (
  `id` int(11) NOT NULL,
  `of_type` varchar(255) DEFAULT NULL,
  `of_loc` varchar(255) DEFAULT NULL,
  `of_desc` varchar(255) DEFAULT NULL,
  `of_name` varchar(255) DEFAULT NULL,
  `registrar` enum('r') DEFAULT NULL,
  `faculty` enum('f') DEFAULT NULL,
  `lounge` enum('l') DEFAULT NULL,
  `finance` enum('fi') DEFAULT NULL,
  `principal` enum('pr') DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `office`
--

INSERT INTO `office` (`id`, `of_type`, `of_loc`, `of_desc`, `of_name`, `registrar`, `faculty`, `lounge`, `finance`, `principal`) VALUES
(1, 'Accounting', '5', 'Finance', 'non', NULL, NULL, NULL, NULL, NULL),
(2, 'Research and Development', '410', 'Consumer Services', 'ut', NULL, NULL, NULL, NULL, NULL),
(3, 'Legal', '1331', 'Technology', 'in congue', NULL, NULL, NULL, NULL, NULL),
(4, 'Product Management', '31', 'Basic Industries', 'potenti nullam', NULL, NULL, NULL, NULL, NULL),
(5, 'Support', '12', 'n/a', 'mauris ullamcorper', NULL, NULL, NULL, NULL, NULL),
(6, 'Sales', '07619', 'Finance', 'luctus ultricies', NULL, NULL, NULL, NULL, NULL),
(7, 'Support', '65', 'Finance', 'in blandit', NULL, NULL, NULL, NULL, NULL),
(8, 'Support', '52488', 'Consumer Services', 'nisi', NULL, NULL, NULL, NULL, NULL),
(9, 'Support', '258', 'Consumer Services', 'dictumst', NULL, NULL, NULL, NULL, NULL),
(10, 'Marketing', '7', 'Consumer Services', 'nunc proin', NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `room`
--

CREATE TABLE `room` (
  `id` int(11) NOT NULL,
  `room_type` varchar(255) DEFAULT NULL,
  `room_name` varchar(255) DEFAULT NULL,
  `students_stu_id` int(11) NOT NULL,
  `meeting` enum('me') DEFAULT NULL,
  `class` enum('cl') DEFAULT NULL,
  `music` enum('mu') DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `salary`
--

CREATE TABLE `salary` (
  `id` int(11) NOT NULL,
  `sal_amount` int(11) DEFAULT NULL,
  `sal_type` varchar(255) DEFAULT NULL,
  `office_of_idnum` int(11) NOT NULL,
  `check` enum('ch') DEFAULT NULL,
  `credit` enum('cr') DEFAULT NULL,
  `atm` enum('a') DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `salary`
--

INSERT INTO `salary` (`id`, `sal_amount`, `sal_type`, `office_of_idnum`, `check`, `credit`, `atm`) VALUES
(1, 39583, 'jcb', 2, NULL, NULL, NULL),
(2, 24038, 'diners-club-carte-blanche', 5, NULL, NULL, NULL),
(3, 39357, 'diners-club-enroute', 2, NULL, NULL, NULL),
(4, 30008, 'switch', 6, NULL, NULL, NULL),
(5, 36888, 'switch', 8, NULL, NULL, NULL),
(6, 37467, 'mastercard', 1, NULL, NULL, NULL),
(7, 22042, 'jcb', 2, NULL, NULL, NULL),
(8, 40168, 'maestro', 7, NULL, NULL, NULL),
(9, 27071, 'jcb', 9, NULL, NULL, NULL),
(10, 21779, 'visa-electron', 3, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

CREATE TABLE `students` (
  `id` int(11) NOT NULL,
  `stu_fname` varchar(255) DEFAULT NULL,
  `stu_lname` varchar(255) DEFAULT NULL,
  `stu_email` varchar(255) DEFAULT NULL,
  `stu_dob` date DEFAULT NULL,
  `employee_emp_idnum` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `students`
--

INSERT INTO `students` (`id`, `stu_fname`, `stu_lname`, `stu_email`, `stu_dob`, `employee_emp_idnum`) VALUES
(1, 'Jamal', 'Lippiett', 'jlippiett0@free.fr', '2000-04-15', 1),
(2, 'Marillin', 'Midlane', 'mmidlane1@smh.com.au', '2000-05-29', 2),
(3, 'Obidiah', 'Broyd', 'obroyd2@mapy.cz', '2000-04-17', 3),
(4, 'Elga', 'Swaite', 'eswaite3@moonfruit.com', '1999-11-11', 4),
(5, 'Jordan', 'Lamers', 'jlamers4@jimdo.com', '2000-02-09', 5),
(6, 'Hedda', 'Bosquet', 'hbosquet5@theguardian.com', '2000-08-05', 6),
(7, 'Nicolis', 'Shimmings', 'nshimmings6@mayoclinic.com', '2000-08-03', 1),
(8, 'Teriann', 'Fallowes', 'tfallowes7@wsj.com', '2000-08-09', 1),
(9, 'Vinita', 'Bartolomeoni', 'vbartolomeoni8@redcross.org', '2000-10-01', 1),
(10, 'Violet', 'Tustin', 'vtustin9@dell.com', '2000-02-24', 2),
(11, 'Alastair', 'Slograve', 'aslogravea@miitbeian.gov.cn', '1999-11-05', 50),
(12, 'Lilias', 'Deners', 'ldenersb@dion.ne.jp', '2000-03-06', 39),
(13, 'Nappie', 'Gallyhaock', 'ngallyhaockc@mayoclinic.com', '1999-11-29', 46),
(14, 'Locke', 'Staresmeare', 'lstaresmeared@imdb.com', '2000-09-08', 35),
(15, 'Quintus', 'Kiddle', 'qkiddlee@netscape.com', '2000-06-03', 28),
(16, 'Axe', 'Benham', 'abenhamf@sun.com', '2000-10-03', 29),
(17, 'Keely', 'Crawforth', 'kcrawforthg@hhs.gov', '2000-07-26', 13),
(18, 'Kurtis', 'Dukelow', 'kdukelowh@indiatimes.com', '2000-08-19', 13),
(19, 'Ado', 'Stolli', 'astollii@barnesandnoble.com', '2000-06-01', 13),
(20, 'Urbanus', 'Jonk', 'ujonkj@technorati.com', '2000-01-31', 13),
(21, 'Deny', 'Owttrim', 'dowttrimk@discovery.com', '1999-11-08', 12),
(22, 'Gunther', 'Saul', 'gsaull@free.fr', '2000-01-23', 26),
(23, 'Dal', 'Woollends', 'dwoollendsm@businessweek.com', '2000-03-17', 36),
(24, 'Cherlyn', 'O'' Mulderrig', 'comulderrign@nature.com', '1999-12-05', 47),
(25, 'Edwina', 'Livoir', 'elivoiro@reference.com', '2000-09-12', 21),
(26, 'Martelle', 'Tomeo', 'mtomeop@e-recht24.de', '2000-05-31', 4),
(27, 'Misty', 'Dark', 'mdarkq@state.tx.us', '2000-04-21', 4),
(28, 'Lauren', 'Boath', 'lboathr@kickstarter.com', '2000-02-16', 5),
(29, 'Edithe', 'Dorian', 'edorians@deliciousdays.com', '2000-08-11', 10),
(30, 'Jermayne', 'Letty', 'jlettyt@tumblr.com', '2000-05-11', 18),
(31, 'Shaina', 'Ruffy', 'sruffyu@vk.com', '1999-12-06', 19),
(32, 'Taryn', 'Sisselot', 'tsisselotv@vkontakte.ru', '2000-01-21', 23),
(33, 'Dela', 'Shreeves', 'dshreevesw@tripadvisor.com', '2000-07-16', 26),
(34, 'Fiona', 'Halfhide', 'fhalfhidex@netscape.com', '2000-05-20', 37),
(35, 'Camile', 'Popley', 'cpopleyy@nydailynews.com', '2000-07-12', 49),
(36, 'Sephira', 'McCrossan', 'smccrossanz@redcross.org', '2000-08-29', 48),
(37, 'Almeta', 'Cuschieri', 'acuschieri10@census.gov', '2000-10-14', 21),
(38, 'Kristy', 'Rhelton', 'krhelton11@nydailynews.com', '2000-03-14', 42),
(39, 'Maressa', 'Vesco', 'mvesco12@yolasite.com', '2000-04-22', 2),
(40, 'Pier', 'McFee', 'pmcfee13@phpbb.com', '2000-04-20', 3),
(41, 'Zeb', 'Perelli', 'zperelli14@hc360.com', '2000-04-20', 3),
(42, 'Avery', 'Grishagin', 'agrishagin15@google.ca', '2000-05-02', 4),
(43, 'Ekaterina', 'Upston', 'eupston16@furl.net', '1999-11-24', 4),
(44, 'Adlai', 'Rawet', 'arawet17@moonfruit.com', '2000-01-10', 5),
(45, 'Tiffie', 'Kynge', 'tkynge18@ted.com', '2000-07-13', 5),
(46, 'Lotta', 'Jenken', 'ljenken19@oakley.com', '2000-03-19', 6),
(47, 'Eberhard', 'Lydford', 'elydford1a@google.co.jp', '2000-08-14', 7),
(48, 'Catharina', 'Penley', 'cpenley1b@psu.edu', '2000-04-19', 29),
(49, 'Kimbra', 'Bremmer', 'kbremmer1c@reverbnation.com', '2000-08-28', 19),
(50, 'Caz', 'Chell', 'cchell1d@bizjournals.com', '2000-01-28', 23);

-- --------------------------------------------------------

--
-- Table structure for table `students_has_fee`
--

CREATE TABLE `students_has_fee` (
  `id` int(11) NOT NULL,
  `students_employee_emp_idnum` int(11) NOT NULL,
  `fee_fee_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `teacher`
--

CREATE TABLE `teacher` (
  `t_lic` varchar(255) DEFAULT NULL,
  `t_subj` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cafeteria`
--
ALTER TABLE `cafeteria`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cafeteria_has_food`
--
ALTER TABLE `cafeteria_has_food`
  ADD PRIMARY KEY (`cafeteria_cafeteria_id`,`food_food_id`),
  ADD KEY `fk_cafeteria_has_food_food1_idx` (`food_food_id`),
  ADD KEY `fk_cafeteria_has_food_cafeteria_idx` (`cafeteria_cafeteria_id`);

--
-- Indexes for table `employee`
--
ALTER TABLE `employee`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `fee`
--
ALTER TABLE `fee`
  ADD PRIMARY KEY (`id`,`office_of_idnum`),
  ADD KEY `fk_fee_office1_idx` (`office_of_idnum`);

--
-- Indexes for table `food`
--
ALTER TABLE `food`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `food_has_students`
--
ALTER TABLE `food_has_students`
  ADD PRIMARY KEY (`food_food_id`,`students_stu_id`),
  ADD KEY `fk_food_has_students_students1_idx` (`students_stu_id`),
  ADD KEY `fk_food_has_students_food1_idx` (`food_food_id`);

--
-- Indexes for table `office`
--
ALTER TABLE `office`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `room`
--
ALTER TABLE `room`
  ADD PRIMARY KEY (`id`,`students_stu_id`),
  ADD KEY `fk_room_students1_idx` (`students_stu_id`);

--
-- Indexes for table `salary`
--
ALTER TABLE `salary`
  ADD PRIMARY KEY (`id`,`office_of_idnum`),
  ADD KEY `fk_salary_office1_idx` (`office_of_idnum`);

--
-- Indexes for table `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`id`,`employee_emp_idnum`),
  ADD KEY `fk_students_employee1_idx` (`employee_emp_idnum`);

--
-- Indexes for table `students_has_fee`
--
ALTER TABLE `students_has_fee`
  ADD PRIMARY KEY (`id`,`students_employee_emp_idnum`,`fee_fee_id`),
  ADD KEY `fk_students_has_fee_fee1_idx` (`fee_fee_id`),
  ADD KEY `fk_students_has_fee_students1_idx` (`id`,`students_employee_emp_idnum`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `cafeteria_has_food`
--
ALTER TABLE `cafeteria_has_food`
  ADD CONSTRAINT `fk_cafeteria_has_food_cafeteria` FOREIGN KEY (`cafeteria_cafeteria_id`) REFERENCES `cafeteria` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_cafeteria_has_food_food1` FOREIGN KEY (`food_food_id`) REFERENCES `food` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `fee`
--
ALTER TABLE `fee`
  ADD CONSTRAINT `fk_fee_office1` FOREIGN KEY (`office_of_idnum`) REFERENCES `office` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `food_has_students`
--
ALTER TABLE `food_has_students`
  ADD CONSTRAINT `fk_food_has_students_food1` FOREIGN KEY (`food_food_id`) REFERENCES `food` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_food_has_students_students1` FOREIGN KEY (`students_stu_id`) REFERENCES `students` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `room`
--
ALTER TABLE `room`
  ADD CONSTRAINT `fk_room_students1` FOREIGN KEY (`students_stu_id`) REFERENCES `students` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `salary`
--
ALTER TABLE `salary`
  ADD CONSTRAINT `fk_salary_office1` FOREIGN KEY (`office_of_idnum`) REFERENCES `office` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `students`
--
ALTER TABLE `students`
  ADD CONSTRAINT `fk_students_employee1` FOREIGN KEY (`employee_emp_idnum`) REFERENCES `employee` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `students_has_fee`
--
ALTER TABLE `students_has_fee`
  ADD CONSTRAINT `fk_students_has_fee_fee1` FOREIGN KEY (`fee_fee_id`) REFERENCES `fee` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_students_has_fee_students1` FOREIGN KEY (`id`,`students_employee_emp_idnum`) REFERENCES `students` (`id`, `employee_emp_idnum`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
