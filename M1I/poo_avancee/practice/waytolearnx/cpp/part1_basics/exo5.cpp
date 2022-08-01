// convertir les heures en secondes

#include <iostream>

using namespace std;

int hoursToSecond(int hoursValue)
{
  return hoursValue * 60 * 60; // or hoursValue * 3600
}

int main()
{

  cout << hoursToSecond(1) << endl;
  cout << hoursToSecond(5) << endl;

  return 0;
}