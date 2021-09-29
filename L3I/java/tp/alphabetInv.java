package mg.raja.tp;

import java.util.Scanner;

/*
trie String
	- parcours => idem 2D (i et j)
	- trie croissant => tab[i].compareToIgnoreCase(tab[j]) > 0 && j > i
	- trie decroissant => tab[i].compareToIgnoreCase(tab[j]) < 0 && j > i
*/

public class alphabetInv {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		
		//def tab
		String[] alphabet = new String[] {"a","b","c","d","e","f","g","h","i","j","k","l","m","n","o","p","q","r","s","t","u","v","w","x","y","z"};
		String permut;
		
		//def Scanner
		Scanner sc = new Scanner(System.in);
		
		//before
		System.out.print("[NORMAL]=> ");
		for (int i=0; i<alphabet.length; i++){
			System.out.print(alphabet[i] + " ");
		}
		
		//parcours du tableau + permutation de valeur
		for (int i=0; i<alphabet.length; i++){
			for (int j=1; j<alphabet.length; j++) {
				if (alphabet[i].compareToIgnoreCase(alphabet[j]) < 0 && j>i){
					permut = alphabet[j];
					alphabet[j] = alphabet[i];
					alphabet[i] = permut;
				}
			}
		}
		
		//saut a la ligne 
		System.out.println("\n");
		
		//after
		System.out.print("[INVERSE]=> ");
		for (int i=0; i<alphabet.length; i++){
			System.out.print(alphabet[i] + " ");
		}
	}

}
