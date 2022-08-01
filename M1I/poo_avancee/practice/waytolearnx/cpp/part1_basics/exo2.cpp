// calculer la somme de 2 nombres

#include <iostream>

using namespace std;

int somme(int a, int b)
{
  return a + b;
}

int main()
{
  cout << somme(1, 2) << endl;
  cout << somme(100, 200) << endl;
  cout << somme(-3, -2) << endl;
  return 0;
}