import javax.swing.*;
import java.awt.*;

public class SaisiePseudonymeMotDePasse {
  public static void main (String[] args) {

    JFrame fenetre = new JFrame("Identification");
    fenetre.setLayout(new GridLayout(2, 1));
    fenetre.add(new JLabel("Pseudonyme "));
    fenetre.add(new JTextField(10));
    fenetre.add(new JLabel("Mot de passe "));
    fenetre.add(new JPasswordField(10));
    fenetre.pack();
    fenetre.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
    fenetre.setVisible(true);

  }
}
