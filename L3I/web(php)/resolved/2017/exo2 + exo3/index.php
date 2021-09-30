<?php
include("./connection.php");
?>

<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Gestion de bibliotheque</title>
  <link rel="stylesheet" href="styles.css">
</head>

<body>
  <!-- EXO 02 -->
  <div class="container1">
    <section class="container2">
      <h1>~ GESTION DE BIBLIOTHEQUE ~</h1>
      <form action="" method="post">
        <label for="title">TITRE: </label><input type="text" name="title"><br><br>
        <label for="author">AUTEUR: </label><input type="text" name="author"><br><br>
        <label for="page">nombre PAGE: </label><input type="number" name="page"><br><br>
        <label for="example">nombre EXEMPLAIRE: </label><input type="number" name="example"><br><br>
        <input type="submit" value="INSERER"><br><br>
      </form>
    </section>
    <section class="container3">
      <h3>- OUTPUT -</h3>
      <?php
      /* TARGET */
      session_start();
      if (isset($_POST["title"]) && isset($_POST["author"]) && isset($_POST["page"]) && isset($_POST["example"])) {
        //stock value
        $title = $_POST["title"];
        $author = $_POST["author"];
        $page = $_POST["page"];
        $example = $_POST["example"];
        //SQL
        $query = "INSERT INTO Biblio (title, author, page, example) VALUES ('$title', '$author', '$page', '$example')";
        $result = $connection->query($query);
        //verification
        echo "<br>";
        if ($result) {
          echo "[query] => SUCCESS !";
        } else {
          echo "[query] => ERROR !";
        }
      }
      ?>
    </section>
  </div>
  <!-- EXO 03 -->
  <div class="container1">
    <section class="container4">
      <center>
        <h1>~ LISTES DES LIVRES ~</h1>
        <?php
        $query = "SELECT * FROM Biblio";
        $result = $connection->query($query);

        echo "
        <table border='1'>
        <tr>
        <th>ID</th>
        <th>Titre</th>
        <th>Autheur</th>
        <th>Nombre de page</th>
        <th>Nombre d'exemplaire</th>
        </tr>
      ";

        while ($row = mysqli_fetch_array($result)) {
          echo "<tr>";
          echo "<td>" . $row['id'] . "</td>";
          echo "<td>" . $row['title'] . "</td>";
          echo "<td>" . $row['author'] . "</td>";
          echo "<td>" . $row['page'] .  "</td>";
          echo "<td>" . $row['example'] . "</td>";
          echo "</tr>";
        }

        echo "</table>";

        ?>
      </center><br>
    </section>
    <section class="container3">
      <h3>- OUTPUT -</h3>
      <?php
      //close
      if ($connection->close()) {
        echo "[close_connection] => SUCCESS !";
      } else {
        echo "[close_connection] => ERROR !";
      }
      ?>
    </section>
  </div>
</body>

</html>