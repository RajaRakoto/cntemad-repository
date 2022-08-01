
/**
 * @sujet - Écrivez un programme Java qui prend un nombre en entrée et affiche sa table de multiplication jusqu’à 10.
 * @exemple - Entrer un nombre: 5
 * @output
  5 x 1 = 5
  5 x 2 = 10
  5 x 3 = 15
  5 x 4 = 20
  5 x 5 = 25
  5 x 6 = 30
  5 x 7 = 35
  5 x 8 = 40
  5 x 9 = 45
  5 x 10 = 80 
 */

import java.util.*;

public class exo1 {
  public static void main(String[] args) {

    Scanner sc = new Scanner(System.in);
    System.out.print("Entrer un nombre: ");
    int n = sc.nextInt();

    for (int i = 0; i < 10; i++) {
      System.out.println(n + " x " + (i + 1) + " = " + n * (i + 1));
    }
  }
}