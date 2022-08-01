// exo4: effectuez une opération d’addition sur des nombres complexes à l’aide d’une classe C++ appelée « Complex », le programme doit demander la partie réelle et imaginaire de deux nombres complexes et afficher les parties réelle et imaginaire de leur somme.

#include <iostream>

using namespace std;

class Complex
{
private:
  double real, imag;

public:
  Complex(double _real, double _imag);
  double const getReal();
  double const getImag();
};

Complex::Complex(double _real, double _imag)
{
  this->real = _real;
  this->imag = _imag;
}

double const Complex::getReal()
{
  return this->real;
}

double const Complex::getImag()
{
  return this->imag;
}

int main()
{
  double a, ai, b, bi;

  cout << "Premier nombre" << endl;
  cout << "Entrer la partie reelle: ";
  cin >> a;
  cout << "Entrer la partie imaginaire: ";
  cin >> ai;
  cout << "\nDeuxieme nombre" << endl;
  cout << "Entrer la partie reelle: ";
  cin >> b;
  cout << "Entrer la partie imaginaire: ";
  cin >> bi;

  Complex c1(a, ai);
  Complex c2(b, bi);

  cout << "\nLa somme est " << c1.getReal() + c2.getReal() << " + " << c1.getImag() + c2.getImag() << "i";

  return 0;
}