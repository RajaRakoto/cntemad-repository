/**
 * @sujet - Écrivez un programme Java pour parcourir tous les éléments d’un ArrayList, en utilisant la boucle for.
 * @exemple - [PHP, Java, C++, Python] 
 * @output
 PHP
 Java
 C++
 Python
 */

import java.util.*;

public class exo2 {
  public static void main(String[] args) {

    List<String> techno = new ArrayList<String>();

    techno.add("PHP");
    techno.add("Java");
    techno.add("C++");
    techno.add("Python");

    // method 1
    for (String tech : techno) {
      System.out.println(tech);
    }

    // method 2
    for (int i = 0; i < techno.size(); i++) {
      System.out.println(techno.get(i));
    }
  }
}
