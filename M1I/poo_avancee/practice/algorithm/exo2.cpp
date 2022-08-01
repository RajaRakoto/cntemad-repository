/* Ecrire un programme qui demande a l'utilisateur de saisir 10 entiers stockEs dans un tableau ainsi qu'un entier V. Le programme doit rechercher si V se trouve dans le tableau et afficher "V se trouve dans le tableau" ou "V ne se trouve pas dans le tableau" */

#include <iostream>
#include <vector>
#include <string>

using namespace std;

int main()
{
  // declaration
  vector<int> n;
  int V;

  // saisi des 10 entiers
  for (int i(0); i < 10; i++)
  {
    int tmp;
    cout << "Entrer l'entier [" << i + 1 << "]: ";
    cin >> tmp;
    n.push_back(tmp);
  }

  // saisi de la valeur de V
  cout << "Entrer V: ";
  cin >> V;

  // recherche de V dans n
  bool isPresent(false);
  for (int &n : n)
  {
    if (n == V)
    {
      isPresent = true;
      break;
    }
  }

  // resultat
  string result(isPresent ? "V se trouve dans le tableau" : "V ne se trouve pas dans le tableau");

  cout << result << endl;

  return 0;
}