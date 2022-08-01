/**
 * @sujet - Un nombre premier est un nombre naturel supérieur à 1 qui n’a pas de diviseurs positifs que 1 et lui même. Écrivez une méthode qui vérifie si un nombre est un nombre premier ou pas.
 * @exemple - primeChecker(2)
 * @output - 2 est un nombre premier
 */

import java.util.*;

public class exo3 {
  
  public static Boolean primeChecker(int _n) {
    boolean primeStatus = true;
    for (int i = _n-1; i > 1; i--) {
      if (_n % i == 0) {
        primeStatus = false;
        break;
      }
    }
    return primeStatus;
  }
  
  public static void main(String[] args) {
    Scanner sc = new Scanner(System.in);

    System.out.print("Entrer un entier: ");
    int n = sc.nextInt();

    System.out.println(n + (primeChecker(n) ? " est un nombre premier" : " n'est pas un nombre premier"));
  }
}
