package jdbcEtudiant;

import java.sql.SQLException;

public class Principale {

	public static void main(String[] args) throws SQLException{
		// TODO Auto-generated method stub
		
		Etudiant etudiant1 = new Etudiant (1, "RAKOTONIRINA", "Raja", "Informatique");
		Etudiant etudiant2 = new Etudiant (2, "RAKOTONIRINA", "Rija", "Droit");
		
		//creation de la ligne
		etudiant1.create();
		etudiant2.create();
		
		//modification de la ligne
		etudiant1.edit();
		etudiant2.edit();
		
		//consultation par identifiant
		etudiant1.getById();
		etudiant2.getById();
		
		//consultation de tous les enregistrement
		etudiant1.getAll();
		
		//suppression d'un enregistrement
		etudiant2.delete();
		etudiant1.getAll(); //verification
		
	}

}
