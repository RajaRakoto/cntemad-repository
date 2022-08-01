/*
Ecrire un programme qui demande a l'utilisateur de saisir 10 entiers qui seront stockEs dans un tableau. Le programme doit trier le tableau par ordre croissant et doit afficher le tableau (trie par selection)
*/

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

  // parcours du tableau (trie par selection)
  for (int i(0); i < n.size() - 1; i++)
  {
    int min(i);
    for (int j(i + 1); j < n.size(); j++)
    {
      if (n[j] < n[min])
      {
        min = j;
      }
    }
    int tmp(n[i]);
    n[i] = n[min];
    n[min] = tmp;
  }

  // resultat
  cout << "resultat: ";
  for (int &n : n)
  {
    cout << n << " ";
  }

  return 0;
}