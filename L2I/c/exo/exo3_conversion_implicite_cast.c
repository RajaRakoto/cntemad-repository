#include <stdio.h>

int main (int argc,char *argv[],char **envp){

/* VARIABLES */

int i;
float f;
char *ptc;
int *pti;
int ti[];
char tc[];

/* OPERATION */

i=f;
f=i;
pti=0;
ptc=pti; //corr: ptc=(char*)pti;
pti=tc; //corr: pti=(int*)tc;
ptc=ti; //corr: ptc=(char*)ti;

printf ("\n");
getchar();
return (0);

}