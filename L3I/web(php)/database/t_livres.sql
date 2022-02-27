-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Hôte : localhost
-- Généré le : dim. 27 fév. 2022 à 10:38
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
-- Structure de la table `t_livres`
--

CREATE TABLE `t_livres` (
  `id_livre` int(11) NOT NULL,
  `titre_livre` varchar(255) NOT NULL,
  `auteur_livre` varchar(100) NOT NULL,
  `page_livre` smallint(6) NOT NULL,
  `exemplaire_livre` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `t_livres`
--

INSERT INTO `t_livres` (`id_livre`, `titre_livre`, `auteur_livre`, `page_livre`, `exemplaire_livre`) VALUES
(1, 'Titre1', 'Auteur1', 154, 5),
(2, 'Titre2', 'Auteur2', 200, 7),
(3, 'Titre3', 'Auteur3', 50, 20);

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `t_livres`
--
ALTER TABLE `t_livres`
  ADD PRIMARY KEY (`id_livre`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `t_livres`
--
ALTER TABLE `t_livres`
  MODIFY `id_livre` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
