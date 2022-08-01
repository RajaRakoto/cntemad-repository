
/**
 * @sujet - Écrivez un programme qui lit une température en degrés Celsius (ou en Fahrenheit) dans une valeur double, puis le convertit en Fahrenheit (ou en Celsius) et affiche le résultat. La formule de conversion est la suivante: Fahrenheit = (9/5) * Celsius + 32
 * @exemple - Entrez une température en degrés celsius : 12
 * @output - 12.0 Celsius -> 53.6 Fahrenheit
 */

import java.util.*;

public class exo1 {

  public static double toCelsius(double _fahrenheit) {
    return (_fahrenheit - 32) / 1.8;
  }

  public static double toFahrenheit(double _celsius) {
    return (1.8 * _celsius) + 32;
  }

  public static void inputEngine(String _inputType) {
    Scanner sc = new Scanner(System.in);
    System.out.print((_inputType == "Celsius") ? "\nEntrer la valeur en Celsius: " : "\nEntrer la valeur en Fahrenheit: ");
    double inputValue = sc.nextFloat();
    System.out.print(inputValue + " " + (_inputType == "Celsius" ? "Celsius" : "Fahrenheit")
        + " " + (_inputType == "Celsius" ? toFahrenheit(inputValue) : toCelsius(inputValue)));
    System.out.println((_inputType == "Celsius") ? " -> Fahrenheit" : " -> Celsius");
  }

  public static void main(String[] args) {
    Scanner sc = new Scanner(System.in);

    while (true) {
      System.out.println("\n~ Convertisseur Celsius <-> Fahrenheit~");
      System.out.println("1. Celsius en Fahrenheit");
      System.out.println("2. Fahrenheit en Celsius");
      System.out.println("---------------------------------------");
      System.out.print("[INPUT]> ");
      int choice = sc.nextInt();

      switch (choice) {
        case 1:
          inputEngine("Celsius");
          break;

        case 2:
          inputEngine("Fahrenheit");
          break;

        default:
          System.out.println("\nChoix invalide !\n");
      }
    }
  }
}
