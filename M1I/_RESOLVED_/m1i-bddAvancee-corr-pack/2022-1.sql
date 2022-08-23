-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Hôte : localhost
-- Généré le : mar. 23 août 2022 à 17:01
-- Version du serveur :  10.4.19-MariaDB
-- Version de PHP : 8.0.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `cntemad`
--

-- --------------------------------------------------------

--
-- Structure de la table `Achat`
--

CREATE TABLE `Achat` (
  `QTEA` int(100) NOT NULL,
  `NCLI_Client` int(25) NOT NULL,
  `NP_Produit` int(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `Achat`
--

INSERT INTO `Achat` (`QTEA`, `NCLI_Client`, `NP_Produit`) VALUES
(20000, 1, 1),
(600, 2, 1),
(10000, 2, 2),
(50000, 3, 1);

-- --------------------------------------------------------

--
-- Structure de la table `Client`
--

CREATE TABLE `Client` (
  `NCLI` int(25) NOT NULL,
  `nom` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `Client`
--

INSERT INTO `Client` (`NCLI`, `nom`) VALUES
(1, 'Rakoto'),
(2, 'Randria'),
(3, 'Rasoa');

-- --------------------------------------------------------

--
-- Structure de la table `Produit`
--

CREATE TABLE `Produit` (
  `NP` int(25) NOT NULL,
  `LIB` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `Produit`
--

INSERT INTO `Produit` (`NP`, `LIB`) VALUES
(1, 'Vis'),
(2, 'Bois');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `Achat`
--
ALTER TABLE `Achat`
  ADD PRIMARY KEY (`NCLI_Client`,`NP_Produit`),
  ADD KEY `FK_Achat_NP_Produit` (`NP_Produit`);

--
-- Index pour la table `Client`
--
ALTER TABLE `Client`
  ADD PRIMARY KEY (`NCLI`);

--
-- Index pour la table `Produit`
--
ALTER TABLE `Produit`
  ADD PRIMARY KEY (`NP`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `Client`
--
ALTER TABLE `Client`
  MODIFY `NCLI` int(25) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT pour la table `Produit`
--
ALTER TABLE `Produit`
  MODIFY `NP` int(25) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `Achat`
--
ALTER TABLE `Achat`
  ADD CONSTRAINT `FK_Achat_NCLI_Client` FOREIGN KEY (`NCLI_Client`) REFERENCES `Client` (`NCLI`),
  ADD CONSTRAINT `FK_Achat_NP_Produit` FOREIGN KEY (`NP_Produit`) REFERENCES `Produit` (`NP`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

-- Test
SELECT DISTINCT nom
FROM Client
WHERE Client.NCLI IN (
  SELECT Achat.NCLI_client
  FROM Achat
  WHERE Achat.NP_Produit = (
    SELECT Produit.NP
    FROM Produit
    WHERE Produit.LIB = "Vis"
  ) AND Achat.QTEA >= 10000
)

