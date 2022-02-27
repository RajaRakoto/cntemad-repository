<!DOCTYPE html>
<html lang="fr">

<head>
  <meta charset="utf-8">
  <title>web2017</title>
  <link rel="stylesheet" href="./style.css">
</head>

<body>
  <!-- exercice 1. Eq du 2nd degrE-->
  <section align="center">
    <h3>- Calcul eq 2nd degrE -</h3>
    <form method="post" action="">
      <label for="a">a</label>
      <input type="number" name="a"></input> X +
      <label for="b">b</label>
      <input type="number" name="b"></input> X<sup>2</sup> +
      <label for="c">c</label>
      <input type="number" name="c"></input> = 0 <br><br>
      <input type="submit" value="Calculer les solutions">
    </form>
    <?php
    if (isset($_POST["a"]) && isset($_POST["b"]) && isset($_POST["c"])) {
      $a = $_POST["a"];
      $b = $_POST["b"];
      $c = $_POST["c"];

      $delta = pow($b, 2) - (4 * $a * $c);
      echo "<br>DELTA = $delta";

      if ($delta == 0) {
        $solution = -$b / (2 * $a);
        echo "<br>Solution = $solution";
      } else if ($delta < 0) {
        echo "<br>Pas de solution";
      } else {
        $x1 = -$b - (sqrt($delta)) / (2 * $a);
        $x2 = -$b + sqrt($delta) / (2 * $a);
        echo "<br>2 solutions distincts: <br> x1 = $x1 <br> x2 = $x2";
      }
    }
    ?>
  </section>
    <!-- exercice 3. Code PHP/MYSQL permettant d'afficher les livres dans la base -->
    <section>
    <h3>- Liste des livres dans la base de donnees -</h3>
    <?php
    require_once "query.php";

    $sql2 = "SELECT * FROM `$database`.`t_livres`";
    $result = getQuery($sql2, $conn);
    checkQuery($result);

    echo
    "
      <br>
      <table border='1'>
        <tr>
          <th>ID</th>
          <th>TITRES</th>
          <th>AUTEURS</th>
          <th>PAGES</th>
          <th>EXEMPLAIRE</th>
        </tr>
      ";

    while ($row = $result->fetch(PDO::FETCH_ASSOC)) {
      echo "<tr>";
      echo "<td>" . $row['id_livre'] . "</td>";
      echo "<td>" . $row['titre_livre'] . "</td>";
      echo "<td>" . $row['auteur_livre'] . "</td>";
      echo "<td>" . $row['page_livre'] . "</td>";
      echo "<td>" . $row['exemplaire_livre'] . "</td>";
      echo "</tr>";
    }

    echo "</table>";

    ?>
  </section>
  <!-- exercice 2. code PHP/MYQSL permettant de gerer une bibliotheque -->
  <section>
    <h3>- Gestionnaire de bibliotheque -</h3>
    <form action="" method="post">

      <label for="id">ID: </label>
      <input type="number" name="id" required><br>

      <label for="titre">TITRE: </label>
      <input type="text" name="titre"> <br>

      <label for="auteur">AUTEUR: </label>
      <input type="text" name="auteur"><br>

      <label for="page">PAGES: </label>
      <input type="text" name="page"><br>

      <label for="exemplaire">EXEMPLAIRE: </label>
      <input type="number" name="exemplaire"><br>

      <input type="submit" value="INSERER">

    </form>

    <br>
    <h5>Code SQL de la creation du BD bibliotheque</h5>
    <textarea cols="100" rows="10">
      CREATE DATABASE cntemad
      DEFAULT CHARACTER SET utf8
      DEFAULT COLLATE utf8_general_ci;

      USE cntemad
      CREATE TABLE t_livres 
      (
        id_livre INT(4) NOT NULL AUTO_INCREMENT,
        titre_livre VARCHAR(50) NOT NULL,
        auteur_livre VARCHAR(50) NOT NULL,  
        page_livre SMALLINT NOT NULL,
        exemplaire_livre SMALLINT NOT NULL,

        PRIMARY KEY (id_livre)
      )ENGINE=innodb CHARSET utf8;
    </textarea>
    <br>

    <?php
    session_start();
    //importer le fichier qui permet d'acceder a la BD et d'effectuer des requete SQL
    require_once "query.php";

    if (isset($_POST['id']) && isset($_POST['titre']) && isset($_POST['auteur']) && isset($_POST['page']) && isset($_POST['exemplaire'])) {
      $id = $_POST['id'];
      $titre = $_POST['titre'];
      $auteur = $_POST['auteur'];
      $page = $_POST['page'];
      $exemplaire = $_POST['exemplaire'];

      $sql1 = "INSERT INTO `$database`.`t_livres` (`id_livre`, `titre_livre`, `auteur_livre`, `page_livre`, `exemplaire_livre`) VALUES ('$id', '$titre', '$auteur', '$page', '$exemplaire');";

      $result = getQuery($sql1, $conn);
      checkQuery($result);
    }
    ?>
  </section>
</body>

</html>