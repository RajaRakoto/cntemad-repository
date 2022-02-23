package jdbcBibliothequeMinify;

import java.sql.*;
import java.util.Scanner;


public class Principale {
	
	final static Scanner sc = new Scanner(System.in);
	
	public static void main(String[] args) throws SQLException {
		// TODO Auto-generated method stub
		
		Livre livre = new Livre();
 
 while (true) {
	 
	 System.out.println("~ GESTIONNAIRE DE BIBLIOTHEQUE ~");
	 System.out.println("\n0. Ajouter un livre");
	 System.out.println("1. Modifier un livre");
	 System.out.println("2. Supprimer un livre (tableau)");
	 System.out.println("3. Consulter les livres\n");
	 
	 System.out.println("NOTE(modification/suppression): veuillez consulter le livre pour savoir son ID");
	 
	 System.out.print("\n[CHOIX]> ");
	 int input = sc.nextInt();
	 System.out.println();
	 
	 switch (input){
	 case 0:
		 livre.add(livre.getTitre(), livre.getAutheur(), livre.getEdition());
		 break;
	 case 1:
		 System.out.print("[ID]> ");
		 int id = sc.nextInt();
		 livre.edit(id, livre.getTitre(), livre.getAutheur(), livre.getEdition());
//		 livre.edit(livre.getId(), livre.getTitre(), livre.getAutheur(), livre.getEdition());
		 break;
	 case 2:
		 livre.delete(livre.getId());
		 break;
	 case 3:
		 livre.getTable();
		 break;
	 default:
		 System.out.println("Votre choix est invalide !");
	 }
	 System.out.println();
 }
	}

}
