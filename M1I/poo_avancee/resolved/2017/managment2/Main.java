import java.util.*;
import java.text.SimpleDateFormat;
import java.text.ParseException;

// creation de l'interface IPersonne
interface IPersonne {
  public void affiche();
  public double calculerSalaire();
}

// creation de la classe de base Profil
class Profil {
  protected int id;
  protected int code;
  protected int libelle;
}

// creation de la class derivEe Personne 
class Personne extends Profil implements IPersonne {
  private int id;
  private String nom;
  private String prenom;
  private Date dateNais;
  private double salaire;

  // constructeur pour la class personne
  Personne() {};
  Personne(int _id, int _code, int _libelle, String _nom, String _prenom, Date _dateNais, double _salaire) {
    this.id = _id;
    this.code = _code;
    this.libelle = _libelle;
    this.nom = _nom;
    this.prenom = _prenom;
    this.dateNais = _dateNais;
    this.salaire = _salaire;
  }

  // re-definition de la methode calculerSalaire()
  public double calculerSalaire() {
    if (this.nom.contains("directeur")) {
      return this.salaire + ((this.salaire * 20) / 100);
    } else {
      return this.salaire + ((this.salaire * 10) / 100);
    }
  }

  // re-definition de la methode affiche()
  public void affiche() {
    System.out.println("Je suis " + this.nom + " " + this.prenom + " ne le " + this.dateNais + ", mon salaire est de " + this.calculerSalaire() + "Ar");
  }
}

// utilitaires
class Utils {
  public static Date formatDate(String _dateValue) {
    Date date = null;
    SimpleDateFormat format = new SimpleDateFormat("dd/MM/yyyy");
    
    try {
      date = format.parse(_dateValue);
  } catch (ParseException e) {
    e.printStackTrace();
  }
  
  return date;
}
}

// test
public class Main extends Utils {
  public static void main(String[] args) {
    Personne pers1 = new Personne(1, 1000, 0001, "le directeur RAKOTO", "Be", formatDate("08/10/1970"), 1000000);
    pers1.affiche();
  }
}