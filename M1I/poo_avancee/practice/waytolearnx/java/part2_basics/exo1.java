
/**
 * @sujet - Écrivez une méthode qui inverse une chaîne.
 * @exemple - reverse(‘WayToLearnX’)
 * @output - XnraeLoTyaW
 */

import java.util.*;

public class exo1 {

  public static String reverse(String _str) {

    String str = "";
    String[] arr = _str.split(""); // convertir en array

    for (int i = arr.length - 1; i >= 0; i--) {
      str += arr[i];
    }

    return str;
  }

  public static void main(String[] args) {
    Scanner sc = new Scanner(System.in);
    System.out.print("Entrer une chaine: ");
    String str = sc.nextLine();

    System.out.println("Result: " + reverse(str));
  }
}
