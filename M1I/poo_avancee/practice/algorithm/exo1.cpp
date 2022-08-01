/* Ecrire un programme qui demande a l'utilisateur de saisir 10 entiers stockEs dans un tableau. Le programme doit afficher le nombre d'entiers superieurs ou egaux a 10 */

#include <iostream>
#include <vector>

using namespace std;

int main()
{
  // declaration
  vector<int> n;

  // saisi des 10 entiers
  for (int i(0); i < 10; i++)
  {
    int tmp;
    cout << "Entrer l'entier [" << i + 1 << "]: ";
    cin >> tmp;
    n.push_back(tmp);
  }

  // parcours du tableau
  int counter(0);
  for (int &n : n)
  {
    counter += n >= 10 ? 1 : 0;
  }

  cout << "Nombre d'entiers superieurs ou egaux a 10: " << counter;
}