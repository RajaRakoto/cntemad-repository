/**
 * @sujet - Écrivez un programme Java pour afficher l’aire et le périmètre d’un cercle.
 * @exemple - Rayon = 4,2
 * @output
  Le périmètre est = 26.389378290154262
  L’aire est = 55.41769440932395
 */

import java.util.*;

public class exo2 {

  public static void calCircle(double rayon) {
    double perimeter = 2 * rayon * Math.PI;
    double aire = Math.PI * rayon * rayon;
    System.out.println("Le perimetre est = " + perimeter);
    System.out.println("L'aire est = " + aire);
  }

  public static void main(String[] args) {
    calCircle(4.2);
  }
}
