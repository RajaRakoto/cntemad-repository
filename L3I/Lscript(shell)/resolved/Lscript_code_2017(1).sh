#!/bin/bash

### Ecrire un programme en interaction avec l'utilisateur pour les notes des etudiants en informatique et calcul la moyenne.

###TITLE
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



