#!/bin/bash

#### Ecrire un programme en iteraction avec l'utilisateur pour gerer les etudiants en informatique et affiche par ordre alphabetique

#TITLE
echo "
#############################################################
#### GESTION ETUDIANT(ordre alphabetique) - script shell ####
#############################################################
"

### ATTRIBUTS DE L'ETUDIANT
#Etudiants (Nom, Prenom, Age, Filiere, Niveau)

###FUNCTION
trieEtudiant() {
    echo "$nom $prenom | Age: $age | Filiere: $filiere | Niveau: $niveau" >> trie;
    cat trie | sort -d > list_Etudiant;
    cat list_Etudiant;
}

###INPUT
read -p "Entrer le nom de l'etudiant: " nom;
read -p "Entrer le prenom de l'etudiant: " prenom;
read -p "Entrer l'age de l'etudiant: " age;
filiere="Informatique";
read -p "Entrer le niveau de l'etudiant: " niveau;

###CALL
echo -e "\n~ Liste des etudiants ~";
trieEtudiant;
