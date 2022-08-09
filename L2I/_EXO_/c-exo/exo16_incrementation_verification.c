#include <stdio.h>

int main(int argc,char const *argv[],char **envp){

    /* VARIABLES */
    int a,b;

    /* SAISIE de a et b */

puts("VEILLEZ ENTRER 2 VALEURS IDENTIQUES POUR a ET b POUR VOIR LES DIFFERENCES \n");
    printf("Entrer a: ");
    scanf("%d",&a);
    printf("Entrer b: ");
    scanf("%d",&b);

    /* RESULTAT */
    puts("\n");
    printf("a++ = %d\n", a++);
    printf("++b = %d\n", ++b);
    puts("\n");
    printf("Valeur de a apres POST-incrementation = %d\n");
    printf("Valeur de b apres PRE-incrementation = %d\n");

puts("\n");
puts("CONCLUSION = la valeur d'une variable ne change qu'apres un post-incrementation ");

printf("\n");
getchar();
return (0);

}
