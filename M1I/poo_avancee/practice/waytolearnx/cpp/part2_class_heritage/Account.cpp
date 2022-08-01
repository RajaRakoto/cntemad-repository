/*
Ecrivez un programme qui simule la gestion d’un simple compte bancaire. Le compte est créé avec un solde initial. Il est possible de déposer et de retirer des fonds, d’ajouter des intérêts et de connaître le solde actuel. Cela devrait être implémenté dans une classe nommée Account qui comprend:

- Un constructeur par défaut qui met le solde initial à zéro.
- Un constructeur qui accepte une balance initial comme paramètre.
- Une fonction getBalance qui renvoie le solde actuel.
- Une méthode deposit pour déposer un montant spécifié.
- Une méthode withdraw pour retirer un montant spécifié.
- Une méthode addInterest pour ajouter de l’intérêt au compte.

La méthode addInterest prend le taux d’intérêt comme paramètre et modifie le solde du compte en solde * (1 + taux d’intérêt).
*/

#include <iostream>

using namespace std;

class Account
{
private:
  int balance;

public:
  Account();                          // ok
  Account(int _balance);              // ok
  int const getBalance();             // ok
  void deposit(int _balance);         // ok
  void withDraw(int _balance);        // ok
  void addInterest(double _interest); // ok
};

Account::Account()
{
  this->balance = 0;
}

Account::Account(int _balance)
{
  this->balance = _balance;
}

int const Account::getBalance()
{
  return this->balance;
}

void Account::deposit(int _balance)
{
  if (_balance <= 0)
    throw "error !";
  this->balance += _balance;
}

void Account::withDraw(int _balance)
{
  if (_balance <= 0)
    throw "error !";
  this->balance -= _balance;
}

void Account::addInterest(double _interest)
{
  this->balance *= 1 + _interest;
}

int main()
{
  Account account1;
  Account accoun2(3000);

  account1.deposit(100);
  accoun2.withDraw(1000);
  account1.addInterest(0.3);

  cout << account1.getBalance() << "\n"; // 130
  cout << accoun2.getBalance();          // 2000
  return 0;
}