<?php
/* GENERATEUR DE STLYE CSS */
//label + input + textarea
$label1_style = "display:inline-block; float: left; width:160px; font-weight: bold; margin-right: 30px";
$label2_style = "display:inline-block; float: left; width:160px; font-weight: bold";
$input_style = "width: 453px;";
$textarea_style = "display:inline-block; vertical-align: top; margin-left: 30px";
//container
$container1 = "border-width: 7px; border-style: solid; border-color: black; padding: 6px; margin-right: 1000px"; //all
$container2 = "border-width: 2px; border-style: solid; border-color: black; padding: 6px; text-align: center; font-weight: bold"; //title
$container3 = "border-width: 2px; border-style: solid; border-color: black; padding: 6px; margin-top: 6px"; //form
?>

<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Poster un commentaire</title>
</head>

<body>
  <div style="<?php echo $container1 ?>">

    <div style="<?php echo $container2 ?>">
      Poster un commentaire
    </div>

    <div style="<?php echo $container3 ?>">
      <form action="./target.php" method="post">

        <label style="<?php echo $label1_style ?>" for="name">Nom: </label>
        <input style="<?php echo $input_style ?>" type="text" name="name" require><br><br>

        <label style="<?php echo $label1_style ?>" for="title">Titre: </label>
        <input style="<?php echo $input_style ?>" type="text" name="title" require><br><br>

        <label style="<?php echo $label1_style ?>" for="comment">Commentaires: </label>
        <textarea name="comment" id="comment" cols="60" rows="10" require></textarea>

        <div align="center">
          <br><br>
          <input style="background-color: #444; color: white" type="submit" value="Poster un commentaire">
          <br><br>
          <h3>Examen LPI CNTEMAD</h3>
        </div>

      </form>
    </div>

  </div>

</body>

</html>