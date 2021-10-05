class Eleve {

  //attributs de l'eleve
  private String nom;
  private Double note;
  
  //constructor
  Eleve (String pnom, Double pnote) {
    this.nom = pnom;
    this.note = pnote;
  }

  //getter
  public String getNom() {
    return this.nom;
  }

  public Double getNote(){
    return this.note;
  }

}
