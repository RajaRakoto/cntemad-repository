import java.awt.Container;
import java.awt.FlowLayout;
import javax.swing.JButton;
import javax.swing.JFrame;

public class Fenetre extends JFrame{

	public Fenetre() {
		super(); //titre
		
		//config
		this.setDefaultCloseOperation(EXIT_ON_CLOSE); //liberation de memoire
		this.setVisible(true); //permet a la fenetre d'etre visible
		this.setLocationRelativeTo(null); //position des fenetres

		Container contenant = getContentPane(); //declaration de l'objet contenant
		String[] mois = {"Janvier","Fevrier","Mars","Avril","Mai","Juin","Juillet","Aout","Septembre","Octobre","Novembre","Decembre"}; //creation des contenus
		
		contenant.setLayout(new FlowLayout()); //mode d'affichage (flowlayout = ligne par ligne)
		//output 
		for(int i = 0; i < mois.length; i++) {
			JButton boutton = new JButton(mois[i]);
			contenant.add(boutton);
		}
		//packetage des contenus
		pack();
 }
}