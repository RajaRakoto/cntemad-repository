#include <stdio.h>

//PROGRAMME QUI PERMET D'AFFICHER LA LETTRE (alphabetique) CORRESPONDANTE A UN NOMBRE EN ENTREE

int main(){

    //variable
    char tab[] = {"ABCDEFGHIJKLMNOPQRSTUVWXYZ"}; //taille du tableau => 26. Ici, tab[0] = A, tab[3] = D et ainsi de suite
    int nbrAlphabet = 0;

    //Rebouclage de l'instruction tantque nbrAlphabet different de 100
    do {

        //saisi
        printf("\nEntrez un nombre entre 1 a 26 pour afficher la lettre correspondante \nEntrer 100 pour quiter: ");
        scanf("%d", &nbrAlphabet);

        //si nbrAlphabet est compris entre l'intervalle 1 a 26
        if (nbrAlphabet < 27 && nbrAlphabet != 0){

            //affichage
            printf("=> La lettre correspondante est \"%c\"\n", tab[nbrAlphabet - 1]); //car l'indice du tab commence par 0 (tab[0] = A)
        
        }
    
    } while (nbrAlphabet != 100); //fin du boucle si nbrAlphabet = 100

    return 0;
}