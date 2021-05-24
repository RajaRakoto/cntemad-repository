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

	typedef struct List List;

	struct List
	{
		Element *premier;
	};

	List *initialisation()
	{
		Element *element = malloc(sizeof(element));
		List *list = malloc(sizeof(list));

		element -> nombre = 0;
		element -> suivant = NULL;
		list -> premier = element;
		return list;
	}

	void insertion (List *list, int nvnombre)
	{
		Element *nouveau = malloc(sizeof(nouveau));
		nouveau -> nombre = nvnombre;
		nouveau -> suivant = list -> premier;
		list -> premier = nouveau;
	}

	void exo4 (List *list, int nvnombre)
	{
		Element *nouveau = malloc(sizeof(nouveau));
		Element *actuel;
		actuel  = list -> premier;
		while (actuel -> suivant != NULL)
		{
			actuel = actuel -> suivant;
		}
		nouveau -> nombre = nvnombre;
		actuel -> suivant = nouveau;
		nouveau -> suivant = NULL;
	}

	void affichage (List *list)
	{
		Element *actuel;
		actuel = list -> premier;
		while (actuel != NULL)
		{
			printf("%d -> ", actuel -> nombre);
			actuel = actuel -> suivant;
		}
	}

	void exo1 (List *list)
	{
		printf("\n\nexo1: \nla valeur A la tete de la liste est %d", list -> premier -> nombre);
	}

	void exo2 (List *list)
	{
		Element *actuel;
		actuel = list -> premier;
		while (actuel -> suivant!= NULL)
		{
			actuel = actuel -> suivant;
		}
        printf("\n\nexo2: \nla valeur A la queue de la liste est %d", actuel -> nombre);
	}

	List *desnb;
	desnb = initialisation();
	int x1, x2, x3, x4, x5;

    printf("LA-LISTE-CHAINEE\n================\n\nEntrez un entier: "); scanf("%d", &x1);
	desnb -> premier -> nombre = x1;
	affichage(desnb);
	printf("\nEntrez un entier: "); scanf("%d", &x2);
	insertion (desnb, x2);
	affichage(desnb);
	printf("\nEntrez un entier: "); scanf("%d", &x3);
	insertion (desnb, x3);
	affichage(desnb);

	exo1 (desnb);

	exo2 (desnb);

	printf("\n\nexo3: ");
	printf("\nEntrez un entier A inserer au debut: "); scanf("%d", &x4);
	insertion (desnb, x4);
	affichage(desnb);

	printf("\n\nexo4: ");
	printf("\nEntrez un entier A inserer A la fin: "); scanf("%d", &x5);
	exo4 (desnb, x5);
	affichage (desnb);
	printf("\n\n");

	return 0;
}
