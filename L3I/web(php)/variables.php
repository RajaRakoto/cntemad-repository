 <?php
 ///----------- VARIABLE DYNAMIQUE
 $var = "hello";
 $hello = "Coucou";
 echo ${$var}; //donne coucou

 //----------- POINTEUR
 $original = 457450;
 $pirate = &$original; //affecter la reference memoire de la variable $original mais pas sa valeur dans $pirate => NOTE: $original varie selon $pirate et $pirate varie selon $original

 //CONCLUSION --> $original et $pirate sont 2 variables qui partage la meme valeur car ils ont la meme ref memoire (effet pointeur)

 print $original; //varie selon $pirate
 print $pirate; //varie selon $original

 //----------- VARIABLES COMPOSEES
 //listes
 $liste = ["rouge", "bleu", "vert"];
 //tableaux associatifs a 2D
 $array2D = [nom => "Rakoto", age => 14];
 //tableaux associatifs multidimensionnels
 $arrayMulti = [
     [id => 1, matiere => "mathematiques", note => 15],
     [id => 2, matiere => "geographie", note => 12],
     [id => 3, matiere => "chimie", note => 10],
 ];

 //----------- CAST & TYPE
 //vers une chaine
 $entier = 10;
 $cast_entier = strval($entier);
 echo gettype($cast_entier); //integer
 $chaine = "hello";
 $cast_chaine = intval($chaine);
 echo gettype($cast_chaine); //string
 //NOTE -> on peut modifier le type d'une variable par la fonction settype($variable), ou tester le type d'une variable par is_int($variable) & is_string($variable) qui retournent une valeur booleen(true/false) si le type de la variable en argument correspond au test effectuE

 //----------- CONSTANTE
 define("site", "https://www.mon-site.mg"); //la valeur de la variable "site" ne changera jamais

 //----------- TEST
 //isset: permet de tester l'existence d'une variable dans la memoire
 isset($variable); //retourne TRUE si la variable existe
 //unset: libere la place memoire reservEe a la variable en argument
 unset($variable);
 //empty: renvoie TRUE si la variable en argument n'est pas definie
 empty($variable);

?>

