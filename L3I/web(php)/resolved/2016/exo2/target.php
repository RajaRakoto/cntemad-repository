<?php
session_start(); //demarrage d'une session de connexion
include_once('./connection.php'); //connexion a la bd

/* INTERACTION AU BASE DE DONNEES */
//attributs names
/*
  name: pour le nom
  title: pour le titre
  comment: pour les commentaires
*/

// determine si le champ de chaque attributs (dans le form) est different de NULL
if (isset($_POST["name"]) && isset($_POST["title"]) && isset($_POST["comment"])) {
  //stockage de valeur de chaque champ
  $name = $_POST["name"];
  $title = $_POST["title"];
  $comment = $_POST["comment"];
  //requete SQL
  $query = "INSERT INTO Post (name, title, comment) VALUES ('$name', '$title', '$comment')";
  //verification
  echo "<br><center>";
  if ($connection->query($query)) {
    echo "[query] => SUCCESS !";
  } else {
    echo "[query] => ERROR !";
  }
  //fermeture de la connexion
  if ($connection->close()) {
    echo "<br>[close_connection] => SUCCESS !";
  } else {
    echo "<br>[close_connection] => ERROR !";
  }
  echo "</center>";
}
