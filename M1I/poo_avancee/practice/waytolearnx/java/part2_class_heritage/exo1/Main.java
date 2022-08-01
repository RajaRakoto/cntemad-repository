/**
 * @sujet
– Créez une classe « Person »
– Créez une classe « Student » et une autre classe « Teacher », les deux héritent de la classe « Person ».
– La classe « Student » aura une méthode publique « goToClasses », qui affichera à l’écran « I’m going to class. ».
– La classe « Teacher » aura une méthode publique « explain », qui affichera à l’écran « Explanation begins ». En plus, il aura un attribut privé « subject » de type string.
– La classe « Person » doit avoir une méthode « setAge(int _age) » qui indiquera la valeur de leur âge (par exemple, 15 years old).
– La classe « Student » aura une méthode publique « DisplayAge » qui écrira sur l’écran « My age is: XX years old ».
– Vous devez créer une autre classe de test appelée « Main » qui contiendra « main » et:
– Créez un objet Person et faites-lui dire « Hello »
– Créer un objet Student, définir son âge à 15 ans, faites-lui dire « Hello », « I’m going to class. » et afficher son âge
– Créez un objet Teacher, 40 ans, demandez-lui de dire « Hello » puis commence l’explication.
 *@ouput
  Hello
  I’m going to class.
  Hello
  My age is: 15 years old
  Hello
  Explanation begins
 *@note - Vous devez egalement creer une methode permettant a chaque personne de dire « Hello »
 */

import java.util.*;

class Person {
  // attrib.s
  protected int age;

  // method.s
  public void sayHello() {
    System.out.println("Hello");
  }

  public void setAge(int _age) {
    this.age = _age;
  }
}

class Student extends Person {
  // method.s
  public void goToClasses() {
    System.out.println("I'm going to class");
  }

  public void displayAge() {
    System.out.println("My age is: " + this.age + " years old");
  }
}

class Teacher extends Person {
  // attrib.s
  private String subject;

  // method.s
  public void explain() {
    System.out.println("Explanation begins");
  }
}

public class Main {
  public static void main(String[] args) {
           Person person = new Person();
           person.sayHello();
    
           Student student = new Student();
           student.goToClasses();
           student.setAge(15);
           student.sayHello();
           student.displayAge();
    
           Teacher teacher = new Teacher();
           teacher.setAge(40);
           teacher.sayHello();
           teacher.explain();
  }
}