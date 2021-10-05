package jdbcBibliotheque;

import java.sql.SQLException;

public class Principale {

	public static void main(String[] args) throws SQLException {
		// TODO Auto-generated method stub
		
		Livre livre1 = new Livre ("TitreLivre1", "AutheurLivre1", "EditionLivre1");
		Livre livre2 = new Livre ("TitreLivre2", "AutheurLivre2", "EditionLivre2");
		Livre livre3 = new Livre ("TitreLivre3", "AutheurLivre3", "EditionLivre3");
		
		//insertion du livre
		livre1.insert();
		livre2.insert();
		livre3.insert();
		
		//modification du livre
		livre2.edit();
		
		//suppression du livre
		livre3.delete();
		
		//acces a tous les enregistrements
		livre1.getTable();

	}

}