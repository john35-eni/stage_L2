-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le :  sam. 19 juin 2021 à 08:18
-- Version du serveur :  5.7.26
-- Version de PHP :  7.2.18

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `projet`
--

-- --------------------------------------------------------

--
-- Structure de la table `commande`
--

DROP TABLE IF EXISTS `commande`;
CREATE TABLE IF NOT EXISTS `commande` (
  `idCommande` int(11) NOT NULL AUTO_INCREMENT,
  `destination` int(11) NOT NULL,
  `envoyeur` varchar(50) NOT NULL,
  `produit` int(11) NOT NULL,
  `quantite` float NOT NULL,
  `dateCommande` date NOT NULL,
  PRIMARY KEY (`idCommande`),
  KEY `fk_destination` (`destination`),
  KEY `fk_gmagasin` (`produit`)
) ENGINE=InnoDB AUTO_INCREMENT=57 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `commande`
--

INSERT INTO `commande` (`idCommande`, `destination`, `envoyeur`, `produit`, `quantite`, `dateCommande`) VALUES
(52, 1, 'pin', 67, 5, '2021-05-20'),
(53, 1, 'pin', 67, 5, '2021-05-20'),
(55, 2, 'pin', 69, 600, '2021-05-20'),
(56, 1, 'Rajaonarivony', 68, 200, '2021-05-20');

-- --------------------------------------------------------

--
-- Structure de la table `destination`
--

