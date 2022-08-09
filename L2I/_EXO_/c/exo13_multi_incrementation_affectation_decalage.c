#include <stdio.h>

int main(int argc,char const *argv[],char **envp){

/* VARIABLES */
//Corr: Il faut d'abord définir les variables avant de faire une affectation multiple.
int i,j,k,l;

//affecter la valeur 1 à i,j et k
i = j = k = 1; //Corr: i = j = k = 1; (sans le "int");

//ajouter 1 à i de 4 manière différentes
//Less: ++i; = i++; = i += 1; = (i = i + 1);
//Corr:

printf("---- OPERATION SUR i ----\n");

printf("\n1ere solution i++: %d\n", i++); //i = 2 car i++; => i = i + 1 = 1 + 1;
//printf("On a i = %d\n", i);
printf("2e solution ++i: %d\n", ++i); //i = 3
printf("3e solution i = i + 1: %d\n", i = i + 1); //i = 4
printf("4e solution i += 1: %d\n", i += 1); //i = 5

//Ecrire l'expression qui affecte à k le résultat de i + j + 1 et incrémente i et j de 1 (4 solutions)
//Chercher à écrire k = i + j + 1 d'une autre manière;

//Less: a = ++b; IDEM [b = b+1]/<3; a = b;
//Less: a = b++; IDEM [a = b]/<3; b = b+1;

//Corr:

printf("\n---- OPERATION SUR i, j et k ----\n");

k = i++ + j++ + 1; //k = i + j + 1; => i = i; et j = j; (On ajoute 1 manuelement pour obtenir le resulat demandé)
// ou k = i++ + ++j; //k = i + j + 1; => i = i; et j = j + 1; (1 ajouté automatiquement dans j pour obtenir le résulat)
// ou k = ++i + j++; //k = i + j + 1; => i = i; + 1; et j = j; (1 ajouté automatiquement dans i, puisque l'addition est commutative, on obtient toujours le même resultat)
// ou k = ++i + ++j - 1; //k = i + j + 1; => i = i + 1; et j = j + 1; (k = i + 1 + j + 1 - 1;) (1 ajouté dans i et j et on diminue par 1 pour obtenir le même résultat);

//k = ++i + ++j - i; k = 6 + 2 - 1 = 7;

printf("\nvaleur de k: %d\n", k); //k = 7;
printf("valeur de i: %d\n", i); //i = 6;
printf("valeur de j: %d\n", j); //j = 2;

/*
//L'expression de:
//3*i dans i
i *= 3;
//3*i+j dans j
j += 3*i;

//divise k par 2 logiquement
k = k%2;

//division de la nv. valeur de j par k
j = j/k;

//met dans l la puissance de 2 correspondant à la valeur obtenue
l = j^2;
*/

//Corr:

printf("\n---- OPERATION MULTIPLE SUR i, j, k et l  ----\n");

puts("\nOn a l = 0\n");

/* VERIFICATION */
/*
puts("\n-- VERIFICATION --\n");
puts("\nExpression a verifier: l << (j += (i *= 3)) / (k >>= l = 1)\n");
printf("\nj += (i *= 3) donne %d\n", (j += (i *= 3)));
printf("l << (j += (i *= 3)) donne %d\n", l << (j += (i *= 3)));
printf("k >>= l donne %d\n", k >>= l);
printf("k >>= l = 1 donne %d\n", k >>= l = 1);
printf("# l << (j += (i *= 3)) / (k >>= l = 1) donne %d\n",  l << (j += (i *= 3)) / (k >>= l = 1) );
*/


//----------------------------------
l = l << (j += (i *= 3)) / (k >>= l = 1);
//----------------------------------

printf("\nvaleur de i: %d\n", i);
printf("valeur de j: %d\n", j);
printf("valeur de k: %d\n", k);
printf("valeur de l: %d\n", l);

printf("\n---- VALEUR FINALE ----\n");
printf("\ni = %d\n",i);
printf("j = %d\n",j);
printf("k = %d\n",k);
printf("l = %d\n",l);

printf("\n");
getchar();
return(0);

}
