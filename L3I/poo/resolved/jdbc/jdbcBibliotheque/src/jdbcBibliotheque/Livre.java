package jdbcBibliotheque;

import java.sql.Connection;
import java.sql.Statement;
import java.sql.ResultSet;
import java.sql.SQLException;
import javax.swing.JOptionPane;
import javax.swing.JPanel;
import javax.swing.JScrollPane;
import javax.swing.JFrame;
import javax.swing.JTable;
import javax.swing.table.DefaultTableModel;

/*
DATABASE = java_bibliotheque

CREATE TABLE `Livres` (
  `id` int(4) NOT NULL AUTO_INCREMENT,
  `titre` varchar(100) NOT NULL,
  `autheur` varchar(50) NOT NULL,
  `edition` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8
*/

/*
 * getAll() = consultation de tous les enregistrements
 * getTable() = consultation de tous les enregistrements en utilisant une interface graphique
 * insert() = enregistrement d'un livre 
 * edit() = modification d'un livre
 * delete() = suppression d'un livre
*/

public class Livre {
	
	/* ATTRIBUTS */
	private String titre;
	private String autheur;
	private String edition;
	
	/* CONSTRUCTEUR */
	Livre (String titre, String autheur, String edition) {
		this.titre = titre;
		this.autheur = autheur;
		this.edition = edition;
	}
	
	/* STATUS */
	void closeSession() {
		System.out.println("\n[connex]: Fermeture de la connexion !");
	}
	
	/* CREATION D'UN LIVRE */
	public void insert() throws SQLException {
		//interface
		final JFrame frame = new JFrame("");
		//def connection & statement
		Connexion conn = new Connexion();
		Connection myconn = conn.getJavaDatabase();
		Statement statement = myconn.createStatement();
		//info
		String newTitle = this.titre;
		String newAuthor = this.autheur;
		String newEdition = this.edition;
		//query
		String query = "INSERT INTO Livres (titre,autheur,edition) VALUES ('"+newTitle+"','"+newAuthor+"','"+newEdition+"')";
		statement.executeUpdate(query);
		//output
		String message = "~ INSERTION DU LIVRE ~ \n\n"
				+ "Titre: "+newTitle+"\n"
				+ "Autheur: "+newAuthor+"\n"
				+ "Edition: "+newEdition+"\n\n"
				+ "Insertion avec succes !";
		JOptionPane.showMessageDialog(frame, message);
	//close
	myconn.close();
	closeSession();
	}
	
	/* SUPPRESSION D'UN LIVRE */
	public void delete() throws SQLException {
		//interface
		final JFrame frame = new JFrame();
		//def connexion & statement
		Connexion conn = new Connexion();
		Connection myconn = conn.getJavaDatabase();
		Statement statement = myconn.createStatement();
		//query
		String query = "DELETE FROM `Livres` WHERE titre = '"+this.titre+"'";
		statement.executeUpdate(query);
		//output
		String message = "Suppression du livre "+this.titre+" avec succes !";
		JOptionPane.showMessageDialog(frame, message);
	//close
	myconn.close();
	closeSession();
	}
	
	/*  MODIFICATION D'UN LIVRE */
	public void edit() throws SQLException {
		//interface 
		final JFrame frame = new JFrame();
		//def connection & statement
		Connexion conn = new Connexion();
		Connection myconn = conn.getJavaDatabase();
		Statement statement = myconn.createStatement();
		
		//info
		String message0 = "~ MODIFICATION DU LIVRE ~\n\n"
				+ "Entrer le titre du livre:";
		String newTitle = JOptionPane.showInputDialog(frame, message0);
		
		String message1 = "~ MODIFICATION DU LIVRE ~\n\n"
				+ "Entrer l'autheur du livre:";
		String newAuthor = JOptionPane.showInputDialog(frame, message1);
		
		String message2 = "~ MODIFICATION DU LIVRE ~\n\n"
				+ "Entrer l'edition du livre:";
		String newEdition = JOptionPane.showInputDialog(frame, message2);

		//query
		String query = "UPDATE `Livres` SET titre='"+newTitle+"',autheur='"+newAuthor+"',edition='"+newEdition+"' WHERE titre = '"+this.titre+"'";
		statement.executeUpdate(query);
		//output
		String message = "Modification du livre "+this.titre+" avec succes !";
		JOptionPane.showMessageDialog(frame, message);
	//close
	myconn.close();
	closeSession();
	}
	
