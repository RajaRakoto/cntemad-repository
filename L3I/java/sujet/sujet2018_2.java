package mg.raja.sujet;

import java.util.Scanner;

public class sujet2018_2 {

	private static void exo1(){

	    System.out.println("############");
	    System.out.println("####EXO1####");
	    System.out.println("############");

	    System.out.println("a) Java est un langage developpE initialement par Sun Microsystems puis aquise par Oracle");
	    System.out.println("b) L'interpretation des programmes JAVA est effectuee par JDK");

	    /*
	    NOTE: JDK vs JRE vs JVM
	      
	      > JDK est un kit de développement logiciel alors que JRE est un ensemble de logiciels qui permet au programme Java de s'exécuter, tandis que JVM est un environnement pour l'exécution de bytecode.

	      > La forme complète de JDK est Java Development Kit, tandis que la forme complète de JRE est Java Runtime Environment, tandis que la forme complète de JVM est Java Virtual Machine.

	      > JDK dépend de la plate-forme, JRE est également dépendant de la plate-forme, mais JVM est indépendant de la plate-forme.

	      > JDK contient des outils de développement, de débogage, etc. JRE contient des bibliothèques de classes et d'autres fichiers de prise en charge, tandis que les outils de développement logiciel ne sont pas inclus dans JVM.

	      > JDK est fourni avec le programme d'installation, d'autre part, JRE ne contient que l'environnement pour exécuter le code source alors que JVM est inclus dans les logiciels JDK et JRE. 
	    */
	  
	  }

	  private static void exo2(){

	    System.out.println("############");
	    System.out.println("####EXO2####");
	    System.out.println("############");

	    //variable 
	    int number = 0;
	    int tmp = 0;
	    int result = 0;

	    //input
	    System.out.print("Entrer le nombre (a inverser): ");
	    Scanner sc = new Scanner(System.in);
	    number = sc.nextInt();
	    
	    //inverse
	    while (number > 0){
	      tmp = number % 10;
	      result = result * 10 + tmp;
	      number /= 10;
	    }

	    //output
	    System.out.println("le nombre inversE = "+result);
	  }

	  private static void exo3(){

	    System.out.println("############");
	    System.out.println("####EXO3####");
	    System.out.println("############");
	    
	    String tmp;
	    String[] chaine = {"A","Z","C","N","P","F","G","S"};
	    
	    for (int i = 0; i < 3; i++) {
	      tmp = chaine[i];
	      chaine[i] = chaine[7-i];
	      chaine[7-i] = tmp;
	    }
	    
	    for (int i = 0; i < chaine.length; i++) {
	      System.out.print(chaine[i]+"\t");
	    }
	  }

	  private static void exo4(){

	    System.out.println("\n############");
	    System.out.println("####EXO4####");
	    System.out.println("############");

	    //saisi de valeur dans un tableau
	    //scanner init
	    Scanner sc = new Scanner(System.in);
	    //le nombre de valeur que l'utilisateur compte saisir
	    System.out.println("*** INPUT ***");
	    System.out.print("Enter value input (le nombre de valeur a saisir): ");
	    int valueInput = sc.nextInt();

	    //declaration d'un tableau (taille non limitE - variE selon value input)
	    int[] arrayValue = {0, 0, 0, 0, 0, 0, 0, 0};

	    System.out.println();
	    //saisi dans un tableau
	    for (int i=0; i<valueInput; i++){
	      //saisi de chaque valeur dans le tableau arrayValue[]
	      System.out.print("Entrer la valeur "+(i+1)+" : ");
	      arrayValue[i] = sc.nextInt();
	    }
	    System.out.println("Saisi terminE!");

	    //default value 
	    int numberNeg = 0;
	    int numberPos = 0;
	    int numberNull = 0;

	    //les nomnbres de valeurs negatives et les nombres de valeurs positives
	    for (int j=0; j<valueInput; j++){
	      //check + value
	      if (arrayValue[j] < 0){
	        numberNeg++;
	      }if(arrayValue[j] == 0){
	        numberNull++;
	      }if(arrayValue[j] > 0){ //#error: test imbriquE
	        numberPos++;
	      }
	    }

	    //output
	    System.out.println("\n*** OUTPUT ***");
	    System.out.println("Nombre(s) de valeur(s) negative(s) = "+numberNeg);
	    System.out.println("Nombre(s) de valeur(s) nulle(s) = "+numberNull);
	    System.out.println("Nombre(s) de valeur(s) positives(s) = "+numberPos);
	  }

	  public static void main(String[] args){
	    
	    exo1();
	    
	    System.out.println();
	    exo2();
	    
	    System.out.println();
	    exo3();
	    
	    System.out.println();
	    exo4();

	    System.out.println();
	  }
	}
