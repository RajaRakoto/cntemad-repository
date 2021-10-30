import java.util.Scanner;

class Notes {

	final static Scanner sc = new Scanner(System.in);

	//attrib
	private int[] note = new int[5];

	public void setSum (){
		int i = 0;

		while (i < this.note.length){
			System.out.print("Entrer note ("+(i+1)+"): ");
			this.note[i] = sc.nextInt();
		i++;
		}
	}

	public int getSum (){
		int i = 0;
		int stock = 0;
		int sum = 0;

		while (i < this.note.length){
			sum = this.note[i] + stock;
			stock = sum;
		i++;
		}

		return sum;
	}
}

class Principale {

	final static Scanner sc = new Scanner(System.in);

	public static void main (String[] args) {

		Notes notes = new Notes();
	    boolean startScript = true;

	while (startScript) {
		System.out.println ("~ CALCUL MOYENNE DE 5 NOTES ~\n");
		System.out.println ("0. Entrer les notes et afficher la moyenne");
		System.out.println ("1. Quitter le script\n");


		System.out.print ("[CHOIX]> ");
		int input = sc.nextInt();
		System.out.println();

		switch (input){
			case 0:
				notes.setSum();
				System.out.print ("SOMME => "+notes.getSum()+"\nMOYENNE => "+(notes.getSum()/5)+"\n\n");
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
