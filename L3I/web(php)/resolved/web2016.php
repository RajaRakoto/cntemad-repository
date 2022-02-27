<!DOCTYPE html>
<html lang="fr">

<head>
  <title>web2016</title>
  <link rel="stylesheet" href="./style.css">
</head>

<body>
  <!-- exercice 1. programme qui liste les nombres impairs < 1000 en PHP -->
  <section>
    <h3> - Nombres impairs < 1000 - </h3>
        <!-- c'est a dire les nombres impairs de 0 a 999 -->
        <?php
        $count = 0;
        while ($count < 1000) {
          if ($count % 2 == 1) {
            echo "$count ";
          }
          $count++;
        }
        ?>
  </section>
  <!-- exercice 2. Formulaire de commentaire avec connexion au base de donnee CNTEMAD -->
  <section>
    <h3>- Formulaire de commentaire avec connexion au base de donnee CNTEMAD -</h3>
    <!-- database -->
    <h5>Creation de la base de donnees</h5>
    <textarea cols="50" rows="10">
          CREATE DATABASE CNTEMAD
          DEFAULT CHARACTER SET utf8
          DEFAULT COLLATE utf8_general_ci;

          USE cntemad
          CREATE TABLE t_commentaires
          (
            id_com INT(4) NOT NULL AUTO_INCREMENT,
            nom_com VARCHAR(50) NOT NULL,
            titre_com VARCHAR(100) NOT NULL,
            commentaire_com LONGTEXT NOT NULL,

            PRIMARY KEY (id_com)
          )ENGINE=innodb CHARSET utf8;
        </textarea>
    <!-- front -->
    <style>
      .container--bold {
        border: solid 5px #555;
        margin: 10px 100px 10px 100px;
      }

      .container--small {
        border: solid 1px #555;
        margin: 5px;
      }

      #container--label {
        position: relative;
        top: 40px;
        left: 3%; 
      }

      #container--input {
        position: relative;
        top: -45px;
        left: 35%;
      }

      #btn--valid {
        color: white;
        background-color: #555;
        font-weight: bolder;
      }

      form {
        font-weight: bolder;
        font-size: 15px;
      }
    </style>
    <div class="container--bold">
      <div class="container--small">
        <h5 align="center">Poster un commentaire</h5>
      </div>
      <div class="container--small">
        <form action="" method="post">
          <div id="container--label">
            <label for="nom">Nom: </label><br><br>
            <label for="titre">Titre: </label><br><br>
            <label for="commentaire">Commentaires: </label>
          </div>

          <div id="container--input">
            <input type="text" name="nom"><br><br>
            <input type="text" name="titre"><br><br>
            <textarea name="commentaire" cols="50" rows="10"></textarea>
          </div>

          <div align="center">
            <br>
            <input id="btn--valid" type="submit" value="Poster un commentaire">
            <br>
            <h2>Examen LPI CNTEMAD</h2>
          </div>
        </form>
      </div>
    </div>
    <!-- back -->
    <?php 
    //importer le fichier qui permet d'acceder au base de donnees 'cntemad' et d'executer des requetes SQL
    require_once "./query.php";
    ?>

  </section>
</body>

</html>