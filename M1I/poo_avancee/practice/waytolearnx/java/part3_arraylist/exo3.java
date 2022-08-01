/**
 * @sujet - Écrivez un programme Java pour concaténer deux listes.
 * @exemple - [A, B] [C, D]
 * @output - [A, B, C, D]
 */

import java.util.*;

public class exo3 {

  public static List<String> concatList(List<String> _list1, List<String> _list2) {
    List<String> result = new ArrayList<String>();
    result.addAll(_list1);
    result.addAll(_list2);
    return result;
  }

  public static void main(String[] args) {
    List<String> list1 = new ArrayList<String>();
    List<String> list2 = new ArrayList<String>();
    
    list1.add("A");
    list1.add("B");
    list2.add("C");
    list2.add("D");

    System.out.println("List 1: " + list1);
    System.out.println("List 2: " + list2);
    System.out.println("Apres concatenation: " + concatList(list1, list2));
  }
}
