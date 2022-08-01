// exo1: ecrivez une class "Rectangle" ayant deux variables "a" et "b" et une fonction membre "surface()" qui retournera la surface du rectangle

#include <iostream>

using namespace std;

class Rectangle
{
  // attrib init
private:
  int a, b;

  // constructor & method.s init
public:
  Rectangle(int _a, int _b);
  int surface();
  // setter.s init
  void setA(int _a);
  void setB(int _b);
};

// constructor & method.s def
Rectangle::Rectangle(int _a, int _b)
{
  this->a = _a;
  this->b = _b;
}

int Rectangle::surface()
{
  return (this->a * this->b);
}

// setter.s def
void Rectangle::setA(int _a) {
  this->a = _a;
}

void Rectangle::setB(int _b) {
  this->b = _b;
}

int main()
{
  // pre-def
  Rectangle rect1(10, 20);
  cout << "rect1 - surface = " << rect1.surface() << endl;

  // set a & b
  Rectangle rect2(0, 0);
  int tmp;

  cout << "\nEntrez a: ";
  cin >> tmp;
  rect2.setA(tmp);

  cout << "Entrez b: ";
  cin >> tmp;
  rect2.setB(tmp);

  cout << "rect2 - surface = " << rect2.surface() << endl;
  return 0;
}