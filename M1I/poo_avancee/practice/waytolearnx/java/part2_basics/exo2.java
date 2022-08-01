
/**
 * @sujet - Écrivez une méthode qui renvoie le plus grand entier dans un tableau. Vous pouvez supposer que le tableau contient au moins un élément.
 * @exemple - int[] tab = {1, 2, 9, 4};
 * @ouput - 9
 */

import java.util.*;

public class exo2 {

  public static int maximum(Stack<Integer> arr) {

    int max = arr.firstElement();

    for (int n : arr) {
      max = (n > max) ? n : max;
    }

    return max;
  }

  public static void main(String[] args) {

    Scanner sc = new Scanner(System.in);
    Stack<Integer> numbers = new Stack<Integer>();

    System.out.print("Combien de nombre voulez-vous entrer: ");
    int size = sc.nextInt();

    for (int i = 0; i < size; i++) {
      System.out.print("Entrer le nombre (" + (i + 1) + "): ");
      int n = sc.nextInt();
      numbers.push(n);
    }

    System.out.println("Le maximum parmis les nombres est: " + maximum(numbers));
  }
}
