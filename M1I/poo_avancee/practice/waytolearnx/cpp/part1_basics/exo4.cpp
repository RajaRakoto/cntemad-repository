// convertir minutes en secondes

#include <iostream>

using namespace std;

int minuteToSecond(int minuteValue)
{
  return minuteValue * 60;
}

int main()
{

  cout << minuteToSecond(4) << endl;
  cout << minuteToSecond(3) << endl;

  return 0;
}