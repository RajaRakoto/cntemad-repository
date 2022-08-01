#include <iostream>

using namespace std;

int main()
{
  int number;

  cout << "Entrer un nombre: ";
  cin >> number;

  int fact(number);
  int tmp(number - 1);

  while (tmp > 1)
  {
    fact *= tmp;
    tmp--;
  }

  cout << "Factorielle de " << number << " est: " << fact;

  return 0;
}