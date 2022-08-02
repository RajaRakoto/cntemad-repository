#include <stdio.h>

int main (int argc, char const *argv[])

{
	/* Donnee ecrit dans STDIO.H */
int i = 7;
int io = 0777;
int ih = 0XA76F;
float f = 3.14;
char tabc[] = "Hello world !";
double intd = 12345678910111920 ;

int comp_int;

	/*AFFICHAGE DONNEE ECRIT*/
printf ("----------- DONNEE SUR STDIO.H -----------\n ");
printf ("\n Entier = %d",i);
printf (" \n Octal = %o",io);
printf ("\n Hexadecimal = %x ",ih);
printf("\n Float = %f",f);
printf ("\n Char = %s",tabc);
printf ("\n Double = %df \n",intd);

	/* CHANGEMENT DE DONNEE & DONNEE en entree */
printf ("\n ----------- CHANGEMENT DE DONNEE ----------- \n");
printf ("\n Entrer un entier: ");
scanf ("%d",&i);
printf (" Entrer un flottant pointeur decimal: ");
scanf ("%f",&f);
printf (" Entrer un nombre octal: ");
scanf ("%o", &io);
printf (" Entrer un nombre hexadecimal: ");
scanf ("%x", &ih);
printf (" Entrer une chaine de caractere : ");
scanf ("%s", tabc);
printf (" Entrer un entier double: ");
scanf ("%di \n", &intd);

	/* SORTIE DE DONNEE */
printf ("\n----------- SORTIE DE DONNEE -----------\n");
printf ("\n Entier = %d",i);
printf (" \n Octal = %o",io);
printf ("\n Hexadecimal = %x ",ih);
printf("\n Float = %f",f);
printf ("\n Char = %s",tabc);
printf ("\n Double = %df \n",intd);

printf ("\n");
getchar();
return (0);

}