	/* AFFICHAGE DE TOUS LES ENREGISTREMENTS DANS LA TABLE ETUDIANT */
	public void getAll() throws SQLException {
		//interface 
		final JFrame frame = new JFrame();
		//def connection & statement
		Connexion conn = new Connexion();
		Connection myconn = conn.getJavaDatabase();
		Statement statement = myconn.createStatement();
		//query
		String query = "SELECT * FROM `Livres`";
		ResultSet result = statement.executeQuery(query);
		//output
		int counter = 1;
		while (result.next()) {
			String message = "~ [LIVRE "+counter+"] ~ \n\n"
					+ "ID: "+result.getInt("id")+"\n"
					+ "Titre: "+result.getString("titre")+"\n"
					+ "Autheur: "+result.getString("autheur")+"\n"
					+ "Edition: "+result.getString("edition")+"\n";
			JOptionPane.showMessageDialog(frame, message);
			counter++;
		}
	//close
	myconn.close();
	closeSession();
	}
	
	/* AFFICHAGE DE TOUS LES ENREGISTREMENTS DANS LA TABLE ETUDIANT (en utilisant JTable) */
	public int getSize() throws SQLException { //cette fonction permet de recuperer le nombre de ligne dans la table `Livres`
		//def connection & statement
		Connexion conn = new Connexion();
		Connection myconn = conn.getJavaDatabase();
		Statement statement = myconn.createStatement();
		//query
		String query = "SELECT COUNT(*) AS `size` FROM Livres"; //la clause 'AS' permet au requete de stocker la valeur retourner pas la fonction COUNT(*) dans la variable size
		ResultSet result = statement.executeQuery(query);
		//def size
		int size = 0;
		while (result.next()) {
			size = result.getInt("size"); //recuperer la valeur de la variable size
		}
		return size;
	}
	
	public void getTable() throws SQLException { 
		
		/*
		 * 
		 * NOTES: la connexion au bd va etre executer 2 fois car on utilise 2 methodes qui necessitent ce dernier...
		 * 
		 * */
		
		//def connection & statement
		Connexion conn = new Connexion();
		Connection myconn = conn.getJavaDatabase();
		Statement statement = myconn.createStatement();
		//query
		String query = "SELECT * FROM `Livres`";
		ResultSet result = statement.executeQuery(query);
		//def table
			//header
			String[] columns = new String[] {"ID", "Titre", "Autheur", "Edition"}; //definition de l'en-tete du tableau
			//counter
			int i = 0;
			//data (2D)
			String[][] data = new String[getSize()][4]; //generer dynamiquement la taille du tableau en fonction du nombre de ligne dans la table `Livres`
		//output
		while (result.next()) {
			int id = result.getInt("id");
			String titre = result.getString("titre");
			String autheur = result.getString("autheur");
			String edition = result.getString("edition");
			data[i][0] = id + "";
			data[i][1] = titre;
			data[i][2] = autheur;
			data[i][3] = edition;
		i++;
		}
		  
		  //table + config
	      DefaultTableModel model = new DefaultTableModel(data, columns); //creation d'une modele de tableau
	      
	      JTable table = new JTable(model); //utilisation de JTable (model comme argument)
	      table.setShowGrid(true); //definit si le tableau dessine des lignes de grille autour des cellules
	      table.setShowVerticalLines(true); //definit si le tableau dessine des lignes verticales entre les cellules
	      
	      JScrollPane pane = new JScrollPane(table); //permet d'utiliser le scroller pour le tableau
	      
	      //interface + config
	      JFrame frame = new JFrame("Listes des livres dans la base de donnees");
	      JPanel panel = new JPanel();
	      panel.add(pane);
	      frame.add(panel);
	      frame.setSize(500, 250); //taille
	      frame.setLocationRelativeTo(null); //position initiale de la fenetre (tableau)
	      frame.setVisible(true); //permet au fenetre d'etre visible
	      frame.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE); //permet de liberer un espace memoire apres la fermeture de la fenetre
		
	}
}
