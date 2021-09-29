package mg.raja.sujet;

import java.util.Scanner;

public class sujet2018 {

	 //static class: sous class
	  public static class Rect {
	    //attrib
	    int largeur;
	    int longueur;

	    //constructor
	    public Rect(int largeur, int longueur){
	      this.largeur = largeur; 
	      this.longueur = longueur;
	    }

	    //methode surface()
	    public int surface (int largeur, int longueur){
	      //si condition acceptEe (1 <= larg/long <= 5)
	      return (largeur * longueur);
	    }

	    /*
	    SET = modification
	    GET = recuperation 
	    */

	    //set largeur
	    public void setLarg(int largeur){
	      this.largeur = largeur;
	    }

	    //set longueur
	    public void setLong(int longueur){
	      this.longueur = longueur;
	    }

	    //get largeur
	    public int getLarg(){
	      return largeur; 
	    }

	    //get longueur
	    public int getLong(){
	      return longueur;
	    }
	  }
	  
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
	        System.out.print(" "); //diff sujet2019
	      }
	      for (int i=6-j ; i<7; i++){
	        System.out.print(i);
	      }
	      System.out.println(); 
	    }
	  }
	  
	  public static void exo3(){

	    System.out.println("############");
	    System.out.println("####EXO3####");
	    System.out.println("############");

	     //default value
	     int defLarg = 0;
	     int defLong = 0;
	 
	     //instantiation
	     Rect rect1 = new Rect(defLarg, defLong);
	     Rect rect2 = new Rect(defLarg, defLong);
	     Rect rect3 = new Rect(defLarg, defLong);
	 
	     //list rect (ajout de chaque rectangle dans arrayRect)
	     Rect[] arrayRect = {rect1, rect2, rect3};
	 
	     //parcours de arrayRect (ajout d'une valeur(larg/long) pour chaque rectangle)
	     System.out.println("*** INPUT ***");
	     for (int i = 0; i < arrayRect.length; i++){
	       //scanner init
	       Scanner sc = new Scanner(System.in);
	       //input
	       System.out.println();
	       System.out.println("#Rectangle "+(i+1));
	       System.out.print("Enter largeur: ");
	       int valueLarg = sc.nextInt();
	       System.out.print("Enter longueur: ");
	       int valueLongueur = sc.nextInt();
	       
	       //set methode
	       arrayRect[i].setLarg(valueLarg);
	       arrayRect[i].setLong(valueLongueur);
	     }
	     
	     //affichage
	     System.out.println("\n-----------------------");
	     System.out.println("\n*** OUTPUT ***");
	     for (int j = 0; j < arrayRect.length; j++){
	       System.out.println();
	       System.out.println("#Rectangle "+(j+1));
	       System.out.println("largeur = "+arrayRect[j].getLarg());
	       System.out.println("longueur = "+arrayRect[j].getLong());
	       //test condition
	       if ((arrayRect[j].getLarg() >= 1 && arrayRect[j].getLarg() <= 5) && (arrayRect[j].getLong() >= 1 && arrayRect[j].getLong() <= 5)){
	         System.out.println("Surface = "+arrayRect[j].surface(arrayRect[j].getLarg(), arrayRect[j].getLong()));
	       }else{
	         System.out.println("Condition non remplie! ressayez SVP");
	       }
	     }
	  }

	  private static void exo4(){

	    System.out.println("############");
	    System.out.println("####EXO4####");
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
	             6
	            56
	           456
	          3456
	         23456
	        123456
	      }
	      */
	      
	      System.out.println();
	      exo3();

	      System.out.println();
	      exo4();
	      
	      System.out.println();
	    }
	}