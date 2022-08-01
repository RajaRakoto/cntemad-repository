#include <iostream>
#include <string>

using namespace std;

int main()
{
  cout << "Combien vaut pi ?" << endl;
  double piUtilisateur(-1.);
  cin >> piUtilisateur;

  cin.ignore(); // si vous ne mettez pas cin.ignore() apres l'utilisation d'un chevron pour cin, la prochaine getline() ne fonctionne pas

  cout << "\nQuel est votre nom ?" << endl;
  string nomUtilisateur("Sans nom");
  getline(cin, nomUtilisateur); // getline() est une methode permettant d'omettre le chevron ">>"

  cout << "\nVous vous appelez " << nomUtilisateur << " et vous pensez que pi vaut " << piUtilisateur << "." << endl;

  return 0;
}