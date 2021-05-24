#include <stdio.h>

int main(int argc,char const *argv[],char **envp){

/* VARIABLES */
int count, tab[10];

puts("--- SAISIE de 10 ENTIERS avec FOR ---\n");
for (count = 0; count < 10; count++){
    printf("Entrer Tab[%d] = ", count);
    scanf("%d",&tab[count]);
};
puts("\n--- AFFICHAGE de 10 ENTIERS avec FOR ---\n");
for (count = 0; count < 10; count++){
    printf("Tab[%d] = %d\n", count, tab[count] );
};

puts("\n==========================\n");

puts("--- SAISIE de 10 ENTIERS avec WHILE ---\n");

count = 0;

while (count < 10) {
    printf("Entrer Tab[%d] = ", count);
    scanf("%d",&tab[count]);
    count++;
};

puts("\n--- AFFICHAGE de 10 ENTIERS avec WHILE ---\n");

count = 0;

while (count < 10) {
    printf("Tab[%d] = %d\n", count, tab[count] );
    count++;

};

printf("\n");
getchar();
return(0);
}
