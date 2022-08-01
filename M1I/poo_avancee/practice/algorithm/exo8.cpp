/*
Ecrire un programme qui demande a l'utilisateur de saisir 10 entiers qui seront stockEs dans un tableau. Le programme doit trier le tableau par ordre croissant et doit afficher le tableau (trie a bulle)
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

  // parcours du tableau (trie a bulle)
  for (int i(0); i < n.size() - 1; i++)
  {
    for (int j(0); j < n.size() - 1 - i; j++)
    {
      if (n[j + 1] < n[j])
      {
        int tmp(n[j]);
        n[j] = n[j + 1];
        n[j + 1] = tmp;
      }
    }
  }

  // resultat
  cout << "resultat: ";
  for (int &n : n)
  {
    cout << n << " ";
  }

  return 0;
}