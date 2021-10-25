package jdbcBibliothequeMinify;

import java.sql.*;
import java.util.Scanner;
import javax.swing.*;
import javax.swing.table.DefaultTableModel;

public class Livre {
	
	final Scanner sc = new Scanner(System.in);
	private int id;
	private String titre = "";
	private String autheur = "";
	private String edition = "";
	
	public int getId(){
		System.out.print("[ID]> ");
		this.id = sc.nextInt();
		
		return this.id;
	}
	
	public String getTitre() {
		System.out.print("[titre]> ");
		this.titre = sc.nextLine();
		
		return this.titre;
	}
	
	public String getAutheur() {
		System.out.print("[autheur]> ");
		this.autheur = sc.nextLine();
		
		return this.autheur;
	}
	
	public String getEdition() {
		System.out.print("[edition]> ");
		this.edition = sc.nextLine();
		
		return this.edition;
	}
	
	public static Statement getStatement() throws SQLException {
		Connexion connexionObj = new Connexion();
		Connection connexionDb = connexionObj.getDatabase();	
		
		return connexionDb.createStatement();
	}
	
	public static int getSize() throws SQLException {
		String query = "SELECT count(*) AS size FROM Livres";
		ResultSet result = getStatement().executeQuery(query);
		int size = 0;
		while (result.next()) {
			size = result.getInt("size");
		}
		
		return size;
	}
	
	public void getTable() throws SQLException {
		String query = "SELECT * FROM Livres";
		ResultSet result = getStatement().executeQuery(query);
		
		String[] header = new String[] {"ID", "Titre", "Autheur", "Edition"};
		int i = 0;
		String[][] data = new String[getSize()][4];
		
		while (result.next()) {
			data[i][0] = result.getInt("id") + "";
			data[i][1] = result.getString("titre");
			data[i][2] = result.getString("autheur");
			data[i][3] = result.getString("edition");
		i++;
		}
		
		DefaultTableModel model = new DefaultTableModel(data, header);
		
		JTable table = new JTable(model);
		table.setShowGrid(true);
		table.setShowVerticalLines(true);
		
		JScrollPane pane = new JScrollPane(table);
		JPanel panel = new JPanel();
		panel.add(pane);
		
		JFrame frame = new JFrame("~ Listes des livres ~");
		frame.add(panel);
		frame.setSize(500, 250);
		frame.setLocationRelativeTo(null);
		frame.setVisible(true);
		frame.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
	}
	
	public void add(String titre, String autheur, String edition) throws SQLException {
		String query = "INSERT INTO Livres (titre,autheur,edition) VALUES ('"+titre+"','"+autheur+"','"+edition+"')";
		getStatement().executeUpdate(query);
		JOptionPane.showMessageDialog(new JFrame(), "Insertion du livre '"+titre+"' avec success !");
	}
	
	public void delete(int id) throws SQLException {
		String query = "DELETE FROM Livres WHERE (id = "+id+")";
		getStatement().executeUpdate(query);
		JOptionPane.showMessageDialog(new JFrame(), "Suppression du livre avec success !");
	}
	
	public void edit(int id, String titre, String autheur, String edition) throws SQLException {
		String query = "UPDATE Livres SET titre = '"+titre+"', autheur = '"+autheur+"', edition = '"+edition+"' WHERE (id = "+id+")";
		getStatement().executeUpdate(query);
		JOptionPane.showMessageDialog(new JFrame(), "Modification du livre avec success !");
	}
	
	
	
	
	
	
	
	
	
	
}
