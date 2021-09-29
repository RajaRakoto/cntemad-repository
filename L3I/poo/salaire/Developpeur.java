public class Developpeur extends Personne {
  
  //attribut
  private String specialite;

  //constructeur 
  public Developpeur (int id, String nom, String prenom, double salaire, String specialite){
    super (id, nom, prenom, salaire);
    this.specialite = specialite;
  }

  //getter
  public String getSpecialite (){
    return this.specialite;
  }

  //setter
  public void setSpecialite (String specialite){
    this.specialite = specialite;
  }

  //methode 
  public double calculSalaire (){
    return (getSalaire()*20/100)+getSalaire();
  }

  public void start (){
    System.out.println("Je m'appelle " + getNom() + " " + getPrenom() + ", ma specialitE est " + getSpecialite() + " et je gagne " + calculSalaire() + " par mois.");
  }
}
