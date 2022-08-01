#include <iostream>

using namespace std;

class Vecteur {
  // attrib.s
  private:
    float x, y, xp, yp;

  // init constructor.s | destructor | getters | setters | method.s
  public:
    Vecteur(float _x, float _y, float _xp, float _yp); // constructeur
    ~Vecteur(); // destructeur
    float getX(); // getter pour x
    float getY(); // getter pour y
    float getXp(); // getter pour l'extremitE x
    float getYp(); // getter pour l'extremitE y
    void getVector(); // consultation d'un vecteur
    void setX(float _x); // setter pour x
    void setY(float _y); // setter pour y
    void setXp(float _xp); // setter pour l'extremitE x
    void setYp(float _yp); // setter pour l'extremitE y
    void setVector(float _x, float _y, float _xp, float _yp); // modification d'un vecteur
    float det(Vecteur v1, Vecteur v2); // pour calculer le determinant des 2 vecteurs
};

// def constructor.s
Vecteur::Vecteur(float _x, float _y, float _xp, float _yp) {
  this->x = _x;
  this->y = _y;
  this->xp = _xp;
  this->yp = _yp;
}

// def destructor
Vecteur::~Vecteur(){};

// getters
float Vecteur::getX() {
  return this->x;
}

float Vecteur::getY() {
  return this->y;
}

float Vecteur::getXp() {
  return this->xp;
}

float Vecteur::getYp() {
  return this->yp;
}

void Vecteur::getVector() {
  cout << "x = " << this->x << endl;
  cout << "y = " << this->y << endl;
  cout << "xp = " << this->xp << endl;
  cout << "yp = " << this->yp << endl;
}

// setters
void Vecteur::setX(float _x) {
  this->x = _x;
}

void Vecteur::setY(float _y) {
  this->y = _y;
}

void Vecteur::setXp(float _xp) {
  this->xp = _xp;
}

void Vecteur::setYp(float _yp) {
  this->yp = _yp;
}

void Vecteur::setVector(float _x, float _y, float _xp, float _yp) {
  this->x = _x;
  this->y = _y;
  this->xp = _xp;
  this->yp = _yp;
}

// method.s
float Vecteur::det(Vecteur v1, Vecteur v2) {
  return v1.getXp()*v2.getYp() - v1.getYp()*v2.getXp();
}

// test
int main() {

  // init
  Vecteur vect1(0, 0, 10, 20);
  Vecteur vect2(0, 0, 12, 18);

  cout << "det = " << vect1.det(vect2, vect1);

  return 0;
}
