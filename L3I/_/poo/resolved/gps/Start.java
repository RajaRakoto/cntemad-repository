public class Start {
  public static void main (String[] args){
    Point origin = new Point();
    origin.initialise(0, 0);

    PointA gps = new PointA();
    gps.initialise(4, 8);
    gps.affiche();
    gps.deplace(-15, 5);
    gps.affiche();
  }
}
