
/**
 * @sujet - Écrivez une méthode qui renvoie le nième élément d’une séquence de Fibonacci. Une séquence de Fibonacci est une série de nombres: 0, 1, 1, 2, 3, 5, 8, 13, 21, … Le nombre suivant est trouvé en additionnant les deux nombres précédents. Supposons que les index commencent à 0, par exemple, fibonacci(0) = 0, fibonacci(1) = 1, etc…
 * @exemple - fibonacci(8)
 * @output - 21
 */

import java.util.*;

public class exo4 {

  public static int fibonacci(int _seq) {
    Stack<Integer> numbers = new Stack<Integer>();
    int a = 0, b = 1;
    numbers.push(a);
    numbers.push(b);

    while (numbers.size() <= _seq) {
        numbers.push(a + b);
        a = b;
        b = numbers.lastElement();
    }

    return (_seq == 0 ? 0 : _seq == 1 ? 1 : _seq == 2 ? 1 : b);
  }

  public static void main(String[] args) {
    Scanner sc = new Scanner(System.in);

    System.out.print("Entrer un entier: ");
    int seq = sc.nextInt();


    System.out.println("resultat: " + fibonacci(seq));
  }
}
