<?php

//TABLEAU 2D
$etudiants1 = [
    "prenom" => "rabe",
    "niveau" => "M1",
    "filiere" => "commerce",
];

foreach ($etudiants1 as $key => $value) {
    echo $key . ":" . $value . "\n";
}

/*
	- OUTPUT -
	prenom:rabe
	niveau:M1
	filiere:commerce
*/

echo "\n\n----------------\n\n";

//TABLEAU MULTIDIMENSIONNEL
$etudiants2 = [
    ["prenom" => "rasoa", "niveau" => "M2", "filiere" => "gestion"],
    ["prenom" => "rakoto", "niveau" => "L3", "filiere" => "informatique"],
];

foreach ($etudiants2 as $array) {
    //recuperer chaque sous array de $etudiants2 et le stock dans $value
    foreach ($array as $key => $value) {
        //parcourir le sous array dans $value et recupere le cle/valeur ($key => $value)
        echo $key . ":" . $value . "\n"; //affichage
    }
    echo "\n";
}

/*
	- OUTPUT -
	prenom:rasoa
	niveau:M2
	filiere:gestion

	prenom:rakoto
	niveau:L3
	filiere:informatique
*/

?>

