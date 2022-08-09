#!/bin/bash

### Ecrire un programme qui permet de gerer les notes des etudiants et lister ces etudiants par ordre de merite

###FUNCTION
input() {
echo "";
read -p "Entrer le nom de l'etudiant: " nom;
read -p "Entrer le prenom de l'etudiant: " prenom;
read -p "Entrer l'age de l'etudiant: " age;
read -p "Entrer le niveau de l'etudiant: " niveau;
read -p "Note 'francais': " francais;
read -p "Note 'anglais': " anglais;
read -p "Note 'maths': " maths;
}

moyenne() {
total=`expr $francais + $anglais + $maths`;
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
Niveau: $niveau
----------------------
      ~ NOTES ~
francais: $francais
anglais: $anglais
maths: $maths
=> MOYENNE: $moyenne
=====================================
" > "$moyenne-$nom-$prenom.elv" #pas d'espace
echo '' > "list_eleves.txt" #renouvellement de la liste des eleves
#generate list | trie (-r inverse le trie)
for temp in `ls *.elv | sort -r`; do
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
################################################################
#### GESTION NOTES ETUDIANT(ordre de merite) - script shell ####
################################################################
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
echo "Entrer ivalide !";;
esac
done

