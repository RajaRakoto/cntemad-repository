// exo2: ecrivez une classe « Somme » ayant deux variables « n1 » et « n2 » et une fonction membre « sum() » qui calcule la somme. Dans la méthode principale main demandez à l’utilisateur d’entrez deux entiers et passez-les au constructeur par défaut de la classe « Somme » et afficher le résultat de l’addition des deux nombres.

#include <iostream>

using namespace std;

class Somme
{
  // attrib init
private:
  int a, b;

  // constructor & method.s init
public:
  Somme(int _a, int _b);
  int sum();
};

// constructor def
Somme::Somme(int _a, int _b)
{
  this->a = _a;
  this->b = _b;
}

// method.s def
int Somme::sum()
{
  return (this->a + this->b);
}

int main()
{
  int a, b;
  cout << "Entrez a: ";
  cin >> a;
  cout << "Entrez a: ";
  cin >> b;

  Somme somme(a, b);

  cout << "Somme = " << somme.sum();
  return 0;
}