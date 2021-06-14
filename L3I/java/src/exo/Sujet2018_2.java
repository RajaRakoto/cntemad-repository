public class Sujet2018_2 {
  
  private static void exo1(){

    System.out.println("############");
    System.out.println("####EXO1####");
    System.out.println("############");

    System.out.println("a) Java est un langage developpE par");
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

  private static void exo3(){
    
    String tmp;
    String[] chaine = {"A","Z","C","N","P","F","G","S"};
    
    for (int i = 0; i < 3; i++) {
      tmp = chaine[i];
      chaine[i] = chaine[7+i];
      chaine[7-i] = tmp;
    }
    
    for (int i = 0; i < chaine.length; i++) {
      System.out.print(chaine[i]+"\t");
    }
  }

  // private static void exo(){

  // }

  public static void main(String[] args){
    
    exo1();
    
    // System.out.println();
    // exo2();
    
    System.out.println();
    exo3();
    
    // System.out.println();
    // exo4();

    System.out.println();
  }
}
