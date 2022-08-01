/*
exo3:
Écrivez une classe C++ appelée « Student » avec les membres suivant :

- nom (de type char),
- note1, note2 (de type int)

Le programme demande à l’utilisateur d’entrer le nom et les notes. calc_moy() calcule la note moyenne et show() affiche le nom et la note moyenne.
*/

#include <iostream>
#include <string>

using namespace std;

class Student
{
private:
  string nom;
  int note1, note2;

public:
  Student(string _nom, int _note1, int _note2);
  int calc_moy();
  void show();
};

Student::Student(string _nom, int _note1, int _note2)
{
  this->nom = _nom;
  this->note1 = _note1;
  this->note2 = _note2;
}

int Student::calc_moy()
{
  return (this->note1 + this->note2) / 2;
}

void Student::show()
{
  cout << "\nNom: " << this->nom << endl;
  cout << "Moyenne: " << calc_moy();
}

int main()
{
  string nom;
  int note1, note2;

  cout << "Entrez le nom de l'etudiant: ";
  cin >> nom;

  cout << "Entrez note1: ";
  cin >> note1;

  cout << "Entrez note2: ";
  cin >> note2;

  Student student(nom, note1, note2);
  student.show();

  return 0;
}