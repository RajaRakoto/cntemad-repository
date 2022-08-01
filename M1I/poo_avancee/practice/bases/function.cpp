#include <iostream>
#include <string>

using namespace std;

void rectangle(double largeur, double hauteur, char symbol)
{
  for (int i(0); i < hauteur; i++)
  {
    for (int j(0); j < largeur; j++)
    {
      cout << symbol;
    }
    cout << endl;
  }
  cout << "surface = " << largeur * hauteur;
}

int main()
{

  double largeur, hauteur;
  char symbol;

  cout << "Entrer la largeur: ";
  cin >> largeur;
  cout << "Entrer l'hauteur: ";
  cin >> hauteur;
  cout << "Entrer un symbole: ";
  cin >> symbol;

  if (largeur < 0 || hauteur < 0)
  {
    string error = (largeur < 0 && hauteur < 0) ? "Erreur ! largeur et hauteur negatif" : (largeur < 0) ? "Erreur! largeur negatif" : "Erreur ! hauteur negatif";
    cout << error;
  }
  else
  {
    rectangle(largeur, hauteur, symbol);
  }

  return 0;
}