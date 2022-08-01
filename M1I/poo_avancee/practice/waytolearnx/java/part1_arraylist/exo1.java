/**
 * @sujet - Écrivez un programme Java pour créer un ArrayList nommé « techno », ajoutez des chaîne (Ex: PHP, Java, C++, Python) et affichez la collection.
 * @output - [PHP, Java, C++, Python] 
 */

import java.util.*;

public class exo1 {
  public static void main(String[] args) {
    List<String> techno = new ArrayList<String>();

    techno.add("PHP");
    techno.add("Java");
    techno.add("C++");
    techno.add("Python");

    System.out.println(techno);
  }
}
