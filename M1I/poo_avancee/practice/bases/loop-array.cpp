#include <iostream>
#include <vector>
#include <iomanip>

using namespace std;

double moyenne(vector<double> &notes)
{
  double result(0);

  for (double &note : notes)
  {
    result += note;
  }

  return result / notes.size();
}

int main()
{
  vector<double> notes;
  double input;

  for (int i(0); i < 3; i++)
  {
    cout << "note[" << i + 1 << "]: ";
    cin >> input;
    notes.push_back(input);
  }

  cout << "Moyenne = " << fixed << setprecision(2) << moyenne(notes);

  return 0;
}