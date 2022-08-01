/* Ecrire un programme qui demande de saisir 10 entiers stockEs dans un tableau ainsi qu'un entier V. Le programme doit rechercher si V se trouve dans le tableau et doit supprimer la premiere occurence de V en decalant d'une case vers la gauche les elements suivants et en rajoutant un 0 a la fin du tableau. Le programme doit ensuite afficher le tableau final
Exemple - n = [10, 5, 6, 7, 88, 9, 9, 54, 1, 7] | V = 9 | result -> n = [10, 5, 6, 7, 88, 9, 54, 1, 7, 0]
*/

#include <iostream>
#include <vector>

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

  // parcours du tableau
  int index(0);
  for (int &tmp : n)
  {
    if (tmp == V)
    {
      for (int i(index); i < n.size(); i++)
      {
        n[i] = (i < n.size() - 1) ? n[i + 1] : n[i];
      }
      n[n.size() - 1] = 0;
      break;
    }
    index++;
  }

  // resultat
  cout << "resultat: ";
  for (int &n : n)
  {
    cout << n << " ";
  }

  return 0;
}