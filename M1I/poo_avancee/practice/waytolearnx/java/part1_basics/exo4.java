/**
 * @sujet - Écrivez une méthode qui calcule la factorielle d’un nombre donné.
 * @exemple - factorielle (3) = 3x2x1 = 6
 */

import java.util.*;

public class exo4 {
  public static void main(String[] args) {
    Scanner sc = new Scanner(System.in);

    System.out.print("Entrer un nombre: ");
    int n = sc.nextInt();

    int fact = 1;
    int tmp = n;

    while (tmp > 1) {
      fact *= tmp;
      tmp--;
    }

    System.out.println("Factorielle de " + n + " : " + fact);
  }
}
