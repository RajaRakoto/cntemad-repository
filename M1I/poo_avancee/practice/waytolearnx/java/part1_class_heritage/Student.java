/**
 * @sujet 
 Écrivez une classe Java appelée « Student » avec les membres suivant :

Attributs:
-> name - represente le nom d'un etudiant
-> faculty - represente la filiere d'un etudiant (en supposant que l'etab comporte 3 filieres [informatique, gestion, droit])
-> level - represente le niveau d'un etudiant au sein de l'etablissement (en supposant que l'etab comporte 3 niveau [L1, L2, L3])
-> notes - represente les notes d'un etudiant (un etudiant possede 10 notes pour le premier niveau), pour chaque niveau superieur, le nombre total des notes s'incremente de 1 matiere

 Le programme demande à l’utilisateur d’entrer le nom, la filiere, le niveau et les notes d'un etudiant. Une fonction membre addNote() qui permet d'ajouter les notes, calcMoyenne() qui calcule la note moyenne et getInfo() qui affiche toutes les informations concernant un etudiant.
 * @note - un note ne devrai jamais inferieur a 0 ou superieur a 20
 */

import java.util.*;

class Student {
  // attrib.s 
  public String name, faculty, level;
  public List<Float> notes = new ArrayList<Float>();

  // constructor.s
  Student(String _name, String _faculty, String _level) {
    this.name = _name;
    this.faculty = _faculty;
    this.level = _level;
  }

  // method.s
  public void addNote() {
    Scanner sc = new Scanner(System.in);
    int counter = 0;
    int total = (this.level == "L1") ? 10 : (this.level == "L2") ? 11 : 12;
    System.out.println("~ Ajout des notes pour l'etudiant " + this.name + " ~");
    while (counter < total) {
      System.out.print("Note [" + (counter + 1) + "]: ");
      Float note = sc.nextFloat();
      if (note < 0 || note > 20) {
        this.notes.add(note);

        break;
      } else {

      }
      counter++;
    }
    sc.close();
  }

  public Float calcMoyenne() {
    if (this.notes.isEmpty()) {
      return (float) 0;
    } else {
      Float sum = (float) 0;
      for (Float n : this.notes) {
        sum += n;
      }
      return (sum / this.notes.size());
    }
  }
  
  public void getInfo() {
      System.out.println("\n~ " + this.name + " informations ~");
      System.out.println("Filiere: " + this.faculty);
      System.out.println("Niveau: " + this.level);
      System.out.println("Moyenne: " + (this.notes.isEmpty() ? "pas de notes pour l'instant" : this.calcMoyenne()));
  }

  public static void main(String[] args) {
    Student s = new Student("Rakoto", "Informatique", "L2");
    s.addNote(); 
    System.out.println("Moyenne de " + s.name + ": " + s.calcMoyenne());
    s.getInfo();
  }
}

