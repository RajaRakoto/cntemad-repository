// renvoyer le reste de 2 nombres, il existe un seul opérateur en C++, capable de fournir le reste d’une division, 2 nombres sont transmis comme paramètres. Le premier paramètre divisé par le deuxième paramètre
#include <iostream>

using namespace std;

int modulo(int a, int b)
{
  return a % b;
}

int main()
{

  cout << modulo(1, 3) << endl;
  cout << modulo(2, 4) << endl;
  cout << modulo(3, 3) << endl;

  return 0;
}