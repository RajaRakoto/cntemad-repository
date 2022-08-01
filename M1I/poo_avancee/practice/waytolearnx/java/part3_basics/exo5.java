/*
 * @sujet - Un palindrome est un mot qui s’écrit de la même manière après l’inversion de ce dernier. Écrivez une méthode qui vérifie si une chaîne est un palindrome.
 * @exemple - isPalindrome(‘ada’)
 * @output - ada est un palindrome
 */

import java.util.*;

public class exo5 {
  
  public static boolean isPalindrome(String _str) {
    
    int posA = 0;
    int posB = _str.length() - 1;

    while (posA < posB) {
      if (_str.charAt(posA) != _str.charAt(posB)) {
        return false;
      }
      posA++;
      posB--;
    }
    
    return true;
  }
  
  public static void main(String[] args) {
    Scanner sc = new Scanner(System.in);

    System.out.print("Entrer quelque chose: ");
    String str = sc.nextLine();

    System.out.println(str + (isPalindrome(str) ? " est un palindrome" : " n'est pas un palindrome"));
  }
}
