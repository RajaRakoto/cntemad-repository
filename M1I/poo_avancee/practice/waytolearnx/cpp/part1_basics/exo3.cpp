// calculer la surface d'un triangle

#include <iostream>

using namespace std;

int surface(int base, int hauteur)
{
  return (base * hauteur) / 2;
}

int main()
{

  cout << surface(8, 2) << endl;
  cout << surface(7, 3) << endl;

  return 0;
}