#include <iostream>
#include <string>

using namespace std;

int main()
{

  int age(18);
  int *agePointer(0);

  agePointer = &age;

  // affichier leurs adresses memoires
  cout << agePointer << endl;
  cout << &age << endl;

  // modifier la valeur de la variable pointEe
  *agePointer = 20;

  cout << age; // 20

  // allocation dynamique
  string *nom(0);
  nom = new string; // allouer une case memoire au hasard

  cout << "\nEntrer votre nom: ";
  cin >> *nom;

  cout << "Votre nom est " << *nom; // affiche la valeur de la case pointEe

  // liberation de memoire
  delete nom;
  nom = 0;

  return 0;
}