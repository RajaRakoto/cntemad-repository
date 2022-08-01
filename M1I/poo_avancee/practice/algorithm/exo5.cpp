/*
Ecrire un programme qui demande a l'utilisateur de saisir 10 entiers stockEs dans un tableau ainsi qu'un entier V et un entier i compris entre 0 et 9. Le programme doit decaler d'une case vers la droite tous les elements a partir de l'indice i (en supprimant le dernier element du tableau) et doit mettre la valeur V dans le tableau a l'indice i. Le programme doit ensuite afficher le tableau final
Exemple - n = [10, 5, 6, 7, 88, 9, 9, 54, 1, 7] | i = 5 | V = 111 | result -> n = [10, 5, 6, 7, 88, 111, 9, 9, 54, 1]
*/

#include <iostream>
#include <vector>

using namespace std;

int main()
{

  // declaration
  vector<int> n;
  int V, i;

  // saisi des 10 entiers
  for (int i(0); i < 10; i++)
  {
    int tmp;
    cout << "Entrer l'entier [index=" << i << "]: ";
    cin >> tmp;
    n.push_back(tmp);
  }

  // saisi de i compris entre 0 - 9
  do
  {
    cout << "Entrer i: ";
    cin >> i;
  } while (i < 0 || i > 9);

  // saisi de la valeur de V
  cout << "Entrer V: ";
  cin >> V;

  // parcours du tableau
  int index(0);
  for (int index(n.size() - 1); index >= i; index--)
  {
    n[index] = (index != i) ? n[index - 1] : V;
  }

  // resultat
  cout << "resultat: ";
  for (int &n : n)
  {
    cout << n << " ";
  }

  return 0;
}