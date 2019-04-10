import java.awt.Font;
import java.awt.List;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.util.ArrayList;


import javax.swing.*;
import javax.swing.border.TitledBorder;
import javax.swing.border.Border;

public class Annonceur {
	//    private final List<String> arrayCategorie=new ArrayList<String>();
	//   private final List<String> arraySousCategorie=new ArrayList<String>();

    private int id_utilisateur;
    private String data;
    private  String colonne;
    Connection c;


    private final DefaultListModel modelCategorie = new DefaultListModel();
    private final DefaultListModel modelSousCategorie = new DefaultListModel();

    //
    Annonceur(int id){

        this.id_utilisateur=id;


        JFrame f = new JFrame("Annonceur");//Créer un objet graphique.
        f.setTitle("Annonceur");
        f.setSize(900,1000);          //Définir la taille de l'objet graphique.
        f.setLayout(null);
        f.setLocationRelativeTo(null);
        f.setResizable(false);
        f.setVisible(true);            //Afficher l'objet graphique.


        // panel pour mettre les detail du produit a ajouter
        JPanel pDetails_produit = new JPanel ();
        String title = "Details de produit";
        Border border = BorderFactory.createTitledBorder(title);
        ((TitledBorder) border).setTitleFont(new Font("Serif",Font.BOLD, 25));
        pDetails_produit.setBorder(border);
        pDetails_produit.setLocation (15, 15 ) ;
        pDetails_produit.setSize (530, 440) ;
        pDetails_produit.setLayout(null);
        f.add(pDetails_produit);

        // panel pour historique offre et vente
        JPanel pMes_Annonce = new JPanel ();
        String titleMes_Annonce = "Mes annones";

        Border borderMes_Annonce = BorderFactory.createTitledBorder(titleMes_Annonce);
        ((TitledBorder) borderMes_Annonce).setTitleFont(new Font("Serif",Font.BOLD, 25));
        pMes_Annonce.setBorder(borderMes_Annonce);
        pMes_Annonce.setLocation (545, 15 ) ;
        pMes_Annonce.setSize (340, 440) ;
        pMes_Annonce.setLayout(null);
        f.add(pMes_Annonce);


       /* JPanel pTable = new JPanel ();
        String titleTable = "hhhhh";

        Border borderTable = BorderFactory.createTitledBorder(titleTable);
             ((TitledBorder) borderTable).setTitleFont(new Font("Serif",Font.BOLD, 25));
        pTable.setBorder(borderTable);
        pTable.setLocation (100, 600) ;
        pTable.setSize (600, 300) ;
        pTable.setLayout(null);
        f.add(pTable);*/

        JButton JbSoumetttre =new JButton("Soumettre");      //Créer un bouton.
        JbSoumetttre.setBounds(170, 460, 200, 50);                   //Définir la taille du bouton.
        JbSoumetttre.setFont(new Font("Serif", Font.BOLD, 20));    //Définir le font.
        f.add(JbSoumetttre);

        JButton JbVoirOffre =new JButton("Voir Offre");      //Créer un bouton.
        JbVoirOffre.setBounds(80, 100, 200, 50);                   //Définir la taille du bouton.
        JbVoirOffre.setFont(new Font("Serif", Font.BOLD, 20));    //Définir le font.
        pMes_Annonce.add(JbVoirOffre);


        JButton historiqueVente =new JButton("Historique vente");      //Créer un bouton.
        historiqueVente.setBounds(80, 200, 200, 50);                   //Définir la taille du bouton.
        historiqueVente.setFont(new Font("Serif", Font.BOLD, 20));    //Définir le font.
        pMes_Annonce.add(historiqueVente);


        JLabel labelTitreDeProduit=new JLabel("Titre du produit : ");       //créer les Labels.
        labelTitreDeProduit.setBounds(15,30, 200, 50);
        labelTitreDeProduit.setFont(new Font("Serif", Font.BOLD, 20));     //Définir le Font des labels.
        pDetails_produit.add(labelTitreDeProduit);

        JLabel labelCategorie=new JLabel("Catégorie : ");       //créer les Labels.
        labelCategorie.setBounds(15,5, 180, 220);
        labelCategorie.setFont(new Font("Serif", Font.BOLD, 20));     //Définir le Font des labels.
        pDetails_produit.add(labelCategorie);


        JLabel labelPrixDuProduit=new JLabel("Prix du produit : ");       //créer les Labels.
        labelPrixDuProduit.setBounds(15,85, 150, 180);
        labelPrixDuProduit.setFont(new Font("Serif", Font.BOLD, 20));     //Définir le Font des labels.
        pDetails_produit.add(labelPrixDuProduit);

        JTextField tPrixDuProduit = new JTextField();
        pDetails_produit.add(tPrixDuProduit);
        tPrixDuProduit.setBounds(170,85,345,40);


        JLabel labelDescription=new JLabel("Description : ");       //créer les Labels.
        labelDescription.setBounds(15,175, 250, 170);
        labelDescription.setFont(new Font("Serif", Font.BOLD, 20));     //Définir le Font des labels.
        pDetails_produit.add(labelDescription);


        JTextField tTitreDeProduit = new JTextField();
        pDetails_produit.add(tTitreDeProduit);
        tTitreDeProduit.setBounds(170,40,345, 40);



        JTextField tDescription = new JTextField();
        pDetails_produit.add(tDescription);
        tDescription.setBounds(15,280,500 ,150);

        JList listCategorie = new JList(modelCategorie);         //Créer les Jlist.
        listCategorie.setFont(new Font("SansSerif", Font.PLAIN, 20));//Définir le Font des Ã©lÃ©ments dans liste.
        f.add(listCategorie);                             //Ajouter les listes au JFram
        listCategorie.setBounds(150, 125, 380, 80);       //Définir les tailles et les places des listes.
        listCategorie.setSelectionMode (ListSelectionModel.SINGLE_SELECTION);     //Définir le mode de sÃ©lection (la maniÃ¨re dont les Ã©lÃ©ments peuvent Ãªtre sÃ©lectionnÃ©s).

        //Définir un table

        String Donnees[] [] = {
                {"Kathy1", "Kathy2","Kathy3", "Kathy4", "Kathy5", "Kathy6"},
                {"John1", "John2","John3", "John4", "John5","John6"},
                {"Sue", "Black","Knitting", "Sue", "Sue","Sue6"},
                {"Jane", "White","Speed reading", "Sue","Sue","Jane"},
                {"Joe", "Brown","Pool", "Sue", "Sue","Joe"}
        };

        String  colonne[] = {"Titre",
                "Description",
                "Catégorie",
                "Région",
                "Date",
                "Statut"};
        JTable table = new  JTable (Donnees, colonne);
        table.setBounds (  600, 700, 800 , 700 );
        JScrollPane sp = new  JScrollPane (table);
        f.add (sp);
        f.add(table);


        JbSoumetttre.addActionListener(e -> {
             JOptionPane jop = new JOptionPane();
             String entree_estimation = jop.showInputDialog(null, "Entrer estimation",
                     "Expert", JOptionPane.QUESTION_MESSAGE);

        });


        // voir toutes les offres qui ont ete faite aux produit de l'annonceur
        JbVoirOffre.addActionListener(e -> {
            JFrame f1 = new JFrame();
            f1.setTitle("mes offres recues");
            //etablire une connexion a la base de donnee
            Connection c = ConnectionBD.connectTobd();
            String sql = "select * from utilisateur where email = ? and nip = ? ";
            //PreparedStatement ps = c.prepareStatement(sql);


            String Data[] [] = {
            {"Kathy1", "Kathy2","Kathy3", "Kathy4", "Kathy5", "Kathy6"},
            {"John1", "John2","John3", "John4", "John5","John6"},
            {"Sue", "Black","Knitting", "Sue", "Sue","Sue6"},
            {"Jane", "White","Speed reading", "Sue","Sue","Jane"},
            {"Joe", "Brown","Pool", "Sue", "Sue","Joe"}};

            String colonne1[] = {"Titre","nom acheteur", "region acheteur", "Date de l'offre", "prix de l'offre"};

            JTable jt = new  JTable (Data, colonne1);
            jt.setBounds ( 600, 700, 800 , 700 );
            JScrollPane sp1 = new  JScrollPane (jt);
            f1.add (sp1);
            f1.setSize (800,300);
            f1.setLocationRelativeTo(null);
            f1.setVisible ( true );
                                  }
        );

        historiqueVente.addActionListener(new ActionListener()
            {
                 public void actionPerformed(ActionEvent e)
                 {
                      JFrame f2 = new JFrame();
                      f2.setTitle("");

                      String Data[] [] = {
                      {"Kathy1", "Kathy2","Kathy3", "Kathy4"},
                      {"John1", "John2","John3", "John4"},
                      {"Sue", "Black","Knitting", "Sue"},
                      {"Jane", "White","Speed reading", "Sue",},
                      {"Joe", "Brown","Pool", "Sue"}
                 };

                 String  colonne[] = {"Titre",
                 "Date",
                 "Nom acheteur",
                 "Prix"};
                 JTable jt = new  JTable (Data, colonne);
                 jt.setBounds ( 600, 700, 800 , 700 );
                 JScrollPane sp = new  JScrollPane (jt);
                 f2.add (sp);
                 f2.setSize (800,300);
                 f2.setLocationRelativeTo(null);
                 f2.setVisible ( true );
            }

        }
    );
    }

}