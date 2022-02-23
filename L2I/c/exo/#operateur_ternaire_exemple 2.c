#include <stdio.h>

int main (int argc,char const *argv[],char **envp){

/* VARIABLES */
int a;

/* VALEUR ABSOLUE DE a AVEC ? */
printf("Programme permettant d'afficher la valeur absolue de l'entier a\n");
printf("\nEntrer l'entier a = ");
scanf("%d", &a);
printf("\nLa valeur absolue de a est %d\n", (a < 0) ? -a : a); //Si a est negatif, alors afficher la valeur de a * -1. Sinon, afficher la valeur de a.

printf("\n");
getchar();
return(0);
}
