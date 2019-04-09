import java.awt.*;
import java.awt.event.*;
import javax.swing.*;
import javax.swing.border.Border;

public class ChoisirUtilisateur {
	
	

	//private static final LayoutManager LINE_AXE = null;
	//private static final LayoutManager PAGE_AXE = null;

	ChoisirUtilisateur(){  
		 JFrame f= new JFrame("Utilisateur");//Cr�er un objet graphique.
		
		 f.setTitle("Utilisateur"); 
		 f.setSize(600,300);          //D�finir la taille de l'objet graphique.
	     f.setLayout(null); 
	     f.setLocationRelativeTo(null);
	     f.setResizable(false);
	     f.setVisible(true);  
	     
	     JLabel labelUtilisateur=new JLabel("Choisir un utilisateur :");       //cr�er les Labels.
	     labelUtilisateur.setBounds(15,10, 300, 50); 
	     labelUtilisateur.setFont(new Font("Serif", Font.BOLD, 20));     //D�finir le Font des labels.
	     f.add(labelUtilisateur);

	  
	     
	     //D�finir RadioButton
	    
	     JRadioButton optionAnnonceur = new JRadioButton("Annonceur",true);
	     JRadioButton optionAcheteur = new JRadioButton ("Acheteur");
	        
	     ButtonGroup ButtonGroup = new ButtonGroup ();
	     ButtonGroup.add (optionAnnonceur);
	     ButtonGroup.add (optionAcheteur);
	    // f.setLayout (new FlowLayout ());
	     optionAcheteur.setBackground(Color.WHITE);
	     optionAnnonceur.setBackground(Color.WHITE);
         
	 
	     
	     JPanel panel = new JPanel(new BorderLayout());
	     panel.add(optionAnnonceur, BorderLayout.NORTH);
	     panel.add(optionAcheteur, BorderLayout.SOUTH);
	     panel.setLocation (225, 20 ) ;
	     panel.setSize (100, 45) ; 
	     f.add (panel);
	    
	     JLabel labelAdresseCourriel=new JLabel("Adresse courriel :");       //cr�er les Labels.
	     f.add(labelAdresseCourriel);
	     labelAdresseCourriel.setBounds(15,10, 200, 210); 
	     labelAdresseCourriel.setFont(new Font("Serif", Font.BOLD, 20));     //D�finir le Font des labels.
	     
	     JLabel labelMotDePasse=new JLabel("Mot de passe :");       //cr�er les Labels.
	     f.add(labelMotDePasse);
	     labelMotDePasse.setBounds(15,10, 200,350); 
	     labelMotDePasse.setFont(new Font("Serif", Font.BOLD, 20));     //D�finir le Font des labels.
	     
	    
	     JTextField tModDePasse = new JTextField();
	     f.add(tModDePasse);
	     tModDePasse.setBounds(200,170,350 ,40); 
	   

	     JTextField tAdresseCourriel = new JTextField();
	     f.add(tAdresseCourriel);
	     tAdresseCourriel.setBounds(200,100,350 ,40); 
	    
	    
	   
	}
}