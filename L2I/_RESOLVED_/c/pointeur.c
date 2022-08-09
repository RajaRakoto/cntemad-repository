#include <stdio.h>

/*
	~ NOTES ~
#Affichage d'une adresse
	printf("&nbrA = %p\n", &nbrA); => output : 0x7ffd5c904f90 (valeur dynamic)
	printf("&nbrB = %p\n", &nbrB); => output : 0x7ffd5c904f94 (valeur dynamic)
#Affichage d'un pointeur
	printf("pt_nbrA = %d\n", *pt_nbrA); => output : 30
	printf("pt_nbrB = %f\n", *pt_nbrB); => output : 15.8
#Passage par adresse 

#Notation
	monPointeur  : adresse de la variable pointee
	*monPointeur : valeur de la variable pointee
	&monPointeur : adresse du pointeur 
*/


/* fonction */
//METHODE 1 : passage par adresse 
 void sub0(int *pt_nbrA, int *pt_nbrB)
 {
 	int temp = *pt_nbrA;
 		*pt_nbrA = *pt_nbrB;
 		*pt_nbrB = temp;
 }
//METHODE 2 : passage par adresse 
 void sub1(int *pt_nbrA, int *pt_nbrB)
 {
 	int temp = *pt_nbrA;
 		*pt_nbrA = *pt_nbrB;
 		*pt_nbrB = temp;
 }

int main (){

//variables
	int nbrA = 30, nbrB = 60;
	float nbrC = 15.8;

//pointeur (METHODE 1)
	int *pt_nbrA = &nbrA;
	int *pt_nbrB = &nbrB;
	float *pt_nbrC = &nbrC;

//affichage pointeur (AVANT)
	printf("pt_nbrA = %d\n", *pt_nbrA); 
	printf("pt_nbrB = %d\n", *pt_nbrB); 
	printf("pt_nbrC = %f\n\n", *pt_nbrC); 

/*
//affichage adresse 
	printf("&nbrA = %p\n", &nbrA); 
	printf("&nbrB = %p\n", &nbrB); 
	printf("&nbrC = %p\n\n", &nbrC); 
*/

//appel d'une fonction (METHODE 1)
	sub0(pt_nbrA, pt_nbrB);

//affichage pointeur (APRES M1)
	printf("pt_nbrA = %d\n", *pt_nbrA); 
	printf("pt_nbrB = %d\n", *pt_nbrB); 
	printf("pt_nbrC = %f\n\n", *pt_nbrC); 

//appel d'une fonction (METHODE 2)
	sub1(&pt_nbrA, &pt_nbrB);

//affichage pointeur (APRES M2)
	printf("pt_nbrA = %d\n", *pt_nbrA); 
	printf("pt_nbrB = %d\n", *pt_nbrB); 
	printf("pt_nbrC = %f\n\n", *pt_nbrC); 


return 0;
}