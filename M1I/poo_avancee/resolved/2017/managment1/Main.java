import java.util.*;

abstract class Personne {
  // attrib.s
  protected int id;
  protected String nom;
  protected String prenom;
  protected double salaire;

  // constructor.s
  Personne(int _id, String _nom, String _prenom, double _salaire) {
    this.id = _id;
    this.nom = _nom;
    this.prenom = _prenom;
    this.salaire = _salaire;
  }

  // method.s
  public double calculerSalaire() {
    return this.salaire;
  };
}

class Developpeur extends Personne {
  // attrib.s
  private String specialite;

  // constructor.s
  Developpeur(int _id, String _nom, String _prenom, double _salaire) {
    super(_id, _nom, _prenom, _salaire);
  }

  // method.s
  public double calculerSalaire() {
    return this.salaire + ((this.salaire * 20) / 100);
  }
}

class Manager extends Personne {
  // attrib.s
  private String service;

  // constructor.s
  Manager(int _id, String _nom, String _prenom, double _salaire) {
    super(_id, _nom, _prenom, _salaire);
  }

  // method.s
  public double calculerSalaire() {
    return this.salaire + ((this.salaire * 35) / 100);
  }
}

public class Main {

  public static void main(String[] args) {

    // creation des 2 developpeurs
    Developpeur dev1 = new Developpeur(1, "nom1", "prenom1", 2000);
    Developpeur dev2 = new Developpeur(2, "nom2", "prenom2", 1500);

    // creation des 2 managers
    Manager manag1 = new Manager(3, "nom3", "prenom3", 700);
    Manager manag2 = new Manager(4, "nom4", "prenom4", 2000);

    // affichage
    List<Developpeur> dev = new ArrayList<Developpeur>();
    List<Manager> manag = new ArrayList<Manager>();
    dev.add(dev1);
    dev.add(dev2);
    manag.add(manag1);
    manag.add(manag2);  

    System.out.println("~ Liste des developpeurs ~\n");
    for (int i = 0; i < dev.size(); i++) {   
      Developpeur d = dev.get(i);
      System.out.println("id: "+d.id);     
      System.out.println("nom: "+d.nom);
      System.out.println("prenom: "+d.prenom);
      System.out.println("salaire: "+d.calculerSalaire()+"\n");
    } 

    System.out.println("\n-------------------\n");

    System.out.println("~ Liste des managers ~\n");
    for (int i = 0; i < manag.size(); i++) {   
      Manager m = manag.get(i);
      System.out.println("id: "+m.id);     
      System.out.println("nom: "+m.nom);
      System.out.println("prenom: "+m.prenom);
      System.out.println("salaire: "+m.calculerSalaire()+"\n");
    } 
  }
}