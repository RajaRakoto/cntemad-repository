<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Calcul factorielle</title>
  <link rel="stylesheet" href="styles.css">
</head>

<body>
  <div class="container1">
    <h1>~ CALCUL DE FACTORIELLE ~</h1>
    <section class="container2">
      <form action="" method="post">
        <label for="number">Entrer un nombre: </label><input type="number" name="number"><br><br>
        <input type="submit" value="CALCULER LE FACTORIELLE"><br><br>
      </form>
    </section>
    <section class="container3">
      <h3>- OUTPUT -</h3>
      <center>
        <?php
        if (isset($_POST["number"])) {
          $number = $_POST["number"]; //recuperer la valeur du champ a caluler (nombre)
          $temp = $number - 1; //diminuer le nombre par 1 (pour la 1ere multiplication)
          $result = $number; //definir la 1ere valeur du resultat
          //calcul de fact
          while ($temp > 1) {
            $result = $result * $temp; //faire la multiplication du dernier valeur de $result avec tout les restes (sauf le '1')
            $temp--; //decrementer la variable temporaire jusqu'a 2
          }
          // //output
          echo "=> Le factorielle de '" . $number . "' est <span class='result'>" . $result . "</span>";
        }
        ?>
      </center>
    </section>
  </div>
</body>

</html>