#include <stdio.h>

int main (int argc,char const *argv[],char **envp){

/* VARIABLES */
int i = 10;

//Less: ON AJOUTE "=" APRES CHAQUE OPERATEURS POUR AVOIR LES RESULTATS INTERMEDIAIRES
//Less: Le "|"(ou) et "^"(ou exclusif) peut se traduire en addition(+) 

/* OPERATIONS sur i */
printf("division par 2 = %d\n", i/=2); //donne 5

printf("addition avec 3 = %d\n", i+=3); //on a i = 5, alors i = i + 3 = 8

printf("multiplication par 2 = %d\n", i*=2); //on a i = 8, alors i = i * 2 = 16

printf("affectaton du reste de sa propre division par 3 = %d\n", i%= 3); //Corr: printf("affectaton du reste de sa propre division par 3 = %d\n", i%= 3); //on a i = 16, alors i = i % 3 = 16 % 3 = 1

printf("ou avec 10 = %d\n", i |= 10); //on a i = 1, alors i = i | 10 = 1 + 10 = 11

printf("decalage de 2bits vers la gauche = %d\n", i <<= 2); //resultat = i = 44

printf("et avec 19 = %d\n", i &= 19); //resultat = i = 0

printf("ou exclusif avec 7 = %d\n", i ^= 7); //on a i = 0, alors i = i + 7 = 0 + 7 = 7

printf("\n");
getchar();
return(0);

}