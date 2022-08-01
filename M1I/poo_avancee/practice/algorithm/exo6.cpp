/*
Ecrire un programme qui demande a l'utilisateur de saisir 10 entiers stockEs dans un tableau. Le programme doit ensuite afficher soit "le tableau est croissant", soit "le tableau est decroissant", soit "le tableau est constant", soit "le tableau est quelconque"
*/

#include <iostream>
#include <vector>
#include <string>

using namespace std;

int main()
{
  // declaration
  vector<int> n;
  string status;

  // saisi des 10 entiers
  for (int i(0); i < 10; i++)
  {
    int tmp;
    cout << "Entrer l'entier [" << i + 1 << "]: ";
    cin >> tmp;
    n.push_back(tmp);
  }

  // test constant
  for (int &tmp : n)
  {
    status = (n[0] == tmp) ? "constant" : "quelconque";
    if (n[0] != tmp)
    {
      break;
    }
  }

  // test non constant
  if (status == "quelconque")
  {
    for (int i(0); i < n.size() - 2; i++)
    {
      if (n[i] < n[i + 1])
      {
        status = "croissant";
        if (n[i + 1] > n[i + 2])
        {
          status = "quelconque";
          break;
        }
      }
      else if (n[i] > n[i + 1])
      {
        status = "decroissant";
        if (n[i + 1] < n[i + 2])
        {
          status = "quelconque";
          break;
        }
      }
    }
  }

  // resultat
  string prefix("le tableau est ");
  string result((status == "constant") ? prefix + "constant" : (status == "croissant") ? prefix + "croissant" : (status == "decroissant") ? prefix + "decroissant" : prefix + "quelconque");
  cout << result;

  return 0;
}