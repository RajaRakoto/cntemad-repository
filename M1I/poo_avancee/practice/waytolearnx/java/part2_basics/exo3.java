
/**
 * @sujet - Écrivez un programme Java pour afficher la valeur ascii d’un caractère donné.
 * @exemple - La valeur ASCII de A est: 65
 */

import java.util.*;

public class exo3 {

  public static int toAsciiValue(char _c) {
    return (int) _c;
  }

  public static void main(String[] args) {
    Scanner sc = new Scanner(System.in);
    System.out.print("Entrer un caractere: ");
    char c = sc.next().charAt(0);
    System.out.println("La valeur ASCII de " + c + " est: " + toAsciiValue(c));
  }
}
