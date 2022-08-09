//DATA STRUCT - L2I cntemad (List)

#include <stdio.h>
#include <stdlib.h>

int main ()
{
	typedef struct Element Element;

	struct Element
	{
		int number;
		Element *next;
	};

	typedef struct List List;

	struct List
	{
		Element *first;
	};

	List *init()
	{
		Element *element = malloc(sizeof(element));
		List *list = malloc(sizeof(list));

		element -> number = 0;
		element -> next = NULL;
		list -> first = element;
		return list;
	}

	void insert (List *list, int new_number)
	{
		Element *new = malloc(sizeof(new));
		new -> number = new_number;
		new -> next = list -> first;
		list -> first = new;
	}

	void exo4 (List *list, int new_number)
	{
		Element *new = malloc(sizeof(new));
		Element *now;
		now  = list -> first;
		while (now -> next != NULL)
		{
			now = now -> next;
		}
		new -> number = new_number;
		now -> next = new;
		new -> next = NULL;
	}

	void show (List *list)
	{
		Element *now;
		now = list -> first;
		while (now != NULL)
		{
			printf("%d -> ", now -> number);
			now = now -> next;
		}
	}

	void exo1 (List *list)
	{
		printf("\n\nexo1: \nla valeur a la tete de la liste est %d", list -> first -> number);
	}

	void exo2 (List *list)
	{
		Element *now;
		now = list -> first;
		while (now -> next!= NULL)
		{
			now = now -> next;
		}
        printf("\n\nexo2: \nla valeur a la queue de la liste est %d", now -> number);
	}

	List *numbers;
	numbers = init();
	int x1, x2, x3, x4, x5;

    printf("LA-LISTE-CHAINEE\n================\n\nEntrez un entier: "); scanf("%d", &x1);
	numbers -> first -> number = x1;
	show(numbers);
	printf("\nEntrez un entier: "); scanf("%d", &x2);
	insert (numbers, x2);
	show(numbers);
	printf("\nEntrez un entier: "); scanf("%d", &x3);
	insert (numbers, x3);
	show(numbers);
	exo1(numbers);
	exo2(numbers);
	printf("\n\nexo3: ");
	printf("\nEntrez un entier a inserer au debut: "); scanf("%d", &x4);
	insert(numbers, x4);
	show(numbers);
	printf("\n\nexo4: ");
	printf("\nEntrez un entier a inserer a la fin: "); scanf("%d", &x5);
	exo4(numbers, x5);
	show(numbers);
	printf("\n\n");

	return 0;
}
