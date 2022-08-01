/**
 * @sujet - Écrivez un programme Java pour rechercher un élément dans un ArrayList Ex: [PHP, Java, C++, Python]. Creer egalement une fonction permettant de formater chaque entrer pour que votre fonction de recherche est insensible a la casse 
 * @exemple - Entrer un element a rechercher: JavA
 * @output - L'element "JavA" est dans la liste
 */

import java.util.*;

public class exo4 {

  public static String formatExp(String _e) {
    String[] arr = _e.split("");
    String res = "";

    for (int i = 0; i < arr.length; i++) {
      res += (i == 0) ? arr[i].toUpperCase() : arr[i].toLowerCase();
    }

    return res;
  }

  public static boolean finder(String _e, List<String> _list) {
    return (_list.contains(formatExp(_e)) ? true : false);
  }

  public static void main(String[] args) {
    Scanner sc = new Scanner(System.in);
    String[] datas = {"PHP", "Java", "C++", "Python"};
    List<String> techno = new ArrayList<String>();

    for (String data : datas) {
      techno.add(data);
    }

    System.out.print("Entrer un element a rechercher: ");
    String e = sc.nextLine();
    System.out.println("L'element \"" + e + "\"" + (finder(e, techno) ? " est dans la liste" : " n'est pas dans la liste"));
  }
}
