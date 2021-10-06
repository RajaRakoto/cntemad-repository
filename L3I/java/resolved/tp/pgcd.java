import java.util.Scanner;

class pgcd {

  public static void main (String[] args) {

        //title
        System.out.println("\n~ CALCUL PGCD - Euclide ~");
    
        //input
        Scanner sc = new Scanner(System.in);
        System.out.println("\nEntrer le 1er nombre: ");
        int dividende = sc.nextInt(); //plus grand
        System.out.println("\nEntrer le 2e nombre: ");
        int diviseur = sc.nextInt(); //plus petit

        //echange de valeur si diviseur > dividende
        if (diviseur > dividende) {
          int temp = dividende;
          dividende = diviseur;
          diviseur = temp;
        }

        //stock original value
        int[] origin = {dividende,diviseur};

        while(diviseur!=0) //tant que diviseur est different de zero | si reste = 0 alors diviseur = 0
        {
            int reste = dividende % diviseur; 
            dividende = diviseur; //la dividende prend la valeur de diviseur
            diviseur = reste; //diviseur prend la valeur du reste
        }
        
        //output
        System.out.println("\n=> PGCD("+origin[0]+","+origin[1]+") = "+dividende); //on prend la derniere valeur du reste qui n'est pas 0 (i-e le dernier diviseur)

        //close input
        sc.close();
  }
}