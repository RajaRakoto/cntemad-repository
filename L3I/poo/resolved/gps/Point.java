public class Point {
  //constructeur
  public void initialise(int x, int y){this.x = x; this.y = y;}

  //methodes
  public void deplace(int dx, int dy){x += dx; y += dy;}
  public int getX() {return this.x;}
  public int getY() {return this.y;}

  //attributs
  private int x, y;
}
