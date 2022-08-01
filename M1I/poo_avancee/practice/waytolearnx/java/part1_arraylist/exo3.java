/**
 * @sujet - Écrivez un programme Java pour insérer "Go" comme premier element, "Typescript" comme avant dernier et puis "Javascript" comme le dernier element dans l'ArrayList [PHP, Java, C++, Python]. Enfin recupere le troisieme list (Java), met a jour "Python" par "CoffeeScript" et supprimer "C++".
 * @output
 [Go, PHP, Java, C++, Python, Typescript, Javascript]
 Java
 [Go, PHP, Java, C++, CoffeeScript, Typescript, Javascript]
 [Go, PHP, Java, CoffeeScript, Typescript, Javascript]
 */

import java.util.*;

public class exo3 {
  public static void main(String[] args) {
    List<String> techno = new ArrayList<String>();

    techno.add("PHP");
    techno.add("Java");
    techno.add("C++");
    techno.add("Python");
    techno.add(techno.size(), "Javascript");
    techno.add(0, "Go");
    techno.add(techno.size()-1, "Typescript");
    System.out.println(techno);
    System.out.println(techno.get(2));
    techno.set(4, "CoffeeScript");
    System.out.println(techno);
    techno.remove(3);
    System.out.println(techno);
  }
}
