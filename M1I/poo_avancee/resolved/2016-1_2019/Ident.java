import java.util.*;

class Indent {
  // attrib.s
  protected static int maxId = 0;
  private int id;

  // constructor.s
  public Indent() {
    this.id = ++this.maxId;
    System.out.println("object num " + this.id + " init !");
  }

  // method.s
  public int getIndent() {
    return this.id;
  }

  public int getIndentMax() {
    return this.maxId;
  }

  public static void main(String[] args) {
    Indent a = new Indent();
    Indent b = new Indent();
    Indent c = new Indent();

    // recuperation de l'indentifiant attribuE a chaque objet crEe
    System.out.println("b(id) = " + b.getIndent());
    System.out.println("a(id) = " + a.getIndent());
    System.out.println("c(id) = " + c.getIndent());

    // recuperation du dernier identifiant creE 
    System.out.println("last object id = " + a.getIndentMax()); 
  }
}

