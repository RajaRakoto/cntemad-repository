/**
 * @sujet - Écrivez un programme Java qui prend trois nombres en entrée pour calculer et afficher la moyenne des nombres.
 * @exemple 
  Entrer le premier nombre : 4
  Entrer le deuxième nombre : 2
  Entrer le troisième nombre : 6
 * @output - La moyenne est 4
 */

import java.util.*;

public class exo3 {
  public static void main(String[] args) {
    Scanner sc = new Scanner(System.in);
    Stack<Float> n = new Stack<Float>();

    for (int i = 0; i < 3; i++) {
      System.out.print("Entrer le nombre (" + (i + 1) + "): ");
      float tmp = sc.nextFloat();
      n.push(tmp);
    }

    Float sum = (float) 0;
    for (Float m : n) {
      sum += m;
    }

    System.out.print("Moyenne = ");
    System.out.format("%.2f", (sum / n.size()));
  }
}
