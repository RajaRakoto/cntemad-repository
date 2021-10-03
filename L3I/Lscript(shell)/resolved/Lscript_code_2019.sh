#!/bin/bash

### Ecrire un programme en interaction avec l'utilisateur pour connaitre si un nombre est pair ou impaire et en calculant son factoriel s'il est pair

###TITLE
echo "
###########################################
#### FACTORIEL(si pair) - script shell ####
###########################################
"

###FUNCTION
factoriel() {
    while [ $temp -gt 1 ]; do #tant que $temp > 1
        result=`expr $result \* $temp`;
        ((temp--));
    done
echo "=> Le factoriel de $number est '$result'";
}

pairImpaire() {
    check=`expr $number % 2`;
    if [ $check -eq 0 ]; then
    echo "=> Ce nombre est pair !"
    factoriel;
    else
    echo "=> Ce nombre est impaire !"
    fi
}

###INPUT
read -p "Entrer un nombre: " number;
temp=`expr $number - 1`;
result=$number;

###CALL FUNC
pairImpaire;
