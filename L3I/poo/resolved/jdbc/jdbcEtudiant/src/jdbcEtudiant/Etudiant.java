package jdbcEtudiant;

import java.sql.Connection;
import java.sql.Statement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Scanner;

/*
 *** SQL SCRIPT ***
 CREATE TABLE `Etudiant` (
  `numEtud` int(11) NOT NULL AUTO_INCREMENT,
  `nomEtud` varchar(255) NOT NULL,
  `prenomEtud` varchar(255) NOT NULL,
  `filiereEtud` varchar(255) NOT NULL,
  PRIMARY KEY (`numEtud`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8
*/

/*
 *** QUICK INSERT ***
 INSERT INTO Etudiant (`nomEtud`,`prenomEtud`,`filiereEtud`) VALUES ("Rakoto","Jean","Informatique");
 INSERT INTO Etudiant (`nomEtud`,`prenomEtud`,`filiereEtud`) VALUES ("Rasoa","Nirina","Droit");
 INSERT INTO Etudiant (`nomEtud`,`prenomEtud`,`filiereEtud`) VALUES ("Rabe","Son","Gestion");
*/

/*
 * getById() = consultation par identifiant
 * getAll() = consultation de tous les enregistrements
 * create() = enregistrement d'un etudiant 
 * edit() = modification d'un enregistrement
 * delete() = suppression d'un enregistrement
*/

public class Etudiant {
	
	/* ATTRIBUTS */
		private int numEtud;
		private String nomEtud;
		private String prenomEtud;
		private String filiereEtud;

	/* CONSTRUCTEUR */
		public Etudiant (int numEtud, String nomEtud, String prenomEtud, String filiereEtud) {	
			this.numEtud = numEtud;
			this.nomEtud = nomEtud;
			this.prenomEtud = prenomEtud;
			this.filiereEtud = filiereEtud;
		}
	
	/* STATUS */
		void closeSession() {
			System.out.println("\n[connex]: Fermeture de la connexion !");
		}
	
	/* ACCES EN CONSULTATION */
		public void getById() throws SQLException {
			//def connection & statement
			Connexion conn = new Connexion();
			Connection myconn = conn.getJavaDatabase();
			Statement statement = myconn.createStatement();
			//query
			String query = "SELECT * FROM `Etudiant` WHERE numEtud = "+this.numEtud+"";
			ResultSet result = statement.executeQuery(query);
			//output
			while (result.next()) {				
				System.out.println("ID: "+result.getInt("numEtud"));
				System.out.println("Nom: "+result.getString("nomEtud"));
				System.out.println("Prenom: "+result.getString("prenomEtud"));
				System.out.println("Filiere: "+result.getString("filiereEtud"));
			}
	    //close
		myconn.close();
		closeSession();
		}
	
	/* AFFICHAGE DE TOUS LES ENREGISTREMENTS DANS LA TABLE ETUDIANT */
		public void getAll() throws SQLException {
			//def connection & statement
			Connexion conn = new Connexion();
			Connection myconn = conn.getJavaDatabase();
			Statement statement = myconn.createStatement();
			//query
			String query = "SELECT * FROM `Etudiant`";
			ResultSet result = statement.executeQuery(query);
			//output
			int counter = 1;
			while (result.next()) {
				System.out.println("----[ETUDIANT "+counter+"]----");
				System.out.println("ID: "+result.getInt("numEtud"));
				System.out.println("Nom: "+result.getString("nomEtud"));
				System.out.println("Prenom: "+result.getString("prenomEtud"));
				System.out.println("Filiere: "+result.getString("filiereEtud"));
				System.out.println("--------------------\n");
				counter++;
			}
		//close
		myconn.close();
		closeSession();
		}
	
	/* CREATION D'UN ETUDIANT */
		public void create() throws SQLException {
			//def connection & statement
			Connexion conn = new Connexion();
			Connection myconn = conn.getJavaDatabase();
			Statement statement = myconn.createStatement();
			//info
			String newFirstName = this.nomEtud;
			String newLastName = this.prenomEtud;
			String newDomain = this.filiereEtud;
			System.out.println("-----------------------------");
			System.out.println("~ CREATION DE L'ETUDIANT ~");
			System.out.println("Nom: "+newFirstName);
			System.out.println("Prenom: "+newLastName);
			System.out.println("Filiere: "+newDomain);
			System.out.println("-----------------------------");
			//query
			String query = "INSERT INTO Etudiant (nomEtud,prenomEtud,filiereEtud) VALUES ('"+newFirstName+"','"+newLastName+"','"+newDomain+"')";
			statement.executeUpdate(query);
			//output
			System.out.println("[query]: Insertion avec success !");
		//close
		myconn.close();
		closeSession();
		}
	
	/*  MODIFICATION D'UN ETUDIANT */
		public void edit() throws SQLException {
			//def connection & statement
			Connexion conn = new Connexion();
			Connection myconn = conn.getJavaDatabase();
			Statement statement = myconn.createStatement();
			//info
			Scanner sc = new Scanner(System.in);
			System.out.println("-----------------------------");
			System.out.println("~ MODIFICATION DE L'ETUDIANT ~");
			System.out.println("ID: "+this.numEtud);
			System.out.print("Nom: ");
			String newFirstName = sc.nextLine();
			System.out.print("Prenom: ");
			String newLastName = sc.nextLine();
			System.out.print("Filiere: ");
			String newDomain = sc.nextLine();
			System.out.println("-----------------------------");
			//query
			String query = "UPDATE `Etudiant` SET nomEtud='"+newFirstName+"',prenomEtud='"+newLastName+"',filiereEtud='"+newDomain+"' WHERE numEtud = "+this.numEtud+"";
			statement.executeUpdate(query);
			//output
			System.out.println("[query]: Modification avec success !");
		//close
		myconn.close();
		closeSession();
		}
	
	/*  SUPPRESSION D'UN ETUDIANT */
		public void delete() throws SQLException {
			//def connection & statement
			Connexion conn = new Connexion();
			Connection myconn = conn.getJavaDatabase();
			Statement statement = myconn.createStatement();
			//query
			String query = "DELETE FROM `Etudiant` WHERE numEtud = "+this.numEtud+"";
			statement.executeUpdate(query);
			//output
			System.out.println("[query]: Suppression avec success !");
		//close
		myconn.close();
		closeSession();
		}
}
