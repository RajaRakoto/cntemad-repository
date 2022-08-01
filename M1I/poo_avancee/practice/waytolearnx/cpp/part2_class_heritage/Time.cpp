/*
Créer une classe appelée Time, qui a des membres de type int tels que hours, minutes et secondes.(rendez-les private)

- Un constructeur doit initialiser ces données à 0
- Un autre constructeur devrait l’initialiser à des valeurs fixes.
- Une fonction membre devrait l’afficher, au format 11:59:59.
- Une autre fonction pour renvoyer les données de chaque membre nommez-les getHours, getMin et getSec
- Une fonction membre doit ajouter deux objets de type Time passé en arguments.
- Rendre la fonction membre appropriée constante.
*/

#include <iostream>
#include <iomanip>

using namespace std;

class Time
{
private:
  int hours, minutes, seconds;

public:
  Time();                                               // ok
  Time(int _hours, int _minutes, int _seconds);         // ok
  int const getHours();                                 // ok
  int const getMin();                                   // ok
  int const getSec();                                   // ok
  void setTime(int _hours, int _minutes, int _seconds); // ok
  void const getTime();                                 // ok
  void addTime(Time &t1, Time &t2);                     // ok
};

void Time::setTime(int _hours, int _minutes, int _seconds)
{
  if (_hours > 23 || _hours < 0) throw "Error! \n";
  if (_minutes > 59 || _minutes < 0) throw "Error! \n";
  if (_seconds > 59 || _seconds < 0) throw "Error! \n";
  this->hours = _hours;
  this->minutes = _minutes;
  this->seconds = _seconds;
}

Time::Time()
{
  setTime(0, 0, 0);
}

Time::Time(int _hours, int _minutes, int _seconds)
{
  setTime(_hours, _minutes, _seconds);
}

int const Time::getHours()
{
  return this->hours;
}

int const Time::getMin()
{
  return this->minutes;
}

int const Time::getSec()
{
  return this->seconds;
}

void Time::addTime(Time &t1, Time &t2)
{
  this->seconds = t1.seconds + t2.seconds;
  this->minutes = t1.minutes + t2.minutes + (this->seconds / 60);
  this->hours = t1.hours + t2.hours + (this->minutes / 60);
  this->seconds %= 60;
  this->minutes %= 60;
}

void const Time::getTime()
{
  cout << setw(2) << setfill('0') << this->hours << ":"
       << setw(2) << setfill('0') << this->minutes << ":"
       << setw(2) << setfill('0') << this->seconds << endl;
}

int main()
{
  Time t1(4, 45, 59), t2(1, 20, 32);
  Time t3;
  t1.getTime(); // 04:45:59
  t2.getTime(); // 01:20:32

  t3.addTime(t1, t2);
  t3.getTime(); // 06:06:31

  return 0;
}
