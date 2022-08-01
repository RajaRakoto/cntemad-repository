#include <iostream>
#include <fstream>
#include <string>

using namespace std;

int main()
{

  string error("Erreur lors de l'ouverture du fichier !");

  // ecrire sur un fichier
  ofstream myFileToWrite("./data/file", ios::app);

  if (myFileToWrite)
  {
    myFileToWrite << "premiere phrase !" << endl;
    myFileToWrite << "deuxieme phrase !" << endl;
    myFileToWrite << "troisieme phrase !" << endl;
  }
  else
  {
    cout << error;
  }

  // lire sur un fichier
  ifstream myFileToRead("./data/file");

  if (myFileToRead)
  {

    // par caractere avec get()
    char c;
    while (myFileToRead.get(c))
    {
      cout << c << endl;
    }

    // par ligne avec getline()
    string line;
    while (getline(myFileToRead, line))
    {
      cout << line << endl;
    }
  }
  else
  {
    cout << error;
  }

  return 0;
}