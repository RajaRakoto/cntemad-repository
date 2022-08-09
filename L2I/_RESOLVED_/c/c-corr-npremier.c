#include <stdio.h>

//PROGRAMME QUI PERMET DE CALCULER LA SOMME S DES N-PREMIERS 

int main()
{
	//variable
	unsigned int n = 0, S = 0, stock = 1;

	//saisi
	printf("Entrez l'entier n: ");
	scanf("\n%d", &n);

	/*
		Si n = 12
		but: S = 11+10+9+8+7+6+5+4+3+2+1+0 = 66
	*/

	//somme
	for (int i = 0; i <= n - 1; i++) // i allant de 0 a 11
	{
		S = i + stock; // S = 0 + 1 = 1 | S = 1 + 1 = 2 | ... | S = 11 + 56
		stock = S; // stock = 1 | ... | stock = 67
	}
		
		stock = stock - 1; // stock = 67 - 1 = 66
		S = stock; // S = stock = 66
	
	//affichage
	printf("La somme des n-premiers est %d\n", S);
	printf("En octal => (%o)8\n", S);

	return 0;
}


