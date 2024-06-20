-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : jeu. 27 avr. 2023 à 00:42
-- Version du serveur : 10.4.28-MariaDB
-- Version de PHP : 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `bddparking`
--

-- --------------------------------------------------------

--
-- Structure de la table `emplyee`
--

CREATE TABLE `emplyee` (
  `cin` varchar(10) NOT NULL,
  `nom` varchar(20) NOT NULL,
  `prenom` varchar(20) NOT NULL,
  `ville` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL,
  `tele` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `emplyee`
--

INSERT INTO `emplyee` (`cin`, `nom`, `prenom`, `ville`, `password`, `tele`) VALUES
('AB123', 'Yassine', 'Zyadi', 'Rabat', '123', '0627976775'),
('AC123', 'Sanae', 'Elmostafi', 'Rabat', '123', '0645677976');

-- --------------------------------------------------------

--
-- Structure de la table `voiture`
--

CREATE TABLE `voiture` (
  `matricule` varchar(20) NOT NULL,
  `marque` varchar(20) NOT NULL,
  `coleur` varchar(20) NOT NULL,
  `cincondicteur` varchar(20) NOT NULL,
  `dateentre` varchar(20) NOT NULL,
  `datesortie` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `voiture`
--

INSERT INTO `voiture` (`matricule`, `marque`, `coleur`, `cincondicteur`, `dateentre`, `datesortie`) VALUES
('AB123', 'BMW', 'Noir', 'AB987', '15/07/2021', '12/08/2022'),
('AD5112', 'Oudi', 'Blanc', 'AB2351', '10/02/2022', '13/05/2011'),
('AH675', 'Ferrari', 'Rouge', 'AY123', '19/04/2022', '01/04/2023');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `emplyee`
--
ALTER TABLE `emplyee`
  ADD PRIMARY KEY (`cin`);

--
-- Index pour la table `voiture`
--
ALTER TABLE `voiture`
  ADD PRIMARY KEY (`matricule`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
