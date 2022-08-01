#include <iostream>

using namespace std;

class Destructeur
{
public:
  int num;
  test(int); // declaration constructeur
  ~test();   // declaration destructeur
};

// definition constructeur
Destructeur::test(int n)
{
  num = n;
  cout << "++ appel constructeur - num = " << num << endl;
}

// definition destructeur
Destructeur::~test()
{
  cout << "-- appel destructeur - num =" << num << endl;
}


