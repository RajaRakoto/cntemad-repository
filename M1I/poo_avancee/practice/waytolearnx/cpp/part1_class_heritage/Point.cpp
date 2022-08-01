// créez une classe appelée « Point ». Cette classe doit avoir 2 entiers (x, y) en tant que membres privés, le constructeur doit définir les valeurs de x et y via des paramètres, la class doit avoir une méthode publique appelée « distance », cela prend un seul paramètre(Point) et renvoie la distance entre les 2 points

#include <iostream>
#include <math.h>

using namespace std;

class Point
{
private:
  double x, y;

public:
  Point(double _x, double _y);
  double const getX();
  double const getY();
  double distance(Point &p);
};

Point::Point(double _x, double _y)
{
  x = _x;
  y = _y;
}

double const Point::getX()
{
  return this->x;
}

double const Point::getY()
{
  return this->y;
}

double Point::distance(Point &p) // la class Point comme argument
{
  const double px = getX() - p.getX();
  const double py = getY() - p.getY();

  return sqrt(px * px + py * py);
}

int main()
{

  Point p1(5, 6);
  Point p2(3, 2);

  cout << "P1 (" << p1.getX() << "," << p1.getY() << ")" << endl;
  cout << "P2 (" << p2.getX() << "," << p2.getY() << ")" << endl;

  cout << "La distance entre P1 et P2 est : " << p1.distance(p2);

  return 0;
}