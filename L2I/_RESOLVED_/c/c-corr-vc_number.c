#include <stdio.h>
#include <string.h>

//PROGRAMME PERMETTANT DE TROUVER LE NOMBRE DE VOYELLE ET CONSONNE D'UNE CHAINE DE CARACTERE ET REMPLACE LES VOYELLES PAR DES BLANCS

int main(int argc, char const *argv[])
{

	//variables
	char mot[100];
	unsigned int nbrC = 0, nbrV = 0;
	char voyelle[10] = {'a','o','e','u','i','y'};

	//saisi
	printf("Entrer une chaine de caractere : ");
	scanf("%s", mot);

	//longueur du mot
	int n = strlen(mot);

	//parcours & test voyelle
	for (int i = 0; i <= n; i++)
	{
		for (int j = 0; j < 6; j++)
		{
			if (mot[i] == voyelle[j])
			{
				nbrV++;
			}
		}
	}

	//consonne
	nbrC = n - nbrV;

	//affichage
	printf("\nNombre de voyelle = %d", nbrV);
	printf("\nNombre de consonne = %d\n", nbrC);

	//espace blanc
	for (int i = 0; i <= n; i++)
	{
		for (int j = 0; j < 6; j++)
		{
			if (mot[i] == voyelle[j])
			{
				mot[i] = ' ';
			}
		}
	}

	printf("Voyelle en espace blanc : %s\n\n", mot);

	return 0;
}