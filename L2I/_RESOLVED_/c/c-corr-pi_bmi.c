#include <stdio.h>
#include <math.h>

//PROGRAMME PERMETTANT DE CALCULER LE PI(poids ideal) ET BMI

int main()
{
	//variable
	char sexe;
	float taille = 0;
	int poids = 0;

	//saisi
	printf("Entrer votre sexe (M/F): \n");
	scanf("%c", &sexe);
	printf("Entrer votre taille (cm): \n");
	scanf("%f", &taille);
	printf("Entrer votre poids (kg): \n");
	scanf("%d", &poids);

	//Calcul de PI (poids ideal)
	//Si homme
	if (sexe == 'M' || sexe == 'm')
	{
		int PI = (taille-100)-(taille-150)/4;
		//affichage
		printf("Votre poids ideal est %d\n", PI);
	}
	//Si femme
	if (sexe == 'F' || sexe == 'f')
	{
		int PI = (taille-100)-(taille-120)/4;
		//affichage
		printf("Votre poids ideal est %d\n", PI);
	}

	//convertion de taille en metre
	taille = taille * 0.01;
	printf("taille (metre) = %f\n", taille);

	//Calcul de BMI
	int BMI = poids / (taille*taille);
	printf("BMI = %d\n", BMI);

	//test BMI
	//Pers normal
	if (BMI <= 27)
	{
		printf("=> Vous etes normal\n");
	}
	if (BMI > 27)
	{
		printf("=> Vous etes obese\n");
	}
	if (BMI >= 32)
	{
		printf("=> Vous etes malade\n");
	}

	return 0;
}