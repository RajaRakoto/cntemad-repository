import java.util.Scanner;

public class sujet2017 {

  public static void exo1(){
    System.out.println("############");
    System.out.println("####EXO1####");
    System.out.println("############");

    System.out.println("a) int est de type primitif");
    System.out.println("b) Les variables non autorisE sont: pourquoi#pas, -plus, @adresse ");
  }
  
  public static void exo2(){
    System.out.println("############");
    System.out.println("####EXO2####");
    System.out.println("############");

    //appeller l'instance scanner pour l'entrer d'une valeur
    Scanner sc = new Scanner(System.in);
    
    //input
    System.out.print("Entrer un nombre: ");
    int nbr = sc.nextInt();
    
    //condition de poursuite (les 10 nombres qui suit nbr)
    int end = nbr + 10;
    
    for (int i = nbr; i <= end; i++){
      System.out.println(i); 
    }
  }
  
  public static void exo3(){
    System.out.println("############");
    System.out.println("####EXO3####");
    System.out.println("############");

    int[] array = {0,0,0,0,0,0,1,2,4,2,1};
    System.out.println("Grade distribution:");

    /*
      int things = 10;
      System.out.printf("%0Xd", things);

        exemple:
        input => %02d | output => 10
        input => %05d | output => 00010
        input => %07d | output => 0000010
    */


    for (int counter = 0; counter < array.length; counter++) {
      if (counter == 10){
        System.out.printf("%5d:",100);
      }else{
        System.out.printf("%02d-%02d:", counter*10, counter*10+9);
      }

      for (int stars = 0; stars < array[counter]; stars++) {
        System.out.print("*");
        System.out.println();
      }
    }

    /*
    OUTPUT {
      Grade distribution:
      00-09:10-19:20-29:30-39:40-49:50-59:60-69:*
      70-79:*
      *
      80-89:*
      *
      *
      *
      90-99:*
      *
        100:*
    }

      NOTES:
      si count = X | array[X] = Y | X0-X9:
      si Y = 1 alors X0-X9:*
      si Y = 2 alors {
        X0-X9:*
        *
      }
      si Y = 3 alors {
        X0-X9:*
        *
        *
      }
      si Y = 4 alors {
        X0-X9:*
        *
        *
        *
      }
    */
  }

  public static void exo4(){
    System.out.println("############");
    System.out.println("####EXO4####");
    System.out.println("############");

    int[][] pascal = new int[5][5];

    for (int i = 0; i < pascal.length; i++) {
      pascal[i][0] = 1; //triangle de pascal (init)

      for (int j = 1; j < pascal.length; j++) {
        if (i>0){
          pascal[i][j] = pascal[i-1][j-1] + pascal[i-1][j];
        }
      }
    }

    //affichage
    for (int ligne = 0; ligne < pascal.length; ligne++) {
      for (int col = 0; col < pascal.length; col++) {
        System.out.printf("%4d",pascal[ligne][col]); //%4d espacement entre [ligne][col]
      }
        System.out.printf("\n"); //retour chariot a chaque [ligne][col] completE (5fois)
    }
    /*
    OUTPUT {
      1   0   0   0   0
      1   1   0   0   0
      1   2   1   0   0
      1   3   3   1   0
      1   4   6   4   1
    }
    */
  }

  public static void main(String[] args) {
    
    exo1();
    System.out.println("");
    exo2();
    System.out.println("");
    exo3();
    System.out.println("");
    exo4();
   
      System.out.println();
    }
    

    

    

  

}
