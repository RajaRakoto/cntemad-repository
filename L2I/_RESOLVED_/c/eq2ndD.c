 
#include <stdio.h>
#include <math.h>

//PROGRAMME QUI PERMET DE RESOUDRE UNE EQUATION DU 2ND DEGRE

int main(){

    //variable
    int a = 0, b = 0, c = 0, DELTA = 0;
    float x1 = 0, x2 = 0;

    //saisi
     printf("On sait qu'une equation du 2nd degre a de la forme, ax^2 + bx + c = 0\n");
     printf("\nEntrez a: ");
     scanf("%d", &a);
     printf("\nEntrez b: ");
     scanf("%d", &b);
     printf("\nEntrez c: ");
     scanf("%d", &c);
     printf("\n Votre equation => %dx^2 + %dx + %d = 0", a, b, c);

    //calcul de delta
     DELTA = pow(b, 2) - 4 * (a * c);
     printf("\nDELTA = %d^2 - 4 * (%d * %d) => %d", b, a, c, DELTA);

    //solution
     if (DELTA == 0){   //une seule solution (delta = 0)
        x1 = -b / (2 * a);
         printf("\nSolution : {%f}\n", x1);
     }

     else if (DELTA > 0){   //2 solutions distincts (delta positif)
        x1 = (-b - sqrt(DELTA)) / (2 * a);
        x2 = (-b + sqrt(DELTA)) / (2 * a);
        printf("\nSolutions : {%f; %f}\n", x1, x2);
     }

     else if (DELTA < 0){   //pas de solution (delta negatif)
        printf("\nCette equation n'a pas de solution dans IR\n");
     }

     return 0;
}