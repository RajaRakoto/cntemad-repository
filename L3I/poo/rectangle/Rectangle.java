//----------------------------------
//============= OBJECT =============
//----------------------------------
public class Rectangle {

  /*
  NOTE[access]:
    - Interface (public): getters & setters + methodes
    - Implementation (private): attributs
  */

  //============= ATTRIBUTS =============
  private double largeur;
  private double hauteur;
  
  //============= METHODES =============
  public double surface(){
    return largeur * hauteur;
  }

  /*
  NOTE[arg]: on a besoin de passer un arg pour la methode superSurface car ce dernier n'est pas defini dans la class Rectangle
  */
  
  public double superSurface(double multi){ //retourne le double de la surface du rectangle
    return surface() * multi;
  }

  /*
  NOTE[getters&setters]: les methodes getters et setters sont utiles pour manipuler les attributs d'accessibilitEs "private"
  */
  
  //getters (accesseurs) | return <type attribut>
  public double getLargeur(){return largeur;}
  public double getHauteur(){return hauteur;}
  
  /*
  NOTE[setters]: l'avantage d'utiliser un manipulateur est de pouvoir mettre des tests sur les args en entrEes
  (ici la valeur de largeur et hauteur devrai etre tjrs positif)
  */
  
  /*
  NOTE[this]: si, dans une methode, un attribut est masquE alors la valeur de l'attribut peut quand meme etre referencEe a l'aide du mot reservE "this"
  Exemple: this.<attibut> est la syntaxe a utiliser en cas d'ambiguitE
        void setLargeur(double largeur){
          if (l < 0){
            System.out.println("error! largeur negatif");
          }else{this.largeur = largeur;}
  }
  */

  //setters (manipulateurs) | void
  public void setLargeur(double largeur){
    if (largeur < 0){
      System.out.println("error! largeur negatif");
    }else{this.largeur = largeur;}
  }
  public void setHauteur(double h){ //on peut ignorer le mot cle this si le nom de l'arg est different de l'attribut
    if (h < 0){
      System.out.println("error! hauteur negatif");
    }else{hauteur = h;}
  }
}

//--------------------------------
//============= MAIN =============
//--------------------------------
class Start { 
   public static void main (String[] args){

    //intent
    Rectangle rect1 = new Rectangle();

    //def - on a utiliser le manipulateur setters pour modifier la valeur des attributs de rect1 
    rect1.setLargeur(20);
    rect1.setHauteur(10);

    //output
    System.out.println("Surface = " + rect1.surface());
    System.out.println("Surface(x2) = " + rect1.superSurface(2));


  }
}