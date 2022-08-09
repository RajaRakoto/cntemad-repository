#include <stdio.h>

int main (int argc,char const *argv[],char **envp){

/* VARIABLES */
int i = 1, j = 2;

/* OPERATIONS LOGIQUES sur i et j */
printf("i == j = %d\n", i == j); //Less: == et != ne sont pas des operateurs logiques.
printf("i != j = %d\n", i != j);
  
printf("\n");

//Less: mieux vaut écrire le résultat en hexadecimal pour une operation logique

printf("i & j = %x\n", i & j); //ET
printf("i && j = %x\n", i && j); //ET logique
printf("i | j = %x\n", i | j); //OU
printf("i || j = %x\n", i || j); //OU logique
printf("i ^ j = %x\n", i ^ j); //OU exclusif
printf(" ~i = %x\n", ~i); //Complement à 1
printf(" ~j = %x\n", ~j); 
printf(" !i = %x\n", !i); //Negation
printf(" !j = %x\n", !j);



printf("\n");
getchar();
return(0);

}
