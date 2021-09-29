<?php
/* CONNEXION AU BASE DE DONNEES */
//connection properties
$server = "localhost"; //nom du serveur local
$user = "root"; //nom de l'utilisateur pour connecter au sgbd
$password = ""; //mot de passe de l'utilisateur pour connecter au sgbd
$database = "php_2016"; //nom de la base de donnee a utiliser
$status_style = "border-radius: 30px; color: green; background-color: #dbdbdb; padding: 3px' align='center"; //style sur le status de connexion

//etablissement de la connexion (definition de la class mysqli)
$connection = new mysqli($server, $user, $password, $database);

if (!$connection->connect_error) { //si la connexion est etablie avec succes
  echo ("<div style='" . $status_style . "'>[STATUS] <br> Connexion au base de donnees <strong>'" . $database . "'</strong> etablie !</div>");
} else { //si il y a une erreur de connexion
  die("Erreur de connexion: " . $connection->connect_error);
}
?>