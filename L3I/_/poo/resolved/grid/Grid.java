import java.awt.Color;
import java.awt.Container;
import java.awt.GridLayout;
import java.awt.Dimension;
import javax.swing.JButton;
import javax.swing.JFrame;

public class Grid extends JFrame{

  public Grid(){
    super("Grid window");

    //config
    this.setDefaultCloseOperation(EXIT_ON_CLOSE);
    this.setVisible(true);
    this.setLocationRelativeTo(null);

    //3def
      
      //def container object (def 1)
        Container contenant = getContentPane();

      //def interface mod
        contenant.setLayout(new GridLayout(8,8));
        
    //loop output
    for (int i = 0; i < 8; i++) {
      for (int j = 0; j < 8; j++) {
        //def button object
        JButton button = new JButton();
        //def background
        button.setPreferredSize(new Dimension(30, 30));
        button.setBackground((i+j)%2 == 0 ? Color.WHITE : Color.GRAY);
        contenant.add(button);
      }
    }
    pack();
  }
}
