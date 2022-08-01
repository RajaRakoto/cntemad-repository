import java.util.*;

public class Livre {
  // attrib.s
  private static int maxIdLivre = 0;
  private int idLivre;
  private String auteur;

  // constructor.s
  public Livre(String _auteur) {
    this.idLivre = ++this.maxIdLivre;
    this.auteur = _auteur;
    System.out.println("Livre num " + this.idLivre + " crEe !");
  }

  // method.s
  public String getAuthor() {
    return this.auteur;
  }

  public static void main(String[] args) {
    Livre livre1 = new Livre("Rakoto");
    Livre livre2 = new Livre("Rabe");
    
    System.out.println("L'auteur du premier livre est " + livre1.getAuthor());
    System.out.println("L'auteur du deuxieme livre est " + livre2.getAuthor());
  }
}
