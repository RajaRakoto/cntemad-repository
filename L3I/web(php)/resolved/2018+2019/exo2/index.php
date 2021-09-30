<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Interpretation</title>
</head>

<!-- couleur du fond = cyan -->

<body bgcolor="#00fff">

  <!-- les donnees de la formulaire se transitent grace a la methode POST et seront traitEs dans la meme page car l'attribut action n'est pas specifiE-->
  <form action="" method="post">
    <!-- entrer d'une valeur de ligne et colonne -->
    nbr lignes <input type="text" name="l"><br>
    nbr colonnes <input type="text" name="c"><br>
    <!-- un bouton qui valide et recupere chaque valeur du champ de la formulaire -->
    <input type="submit" value="tableau"><br><br><br>
  </form>

  <!-- le script php qui permet de generer un tableau en fonction des valeurs (lignes et colonnes) en entrer -->
  <?php

  // determine si les champs (nbr de lignes et nbr de colonnes) de la formulaire n est pas vide grace a la fonction isset()
  if (isset($_POST["l"]) && isset($_POST["c"])) {

    //si il ne sont pas vide, stocker chaque valeur dans les variables correspondantes ($l pour les lignes et $c pour les colonnes) en utilisant $_POST
    $l = $_POST["l"];
    $c = $_POST["c"];

    // generation automatique du tableau
    echo "<table border='5' width='75%'>"; //bordure supperieur de taille 5 et la largeur du tableau occupe 75% de l'ecran
    //Ici on genere un tableau a 2Dimensions (lignes|colonnes)

    /*
    - RAPPEL -
    <tr> </tr>: indique le début et la fin d'une ligne du tableau 
    <td> </td>: indique le début et la fin du contenu d'une cellule.
    */

    for ($b = 1; $l >= $b; $b++) { //la variable $b va servir pour compter le nombre des lignes et la condition de poursuite est qu'une ligne sera creer tant que $b ne correspond pas a la valeur de $l en entrer et que $b est toujouts incrementE de 1
      echo "<tr>";

      for ($a = 1; $c >= $a; $a++) { //la variable $a va servir pour compter les contenus de chaque cellule et la condition de poursuite est qu'un contenu sera creer tant que $a ne correspond pas a la valeur de $c en entrer et que $a est toujours incrementE de 1

        if (($a + $b) % 2 == 0) { //on va tester si le rang de chaque cellule est pair, si c'est le cas, on va mettre un espace insécable grace au mot cle '&nbsp' avec une couleur de fond 'blanc' sinon le contenu sera le meme mais avec une couleur de fond 'noir'

          echo "<td bgcolor='#ddffdd'>&nbsp;</td>";
        } else {
          echo "<td bgcolor='#220022'>&nbsp;</td>";
        }
      }
      echo "</tr>";
    }
    echo "</table>";
  }
  ?>
</body>

</html>