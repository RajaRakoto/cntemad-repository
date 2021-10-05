package jdbcBibliotheque;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import javax.swing.JOptionPane;
import javax.swing.JFrame;

public class Connexion {

	public Connection getJavaDatabase() throws SQLException {
		
		//interface
		final JFrame frame = new JFrame();
		
		//athentification properties
		String user = "root";
		String password = "";
		String database = "java_bibliotheque";
		String url = "jdbc:mysql://localhost/"+database+"?useSSL=false";
		
		//get a connection to database
		Connection connection = DriverManager.getConnection(url, user, password);
		
		//exception management
		try {
			if (connection != null) {
				JOptionPane.showMessageDialog(frame," Connexion dans la base de donnees \""+database+"\" etablie !");
		    }
		}
		catch (Exception e) {
			e.printStackTrace();
			JOptionPane.showMessageDialog(frame," Erreur de connexion a la base de donnees \""+database+"\" !");
		}
		
	
		return connection;
	}
}
