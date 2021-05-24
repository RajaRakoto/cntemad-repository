#include <stdio.h>

int main (int argc,char const *argv[],char **envp){

/* VARIABLES */
int a, b, c;

//Less: L'interet de l'utilisation d'un operateur ternaire est pour eviter l'utilisation de l'instruction de contrôle "IF" pour certain operation.
//Less: Toute les conditions dans une operation ternaire doivent retourné une valeur booléenne, soit vraie (1) soit fausse (0)
//Syntaxe: [var.resultat] = [condition] ? [var1.res.condition=true] : [var2.res.conditon=false]

/* VERIFICATION avec ? */
printf("Programme permettant de calculer le minimum des nombres a et b\n");
printf("Entrer l'entier a = ");
scanf("%d", &a);
printf("Entrer l'entier b = ");
scanf("%d", &b);

	c = a<b ? a : b;

printf("Le minimum est %d\n", c);

/* VERIFICATION avec IF */

	if (a < b) printf("Le minimum est %d\n", a);
	if (b < a) printf("Le minimum est %d\n", b);

printf("\n");
getchar();
return(0);
}
