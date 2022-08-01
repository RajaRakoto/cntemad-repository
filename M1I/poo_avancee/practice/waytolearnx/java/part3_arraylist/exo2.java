/**
 * @sujet - Creer une methode appelEe "deleteLongStrings" qui vérifie chaque élément d'une liste qui contient des noms et supprime ceux qui sont strictement supérieurs à 4 caractères. 
 * @exemple - [Bob, Ali, Thomas, Alex, Nermine]
 * @output - [Bob, Ali, Alex]
 */

import java.util.*;

public class exo2 {

  public static List<String> deleteLongStrings(List<String> _list) {
    List<String> result = new ArrayList<String>();
    for (String l : _list) {
      if (l.length() <= 4) result.add(l);
    }

    return result;
  }

  public static List<String> deleteLongStrings2(List<String> _list) {
    int i = 0;
    while (i < _list.size()) {
      if (_list.get(i).length() > 4) _list.remove(i);
      i++;
    }

    return _list;
  }

  public static void main(String[] args) {
    String[] datas = {"Bob", "Ali", "Thomas", "Alex", "Nermine"};
    List<String> users = new ArrayList<String>();

    for (String data : datas) {
      users.add(data);
    }

    System.out.println("Avant filtrage: " + users);
    System.out.println("Apres filtrage: " + deleteLongStrings2(users));
  }
}
