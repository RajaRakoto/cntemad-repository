
<?php
//fonction permettant de demander a l'utilisateur de repondre a une question en utilisant la boucle while

function question($phrasing)
{
    while (true) {
        //utilisation du while
        $response = readline($phrasing . " (o)ui/(n)on ?");
        if ($response === "o") {
            return true; //si la reponse est oui en tapant 'o'
        } elseif ($response === "n") {
            return false; //si la reponse est non en tapant 'n'
        }
    }
}

$result = question("Voulez-vous continuer");
if ($result === true) {
    echo "Suite du programme ...";
} else {
    echo "A bientot !";
    exit();
}

?>

