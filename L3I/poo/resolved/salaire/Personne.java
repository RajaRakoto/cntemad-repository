abstract public class Personne {
  
  //attributs
  private int id;
  private String nom;
  private String prenom;
  private Double salaire;

  //constructeur
  public Personne (int id, String nom, String prenom, Double salaire){
    this.id = id;
    this.nom = nom;
    this.prenom = prenom;
    this.salaire =  salaire;
  }

  //getters
  public int getId (){
    return this.id;
  }

  public String getNom (){
    return this.nom;
  }

  public String getPrenom (){
    return this.prenom;
  }

  public Double getSalaire (){
    return this.salaire;
  }

  //setters
  public void setId (int id){
    this.id = id;
  }

  public void setNom (String nom){
    this.nom = nom;
  }

  public void setPrenom (String prenom){
    this.prenom = prenom;
  }

  public void setSalaire (Double salaire){
    this.salaire = salaire;
  }
}
