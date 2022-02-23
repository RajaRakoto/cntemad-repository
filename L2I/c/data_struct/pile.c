#include <stdio.h>
#include <stdlib.h>

int main ()
{
	typedef struct Element Element;
	struct Element
	{
		int nombre;
		Element *suivant;
	};
	typedef struct Pile Pile;
	struct Pile
	{
		Element *premier;
	};
	Pile *initialisation()
	{
		Element *element = malloc(sizeof(*element));
		Pile *pile = malloc(sizeof(*pile));
		element -> nombre = 0;
		element -> suivant = NULL;
		pile -> premier = element;

		return pile;
	}
	void empiler(Pile *pile, int nvnombre)
	{
		Element *nouveau = malloc(sizeof(*nouveau));
		nouveau -> nombre = nvnombre;
		nouveau -> suivant = pile -> premier;
		pile -> premier = nouveau;
	}
	int depiler(Pile *pile)
	{
		if (pile == NULL || pile -> premier == NULL)
		{
			exit(EXIT_FAILURE);
		}

		int nbDepile = 0;
		Element *depile = pile -> premier;
		nbDepile = depile -> nombre;
		pile -> premier = depile -> suivant;
		free(depile);

		return nbDepile;
	}
	void affichage(Pile *pile)
	{
		Element *actuel;
		actuel = pile -> premier;
		while (actuel != NULL)
		{
			printf("%d\n", actuel -> nombre);
			actuel = actuel -> suivant;
		}
	}

	Pile *lePile;
	lePile = initialisation();
	lePile -> premier -> nombre = 24;
	empiler(lePile, 12);
	empiler(lePile, 6);
	empiler(lePile, 3);

	affichage(lePile);
	printf("\nJe depile %d\n", depiler(lePile));
	affichage(lePile);
	printf("\nJe depile %d\n", depiler(lePile));
	affichage(lePile);
	printf("\nJ'empile 33\n");
	empiler(lePile, 33);
	affichage(lePile);

	return 0;
}
