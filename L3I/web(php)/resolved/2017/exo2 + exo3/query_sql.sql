-- database = php_2017 --

DROP TABLE `Biblio` IF EXISTS;
CREATE TABLE `Biblio` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `author` varchar(255) NOT NULL,
  `page` int(11) NOT NULL,
  `example` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;