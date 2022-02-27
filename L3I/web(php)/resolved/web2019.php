<!DOCTYPE html>
<html lang="">

<head>
  <meta charset="utf-8">
  <title>web2019</title>
  <link rel="stylesheet" href="./style.css">
</head>

<body>
  <section>
    <h3>- CALCUL FACTORIELLE -</h3>
    <form action="" method="post">
      <label for="number">Nombre: </label>
      <input type="number" name="number">
      <br>
      <input type="submit" value="Calculer">
    </form>
    <?php
    session_start();
    if (isset($_POST['number'])) {
      $number = $_POST['number'];

      $temp = $number - 1;
      $fact = $number;

      while ($temp > 1) {
        $fact = $fact * $temp;
        $temp--;
      }
      echo "<br>Factorielle de $number est $fact";
    }
    ?>
  </section>
  <section>
    <h3>INTERPRETATION DU CODE PHP</h3>
    <div align="center">
      <textarea name="" id="" cols="100" rows="10">

      - ligne 2: definir la couleur de l'arriere-plan en '#00ffff'
      
      - ligne 3: utilisation de la methode 'post' pour la formulaire 
      
      - ligne 4: zone de saisi pour le nombre de ligne "l"
      
      - ligne 5: zone de saisi pour le nombre de colonne "c"
      
      - ligne 6: bouton de validation pour generer le tableau
      
      - ligne 8: injection du code PHP 
      
      - ligne 9: verifier l'existence de la valeur $_POST['l'] et $_POST['c'] par la fonction isset() 
      
      - ligne 10: stockage de la valeur $_POST['l'] dans la variable $l
      
      - ligne 11: stockage de la valeur $_POST['c'] dans la variable $c 
      
      - ligne 12: generation d'un tableau de bordure 5pixel et d'une taille qui occupe 75% de l'ecran 
      
      - ligne 13: generation des lignes en utilisant la boucle for allant de $b=1 jusqu'a la valeur du nombre de ligne $l avec un saut de 1 a chaque iteration 
      
      - ligne 15: a l'interieur de la 1ere boucle, on genere egalement les colonnes en effectuant une boucle for allant de $a=1 jusqu'a la valeur du nombre de colonne $c avec un saut de 1 a chaque iteration 
      
      - ligne 16: la valeur de chaque colonne varie selon la condition if (($a+$b)%2 == 0) qui test si la somme de $a et $b donne un nombre pair ou impair
      
      - ligne 17: dans le cas ou le resulat est pair, on applique la couleur #ddffdd comme l'arriere-plan de la colonne, avec une espace blanc &nbsp
      
      - ligne 19: dans le cas contraire on applique l'autre couleur qui est #220022, avec une espace blanc &nbsp
    </textarea>
      <br>
      <strong>CONCLUSION: Ce code PHP permet de generer un tableau de l'apparence d'un echiquier dont la ligne/colonne varie selon le nombre en entrE par l'utilisateur</strong>
    </div>
  </section>
</body>

</html>