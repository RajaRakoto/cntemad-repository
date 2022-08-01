/**
 * @sujet - Creer une méthode appelEe "findLongStrOfUser" pour rechercher et renvoyer la chaîne la plus longue dans une liste contenant des noms
 * @exemple - [Bob, Ali, Mélissandre, Alex, Thomas]
 * @output - Mélissandre
 */

import java.util.*;

public class exo4 {

  public static String findLongStrOfUser(List<String> _list) {
    String result = _list.get(0);
    for (String l : _list) {
      if (l.length() > result.length()) result = l;
    }
    return result;
  }

  public static void main(String[] args) {
    List<String> users = new ArrayList<String>();
    String[] datas = {"Bob", "Ali", "Mélissandre", "Alex", "Thomas"};

    for (String data : datas) {
      users.add(data);
    }

    System.out.println("L'utilisateur ayant le nom le plus long est: " + findLongStrOfUser(users));
  }
}


      
      
      

    