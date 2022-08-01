#include <iostream>

using namespace std;

class Point
{
protected:
   static int pointNumber; // pour preserver la derniere valeur de l'identifiant d'un objet point crEe
public:
   int id; // pour stocker l'identifiant d'un objet point crEe
   Point(); // declaration de la constructeur
   ~Point(); // declaration de la destructeur
};

// init pointNumber
int Point::pointNumber = 0;

// definition de la constructeur
Point::Point()
{
   this->id = ++this->pointNumber; // pre-incrementation pour la premiere valeur a 1
   cout << "\nPoint numero " << this->id << " crEe !"; 
}

// definition de la destructeur
Point::~Point()
{
   cout << "\nPoint numero " << this->id << " detruit !";
}

int main()
{
   // tableau d'objet pour les 4 points
   const int size(4);
   Point *point = new Point[size]; // utilisation du mot cle new pour appeler explicitement chaque destructeur de l'objet 

   // instanciation de l'objet
   for (int i(0); i < size; i++) {
      point[i];
   }

   // destruction de l'objet
   for (int i(0); i < size; i++) {
      point[i].~Point();
   }
   
   return 0;
}