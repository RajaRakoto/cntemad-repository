#include <stdio.h>

int main (int argc,char const *argv[],char **envp){

	/* VARIABLES */
int i, j, k = 12, l = 8;

	/* OPERATION */
printf("Entrer la valeur de i: ");
scanf("%d",&i);
printf("Entrer la valeur de j: ");
scanf("%d",&j);

printf("\n resultat: %d\n", (!i ? k : (!j ? i+l : i+j)));

	/* NON LOGIQUE */

//Less: si i ou j sont non nul (different de 0 ou vraie) alors le non-logique est 0 sinon 1.

printf("\nLe NON-LOGIQUE de i et j:\n");
printf("!i = %d\n", !i);
printf("!j = %d\n", !j);

printf("\n");
getchar();
return(0);

}
