
/**
 * @sujet
  Écrivez une méthode qui renvoie « Fizz » pour des multiples de trois et « Buzz » pour des multiples de cinq.
  Pour les nombres qui sont des multiples de trois et de cinq, retournez « FizzBuzz ».
  Pour les nombres qui ne sont ni l’un ni l’autre, renvoyez le nombre saisi.
 * @exemple - fizzBuzz(15)
 * @output - FizzBuzz 
 */

import java.util.*;

public class exo2 {

  public static String FizzBuzzChecker1(Integer _n) {
    String result = "";
    Boolean test1 = _n % 3 == 0;
    Boolean test2 = _n % 5 == 0;
    result = test1 && test2 ? "FizzBuzz"
        : test1 ? "Fizz"
            : test2 ? "Buzz"
                : result;
    return (result.equals("") ? _n.toString() : result);
  }

  public static String FizzBuzzChecker2(Integer _n) {
    String res = "";
    if (_n % 3 == 0) {
      res += "Fizz";
    }
    if (_n % 5 == 0) {
      res += "Buzz";
    }
    if (res.equals("")) {
      res = _n.toString();
    }
    return res;
  }

  public static void main(String[] args) {
    Scanner sc = new Scanner(System.in);
    Stack<Integer> numbers = new Stack<Integer>();

    for (int i = 0; i < 10; i++) {
      System.out.print("Entrer le nombre (" + (i + 1) + "):");
      int n = sc.nextInt();
      numbers.push(n);
    }

    for (Integer n : numbers) {
      System.out.println(FizzBuzzChecker1(n));
    }
  }
}
