package jdbcEtudiant;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class Connexion {

	public Connection getJavaDatabase() throws SQLException {
		
		//athentification properties
		String user = "root";
		String password = "";
		String database = "java_etudiant";
		String url = "jdbc:mysql://localhost/"+database+"?useSSL=false";
		
		//get a connection to database
		Connection connection = DriverManager.getConnection(url, user, password);
		
		//exception management
		try {
			if (connection != null) {
		        System.out.println("\n[connex]: Connexion dans la base de donnees \""+database+"\" etablie !\n");
		    }
		}
		catch (Exception e) {
			e.printStackTrace();
			System.out.println("\n[connex]: Erreur de connexion a la base de donnees \""+database+"\"\n");
		}
		
	
		return connection;
	}
}
