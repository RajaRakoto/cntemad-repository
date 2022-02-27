-- Creation de la base de donnees pour les livres

CREATE DATABASE cntemad
DEFAULT CHARACTER SET utf8
DEFAULT COLLATE utf8_general_ci;

CREATE TABLE `cntemad`.`t_livres` (
  `id_livre` int(11) NOT NULL AUTO_INCREMENT,
  `titre_livre` varchar(255) NOT NULL,
  `auteur_livre` varchar(100) NOT NULL,
  `page_livre` smallint(6) NOT NULL,
  PRIMARY KEY (`id_livre`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8


