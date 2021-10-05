import javax.swing.JOptionPane;
import javax.swing.JFrame;

public class Test {
  public static void main (String[] args){
    
    //INPUT
    JFrame frame = new JFrame();
    String nom = JOptionPane.showInputDialog(frame,"Entrer le nom de l'eleve:");
    String temp = JOptionPane.showInputDialog(frame,"Entrer le note de "+nom);
    
    //CAST
    double note = Double.parseDouble(temp);
    
    //OBJECT
    Eleve eleve1 = new Eleve(nom, note);

    //OUTPUT
    JOptionPane.showMessageDialog(frame, "Nom: "+nom+"\nNote: "+note);

  }
}
