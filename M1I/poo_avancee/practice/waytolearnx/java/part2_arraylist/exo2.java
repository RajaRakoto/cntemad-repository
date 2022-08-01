/**
 * @sujet - Creer un programme qui affiche tous les nombres entiers pairs qui figurent dans l’ArrayList transmise en argument. Utiliser un casting si c'est necessaire
 * @exemple - [1, 2, 3, 4, 5, 6, 7, 8, 9]
 * @output - 2 4 6 8
 */

 import java.util.*;

 public class exo2 {

  public static void displayEvenNumber(List<Integer> _list) {
    for (int l : _list) {
      if (l % 2 == 0) System.out.print(l + " ");
    }
  }

   public static void main(String[] args) {
     int[] datas = {1, 2, 3, 4, 5, 6, 7, 8, 9};
     List<Integer> numbers = new ArrayList<Integer>();

     for (int data : datas) {
      numbers.add(data);
     }

     displayEvenNumber(numbers);
   }
 }