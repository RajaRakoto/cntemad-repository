#include <iostream>

using namespace std;

class Rectangle {
  
  // attrib.s
  private:
    float largeur, hauteur;

  // init constructor.s | destructor | method.s
  public:
    Rectangle(float _largeur, float _hauteur);
    ~Rectangle();
    float calcPerimetre();
    float calcSurface();
    void affichage();
};

// def constructor.s
Rectangle::Rectangle(float _largeur, float _hauteur) {
  this->largeur = _largeur;
  this->hauteur = _hauteur;
}

// def method.s
float Rectangle::calcPerimetre() { // 2 (largeur + hauteur)
  return (this->largeur + this->hauteur) * 2;
}

float Rectangle::calcSurface() { // largeur x hauteur
  return (this->largeur * this->hauteur);
}

// def destructor
Rectangle::~Rectangle() {};

void Rectangle::affichage() {
  cout << "Largeur = " << this->largeur << " | " << "Hauteur = " << this->hauteur << endl;
  cout << "Perimetre = " << this->calcPerimetre() << endl;
  cout << "Surface = " << this->calcSurface() << endl;
}

int main() {

  Rectangle rectangle(12.5, 56);
  rectangle.affichage(); // resultat

  return 0;
}