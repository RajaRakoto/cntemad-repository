// créez une fonction qui prend un nom et renvoie un message d’accueil sous la forme d’une chaîne.

#include <iostream>
#include <string>

using namespace std;

void welcome(string name)
{
  cout << "Hello " << name << ", Welcome to WayToLearnX!" << endl;
}

int main()
{

  welcome("Rakoto");
  welcome("Rasoa");
  welcome("Randria");
  return 0;
}