/**
 * @sujet -
 * @exemple -
 * @output -
 */

import java.util.*;

public class Point {

  // attrib.s
  private double x,y;

  // constructor
  Point(double _x, double _y) {
    this.x = _x;
    this.y = _y;
  }

  // method.s
  public double distance(Point _p) {
    double result = Math.pow((_p.x-this.x),2) + Math.pow((_p.y-this.y),2);
    return Math.sqrt(result);
  }

  public static void main(String[] args) {
    Point p1 = new Point(5, 6);
    Point p2 = new Point(3, 2);
    System.out.println("La distance entre p1 et p2 est: " + p1.distance(p2));
  }
}
