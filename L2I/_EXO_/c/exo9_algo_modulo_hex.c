#include <stdio.h>

int main (int argc,char const *argv[],char **envp){

/* VARIABLES */
int i = 10, j = 3;

/* OPERATION sur i et j */
printf("i + j = %d\n", i+j);
printf("i - j = %d\n", i-j);
printf("i * j = %d\n", i*j);
printf("i / j = %d\n", i/j);
printf("i % j = %d\n", i%j);

//Algorithme de modulo
printf("i mod j = %d\n", i-(j*(i/j)));

//Affectation de i et j
i = 0x0FF;
j = 0xF0F;

//Resultat en hexadecimal
printf("i & j = %x\n", i&j);
printf("i | j = %x\n", i|j);
printf("i ^ j = %x\n", i^j);
printf("i << 2 = %x\n", i<<2);
printf("j >> 2 = %x\n", j>>2);

printf("\n);
getchar();
return(0);

}