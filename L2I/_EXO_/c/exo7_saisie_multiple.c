#include <stdio.h>

int main (int argc,char const *argv[],char **envp){

	/* VARIABLES */

int i;
char c;
float f;
char cc[];


	/* SAISIE */

//nombre entier
printf("Entrer un entier: \n");
scanf("%d",&i);

//caractere
printf("Entrer un caractere: \n");
scanf("%c,&c);

//nombre reel
printf("Entrer un reel: \n");
scanf("%f",&f);

//chaine de caractere
printf("Entrer une chaine de caractere: \n");
scanf("%s",cc);


printf("\n);
getchar();
return(0);

}