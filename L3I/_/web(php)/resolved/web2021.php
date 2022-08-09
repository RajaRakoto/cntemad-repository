<!DOCTYPE HTML>
<html lang="fr">

<head>
    <meta charset="utf-8">
    <title>web2021</title>
    <link rel="stylesheet" href="./style.css">
</head>

<body>

    <!-- question 1. Eq du 2nd degrE-->
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
    </section <!-- question 2. Code php qui permet d afficher les livres dans la base -->
    <section>
        <h3>- Listes des livres dans la base de donnees -</h3>

        <?php
        session_start(); //demarrer une session
        //importer le fichier qui permet d'acceder a la BD et d'effectuer des requete SQL
        require_once "query.php";

        $sql = "SELECT * FROM `$database`.`t_livres`";
        $result = getQuery($sql, $conn);
        checkQuery($result);

        echo "
			<table>
				<tr>
				<th>ID</th>
				<th>TITRES</th>
				<th>AUTEURS</th>
				<th>PAGES</th>
				<th>EXEMPLAIRES</th>
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


    <!-- question 5. Donner un exemple de page HTML utilisant le boucle WHILE -->

    <section>

        <h3> - Exemple de code utilisant WHILE - </h3>

        <form method="post" action="">
            <label for="number" min="0" required>Nombre: </label>
            <input type=number name="number">
            <input type="submit" value="Afficher">
        </form>

        <?php
        //un programme permettant d'affichier le nombre pair du 0 jusqu'au nombre max entrE par l'utilisateur en utilisant WHILE
        if (isset($_POST["number"])) {
            $max = $_POST["number"];
            $counter = 0;

            echo "<strong>Liste des nombres pair jusqu'a $max:</strong> ";
            while ($counter < $max) {
                if ($counter % 2 == 0) {
                    echo $counter . " ";
                }
                $counter++;
            }
        }
        ?>

    </section>

    <!-- 6. Donner un exemple de page HTML contenant du code PHP en expliquant la partie du code PHP -->

    <section>

        <h3> - Exemple de code php avec explication (en commentaire) - </h3>

        <form method="post" action="">
            <label for="object">Veuillez choissir un objet: </label>
            <select name="object">
                <option value="poire">poire
                <option>
                <option value="oignon">oignon
                <option>
                <option value="tomate">tomate
                <option>
                <option value="fraise">fraise
                <option>
                <option value="pomme de terre">pomme de terre
                <option>
                <option value="pomme">pomme
                <option>
                <option value="peche">peche
                <option>
                <option value="chou-fleur">chou-fleur
                <option>
                <option value="brocoli">brocoli
                <option>
                <option value="salade">salade
                <option>
                <option value="courgette">courgette
                <option>
            </select>
            <input type="submit" value="Savoir">
        </form>

        <?php
        //un programme permettant de savoir si l'objet choissi par un utilisateur est un fruit ou un legume
        if (isset($_POST["object"])) {
            $object = $_POST["object"];

            //une fonction de test qui retourne un type fruit si l'objet entrE en argument est un fruit sinon elle retourne un type legume
            function checkTypeOfObject($object)
            {
                //si l'objet en entrE est vide, la fonction retourne une valeur null
                if ($object == '') {
                    return null;
                }
                //listes des fruits
                $fruits_list = array(
                    "fraise",
                    "pomme",
                    "peche",
                    "poire",
                    "tomate"
                );
                $fruits_total = count($fruits_list); //total = 5
                for ($i = 0; $i < $fruits_total; $i++) {
                    if ($object == $fruits_list[$i]) {
                        $type = "fruit";
                        break;
                    } else {
                        $type = "legume"; //pas de break

                    }
                }

                return $type;
            }

            if (checkTypeOfObject($object) != null) { //si la valeur retournEe par le test n'est pas null, on affiche le type de l'objet (fruit ou legume)
                echo "<br><strong>'$object'</strong> est un " . checkTypeOfObject($object);
            } else { //sinon on considere que l'objet est de type inconnu
                echo "Object inconnu !";
            }
        }
        ?>

    </section>

</body>

</html>