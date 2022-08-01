/* Ecrire un programme qui demande a l'utilisateur de saisir 10 entiers stockEs dans un tableau. Le programme doit ensuite afficher l'indice du plus grand element */

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
    cout << "Entrer l'entier [index=" << i << "]: ";
    cin >> tmp;
    n.push_back(tmp);
  }

  // parcours du tableau;
  int index;
  int max(0);

  for (int j(0); j < n.size(); j++)
  {
    if (n[j] > max)
    {
      index = j;
      max = n[j];
    }
  }

  cout << "L'index du plus grand entier du tableau: " << index;

  return 0;
}