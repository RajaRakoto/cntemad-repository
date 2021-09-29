package mg.raja.tp;
import java.util.Scanner;

/*
 bissextile core
 	annee % 100 different de 0 et annee % 4 egale a 0
 	ou 
 	annee % 400 egale a 0
*/

public class bissextile {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		
		//title
		System.out.println("~ TEST ANNEE BISSEXTILE ~\n");
		
		//variable
		int annee;
		
		//instantiation de scanner
		Scanner sc = new Scanner(System.in);
		
		//input
		System.out.print("Entrer une annee: ");
		annee = sc.nextInt();
		
		//core
		boolean AnneeBisextille = (annee % 100 != 0 && annee % 4 == 0) || (annee % 400 == 0);
		
		//verification annee
		if (AnneeBisextille){
			System.out.println("TRUE !");
		}else{
			System.out.println("FALSE !");	
		}
	}

}
