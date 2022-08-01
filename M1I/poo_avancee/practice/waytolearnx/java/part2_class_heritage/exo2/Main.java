/**
 * @sujet
 - Créez une classe « House », avec un attribut « surface », un constructeur qui définit sa valeur et une méthode « Display » pour afficher « Je suis une maison, ma surface est de XXX m2 » (XXX: la valeur de surface). Incluez aussi des getters et des setters pour la surface.
 - La classe « House » contiendra une porte (Door). Chaque porte aura un attribut « color » (de type String), et une méthode « Display » qui affichera « Je suis une porte, ma couleur est bleu » (ou quelle que soit la couleur). Inclure un getter et un setter. Créez également la méthode « GetDoor » dans la classe « House ».
 - La classe « Apartment » est une sous-classe de la classe « House », avec une surface prédéfinie de 50m2.
 - Créez également une classe Person, avec un nom (de type String). Chaque personne aura une maison. La méthode « Display » pour une personne affichera son nom, les données de sa maison et les données de la porte de cette maison.
 - Écrivez un Main pour créer un appartement dont la surface est le double de la valeur par defaut, re-colorer sa porte en blanche, creer egalement une personne pour y vivre et pour afficher les données de la personne.
 * @output
  Je m'appele Rakoto
  Je suis un appartement, ma surface est 100 m2
  Je suis une porte, ma couleur est Blanche
 */

import java.util.*;

class House {
  // attrib.s
  protected int surface;
  protected Door door;

  // constructor.s
  public House(int _surface) {
    this.surface = _surface;
    this.door = new Door();
  }

  // getter.s & setter.s
  public int getSurface() {
    return this.surface;
  }

  public void setSurface(int _surface) {
    this.surface = _surface;
  }

  public Door getDoor() {
    return this.door;
  }

  public void setDoor(Door _door) {
    this.door = _door;
  }

  // method.s
  public void display() {
    System.out.println("Je suis une maison, ma surface est de " + this.surface + "m2");
  }
}

class Door {
  // attrib.s
  protected String color;

  // constructor.s
  public Door() { 
    this.color = "rouge"; // par defaut
  }

  public Door(String _color) {
    this.color = _color;
  }

  // getter.s & setter.s
  public String getColor() {
    return this.color;
  }

  public void setColor(String _color) {
    this.color = _color;
  }

  // method.s
  public void display() {
    System.out.println("Je suis une porte, ma couleur est " + this.color);
  }
}

class Apartment extends House {
  // constructor.s
  public Apartment() {
    super(50); // surface par defaut d'un appartement
  }

  // method.s
  public void display() {
    System.out.println("Je suis un appartement, ma surface est " + this.surface + " m2");
  }
}

class Person {
  // attrib.s
  protected String name;
  protected House house;

  // constructor.s
  public Person(String _name) {
    this.name = _name;
    this.house = new Apartment();
  }

  public Person(String _name, House _house) {
    this.name = _name;
    this.house = _house;
  }

  // getter.s & setter.s
  public String getName() {
    return this.name;
  }

  public void setName(String _name) {
    this.name = _name;
  }

  public House getHouse() {
    return this.house;
  }

  public void setHouse(House _house) {
    this.house = _house;
  }

  // method.s
  public void display() {
    System.out.println("Je m'appele " + this.name);
    this.house.display();
    this.house.door.display();
  }
}

public class Main {
  public static void main(String[] args) {
    Apartment apartment = new Apartment(); // creation d'un appartement
    apartment.setSurface(100); // modification de la surface
    apartment.getDoor().setColor("Blanche"); // modification de la couleur de la porte
    Person person = new Person("Rakoto", apartment); // creation d'une personne pour vivre dans l'appartement recement crEe 
    person.display(); // afficher les donnees concerant la personne et son appartement
  }
}