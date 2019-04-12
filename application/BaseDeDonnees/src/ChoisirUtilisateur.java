import java.awt.*;
import java.awt.event.*;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import javax.swing.*;
import javax.swing.border.Border;

public class ChoisirUtilisateur {



    ChoisirUtilisateur(){
        //Créer un objet graphique et Définir sa taille
        JFrame f= new JFrame("Utilisateur");
        f.setTitle("Utilisateur");
        f.setSize(600,350);
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
        optionAnnonceur.setSelected(true);

        ButtonGroup ButtonGroup = new ButtonGroup ();
        ButtonGroup.add (optionAnnonceur);
        ButtonGroup.add (optionAcheteur);
        optionAcheteur.setBackground(Color.WHITE);
        optionAnnonceur.setBackground(Color.WHITE);


        JPanel panel = new JPanel(new BorderLayout());
        panel.add(optionAnnonceur, BorderLayout.NORTH);
        panel.add(optionAcheteur, BorderLayout.SOUTH);
        panel.setLocation (225, 20 ) ;
        panel.setSize (100, 45) ;
        f.add (panel);

        //créer les Labels.
        JLabel labelAdresseCourriel=new JLabel("Adresse courriel :");
        f.add(labelAdresseCourriel);
        labelAdresseCourriel.setBounds(15,10, 200, 210);
        labelAdresseCourriel.setFont(new Font("Serif", Font.BOLD, 20));

        JLabel labelMotDePasse=new JLabel("Mot de passe :");
        f.add(labelMotDePasse);
        labelMotDePasse.setBounds(15,10, 200,350);
        labelMotDePasse.setFont(new Font("Serif", Font.BOLD, 20));

        //creer le textefield pour saisir l'addresse courriel
        JTextField tAdresseCourriel = new JTextField();
        f.add(tAdresseCourriel);
        tAdresseCourriel.setBounds(200,100,350 ,40);

        //creer le passwordfield pour saisir le mot de passe
        JPasswordField tModDePasse = new JPasswordField();
        f.add(tModDePasse);
        tModDePasse.setBounds(200,170,350 ,40);


      /* boutonc pour connecter*/
        Button connecter = new Button("connecter");
        connecter.setVisible(true);
        connecter.setFont(new Font("Serif", Font.BOLD, 16));
        connecter.setBackground(Color.decode("#F0F8FF"));
        f.add(connecter).setBounds(300, 250, 120, 50);

        JOptionPane jop = new JOptionPane();

        connecter.addActionListener(e -> {
            // si acheteur
            String email = tAdresseCourriel.getText();
            String password = tModDePasse.getText();

            if(email.equals(""))
            {
                jop.showMessageDialog(null, "veuiller saisir une adresse courriel valide");
                tAdresseCourriel.grabFocus();
            }
            else if(password.equals("")){
                jop.showMessageDialog(null, "veuiller saisir une un mot de passe");
                tModDePasse.grabFocus();
            }
            else
            {
                try {
                    Connection c = ConnectionBD.connectTobd();
                    String sql = "select * from utilisateur where email = ? and nip = ? ";
                    PreparedStatement ps = c.prepareStatement(sql);
                    ps.setString(1,email);
                    ps.setString(2,password);
                    ResultSet rs = ps.executeQuery();
                    if(rs.next()){
                        int id = rs.getInt("id_utilisateur");
                        if(optionAcheteur.isSelected()){
                            final Acheteur UI3 = new Acheteur(id);
                            f.dispose();
                        }
                        //si annonceur
                        else if(optionAnnonceur.isSelected()){
                            final Annonceur UI2 = new Annonceur(id);
                            f.dispose();
                        }
                        else {
                            jop.showMessageDialog(null, "veuiller saisir une un mot de passe");
                        }

                    }
                    else{
                        JOptionPane jop1 = new JOptionPane();
                        jop1.showMessageDialog(null, "adresse courriel ou mot de passe incorrect");


                    }

                } catch (SQLException e1) {
                    e1.printStackTrace();
                }

            }

        });



    }
}