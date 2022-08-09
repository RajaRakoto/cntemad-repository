/* Entier i initialise a 10 */
int i = 10;
/* entiers j initialise a 12
	k initialise a 3 et l non initialise
 */
int j = 12 , k = 3 , l ;
/* Pointeur d'entier initialise a l'adresse de i */
int *p1 = &i ;
/* Caractere initialise a la valeur du retour chariot */
char car = '\n' ;
/* Tableau de 10 flottants dont les quatre premiers sont initialises a 3.1 4.5 6.4 et 9.3, les autres sont initialise a 0.0 */
float tabf[10] = {3.1,4.5,6.4,9.3}
/* Tableau de 10 caracteres initialise avec les caracteres 'C' 'o' 'u' 'c' 'o' 'u' '\0' 
	Les trois derniers caracteres sont aussi initialises avec la valeur '\0'
*/
char tabc[10] = "Coucou" ;
/* Modele de structure contenant un entier,
un flottant, et un tableau de 20 caracteres
variable (obst) du type struct tt1, avec le premier champ (obst.i) initialise a 12, le deuxieme champ (objt.j) initialise a 3.14, et le troisieme champ (obst.l) initialise a partir de la chaine "qwertyuiop"
 */ 
struct tt1 
{
	int i ;
	float j ;
	char tabc[20] ;
}; obst {
	12,
	3.14,
	"qwertyuiop"
};
/* Tableau de caracteres initialise avec la chaine "bonjour". La taille du tableau est calculee selon le nombre de caracteres + 1 (pour le nul) */
char tab[] = "bonjour" ;
/* Tableau de 10 caracteres dont les 5 premiers sont initialises */
char tab[10] = {'a','b','c','d','e'} ;
/* Pointeur sur un caractere initialise a l'adresse de la chaine de caracteres constante. La chaine peut etre mise dans une zone de memoire assecible en lecture seulement */
const char *p2 = "bonjour"