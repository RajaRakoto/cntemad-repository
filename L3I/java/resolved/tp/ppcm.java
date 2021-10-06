import java.util.Scanner;

class ppcm {

  public static void main(String[] args) {

    // title
    System.out.println("\n~ CALCUL PPCM ~");

    // input
    Scanner sc = new Scanner(System.in);
    System.out.println("\nEntrer le 1er nombre: ");
    int A = sc.nextInt(); 
    System.out.println("\nEntrer le 2e nombre: ");
    int B = sc.nextInt(); 
    
    int x = A;
    int y = B;

    //stock original value
    int[] origin = {x,y};

    while (x != y) {
      if (x < y) {
        x += A;
      }else{
        y += B;
      }
    }
    
    //output
    System.out.println("\n=> PPCM("+origin[0]+","+origin[1]+") = "+x); //puisque x = y

    //close input
    sc.close();
  }
}