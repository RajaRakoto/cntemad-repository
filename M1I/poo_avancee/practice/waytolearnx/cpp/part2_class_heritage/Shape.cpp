/*
Écrivez un programme qui définit une classe appelée Shape avec un constructeur qui donne de la valeur à la largeur(x) et à la hauteur(y). Définir la méthode area() dans les deux sous-classes Triangle et Rectangle, qui calculent l’aire. Dans la méthode principale main, définissez deux variables, un triangle et un rectangle, puis appelez la fonction area() dans ces deux variables.

Notez que l’aire du triangle est = largeur * hauteur / 2 et l’aire du rectangle est = largeur * hauteur.
*/

#include <iostream>

using namespace std;

class Shape
{
protected:
  float x, y;

public:
  Shape(float _x, float _y);
};

Shape::Shape(float _x, float _y)
{
  this->x = _x;
  this->y = _y;
}

class Rectangle : public Shape
{
public:
  Rectangle(float _x, float _y);
  float const area();
};

Rectangle::Rectangle(float _x, float _y) : Shape(_x, _y){};

float const Rectangle::area()
{
  return this->x * this->y;
}

class Triangle : public Shape
{
public:
  Triangle(float _x, float _y);
  float const area();
};

Triangle::Triangle(float _x, float _y) : Shape(_x, _y){};

float const
Triangle::area()
{
  return (this->x * this->y) / 2;
}

int main()
{
  Rectangle rectangle(2, 3);
  Triangle triangle(2, 3);
  cout << rectangle.area() << endl; // 6
  cout << triangle.area() << endl;  // 3
  return 0;
}