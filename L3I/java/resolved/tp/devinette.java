package mg.raja.tp;

import java.util.*;

/*
devinette core
	- import all
	- on ne peut utiliser la fonction random qu'avec les variable de type entier (integer)
*/

public class devinette {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		
		//title
		System.out.println("~ JEU DE DEVINETTE ~\n");
		
		//var 
		int checking; //le nombre a lire
		int checkNumber=1; //le nombre de tentative 
		int randomNumber=(int) (10*Math.random()); //le nombre a trouver (compris entre 0 et 10)
		
		//show random
//		System.out.println("random = " + randomNumber + "\n");
		
		//def Scanner
		Scanner sc = new Scanner(System.in);
		
		//input
		System.out.print("Devinez un nombre compris entre 0 et 10: ");
		checking = sc.nextInt();
		
		//verification de la tentative
		while (checking != randomNumber || (checking < 0) && (checking > 10)){
				System.out.print("Vous avez tromper de nombre, ressayez: ");
				checking = sc.nextInt();
		checkNumber++;
		}
		
		//success 
		System.out.print("\nBravo ! vous avez trouver le nombre cachE ... \n");
		System.out.print("Nombre de tentative = " + checkNumber);	
	}
}
