<?php 
/* CONNEXION AU BD */
//connection properties
$server = "localhost";
$user = "root";
$password = "";
$database = "php_2017";
$status_style = "border-radius: 30px; color: green; background-color: #dbdbdb; padding: 3px' align='center";
//call mysqli class
$connection = new mysqli($server, $user, $password, $database);
//verification
if (!$connection->connect_error) {
  echo ("<div style='" . $status_style . "'>[STATUS] <br> Connexion au base de donnees <strong>'" . $database . "'</strong> etablie !</div>");
}else{
  die ("Erreur de connexion: ". $connection->connect_error);
}
?>