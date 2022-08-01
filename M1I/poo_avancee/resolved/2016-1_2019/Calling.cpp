#include <iostream>
#include <cstddef> // biblio dependance typage byte

using namespace std;

class A
{
public:
  A();
  void f(int n, float x);
  void g(byte b);
};

// constructeur
A::A()
{
  cout << "objet initialisE !" << endl;
}

// methode 1
void A::f(int n, float x)
{
  cout << "n = " << n << endl;
  cout << "x = " << x << endl;
}

// methode 2
void A::g(byte b)
{
  cout << "b = " << to_integer<int>(b) << endl;
}

int main()
{
  // soit ces declarations
  A a;
  int n;
  byte b;
  float x;
  double y;

  // calling
  a.f(n, x);     // => correct car les variables en entrer respecte le typage des arguments lors de la declaration de la fonction membre f();
  a.f(b + 3, x); // => incorrect car dans la premiere argument b+3, seul une variable ou valeur de type entier sera acceptEe selon la regle defini pour la fonction f() alors qu'on a ici une addition sur 2 operandes dont le type est different (byte et integer)
  a.f(n, y);     // => correct car il est autorisé à passer un argument en tant que paramètre de type différent dans une fonction s'il existe une séquence de conversion implicite entre les 2 types comme le double et float.
  a.g(b + 1);    // => incorrect, meme cas que a.f(b+3,x)

  return 0;
}