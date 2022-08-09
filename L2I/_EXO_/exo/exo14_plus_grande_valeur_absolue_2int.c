#include <stdio.h>

int main(int argc,char const *argv[],char **envp){

/* VARIABLES */
int i,j,res_i;
char res_c; //On n'est pas obligé de créer un nv. variable comme "res_*" pour afficher le résultat, il suffit de mettre l'operation entière dans l'instruction printf

puts("--- PLUS GRANDE VALEUR ABSOLUE ENTRE i et j ---\n");

/* SAISIE de i et j */
printf("Entrer l'entier i: ");
scanf("%d", &i);

printf("Entrer l'entier j: ");
scanf("%d", &j);

//La plus grande valeur absolue entre i et j

/* OPERATION TERNAIRE sur i et j */

puts("\n");
puts("[AVEC ?] :\n");

//res = |i|<|j| ? i : j;
//Corr:
res_c = ((i<0) ? -i : i) > ((j<0) ? -j : j) ? 'i' : 'j';
printf("\nCelui qui possede la plus grande valeur absolue entre i = %d et j = %d est %c\n", i, j, res_c);
res_i = ((i>0) ? i : -i) < ((j>0) ? j : -j) ? j : i;
printf("Dont la valeur est %d", res_i);

/* OPERATION AVEC IF sur i et j */

puts("\n");
puts("\n[AVEC If] :\n");

int k;

if ((i<0) && (j<0)) {
        if (i<j) printf("val abs = i = %d", i);
        else printf("val abs = j = %d", j);
};
if ((i<0) && (j>0)){
        k = -i;
        if (k<j) printf("val abs = j = %d", j);
        else printf("val abs = i = %d", i);
};
if ((i>0) && (j<0)){
        k = -j;
        if (k<i) printf("val abs = i = %d", i);
        else printf("val abs = j = %d", j);
};
if ((i>0) && (j>0)){
        if (i>j) printf("val abs = i = %d", i);
        else printf("val abs = j = %d", j);
};

printf("\n");
getchar();
return(0);
}
