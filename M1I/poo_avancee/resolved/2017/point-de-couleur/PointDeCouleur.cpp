#include <iostream>
#include <string>

using namespace std;

// creation de la class point
class Point
{
protected:
  int x, y;
  Point(int _x, int _y);

public:
  ~Point();
  void affichage();
};

// constructeur de la class point
Point::Point(int _x, int _y)
{
  this->x = _x;
  this->y = _y;
  this->affichage();
}

// methode permettant de tracer l'utilisation de la class point
void Point::affichage()
{
  cout << "Classe Point utilisEe !" << endl;
}

// destructeur de la class point
Point::~Point(){};

// creation de la class couleur
class Couleur
{
protected:
  string color;
  Couleur(string _color);

public:
  ~Couleur();
  void affichage();
};

// constructeur de la class couleur
Couleur::Couleur(string _color)
{
  this->color = _color;
  this->affichage();
}

// methode permettant de tracer l'utilisation de la class couleur
void Couleur::affichage()
{
  cout << "Classe Couleur utilisEe !" << endl;
}

// destructeur de la class couleur
Couleur::~Couleur(){};

// creation de la class derivEe pointdecouleur avec un heritage multiple par la class de base point et couleur
class PointDeCouleur : public Point, public Couleur
{
public:
  // constructeur paramétré pour la class pointdecouleur
  PointDeCouleur(int _x, int _y, string _color) : Point(_x, _y), Couleur(_color)
  {
    this->x = _x;
    this->y = _y;
    this->color = _color;
    this->affichage();
  }

  // getters & setters pour les points x, y et la couleur
  int getX()
  {
    return this->x;
  }

  int getY()
  {
    return this->y;
  }

  string getColor()
  {
    return this->color;
  }

  void setX(int _x)
  {
    this->x = _x;
  }

  void setY(int _y)
  {
    this->y = _y;
  }

  void setColor(string _color)
  {
    this->color = _color;
  }

  // methode permettant de tracer l'utilisation de la class point
  void affichage()
  {
    cout << "Classe PointDeCouleur utilisEe !" << endl;
  }

  // destructeur pour la class pointdecouleur
  ~PointDeCouleur(){};
};

int main()
{
  PointDeCouleur i(5, -2, "magenta");
  cout << "x = " << i.getX() << " | y = " << i.getY() << " | couleur = " << i.getColor() << endl;

  return 0;
}
