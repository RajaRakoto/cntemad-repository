// creez une fonction qui prend un tableau et renvoie le dernier element du tableau

#include <iostream>

using namespace std;

int getLastElement(int array[], int length)
{
  return array[length - 1];
}

int main()
{

  int tab1[4] = {1, 2, 3, 4};
  int tab2[3] = {8, 7, 6};
  int tab3[1] = {1};

  cout << getLastElement(tab1, 4) << endl;
  cout << getLastElement(tab2, 3) << endl;
  cout << getLastElement(tab3, 1) << endl;
  return 0;
}