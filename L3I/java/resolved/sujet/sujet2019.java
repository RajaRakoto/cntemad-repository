package mg.raja.sujet;

public class sujet2019 {

	private static void exo1(){

	    /*
	    NOTE:
	    Il existe 2 types de varibales en java:
	      > Type simple (primitif)
	      > Type complexe (objet)
	    */

	    System.out.println("############");
	    System.out.println("####EXO1####");
	    System.out.println("############");
	    System.out.println("=> 2 exemples de type primitif");
	    System.out.println("- byte");
	    System.out.println("- int");
	    System.out.println("=> Scanner est de type complexe (objet)"); //ou String
	  }
	  

	  private static void exo2(){

	    /*
	    NOTE:
	      Si la condition de poursuite est vraie, l'instruction qui le suit sera toujours executE
	    */

	    System.out.println("############");
	    System.out.println("####EXO2####");
	    System.out.println("############");

	    for (int j=0; j<6; j++){
	      for (int e=j; e<5; e++){ //parcours e = parcous complet de j - 1
	        System.out.print("-"); //diff sujet2018
	      }
	      for (int i=6-j ; i<7; i++){
	        System.out.print(i);
	      }
	      System.out.println(); 
	    }
	  }
	  

	  private static void exo3(){

	    System.out.println("############");
	    System.out.println("####EXO3####");
	    System.out.println("############");

	    //declaration du tableau 2D
	      double[][] tab = new double[][]{  
	        {12 , 0 , 10.5},
	        {13 , 7.5 , 0},
	        {14 , 6 , 8},
	        {17 , 0 , 10},
	        {15 , 13 , 12.5},
	        {0 , 19 , 6}
	      };
	    
	      //[test]: affichage de l'element du tableau | tab[line][column]
	      // System.out.println("1er element: "+tab[0][1]);

	      //parcours de tout les elements du tab
	    int nullValue = 0; //compteur de valeur nulle

	    //parcours tab2D
	    for (int i = 0; i < tab.length; i++){
	        for (int j = 0; j <= 2; j++){
	        //check null value in tabs
	          if (tab[i][j] == 0.0){ //0.0 car tab est de type double
	            System.out.println("null found");
	            nullValue++; //incrementation du compteur
	          }
	        } 
	    }

	    //output nullValue
	    System.out.print("Nombres de valeurs nulles: "+ nullValue);
	  }

	    public static void main (String[] args){

	      exo1();
	      
	      System.out.println();
	      exo2();                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 
	      /*
	      OUTPUT {
	        -----6
	        ----56
	        ---456
	        --3456
	        -23456
	        123456
	      }
	      */
	      
	      System.out.println();
	      exo3();
	      
	      System.out.println();
	    }
	}