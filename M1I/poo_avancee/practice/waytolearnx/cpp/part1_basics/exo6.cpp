// verifier si deux entiers sont egaux ou pas
#include <iostream>

using namespace std;

bool checkEqual(int a, int b)
{
  return (a == b) ? true : false;
}

int main()
{
  cout << checkEqual(9, 6) << endl;
  cout << checkEqual(4, 4) << endl;
  cout << checkEqual(1, 2) << endl;

  return 0;
}