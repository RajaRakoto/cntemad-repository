#!/bin/bash

### Ecrire un programme en iteraction avec l'utilisateur pour gerer les etudiants en informatique et affiche par ordre alphabetique

###FUNCTION
input() {
echo "";
read -p "Entrer le nom de l'etudiant: " nom;
read -p "Entrer le prenom de l'etudiant: " prenom;
read -p "Entrer l'age de l'etudiant: " age;
filiere="Informatique";
read -p "Entrer le niveau de l'etudiant: " niveau;
read -p "Note 'techweb': " techweb;
read -p "Note 'base de donnees': " bd;
read -p "Note 'programmation': " prog;
}

moyenne() {
total=`expr $techweb + $bd + $prog`;
moyenne=`expr $total / 3`;
}

list() {
echo -e "\n~ Liste des etudiants (TRIE) ~";
cd data_eleves && cat list_eleves.txt;
cd ..;
}

generator() {
#generate folders for data
mkdir -p data_eleves && cd data_eleves;
#generate data file "<etudiant_name>.elv"
echo "=====================================
Nom: $nom
Prenom: $prenom
Age: $age
Filiere: $filiere
Niveau: $niveau
----------------------
      ~ NOTES ~
techweb: $techweb
base de donnees: $bd
programmation: $prog
=> MOYENNE: $moyenne
=====================================
" > "$nom-$prenom.elv" #pas d'espace
echo '' > "list_eleves.txt" #renouvellement de la liste des eleves
#generate list | trie
for temp in `ls *.elv | sort`; do
    cat $temp >> "list_eleves.txt";
done
cd ..;
}

main() {
###INPUT
input;

###CALL
moyenne;
generator;
}


while [ true ]; do

###TITLE
echo "
#############################################################
#### GESTION ETUDIANT(ordre alphabetique) - script shell ####
#############################################################
"

### MENU
echo -e "
1. Entrer un nouveau etudiant
2. Lister les etudiants existants
3. Pour quitter le script
";
read -p "[INPUT> " input;

case $input in
1)
main;
;;
2)
list;
;;
3)
echo "Merci d'utiliser ce script";
break;
;;
"exit")
echo "Merci d'utiliser ce script";
break;
;;
*)
echo "Enter ivalide !";;
esac
done

