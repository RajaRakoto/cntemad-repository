package mg.raja.tp;

import java.util.Scanner;

/*
isocele core
	- 3 indices => k, j et i
	- 1 var => lineNumber
	- k: sert a compter la ligne 0 a lineNumber - 1 [int k = 0; k < lineNumber; k++)]
	- j(dans k): sert a placer des decalages pour chaque iteration de k en mettant des espaces blancs [int j = 0; j < lineNumber - k; j++]
	|_S.O.P(" ")
		01234* 
		0123*** 
		012***** 
		01******* 
		0********* 
	- i(dans k): sert a placer les etoiles suivant le decalage de j pour chaque iteration de k  [int i = 0; i < (k*2+1); i++]
	|_S.O.P("*")
	     0 
    	012 
   	   01234 
  	  0123456 
 	 012345678
*/

public class isocele {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		
		//title
		System.out.println("~ TRIANGLE ISOCELE ~\n");
		
		//var 
		int lineNumber;
		
		//def Scanner
		Scanner sc = new Scanner(System.in);
		
		//input
		System.out.print("Entrer le nombre de ligne: ");
		lineNumber = sc.nextInt();
		
		System.out.println("\n");
		
		for (int k = 0; k < lineNumber; k++){
//				System.out.print(k);
			for (int j = 0; j < lineNumber - k; j++){
				System.out.print(" ");
//				System.out.print(j);
			}
			for (int i = 0; i < (k*2+1); i++){
				System.out.print("*");
//				System.out.print(i);
				
				
			}
			System.out.println(" ");
		}
		
		
	}
}
