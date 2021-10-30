import java.util.Scanner;

class Notes {

	final static Scanner sc = new Scanner(System.in);

	 double[][] note = new double[100][5];
	//  double[] sumPerStudent = new double[100];

	public void setNote (int numberOfStudent){

		for (int i = 0; i < numberOfStudent; i++) {
			for (int j = 0; j < 5; j++) {
				System.out.print("Entrer le note ("+(j+1)+") de l'eleve ("+(i+1)+"): ");
				this.note[i][j] = sc.nextDouble();
			}
			System.out.println();
		}
	}

	public void getResult (int numberOfStudent){
		double stock = 0.0;
		double sum = 0.0;

		for (int i = 0; i < numberOfStudent; i++) {
			for (int j = 0; j < 5; j++) {
				sum = this.note[i][j] + stock;
				stock = sum;
			}
			this.sumPerStudent[i] = sum;
			sum = 0.0; //reinitialisation de sum
			stock = 0.0;
		}

		//output
		int i = 0;
		while (i < numberOfStudent) {
			System.out.println("\n[Etudiant "+(i+1)+"]:");
			System.out.println("SOMME => "+this.sumPerStudent[i]);
			System.out.println("MOYENNE => "+(this.sumPerStudent[i]/5.0));

			i++;
		}
	}
}

class Principale {

	final static Scanner sc = new Scanner(System.in);

	public static void main (String[] args) {

		Notes notes = new Notes();
	  boolean startScript = true;

	while (startScript) {
		System.out.println ("\n~ CALCUL MOYENNE DE 5 NOTES ~\n");
		System.out.println ("0. Entrer les notes et afficher la moyenne");
		System.out.println ("1. Quitter le script\n");


		System.out.print ("[CHOIX]> ");
		int input = sc.nextInt();
		System.out.println();

		switch (input){
			case 0:
				// notes.nombreEtudiant();
				System.out.print("Entrer le nombre d'etudiant: ");
				int numberOfStudent = sc.nextInt();
				System.out.println();
				notes.setNote(numberOfStudent);
				notes.getResult(numberOfStudent);
				break;
			case 1:
				System.out.print ("Merci d'utiliser ce script, A bientot !");
				startScript = false;
				break;
			default:
				System.out.print ("Choix invalide, ressayez svp ! \n\n");
		}
	}
}
}
