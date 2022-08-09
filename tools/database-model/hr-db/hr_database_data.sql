-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Hôte : localhost
-- Généré le : ven. 25 fév. 2022 à 13:34
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
-- Base de données : `hr_database`
--

-- --------------------------------------------------------

--
-- Structure de la table `COUNTRIES`
--

CREATE TABLE `COUNTRIES` (
  `country_id` char(2) NOT NULL,
  `country_name` varchar(40) DEFAULT NULL,
  `REGIONS_region_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `COUNTRIES`
--

INSERT INTO `COUNTRIES` (`country_id`, `country_name`, `REGIONS_region_id`) VALUES
('f1', 'France', 3),
('m1', 'Madagascar', 1);

-- --------------------------------------------------------

--
-- Structure de la table `DEPARTEMENTS`
--

CREATE TABLE `DEPARTEMENTS` (
  `departement_id` int(4) NOT NULL,
  `departement_name` varchar(30) DEFAULT NULL,
  `LOCATIONS_location_id` int(4) NOT NULL,
  `LOCATIONS_COUNTRIES_country_id` char(2) NOT NULL,
  `LOCATIONS_COUNTRIES_REGIONS_region_id` int(11) NOT NULL,
  `MANAGERS_manager_id` int(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `DEPARTEMENTS`
--

INSERT INTO `DEPARTEMENTS` (`departement_id`, `departement_name`, `LOCATIONS_location_id`, `LOCATIONS_COUNTRIES_country_id`, `LOCATIONS_COUNTRIES_REGIONS_region_id`, `MANAGERS_manager_id`) VALUES
(1, 'Sciences', 1, 'f1', 3, 1);

-- --------------------------------------------------------

--
-- Structure de la table `EMPLOYEES`
--

CREATE TABLE `EMPLOYEES` (
  `employee_id` int(6) NOT NULL,
  `first_name` varchar(20) DEFAULT NULL,
  `last_name` varchar(25) DEFAULT NULL,
  `email` varchar(25) DEFAULT NULL,
  `phone_number` varchar(20) DEFAULT NULL,
  `hire_date` date DEFAULT NULL,
  `salary` int(11) DEFAULT NULL,
  `commission_pct` int(11) DEFAULT NULL,
  `MANAGERS_manager_id` int(6) NOT NULL,
  `JOBS_job_id` varchar(10) NOT NULL,
  `DEPARTEMENTS_departement_id` int(4) NOT NULL,
  `DEPARTEMENTS_LOCATIONS_location_id` int(4) NOT NULL,
  `DEPARTEMENTS_LOCATIONS_COUNTRIES_country_id` char(2) NOT NULL,
  `DEPARTEMENTS_LOCATIONS_COUNTRIES_REGIONS_region_id` int(11) NOT NULL,
  `DEPARTEMENTS_MANAGERS_manager_id` int(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `EMPLOYEES`
--

INSERT INTO `EMPLOYEES` (`employee_id`, `first_name`, `last_name`, `email`, `phone_number`, `hire_date`, `salary`, `commission_pct`, `MANAGERS_manager_id`, `JOBS_job_id`, `DEPARTEMENTS_departement_id`, `DEPARTEMENTS_LOCATIONS_location_id`, `DEPARTEMENTS_LOCATIONS_COUNTRIES_country_id`, `DEPARTEMENTS_LOCATIONS_COUNTRIES_REGIONS_region_id`, `DEPARTEMENTS_MANAGERS_manager_id`) VALUES
(1, 'Rakoto', 'Nirina', 'rakoto.nirina@gmail.com', '0385564122', '2022-02-16', 3500, NULL, 2, 'job1', 1, 1, 'f1', 3, 1);

-- --------------------------------------------------------

--
-- Structure de la table `JOBS`
--

CREATE TABLE `JOBS` (
  `job_id` varchar(10) NOT NULL,
  `job_title` varchar(35) NOT NULL,
  `min_salary` int(6) DEFAULT NULL,
  `max_salary` int(6) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `JOBS`
--

INSERT INTO `JOBS` (`job_id`, `job_title`, `min_salary`, `max_salary`) VALUES
('job1', 'informatique', 4000, 8000),
('job2', 'management', 3000, 6000),
('job3', 'commerce', 2000, 4000),
('job4', 'marketing', 3000, 5000);

-- --------------------------------------------------------

--
-- Structure de la table `JOB_HISTORY`
--

CREATE TABLE `JOB_HISTORY` (
  `employee_id` varchar(45) NOT NULL,
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `JOBS_job_id` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `LOCATIONS`
--

CREATE TABLE `LOCATIONS` (
  `location_id` int(4) NOT NULL,
  `street_address` varchar(40) DEFAULT NULL,
  `postal_code` varchar(12) DEFAULT NULL,
  `city` varchar(30) NOT NULL,
  `state_province` varchar(25) DEFAULT NULL,
  `COUNTRIES_country_id` char(2) NOT NULL,
  `COUNTRIES_REGIONS_region_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `LOCATIONS`
--

INSERT INTO `LOCATIONS` (`location_id`, `street_address`, `postal_code`, `city`, `state_province`, `COUNTRIES_country_id`, `COUNTRIES_REGIONS_region_id`) VALUES
(1, NULL, NULL, 'Paris', NULL, 'f1', 3);

-- --------------------------------------------------------

--
-- Structure de la table `MANAGERS`
--

CREATE TABLE `MANAGERS` (
  `manager_id` int(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `MANAGERS`
--

INSERT INTO `MANAGERS` (`manager_id`) VALUES
(1),
(2);

-- --------------------------------------------------------

--
-- Structure de la table `REGIONS`
--

CREATE TABLE `REGIONS` (
  `region_id` int(11) NOT NULL,
  `region_name` varchar(25) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `REGIONS`
--

INSERT INTO `REGIONS` (`region_id`, `region_name`) VALUES
(1, 'Analamanga'),
(2, 'Vakinankaratra'),
(3, 'Paris');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `COUNTRIES`
--
ALTER TABLE `COUNTRIES`
  ADD PRIMARY KEY (`country_id`,`REGIONS_region_id`),
  ADD KEY `fk_COUNTRIES_REGIONS1_idx` (`REGIONS_region_id`);

--
-- Index pour la table `DEPARTEMENTS`
--
ALTER TABLE `DEPARTEMENTS`
  ADD PRIMARY KEY (`departement_id`,`LOCATIONS_location_id`,`LOCATIONS_COUNTRIES_country_id`,`LOCATIONS_COUNTRIES_REGIONS_region_id`,`MANAGERS_manager_id`),
  ADD KEY `fk_DEPARTEMENTS_LOCATIONS1_idx` (`LOCATIONS_location_id`,`LOCATIONS_COUNTRIES_country_id`,`LOCATIONS_COUNTRIES_REGIONS_region_id`),
  ADD KEY `fk_DEPARTEMENTS_MANAGERS1_idx` (`MANAGERS_manager_id`);

--
-- Index pour la table `EMPLOYEES`
--
ALTER TABLE `EMPLOYEES`
  ADD PRIMARY KEY (`employee_id`,`MANAGERS_manager_id`,`JOBS_job_id`,`DEPARTEMENTS_departement_id`,`DEPARTEMENTS_LOCATIONS_location_id`,`DEPARTEMENTS_LOCATIONS_COUNTRIES_country_id`,`DEPARTEMENTS_LOCATIONS_COUNTRIES_REGIONS_region_id`,`DEPARTEMENTS_MANAGERS_manager_id`),
  ADD KEY `fk_EMPLOYEES_MANAGERS_idx` (`MANAGERS_manager_id`),
  ADD KEY `fk_EMPLOYEES_JOBS1_idx` (`JOBS_job_id`),
  ADD KEY `fk_EMPLOYEES_DEPARTEMENTS1_idx` (`DEPARTEMENTS_departement_id`,`DEPARTEMENTS_LOCATIONS_location_id`,`DEPARTEMENTS_LOCATIONS_COUNTRIES_country_id`,`DEPARTEMENTS_LOCATIONS_COUNTRIES_REGIONS_region_id`,`DEPARTEMENTS_MANAGERS_manager_id`);

--
-- Index pour la table `JOBS`
--
ALTER TABLE `JOBS`
  ADD PRIMARY KEY (`job_id`);

--
-- Index pour la table `JOB_HISTORY`
--
ALTER TABLE `JOB_HISTORY`
  ADD PRIMARY KEY (`employee_id`),
  ADD KEY `fk_JOB_HISTORY_JOBS1_idx` (`JOBS_job_id`);

--
-- Index pour la table `LOCATIONS`
--
ALTER TABLE `LOCATIONS`
  ADD PRIMARY KEY (`location_id`,`COUNTRIES_country_id`,`COUNTRIES_REGIONS_region_id`),
  ADD KEY `fk_LOCATIONS_COUNTRIES1_idx` (`COUNTRIES_country_id`,`COUNTRIES_REGIONS_region_id`);

--
-- Index pour la table `MANAGERS`
--
ALTER TABLE `MANAGERS`
  ADD PRIMARY KEY (`manager_id`);

--
-- Index pour la table `REGIONS`
--
ALTER TABLE `REGIONS`
  ADD PRIMARY KEY (`region_id`);

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `COUNTRIES`
--
ALTER TABLE `COUNTRIES`
  ADD CONSTRAINT `fk_COUNTRIES_REGIONS1` FOREIGN KEY (`REGIONS_region_id`) REFERENCES `REGIONS` (`region_id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Contraintes pour la table `DEPARTEMENTS`
--
ALTER TABLE `DEPARTEMENTS`
  ADD CONSTRAINT `fk_DEPARTEMENTS_LOCATIONS1` FOREIGN KEY (`LOCATIONS_location_id`,`LOCATIONS_COUNTRIES_country_id`,`LOCATIONS_COUNTRIES_REGIONS_region_id`) REFERENCES `LOCATIONS` (`location_id`, `COUNTRIES_country_id`, `COUNTRIES_REGIONS_region_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_DEPARTEMENTS_MANAGERS1` FOREIGN KEY (`MANAGERS_manager_id`) REFERENCES `MANAGERS` (`manager_id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Contraintes pour la table `EMPLOYEES`
--
ALTER TABLE `EMPLOYEES`
  ADD CONSTRAINT `fk_EMPLOYEES_DEPARTEMENTS1` FOREIGN KEY (`DEPARTEMENTS_departement_id`,`DEPARTEMENTS_LOCATIONS_location_id`,`DEPARTEMENTS_LOCATIONS_COUNTRIES_country_id`,`DEPARTEMENTS_LOCATIONS_COUNTRIES_REGIONS_region_id`,`DEPARTEMENTS_MANAGERS_manager_id`) REFERENCES `DEPARTEMENTS` (`departement_id`, `LOCATIONS_location_id`, `LOCATIONS_COUNTRIES_country_id`, `LOCATIONS_COUNTRIES_REGIONS_region_id`, `MANAGERS_manager_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_EMPLOYEES_JOBS1` FOREIGN KEY (`JOBS_job_id`) REFERENCES `JOBS` (`job_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_EMPLOYEES_MANAGERS` FOREIGN KEY (`MANAGERS_manager_id`) REFERENCES `MANAGERS` (`manager_id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Contraintes pour la table `JOB_HISTORY`
--
ALTER TABLE `JOB_HISTORY`
  ADD CONSTRAINT `fk_JOB_HISTORY_JOBS1` FOREIGN KEY (`JOBS_job_id`) REFERENCES `JOBS` (`job_id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Contraintes pour la table `LOCATIONS`
--
ALTER TABLE `LOCATIONS`
  ADD CONSTRAINT `fk_LOCATIONS_COUNTRIES1` FOREIGN KEY (`COUNTRIES_country_id`,`COUNTRIES_REGIONS_region_id`) REFERENCES `COUNTRIES` (`country_id`, `REGIONS_region_id`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
