package jdbcBibliothequeMinify;

import java.sql.*;
import javax.swing.*;

public class Connexion {
	public Connection getDatabase() throws SQLException {
		
		//connection properties
		String user = "root";
		String password = "";
		String url = "jdbc:mysql://localhost/java_bibliotheque";
		
		Connection connection = DriverManager.getConnection(url, user , password);
		
		try {
			if (connection != null) {
				JOptionPane.showMessageDialog(new JFrame(), "Connexion etablie !");
			}
		}
		catch (Exception e) {
			e.printStackTrace();
			JOptionPane.showMessageDialog(new JFrame(), "Erreur de connexion !");
		}
		
		return connection;
	}
}
