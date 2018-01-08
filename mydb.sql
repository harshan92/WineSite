-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 03, 2017 at 06:03 AM
-- Server version: 5.7.14
-- PHP Version: 5.6.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
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
-- Table structure for table `region`
--

CREATE TABLE `region` (
  `woeid` varchar(45) NOT NULL,
  `name` varchar(45) NOT NULL,
  `description` longtext,
  `population` int(20) DEFAULT NULL,
  `languages` varchar(45) DEFAULT NULL,
  `longitude` float NOT NULL,
  `latitude` float NOT NULL,
  `rimage` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `region`
--

INSERT INTO `region` (`woeid`, `name`, `description`, `population`, `languages`, `longitude`, `latitude`, `rimage`) VALUES
('12587718', 'Sonoma County', 'Sonoma County is a county in the U.S. state of California. As of the 2010 United States Census, its population was 483,878.[3] Its county seat and largest city is Santa Rosa. It is located to the north of Marin County and the south of Mendocino County. It is west of Napa County and Lake County.', 483878, 'Spanish', 38.51, -122.93, 'sonoma.jpg'),
('15021761', 'Gisborne ', 'Gisborne (Māori: Tūranga-nui-a-Kiwa "Great standing place of Kiwa") is a city in northeastern New Zealand and the largest settlement in the Gisborne District (or Gisborne Region). It has a population of 36,100 (June 2016). The district council has its headquarters in Whataupoko, in the central city.', 36100, 'English', -38.6625, 178.018, 'gisbrone.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `region_has_wine`
--

CREATE TABLE `region_has_wine` (
  `region_woeid` varchar(45) NOT NULL,
  `wine_id` varchar(45) NOT NULL,
  `lat` double NOT NULL,
  `lng` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `region_has_wine`
--

INSERT INTO `region_has_wine` (`region_woeid`, `wine_id`, `lat`, `lng`) VALUES
('12587718', 'US6471', 38.51, -122.932),
('12587718', 'US6501', 38.5135, -122.933),
('12587718', 'US6601', 38.5145, -122.933),
('12587718', 'US6881', 38.5124, -122.931),
('12587718', 'US6891', 38.5129, -122.93),
('12587718', 'US6921', 38.513, -122.934),
('15021761', ' NZ9571', -38.66, 178.02),
('15021761', 'NZ7861', -38.6625, 178.018),
('15021761', 'NZ7991', -38.662, 178.019),
('15021761', 'NZ9271', -38.661, 178.017),
('15021761', 'NZ9371', -38.663, 178.008),
('15021761', 'NZ9541', -38.6559, 178.01);

-- --------------------------------------------------------

--
-- Table structure for table `wine`
--

CREATE TABLE `wine` (
  `id` varchar(45) NOT NULL,
  `name` varchar(90) NOT NULL,
  `type` varchar(45) DEFAULT NULL,
  `alcohol` varchar(45) DEFAULT NULL,
  `colour_intensity` varchar(45) DEFAULT NULL,
  `description` longtext,
  `price` double DEFAULT NULL,
  `suppliers` varchar(45) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `lbl` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `wine`
--

INSERT INTO `wine` (`id`, `name`, `type`, `alcohol`, `colour_intensity`, `description`, `price`, `suppliers`, `image`, `lbl`) VALUES
(' NZ9571', 'kumeu village hand-harvested chardonnay 2016', '1009', '13.5', 'white whine', 'This fine New Zealand chardonnay offers terrific value, with green-apple and lemon flavours, bright acidity, a touch of oak and struck-match complexity. Much more than one might expect for a wine of this price.', 9.95, 'Kumeu River Wines Ltd', 'images/products/NZ9571.jpg', 'Hand-Harvested '),
('NZ7861', 'felton road bannockburn central otago chardonnay 2013', '1009', '14.0', 'white wine', 'The grapes for this excellent white from a Central Otago standard-bearer are hand harvested and pressed straight to barrel (10 new French oak), where fermentation with indigenous yeasts greatly adds to the wine\'s complexity. Plenty of fresh lemon and grapefruit on the nose with notes of brioche, and a very elegant palate. Fine-boned in structure and plenty of lemon and mineral flavours on the long finish.', 21, 'Felton Road', 'images/products/NZ7861.jpg', 'Bannockburn'),
('NZ7991', 'kumeu river mate\'s vineyard auckland chardonnay 2012', '1009', '13', 'white wine', 'The 2012 vintage of Kumeu River\'s flagship chardonnay is starting to show growing complexity while retaining refined elegance. Toasty oak notes are now in balance with the apple and citrus fruit aromas. On the palate, the concentrated flavours of baked apple, lemon and chalk are held beautifully by fresh acidity. The finish is long and refined. World class.', 29, 'Kumeu River Wines Ltd', 'images/products/NZ7991.jpg', 'Vineyard Auckland '),
('NZ9271', 'seresin marlborough chardonnay reserve 2014', '1009', '13.5', 'white wine', 'A vibrant New Zealand chardonnay with well-balanced nutty oak flavour, plenty of lemon and apple fruit and great texture on the palate. A super match for roast chicken.', 17, 'Seresin', 'images/products/NZ9271.jpg', 'Seresin marlborough'),
('NZ9371', 'Dog point Marlborough chardonnay 2014', '1005', '14.0', 'white wine', 'Dog Point select only the best of their enviable vineyard holdings for this wine, and the 2014 has remarkable precision and concentration. Its green-apple, lemon and peach notes are very well balanced thanks to careful ageing in French oak, and the flavours last well on the generous finish.', 18.5, 'Dog Point', 'images/products/NZ9371.jpg', 'Dog Point marlbor..'),
('NZ9541', 'kumeu river estate auckland chardonnay 2015', '1009', '14', 'white wine', 'The benchmark chardonnay for Kumeu River, this stands head and shoulders above many other wines at this price. Green apple and gunsmoke on the nose, opening up on the palate showing lovely citrus and mineral flavours that last on the finish.', 18.5, 'Kumeu River Wines Ltd The', 'images/products/NZ9541.jpg', 'Auckland'),
('US6471', 'Pedroncelli Dry Creek Valley Sonoma Chardonnay 2015', '1009', '14.2', 'white wine', 'A rich spicy style of chardonnay with 25% of the blend being aged in new French oak. Baked-apple aromas, with vanilla and nutmeg, a soft full body, with plenty of green-apple and poached-pear notes on the finish.', 9.95, 'Pedroncelli', 'images/products/US6471.jpg', 'Dry Creek Valley'),
('US6501', 'The Society\'s California Old-Vine Zinfandel 2014', '1005', '13.5', 'red wine', 'A generous blackberry and sour-cherry-laden wine, typical of zinfandel\'s uneven ripening pattern that allows the wine to have some riper notes whilst retaining good freshness too. This is a real crowd pleaser.', 19, ' Delicato Family', 'images/products/US6501.jpg', 'Zinfandel'),
('US6601', 'Broc Vine Starr Sonoma County Zinfandel 2014', '1001', '12.8', 'red wine', 'Chris Brockway is at the forefront of the \'New Californian\' winemaking trend sweeping through San Francisco. Aiming for elegance and purity, the grapes are picked early, fermented with wild yeast and no new oak, with only light filtration. This has created a thoroughly modern zin with cherry perfume, fine tannins and a peppery finish.', 25, 'Broc Cellars (Chris Brockway)', 'images/products/US6601.jpg', 'Vine Starr'),
('US6881', 'Friends Red Sonoma County 2014', '1009', '14.2', 'red wine', 'Terrific-value Sonoma County merlot-dominated blend. Plenty of rich plum and blackberry flavours, soft tannins and a little spice developing on the finish.', 9.25, 'Pedroncelli', 'images/products/US6881.jpg', 'Friends Red'),
('US6891', 'Pedroncelli Russian River Valley Pinot Noir 2015', '1005', '13.5', 'red wine', 'Fruit from Sonoma\'s Russian River Valley is highly prized so this delicious pinot noir from the Pedroncelli family represents excellent value. With a complex perfume of red berry and leather, and fine-grained tannins supporting supple summer-berry fruit on the spicy palate, this is a very smart California pinot noir.', 12.5, 'Pedroncelli', 'images/products/US6891.jpg', 'Russian River Valley'),
('US6921', 'Fess Parker Santa Barbara County Chardonnay 2015', '1009', '14.1', 'White Wine', 'This California chardonnay is made by family-owned producer Fess Parker, using grapes from the highly prized Santa Barbara County. It manages skilfully to tread an often tricky line with subtle, tempting toasty character on the nose, but plenty of lemon-fresh citrus fruit on the palate. Very well balanced and very smart for the price.', 16, 'Fess Parker', 'images/products/US6921.jpg', 'Santa Barbara');

-- --------------------------------------------------------

--
-- Table structure for table `wine_type`
--

CREATE TABLE `wine_type` (
  `type_no` int(11) NOT NULL,
  `type_name` varchar(20) NOT NULL,
  `description` longtext NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `wine_type`
--

INSERT INTO `wine_type` (`type_no`, `type_name`, `description`) VALUES
(1001, 'Cork, agglomerate', 'A technical cork made up of the remnants from the production of natural corks which are ground down into particles and cleaned and then combined using a food-grade polyurethane glue. A cheaper closure which The Society\'s buyers discourage suppliers from using.'),
(1002, 'Cork, colmate', 'A technical cork made from cheaper-grade natural cork where the naturally occurring pores are filled with ground down cork particles and then the whole is sealed with a food-grade wax coating. Generally only used for wines with a short shelf-life.'),
(1003, 'Cork, Diam', 'Diam corks look like agglomerate corks but are far superior and are designed to put an end to cork taint and random oxidation. The production process chops cork into pieces and sorts the superior, highly elastic, suberin component from the less elastic lignin, which is discarded. It mixes the suberin with microscopic spheres of the same substance used for contact lenses, which fills the voids between the cork particles reducing porosity to air and increasing elasticity without introducing humidity. Finally the pieces are mixed with a glue and moulded under pressure. The mechanical properties of the cork are guaranteed for a certain minimum number of years depending on the grade of cork - for example Diam 2 is guaranteed for two years; Diam 3, 5 and 10 are also available.'),
(1004, 'Champagne cork', 'The Champagne cork is 90% agglomerate made from cork off-cuts which are ground down, cleaned, compressed and then glued together with two disks of good quality natural cork glued onto the end which protrudes into the bottle.'),
(1005, 'Natural cork', 'Natural corks harvested from the cork oak (Quercus suber) forests in Spain and Portugal have been the closure of choice for wine for the 300 years. The bark of the cork oak is stripped from mature trees every nine years. The planks are stored and then cleaned and graded before the corks are punched out of the wood. For wines destined for long-ageing, high-grade natural corks are still the closure of choice.'),
(1006, 'Cork, plastic', 'Cost-effective synthetic \'corks\' made from food-grade plastic with a silicone coating (similar to that used on natural corks). Generally used for wines for short-term cellaring.'),
(1007, 'Glass stopper', 'A glass stopper with a plastic \'O\' ring which acts as an interface between the top of the bottle and the stopper, held in place by a metal, tamper-proof seal. Relatively expensive as a closure and not widely used. Can be removed by hand.'),
(1008, 'Stopper cork (ie she', 'A short natural or agglomerate cork with a plastic or wooden top to enable the stopper to be removed by hand. Traditionally used for whiskies, sherries, Madeira etc.'),
(1009, 'Screwcap', 'Aluminium alloy screwcaps made with an expanded polyethylene wadding for the lining. Screwcaps are also known as ROTEs (roll-on tamper evident) or by the brand name (Stelvin is a popular brand). Widely used in Australia and New Zealand and for wines for short-term cellaring. Becoming increasingly sophisticated in terms of allowing differing levels of permeability so mimicking the properties of natural cork offering winemakers more choice depending of the style of wine being made. There is still a lack of sound data regarding the performance of screwcaps for longer-term cellaring.'),
(1010, 'Twin top', 'This is an agglomerate cork with a disk of good-quality natural cork adhered to both ends. A reasonably priced, reliable alternative to natural cork'),
(1011, 'Crown cap', 'This is the metal pilfer-proof cap usually used to seal beer bottles but also used in the production of Champagne and sparkling wine when wines are stored under crown cap before the dosage is added. A few producers use crown caps to seal wine bottles. Open with a standard bottle opener.');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `region`
--
ALTER TABLE `region`
  ADD PRIMARY KEY (`woeid`);

--
-- Indexes for table `region_has_wine`
--
ALTER TABLE `region_has_wine`
  ADD PRIMARY KEY (`region_woeid`,`wine_id`),
  ADD KEY `fk_region_has_wine_wine1_idx` (`wine_id`),
  ADD KEY `fk_region_has_wine_region_idx` (`region_woeid`);

--
-- Indexes for table `wine`
--
ALTER TABLE `wine`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wine_type`
--
ALTER TABLE `wine_type`
  ADD PRIMARY KEY (`type_no`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `region_has_wine`
--
ALTER TABLE `region_has_wine`
  ADD CONSTRAINT `fk_region_has_wine_region` FOREIGN KEY (`region_woeid`) REFERENCES `region` (`woeid`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_region_has_wine_wine1` FOREIGN KEY (`wine_id`) REFERENCES `wine` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
