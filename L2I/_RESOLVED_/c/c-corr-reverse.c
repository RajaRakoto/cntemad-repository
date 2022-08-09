#include <stdio.h>
#include <string.h>

//PROGRAMME PERMETTANT DE RENVERSÉE UNE PHRASE

int main(int argc, char const *argv[])
{
	//variables
	char mot[3][200]; 
	/*
		3 correspond au nombre de mot minimum en entrE (si l'utilisateur entre 1 ou 2 mots en entrE, le programme cesse de fonctionner)
		200 est la taille maximale d'une chaine en entrEe (si la totalitE des caracteres depasse cette valeur, le programme cesse de fonctionner)
	*/
	int i;

	//saisi (1 phrase = 3 mots au minimum )
	printf("Entrer 3 mots (separes par des espaces): \n");

	//i allant de 0 a 2 (i-e 1 a 3)
	for (int i = 0; i < 3 ; i++)
	{
		scanf("%s", mot[i]);
	}

	//affichage (reverse)
	for (int i = 2; i >= 0 ; i--)
	{
		printf("%s", mot[i]);
		printf(" ");
	}


	return 0;
}