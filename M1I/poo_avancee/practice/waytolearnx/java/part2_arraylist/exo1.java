
/**
 * @sujet - Écrivez un programme Java pour trier un ArrayList donné puis inverser cette liste
 * @output 
 Liste avant le tri: [PHP, Java, C++, Ada]
 Liste après le tri: [Ada, C++, Java, PHP]
 Liste apres inverse: [PHP, Java, C++, Ada]
 */

import java.util.*;

public class exo1 {
  public static void main(String[] args) {
    String[] datas = {"PHP", "Java", "C++", "Ada"};
    List<String> techno = new ArrayList<String>();

    for (String data : datas) {
      techno.add(data);
    }

    System.out.println("Liste avant le tri: " + techno);
    Collections.sort(techno); // tri par ordre croissant (alphabetique)
    System.out.println("Liste apres le tri: " + techno);
    Collections.reverse(techno); // inverse list
    System.out.println("Liste apres inverse: " + techno);

  }
}
