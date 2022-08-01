/**
 * @sujet - Écrivez un programme Java pour comparer deux ArrayList. Affiche TRUE si il existe dans la première liste sinon FALSE
 * @exemple
  ArrayList 1 : [PHP, Java, C++, Python]
  ArrayList 2 : [PHP, Java, C, Python]
 * @output - [true, true, false, true]
 */

import java.util.*;

public class exo1 {
  public static void main(String[] args) {

    List<String> list1 = new ArrayList<String>();
    List<String> list2 = new ArrayList<String>();
    
    String[] datas = {"PHP", "Java", "C++", "Python", "PHP", "Java", "C", "Python"};

    for (int i = 0; i < datas.length; i++) {
      if (i >= datas.length/2) {
        list2.add(datas[i]);
      } else {
        list1.add(datas[i]);
      }
    }

    List<Boolean> result = new ArrayList<Boolean>();
    for (String s : list1) {
      result.add(list2.contains(s) ? true : false);
    }

    System.out.println(result);
  }
}
