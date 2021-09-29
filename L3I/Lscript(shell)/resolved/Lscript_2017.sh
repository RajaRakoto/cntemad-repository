#!/bin/bash

#1) qu'affiche la commande avec l'expression regulier "*" ?
=> Le symbole * est appelé joker, ou encore wildcard en anglais sous Linux. Ce dernier peut etre traduit par "tout", on peut s'en servir pour manipuler une ensemble de fichier ou repertoire utilisE comme argument d'une commande. Autrement dit, une expression reguliere permet a l'utilisateur de dire a l'ordinateur tres precisement ce qu'il souhaitait faire comme operation.

#2) que signifie "\n" et "\t" dans un script
=> "\n" signifie retour chariot (un retour a la ligne) quand on utilise l'instruction echo avec le parametre -e
=> "\t" signifie une tabulation (espacement) lors de l'utilisation de l'instruction echo avec le parametre -e

#3) dans quel dossier se trouve la planification de tache et comment ?
=> La planification des taches se trouve dans le dossier de configuration "/etc/". En utilisant la commande "contab" avec l'option -e, -l et -r, on peut lire, ecrire ou supprimer des taches dans un fichier appelé "crontab", ce fichier contient la liste des programmes que l'utilisateur souhaitait executer regulierement en fonction du temps d'execution specifiE. Un processus demon (qui s'execute en arriere plan) se charge d'executer les programmes qui se trouvent dans le fichier crontab.


#### Ecrire un programme en interaction avec l'utilisateur pour les notes des etudiants en informatique et calcul la moyenne.

#TITLE
echo "
#######################################
#### CALCUL MOYENNE - script shell ####
#######################################
"

###FUNCTION
moyenneCalc() {

   while [ $input -le $count ]; do
    #input table
    read -p "Entrer le note $input: " note[$input];
    ((input++));
   done

   #output notes
   # for (( i = 1; i <= count; i++ )); do
   # 	echo "note $i: ${note[i]}";
   # done

   #sum notes
   stock=0;

   for (( j = 1; j <= count; j++ )); do
   	sum_note=`expr ${note[j]} + $stock`;
   	stock=$sum_note;
   done

   #denom
   div=`expr ${#note[@]} - 1`;

   #moyenne calcul
   moy=`expr $sum_note / $div`;

   #output moyenne
   echo -e "\n=> moyenne = $moy";
}

###INPUT (default value)
count=0; #max input
input=1; #min input
note[0]=0; #notes (table)
 
#input note number
read -p "Entrer le nombre de note a saisir: " count;

#call function
moyenneCalc;



