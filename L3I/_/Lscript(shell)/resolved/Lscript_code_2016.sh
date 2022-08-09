#!/bin/bash

### Avec shell ecrire un programme en interaction avec l'utilisateur pour faire entrer les informations suivantes : nom, prenom, date de naissance, adresse. Ensuite le script fait apparaitre l'Age de la personne.

###TITLE
echo "
####################################################
#### AGE selon date de naissance - script shell ####
####################################################
"

###FUNCTION
input() {
    read -p "Entrer un nom: " nom;
    read -p "Entrer un prenom: " prenom;
    read -p "Date de naissance (jj mm aaaa): " date_naissance;
    read -p "Entrer un adresse: " adresse;

#on transforme la date de naissance sous forme de tableau pour extraire l'annee de naissance de la personne
array=( $date_naissance );
array_length=${#array[@]};
last_index=`expr $array_length - 1`; #retourne le dernier index du tableau
annee_naissance=${array[$last_index]}; #recuperation annee de naissance
}

calculAge() {
    input;
    date_actu=`date '+%Y'`;
    age=`expr $date_actu - $annee_naissance`;
    echo -e "\n=> $nom $prenom est agE de $age ans";
}

calculAge;
