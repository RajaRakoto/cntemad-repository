#include <stdio.h>

int main (int argc,char const *argv[],char **envp){

//----------------------------------
/* VARIABLES */

int i;				//Corr: Ces variables dervraient être des variables globales.
int *pti;
int ti[10];

//----------------------------------

//Ecriture adresse de l'entier
printf("Adresse de l'entier: %d\n",&i);

//Affectation de la valeur 1 à l'entier
i = 1;

//Ecriture de la valeur de l'entier + 1
printf("Valeur de l'entier + 1: %d\n, &i + 1); //Corr: printf("Valeur de l'entier + 1: %d\n, i + 1); 

//Ecriture de la valeur de l'entier
printf("Valeur de l'entier: %d\n, &i); //Corr: printf("Valeur de l'entier: %d\n, i); 

//Affectation du tableau de la valeur 1,2,3 et 4
ti[10] = {1,2,3,4};	//Ou: ti[0]=1; ti[1]=2; ti[2]=3; ti[3]=4

//Affectation de la valeur correspondant a l'adresse de debut du tableau au pointeur
pti = ti; //Ou: pti = ti[0];
 

//Less: POST INCREMENTATION = pti++; ou pti = pti + 1;


//Ecriture du contenu du *pti et son increment
printf("Contenu du pointeur: %d\n",*pti); //Corr: printf("Contenu du pointeur: %d\n",pti); 
printf("Son increment: %d\n",++*pti); //Corr: printf("Son increment: %d\n",pti++); ou printf("Son increment: %d\n",pti + 1); 

//Less: pointeur = pti (tt simplement) mais objets pointés par le pointeur = *pti

//Ecriture du contenu du entier pointé par le pointeur et son increment
printf("Entier pointe: %d\n",&i); //Corr: printf("Entier pointe: %d\n",*pti); 
printf("Son icrement: %d\n",&++i); //Corr: printf("Son increment: %d\n",*pti++);

//Ecriture de la taille de l'entier, du pointeur et du tableau
printf("Taille: %d\n",sizeof(i,*pti,ti[10]); 
//----------------------------------
//Corr: il faut les separés un par un (unité en octet)
printf("Taille de l'entier: %d octets \n", sizeof(i));
printf("Taille du pointeur: %d octets \n", sizeof(pti));
printf("Taille du tableau: %d octets \n", sizeof(ti));
//----------------------------------

//less: La negation d'un objet et toujours precedé de la symbole "!"

//Ecriture de la negation de ce qui est pointé par le pointeur
printf("La negation de ce qui est pointe par le pointeur: %d\n",&~i); //Corr: printf("La negation de ce qui est pointe par le pointeur: %d\n", !*pti);

printf("\n");
getchar();
return(0);
}