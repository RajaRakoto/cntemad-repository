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
	typedef struct File File;
	struct File
	{
		Element *premier;
	};
	File *Initialisation()
	{
		Element *element = malloc(sizeof(*element));
		File *file = malloc(sizeof(*file));
		element -> nombre = 0;
		element -> suivant = NULL;
		file -> premier = element;

		return file;
	}
	void Affichage(File *file)
	{
		Element *actuel;
		actuel = file -> premier;
		while (actuel != NULL)
		{
			printf("%d ", actuel -> nombre);
			actuel = actuel -> suivant;
		}
	}
	void Enfilage(File *file, int nvnombre)
	{
		Element *nouveau = malloc(sizeof(*nouveau));
		nouveau -> nombre = nvnombre;
		nouveau -> suivant = NULL;
		if (file -> premier != NULL)
		{
			Element *actuel;
			actuel = file -> premier;
			while (actuel -> suivant != NULL)
			{
				actuel = actuel -> suivant;
			}
			actuel -> suivant = nouveau;
		}
		else
		{
			file -> premier = nouveau;
		}
	}
	int Defilage(File *file)
	{
		Element *aDefile;
		aDefile = file -> premier;
		int nbDefile = 0;
		if (aDefile != NULL)
		{
			nbDefile = aDefile -> nombre;
			file -> premier = aDefile ->suivant;
			free(aDefile);
		}
		return nbDefile;
	}
	File *Lafile;
	printf("La file:\n");
	Lafile = Initialisation();
	Lafile -> premier -> nombre = 11;
	Enfilage(Lafile, 32);
	Enfilage(Lafile, 76);
	Enfilage(Lafile, 3);
	Affichage(Lafile);
	printf("\nJe defile %d\n", Defilage(Lafile));
	Affichage(Lafile);
	printf("\nJ'enfile 69\n");
	Enfilage(Lafile, 69);
	Affichage(Lafile);

	return 0;
}