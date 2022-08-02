#include <stdio.h>
#include <string.h>

//PROGRAMME QUI PERMET DE TRIER UNE CHAINE DE CARACTERE (ordre alphabetique)

int main(){

    //variable
    char tab[100]  = {0}, temp = 0;
    int i = 0, j = 0;

    //saisi
    printf("Entrez un mot: ");
    scanf("%s", tab);

    //taille du tableau
    int n = strlen(tab);

    //i allant de 0 a (n-2) 
    for (i = 0; i < n - 1; i++){
        
        //j allant de 1 a (n-1)
        for (j = i + 1; j < n; j++){ 
        
            //permuation de valeur de tab[i] et tab[j]
            if (tab[i] > tab[j]){
                temp = tab[i];
                tab[i] = tab[j];
                tab[j] = temp;
            }
         }
     }

     //affichage
     printf("\n => %s\n", tab);

     return 0;
}