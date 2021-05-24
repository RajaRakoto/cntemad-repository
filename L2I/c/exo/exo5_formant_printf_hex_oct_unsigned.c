#include <stdio.h>

int main (int argc,char *argv[],char **envp){

	/*AFFICHAGE*/

printf("%c",'a');
printf("%s","bonjour");

	/* int 32567 */

/*decimal*/
printf("%d",32567);

/*hexadecimal*/
printf("%x",0x32567); //corr: printf("%x",32567); 

/*octal*/
printf("%o",032567); //corr: printf("%x",32567); 

/*unsigned*/
printf("%u",32567); //ou: printf("%d",(unsigned)32567);

	/* float 3.1415927 */

/*expo*/
printf("%e",31415927e7); //corr: printf("%e",3.1415927);

/*point decimal*/
printf("%f",3.1415927); //ou: printf("%9.7f",3.1415927);

/*variable (g)*/
float g = 3.1415927; //corr: printf("%g",3.1415927);
printf("%f",g);

printf("\n");
getchar();
return(0);
}