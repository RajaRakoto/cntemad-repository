// Écrivez un programme avec une classe mère A et une classe fille B. Les deux doivent avoir une méthode void display() qui affiche un message (différent pour la classe mère et la classe fille) .Dans la méthode principale créer un objet de la classe fille et appelez la méthode display() sur elle.

#include <iostream>
#include <string>

using namespace std;

class A
{
protected:
  string message;

public:
  A(string _message);
  void display();
};

A::A(string _message)
{
  this->message = _message;
}

void A::display()
{
  cout << this->message << endl;
}

class B : public A
{
public:
  B(string _message);
};

B::B(string _message) : A(_message){};

int main()
{
  A a("Hello A !");
  B b("Hello B !");
  a.display();
  b.display();
  return 0;
}