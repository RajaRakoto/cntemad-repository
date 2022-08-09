#include <stdio.h>

/*VARIABLES GLOBAL*/
int i = 10;
char tab_c[9] = "bonjour"; //corr: même si l'adresse du 1er element est 0, un tableau de 10 caracteres est toujours char tab_c[10]; 

char *pt_c = tab_c[&0]; //corr: Le sujet ne mentionne pas que c'est une var global donc local

int main (int argc, char *argv[], char **envp){

//corr: char *pt_c = &tab_c[0]; ou tout simplement char *pt_c = tab_c;

*pt_c = &i; //corr: une fois le pointeur est definit avec le symbole *, il suffit juste d'ecrire son nom pour une operation d'affectation, pt_c = (char*) &i; (char*) est une expression pour convertir la variable qui suit.

pt_c = tab_c; //On n'a plus besoin de convertir tab_c puisque c'est déjà compatible avec pt_c (même type).

printf ("%s \n", tab_c);
printf ("%s \n", pt_c);

printf("\n");
getchar();
return (0);

}