/**
 * @sujet - Effectuez une opération d’addition sur des nombres complexes à l’aide d’une classe Java appelée « Complex ». Le programme doit demander la partie réelle et imaginaire de deux nombres complexes et afficher les parties réelle et imaginaire de leur somme.
 * @output
  Entrer la partie reelle du premier nombre: 1
  Entrer la partie imaginaire du premier nombre: 4
  Entrer la partie reelle du deuxieme nombre: 2
  Entrer la partie imaginaire du deuxieme nombre: 3
  La somme est: 3 + 7i
 */

import java.util.Scanner;

public class Complex {
  
  // attrib.s
  private int real, imag;

  // constructor.s
  Complex(int _real, int _imag) {
    this.real = _real;
    this.imag = _imag;
  }
  
  // method.s
  private Complex sumEngine(Complex _c) {
    _c.real += this.real;
    _c.imag += this.imag; 
    return _c;
  }

  public String sum(Complex _c) {
    Complex result = this.sumEngine(_c);
    return (result.real + " + " + result.imag + "i");
  }

  public static void main(String[] args) {
    Scanner sc = new Scanner(System.in);
    
    System.out.print("Entrer la partie reelle du premier nombre: ");
    int r1 = sc.nextInt();

    System.out.print("Entrer la partie imaginaire du premier nombre: ");
    int i1 = sc.nextInt();

    System.out.print("Entrer la partie reelle du deuxieme nombre: ");
    int r2 = sc.nextInt();

    System.out.print("Entrer la partie imaginaire du deuxieme nombre: ");
    int i2 = sc.nextInt();

    Complex c1 = new Complex(r1, i1);
    Complex c2 = new Complex(r2, i2);

    System.out.println("La somme est: " + c1.sum(c2));

    sc.close();
  }
}
