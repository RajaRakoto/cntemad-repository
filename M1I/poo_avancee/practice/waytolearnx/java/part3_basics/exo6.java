
import java.util.*;

public class exo6 {
  
  public static int sum(int _n) {
    int a = _n % 10;
    _n/=10;
    int b = _n % 10;
    _n/=10;
    int c = _n % 10;
    _n/=10;

    return (a+b+c);
  }
  
  public static void main(String[] args) {
    Scanner sc = new Scanner(System.in);
    boolean isValid = false;

    while (!isValid) {
      System.out.print("Entrer un entier compris entre 0 et 1000: ");
      int n = sc.nextInt();
      if (n >= 1 && n <= 999) {
        System.out.println("Resultat: " + sum(n));
        isValid = true;
      } else {
        System.out.println("Entier invalide !");
      }
    }
  }
}