DROP TABLE IF EXISTS `destination`;
CREATE TABLE IF NOT EXISTS `destination` (
  `idDestination` int(11) NOT NULL AUTO_INCREMENT,
  `nom` varchar(50) NOT NULL,
  PRIMARY KEY (`idDestination`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `destination`
--

INSERT INTO `destination` (`idDestination`, `nom`) VALUES
(1, 'Petit Magasin'),
(2, 'Floreal Antsirabe'),
(3, 'admin');

-- --------------------------------------------------------

--
-- Structure de la table `gmagasin`
--

DROP TABLE IF EXISTS `gmagasin`;
CREATE TABLE IF NOT EXISTS `gmagasin` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `numCommande` varchar(100) NOT NULL,
  `couleur` varchar(20) NOT NULL,
  `batte` varchar(20) NOT NULL,
  `quantite` float NOT NULL,
  `fibre` varchar(3) NOT NULL,
  `fournisseur` varchar(20) NOT NULL,
  `nbPolibague` int(11) NOT NULL,
  `tpEmbalage` varchar(20) NOT NULL,
  `transporteur` varchar(20) NOT NULL,
  `depart` date NOT NULL,
  `arrive` date NOT NULL,
  `cpaisage` float NOT NULL,
  `stock` float NOT NULL,
  `agarder` float NOT NULL,
  `location` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=79 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `gmagasin`
--

INSERT INTO `gmagasin` (`id`, `numCommande`, `couleur`, `batte`, `quantite`, `fibre`, `fournisseur`, `nbPolibague`, `tpEmbalage`, `transporteur`, `depart`, `arrive`, `cpaisage`, `stock`, `agarder`, `location`) VALUES
(67, 'P200047', 'Gray Marl', '131,7', 2334, 'CTN', 'M&S', 31, 'carton', 'Vessel', '2021-04-26', '2021-01-04', 2334, 1234, 61, 'IM1Y-6C'),
(68, 'P2000407', 'Twilight', '597.52', 23456, 'SAC', 'floreal', 31, 'SAC', 'visel', '2021-04-27', '2021-02-20', 3765, 34566, 50, 'IM1Y-8C'),
(69, 'P2000408', 'Green Marl', '212,7', 656434, 'CTN', 'cotona', 23231, 'carton', 'visel', '2021-04-28', '2021-03-20', 4535, 5765, 575, 'IM1Y-12C'),
(70, 'P2000409', 'Blue Marl', '323,7', 2334, 'ere', 'floreal', 2344, 'SAC', 'visel', '2021-04-30', '2021-04-20', 1234, 3435, 78, 'IM1Y-11C'),
(71, 'P2000410', 'yellow', '531,7', 2334, 'ere', 'floreal', 2334, 'carton', 'visel', '2021-05-03', '2021-05-19', 4332, 2334, 67, 'IM1Y-10C'),
(72, 'P2000411', 'Red Marl', '400', 2334, 'ere', 'cotona', 23445, 'carton', 'camion', '2021-04-28', '2021-06-20', 2232, 5757, 89, 'IM1Y-6C'),
(73, 'P2000421', 'vert', 'trois', 2334, 'fef', 'floreal', 12, 'gony', 'camion', '2021-07-25', '2021-07-22', 23, 3, 1, 'IM1Y-6C'),
(74, 'P200040', 'yellow', '131,7', 24353, 'ere', 'cotona', 1342345, 'carton', 'visel', '2020-06-18', '2020-05-15', 4535, 3523, 8, 'IM1Y-6C'),
(75, 'P2000451', 'brown', '131,7', 222209, 'ctn', 'cotona', 1234, 'carton', 'camion', '2021-08-20', '2021-08-28', 7666, 45450, 8, 'IM1Y-11C'),
(76, '2122405AM', 'BERRY', '2102-0733', 500, 'CTN', 'FSM', 25, 'PB', 'Container NO# TCNU 2', '2021-05-10', '2021-05-18', 480, 480, 50, 'IM1Y-6C'),
(77, '2113008CM', 'RED MELANGE', '2104-0233', 650, 'CTN', 'FSM', 35, 'PB', 'CONTAINER No# TCNU 2', '2021-05-05', '2021-05-20', 646.54, 646.54, 30, 'IM1Y-12C'),
(78, 'P2000500A', 'grey', '131,7', 200, 'ere', 'FSM', 34, 'carton', 'visel', '2021-05-03', '2021-05-20', 400, 300, 5, 'IM1Y-8C');

-- --------------------------------------------------------

--
-- Structure de la table `location`
--

DROP TABLE IF EXISTS `location`;
CREATE TABLE IF NOT EXISTS `location` (
  `idLocation` int(11) NOT NULL AUTO_INCREMENT,
  `nomLocation` varchar(20) NOT NULL,
  PRIMARY KEY (`idLocation`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `location`
--

INSERT INTO `location` (`idLocation`, `nomLocation`) VALUES
(1, 'IM1Y-6C'),
(3, 'IM1Y-10C'),
(4, 'IM1Y-11C'),
(5, 'IM1Y-8C'),
(6, 'IM1Y-12C');

-- --------------------------------------------------------

--
-- Structure de la table `ptmagasin`
--

DROP TABLE IF EXISTS `ptmagasin`;
CREATE TABLE IF NOT EXISTS `ptmagasin` (
  `idptmagasin` int(11) NOT NULL AUTO_INCREMENT,
  `envoyeur` varchar(50) NOT NULL,
  `produit` int(11) NOT NULL,
  `quantite` float NOT NULL,
  `dateCommande` date DEFAULT NULL,
  PRIMARY KEY (`idptmagasin`),
  KEY `fk_produit_numero` (`produit`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `ptmagasin`
--

INSERT INTO `ptmagasin` (`idptmagasin`, `envoyeur`, `produit`, `quantite`, `dateCommande`) VALUES
(1, 'pin', 78, 100, '2021-05-20');

-- --------------------------------------------------------

--
-- Structure de la table `retour`
--

DROP TABLE IF EXISTS `retour`;
CREATE TABLE IF NOT EXISTS `retour` (
  `idretour` int(11) NOT NULL AUTO_INCREMENT,
  `envoyeur` varchar(50) NOT NULL,
  `produitretour` int(11) NOT NULL,
  `quantite` float NOT NULL,
  `dateRetour` date NOT NULL,
  PRIMARY KEY (`idretour`),
  KEY `fk_produitretour` (`produitretour`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `retour`
--

INSERT INTO `retour` (`idretour`, `envoyeur`, `produitretour`, `quantite`, `dateRetour`) VALUES
(25, 'ptmagasin', 67, 5, '2021-05-20'),
(26, 'ptmagasin', 67, 5, '2021-05-20'),
(27, 'ptmagasin', 68, 200, '2021-05-20');

-- --------------------------------------------------------

--
-- Structure de la table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `username` varchar(50) NOT NULL,
  `lastName` varchar(30) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `password` varchar(50) NOT NULL,
  `level` int(3) NOT NULL,
  `image` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=46 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `users`
--

INSERT INTO `users` (`id`, `username`, `lastName`, `phone`, `password`, `level`, `image`) VALUES
(1, 'admin', 'admin', '0340000000', '21232f297a57a5a743894a0e4a801fc3', 1, 'admin.png'),
(21, 'utilisateur1', 'Utilisateur1', '0343700000', '869400f8978e2c5905d3aef6577f93e3', 2, '2028358063.png'),
(28, 'pin', 'pin', '0347403342', '8a6f503814aa4a7cd863e68c7778fbdb', 2, '1792450903.png'),
(29, 'phone', 'phone', '0390000000', 'f7a42fe7211f98ac7a60a285ac3a9e87', 2, '26869399.png'),
(30, 'ptmagasin', 'ptmagasin', '0341111111', '2d379baba6f4030fbfa7dd9ead1219a0', 3, '802419783.png'),
(31, 'haja', 'haja', '0340305653', '101de04ccf914866928c6c145737624e', 2, '1230025319.jpg'),
(36, 'Ravelosaona ', 'Arnoud', '0341551588', '527bd5b5d689e2c32ae974c6229ff785', 2, '37048780.jpg'),
(38, 'Rajaonarivony', 'Johanes', '0342531171', '84cebf8011f8e25b05baef1c296cb0bd', 2, '1540616301.png'),
(39, 'Pascaline', 'Rambelo', '0345266672', '4215e85f278cbcfe6e8a8b8a35696413', 2, '348948631.jpg'),
(40, 'Admin', 'admin', '0342222222', 'b8422e52794e60dde0c148c7708c8e78', 1, '1719010548.png'),
(41, 'Rakoto', 'Patrick', '0340742433', 'c5ce1cdcc4480877cdd7597f7b78b0b3', 2, '280470073.jpg'),
(42, 'Jeho', 'Jeho', '0348993907', '1675eadc32c2a0dbcda010c284002d14', 2, '2064314780.jpg'),
(43, 'johana', 'johana', '0346673333', '64c67470a23e00249abbd75e488271ab', 2, '1480345402.png'),
(44, 'RIVO', 'RIVO', '0341133717', '56e8c9e27b66522ecb7d76ccdd1e9e0a', 1, '1811596009.png'),
(45, 'Mamy', 'mr', '0341421029', '619da956b714a5fd1cfff3bf97a7189b', 2, '1939311883.jpg');

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `commande`
--
ALTER TABLE `commande`
  ADD CONSTRAINT `fk_destination` FOREIGN KEY (`destination`) REFERENCES `destination` (`idDestination`),
  ADD CONSTRAINT `fk_gmagasin` FOREIGN KEY (`produit`) REFERENCES `gmagasin` (`id`);

--
-- Contraintes pour la table `ptmagasin`
--
ALTER TABLE `ptmagasin`
  ADD CONSTRAINT `fk_produit_numero` FOREIGN KEY (`produit`) REFERENCES `gmagasin` (`id`);

--
-- Contraintes pour la table `retour`
--
ALTER TABLE `retour`
  ADD CONSTRAINT `fk_produitretour` FOREIGN KEY (`produitretour`) REFERENCES `gmagasin` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
