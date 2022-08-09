<?php
$file = "my_file.txt";
//si le fichier n'existe pas
if (!file_exists($file)) {
    touch($file);
    echo "\nCreation du fichier $file avec success";
}

//test si l'element recement crEe est bien un fichier avec du droit en ecriture
if (is_file($file) && is_writable($file)) {
    //ouverture et creation du pointeur du fichier
    $pointer = fopen($file, "w");
    echo "\nOuverture du fichier $file avec success !";
} else {
    echo "\nErreur de l'ouverture du fichier $file";
    echo "\nVerifiez bien que vous avez le droit d'ecriture sur le fichier et que le fichier $file existe";
}

//ecriture dans le fichier
fwrite($pointer, "Ceci est la 1er ligne");
fwrite($pointer, "\nCeci est la 2e ligne");
echo "\nEcriture dans le fichier avec success !";

//lecture dans le fichier
$counter = 1;
$pointer = fopen($file, "r"); //ouverture du fichier en "readable"
while ($line = fgets($pointer, 512)) {
    //la boucle continue d'executer tantque $line retourne true (contient des chaines de caracteres)
    echo "\n[ligne:" . $counter . "]: " . $line;
    $counter++;
    $flag = true;
}

if ($flag) {
    //indique que la lecture de fichier ete avec success
    echo "\nLecture de fichier avec success !";
}

//liberation de l'espace memoire
fclose($pointer);
?>

