<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Equation du second degrE</title>
  <link rel="stylesheet" href="styles.css">
</head>

<body>
  <div class="container1">
    <section class="container2">
      <h1>~ CALCUL EQUATION DU SECOND DEGRE ~</h1>
      <form action="" method="POST">

        <label>Entrer l'équation à résoudre (a, b et c) : </label>
        <br><br>
        <span>
          <input name="a" type="number" size="3" maxlength="10" style="display:inline"> x<sup>2</sup> +
          <input name="b" type="number" size="3" maxlength="10" style="display:inline"> x +
          <input name="c" type="number" size="3" maxlength="10" style="display:inline"> = 0<br>
        </span>
        <br><br>
        <input type="submit" value="Calculer les solutions">
        <br><br>

      </form>
    </section>
    <section class="container3">
      <h3>- OUTPUT -</h3>
      <center>
        <?php
        if (isset($_POST["a"]) && isset($_POST["b"]) && isset($_POST["c"])) { //verification si les champs a, b et c sont diff de NULL
          $a = $_POST["a"];
          $b = $_POST["b"];
          $c = $_POST["c"];
          //calcul de delta 
          $delta = (pow($b, 2) - 4 * $a * $c);
          echo "<span class='delta'><br>Delta => (b*b) - 4ac = " . $b * $b . " - 4*" . $a . "*" . $c . " = " . $delta . "</span>";
          //solutions
          if ($delta < 0) {
            echo "<br><br>SOLUTION(null) => <span class='result'>Pas de solution</span>";
          }
          if ($delta == 0) {
            $x = -$b / (2 * $a);
            echo "<br><br>SOLUTION(X) => -b/2a = -" . $b . "/" . 2 * $a . " | <span class='result'>X = " . $x . "</span>";
          }
          if ($delta > 0) {
            $x = -$b - (sqrt($delta)) / (2 * $a);
            $y = -$b + (sqrt($delta)) / (2 * $a);
            echo "<br><br>SOLUTION(X) => -b-raccineCarrE(delta)/2a = -" . $b . "-" . (sqrt($delta)) . "/" . (2 * $a) . " | <span class='result'>X = " . $x . "</span>";
            echo "<br><br>SOLUTION(Y) => -b+raccineCarrE(delta)/2a = -" . $b . "+" . (sqrt($delta)) . "/" . (2 * $a) . " | <span class='result'>Y = " . $y . "</span>";
          }
        }
        ?>
      </center>
    </section>
  </div>
</body>

</html>