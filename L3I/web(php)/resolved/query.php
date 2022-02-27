<?php 
//importer le fichier de connexion PDO
require_once "connection_pdo.php";

//cette fonction permet d'executer la requete qui se trouve dans $sql et de retourner le resultat dans une variable
function getQuery($sql, $conn) {
  return $conn->query($sql);
}

//cette fonction permet de verifier si une requete a ete executE avec succes ou pas 
function checkQuery($result) {
  echo "<br>";
  $result = false ? die ("[query]: error !") : print ("[query]: success !");
}
?>