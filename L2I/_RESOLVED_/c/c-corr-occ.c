#include <stdio.h>
#include <string.h>

//PROGRAMME PERMETTANT DE TROUVER L’OCC D’UNE CHAR

int main()
{
	//variable
	char ch[100] = {""}, c;
	int occ = 0;

	//saisi de char c
	printf("Entrez une lettre a rechercher: \n");
	scanf("%c", &c);

	//saisi de char ch
	printf("Entrez un mot: \n");
	scanf("%s", ch);

	/*{
	ch = rakotonirina (strlen(ch) = 12)
	c = o
	but => occ = 2
	*/

	//boucle occ
	for (int i = 0; i <= strlen(ch)-1; i++) //i allant de 0 a 11
	{
		if (ch[i] == c) 
		{
			occ++; // occ = occ + 1;
		}
	}

	//affichage 
	printf("L'occurence de chacun des caracteres |%c| dans |%s| est %d\n", c, ch, occ);

	return 0;
}