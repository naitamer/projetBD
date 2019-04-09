import java.awt.BorderLayout;
import java.awt.Color;
import java.awt.Font;
import java.awt.LayoutManager;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;

import javax.swing.BorderFactory;
import javax.swing.BoxLayout;
import javax.swing.JButton;
import javax.swing.JFrame;
import javax.swing.JPanel;
import javax.swing.border.Border;
import javax.swing.border.TitledBorder;


	public class InterfaceAcheteur {
		   
	    InterfaceAcheteur(){  
		 JFrame f= new JFrame("Acheteur");//Créer un objet graphique.
	
		 f.setTitle("Achèteur"); 
		 f.setSize(900,800);          //Définir la taille de l'objet graphique.
		 f.setLayout(null); 
	     f.setLocationRelativeTo(null);
	     f.setResizable(false);
	     f.setVisible(true);  
	     
	     JButton JbAjoutter =new JButton("Ajouter un achat");      //Créer un bouton.
	     JbAjoutter.setBounds(325, 45, 200, 50);                   //Définir la taille du bouton.
	     JbAjoutter.setFont(new Font("Serif", Font.BOLD, 20));    //Définir le font.
	     f.add(JbAjoutter);   
	     
	     JPanel pDetails_Vente = new JPanel (); 
	     String title = "Details de vente";
	     
	     Border border = BorderFactory.createTitledBorder(title);
	     ((TitledBorder) border).setTitleFont(new Font("Serif",Font.BOLD, 25));
	     pDetails_Vente.setBorder(border);
	     pDetails_Vente.setLocation (20, 100 ) ;
	     pDetails_Vente.setSize (850, 590) ; 
	     pDetails_Vente.setLayout(null); 
	     f.add(pDetails_Vente);
	     
	  
	    

	     JbAjoutter.addActionListener(new ActionListener()
		 {
			public void actionPerformed(ActionEvent e) 
			{
				
	     
	   
         }

		 });
	    }
	  }
