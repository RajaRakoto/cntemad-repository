import java.util.Scanner;

/* PROGRAMME QUI PERMET D'ECHANGER LA VALEUR DES 2 VARIABLES DIFFERENTES a ET b */

public class SwitchNumber {

  public static void main(String[] args){

    //init Scanner
    Scanner input = new Scanner(System.in);

    //input
    System.out.print("Entrer a = ");
    int a = input.nextInt();
    System.out.print("Entrer b = ");
    int b = input.nextInt();
    
    //output BEFORE
    System.out.println("*** BEFORE ***");
    System.out.println("a = "+a);
    System.out.println("b = "+b);

    //call function
    switchNbr(a, b);
    
  }
  
  private static void switchNbr(int a, int b){

    //core
    int tmp = a; // tmp: temporary variable
    a = b;
    b = tmp;

    //output AFTER
    System.out.println("*** AFTER ***");
    System.out.println("a = "+a);
    System.out.println("b = "+b);
  }

}