import java.util.Scanner;

public class Bases {

  /*
      SOMMAIRES
        - VARIABLES (typage)
        - CAST 
        - CONDITION (if|else - boolean - comparaison)
        - SWITCH (break)
        - TABLEAU (method - 2D)
        - BOUCLE (for - while - do while)
  */

  public static void main(String[] args){

    //instance Scanner
    Scanner sc = new Scanner(System.in);
  
    //input
    System.out.print("Enter string: ");
    String str = sc.nextLine();
    System.out.print("Enter integer: ");
    int integer = sc.nextInt();
    
    //output
    System.out.println("integer = " + integer);
    System.out.println("str = " + str);

  //======================================================================

    //AGE operation - incrementation
    byte age = 24; //input age
    age += 10; //age = age + 10;
    age++; //age = age + 1;
    String phrase = "J'ai ";
    System.out.println(phrase+age+" ans"); //output = J'ai 35 ans

  //======================================================================

    //MOYENNE - cast 
    float note1 = 12;
    float note2 = (float) 10.5; //cast to float
    float note3 = (float) 15.25;
    float moyenne = (note1 + note2 + note3)/3;
    System.out.println("Moyenne = "+moyenne);

  //======================================================================

    //CONDITION if|else - boolean - comparaison
    //exemple1
    String object0 = "car";
    boolean keyObject0;
    long priceObject0 = 60000000;

    long monney = 50000000; //input money

      if (monney >= priceObject0){
        keyObject0 = true;
        System.out.println("Vous avez la cle de la "+object0);
      }else{
        keyObject0 = false;
        System.out.println("Vous n'avez pas assez d'argent pour obtenir "+object0);
      }

    //exemple2
    boolean hasPhone = false;
    int pricePhone = 4000000;
    int myMonney = 2000000;

      if (myMonney >= pricePhone && !hasPhone){
        System.out.println("Merci d'avoir acheter ce telephone !");
      }else{
        if (hasPhone == true){
          System.out.println("Vous avez deja le telephone");
        }else{
          System.out.println("Vous n'avez pas assez d'argent pour acheter ce telephone");
        }
      }
      
  //======================================================================

    //SWITCH - break
    String catalog="car2";
      //input catalog
      switch(catalog){

        case "car0":
        int price0 = 10000000;
        System.out.println("price = "+price0);
        System.out.println("modele = car0");
        break;

        case "car1":
        int price1 = 12000000;
        System.out.println("price = "+price1);
        System.out.println("modele = car1");
        break;

        case "car2":
        int price2 = 15000000;
        System.out.println("price = "+price2);
        System.out.println("modele = car2");
        break;

      }

  //======================================================================

    //TABLEAU - equalsIgnoreCase - length - 2D
    //exemple1 
    String[] names = {"rakoto", "RakOTo", "rabe", "rasoa", "RAsoA"};

    if (names[0] == names[1]){
      System.out.println("Ce sont le meme !");
    }else{
      System.out.println("Ce ne sont pas le meme !");
    }

    if (names[3].equalsIgnoreCase(names[4])){
      System.out.println("Ce sont le meme !");
    }else{     
      System.out.print("Ce ne sont pas le meme !");
    }

    //exemple2
    int[] note = {14, 13, 5, 0};
    int div = note.length;
    int calcul = (note[0] + note[1] + note[2] + note[3]) / div;
    
    System.out.println("div = "+div);
    System.out.println("moYenne = "+calcul);

    //exemple3
    int[][] number = {
      {12 , 10, 5},
      {7 , 0, 3},
      {17, 2, 7},
    };
    
    //astuce: Xligne | Ycolonne <=> number[X-1][Y-1]
    System.out.println("1er ligne | 2e colonne = "+number[0][1]);
    System.out.println("3e ligne | 3e colonne = "+number[2][2]);
  
    //exemple4
    String chain = ("Rakoto, Rabe, Rasoa, Ranaivo");
    String[] chainTab = chain.split(",");
    System.out.println("Longueur de chainTab = "+chainTab.length);
    System.out.println("2e element de chainTab = "+chainTab[1]);

 //======================================================================

    //BOUCLE for - while - do while
    //for
    //exemple1
    for (int i=0; i<=10 ; i++){
      System.out.println("Boucle numero "+i);
    }

    //exemple2
    int count = 1;
    for (String str : chainTab){
      System.out.println("nom "+count+": "+str);
      count++;  
    }

    //exemple3 
    int[] notes = {10, 2, 17, 12};
    int calcuL = 0;

    for(int notE : notes){
      calcuL = calcuL + notE;
    }
    System.out.println("Moyenne = "+((float)calcuL)/notes.length);

    //while
    int B = 0;
    while (B != 100){
      B++;
      System.out.println(B);
    }

    //do while
    hasPhone = false;
    int numFind = 0;

    do{
    numFind++;
    System.out.println("Nombre de recherche: "+numFind);
    if (numFind == 5){
      hasPhone = true;
      System.out.println("Telephone trouvE !");
    }  
    }while(!hasPhone);


  }

}