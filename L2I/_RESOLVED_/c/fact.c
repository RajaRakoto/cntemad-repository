 #include <stdio.h>

//PROGRAMME QUI PERMET DE CALCULER LE FACTORIELLE D'UN NOMBRE

int main(){

    //variable
    int nbr = 0;

    //saisi
    printf("Entrez un entier positif: ");
    scanf("%d", &nbr);
    
    int fact = nbr; 

    for (int i = 1; i < nbr; i++){ //si nbr 4, alors i allant de 1 a 3
       
        fact *= i; //equiv => fact = fact * i

        /*  
            si nbr = fact = 4 
            si i = 1 | fact = 4 * 1 = 4
            si i = 2 | fact = 4 * 2 = 8
            si i = 3 | fact = 8 * 3 = 24 (factorielle de 4)
        */

    }
    
    //affichage
    printf("En decimal => (%d)10\n", fact);
    printf("En octal => (%o)8\n", fact);
    printf("En hexadecimal; => (%nbr)16\n", fact);

    return 0;
}