#include <iostream>
#include <string>

using namespace std;

int main()
{

  int qiValue(150);
  string firstName("Albert"), lastName("Einstein");

  cout << "Vous vous appelez " << firstName << " " << lastName << " et votre QI est " << qiValue << endl;

  int age(0);
  cout << "Quel age avez vous ?" << endl;
  cin >> age;
  cout << "Vous avez " << age << "ans";

  return 0;
}