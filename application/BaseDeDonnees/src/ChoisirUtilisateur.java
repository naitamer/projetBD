import java.awt.*;
import java.awt.event.*;
import javax.swing.*;
import javax.swing.border.Border;

public class ChoisirUtilisateur {
	
	

	//private static final LayoutManager LINE_AXE = null;
	//private static final LayoutManager PAGE_AXE = null;

	ChoisirUtilisateur(){  
		 JFrame f= new JFrame("Utilisateur");//Créer un objet graphique.
		
		 f.setTitle("Utilisateur"); 
		 f.setSize(600,350);          //Définir la taille de l'objet graphique.
	     f.setLayout(null); 
	     f.setLocationRelativeTo(null);
	     f.setResizable(false);
	     f.setVisible(true);  
	     
	     JLabel labelUtilisateur=new JLabel("Choisir un utilisateur :");       //créer les Labels.
	     labelUtilisateur.setBounds(15,10, 300, 50); 
	     labelUtilisateur.setFont(new Font("Serif", Font.BOLD, 20));     //Définir le Font des labels.
	     f.add(labelUtilisateur);

	  
	     
	     //Définir RadioButton
	    
	     JRadioButton optionAnnonceur = new JRadioButton("Annonceur");
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
	    
	     JLabel labelAdresseCourriel=new JLabel("Adresse courriel :");       //créer les Labels.
	     f.add(labelAdresseCourriel);
	     labelAdresseCourriel.setBounds(15,10, 200, 210); 
	     labelAdresseCourriel.setFont(new Font("Serif", Font.BOLD, 20));     //Définir le Font des labels.
	     
	     JLabel labelMotDePasse=new JLabel("Mot de passe :");       //créer les Labels.
	     f.add(labelMotDePasse);
	     labelMotDePasse.setBounds(15,10, 200,350); 
	     labelMotDePasse.setFont(new Font("Serif", Font.BOLD, 20));     //Définir le Font des labels.
	     
	    
	     JTextField tModDePasse = new JTextField();
	     f.add(tModDePasse);
	     tModDePasse.setBounds(200,170,350 ,40); 
	   

	     JTextField tAdresseCourriel = new JTextField();
	     f.add(tAdresseCourriel);
	     tAdresseCourriel.setBounds(200,100,350 ,40);

	     Button connecter = new Button("connecter");
	     connecter.setVisible(true);
	     connecter.setFont(new Font("Serif", Font.BOLD, 16));
		 connecter.setBackground(Color.decode("#F0F8FF"));
	     f.add(connecter).setBounds(300, 250, 120, 50);


	     connecter.addActionListener(new ActionListener() {
			 @Override
			 public void actionPerformed(ActionEvent e) {
			 	// si acheteur

				 if(optionAcheteur.isSelected()){

					 final InterfaceAcheteur UI3 = new InterfaceAcheteur();
				 }

			 	//si annonceur
				 if(optionAnnonceur.isSelected()){
					 final InterfaceAnnonceur UI2 = new InterfaceAnnonceur();
				 }

			 }
		 });
	    
	    
	   
	}
}