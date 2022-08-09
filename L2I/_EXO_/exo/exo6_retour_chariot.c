#include <stdio.h>

int main(int argc,char const *argv[],char **envp){

	/*AFFICHAGE*/

printf("%c\n",'a');
printf("%s\n","bonjour");

	/* int 32567 */

/*decimal*/
printf("%d\n",32567);

/*hexadecimal*/
printf("%x\n",32567); 

/*octal*/
printf("%o\n",32567); 

/*unsigned*/
printf("%u\n",32567); 

	/* float 3.1415927 */

/*expo*/
printf("%e\n",3.1415927);

/*point decimal*/
printf("%f\n",3.1415927); 

/*variable (g)*/
printf("%g\n",3.1415927);

printf("\n");
getchar();
return(0);

}