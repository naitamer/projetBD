import java.util.Date;

/**
 * Created by ounissa on 2019-04-09.
 */
public class Affichage {
    private String titre;
    private String description;
    private String region;
    private Date dateAnnonce;
    private String categorie;
    private Double prixOffre;
    private int condition;
    private String nomObjet;
    private String type;
    private String materiau;
    private String taille;
    private Date datePeremption;





    public String getTitre() {
        return titre;
    }
    public void setTitre(String titre) {
        this.titre = titre;
    }
    public String getDescription() {
        return description;
    }
    public void setDescription(String description) {
        this.description = description;
    }
    public String getRegion() {
        return region;
    }
    public void setRegion(String region) {
        this.region = region;
    }

    public Date getDateAnnonce() {
        return dateAnnonce;
    }
    public void setDateAnnonce(Date dateAnnonce) {
        this.dateAnnonce = dateAnnonce;
    }
    public String getCategorie() {
        return categorie;
    }
    public void setCategorie(String categorie) {
        this.categorie = categorie;
    }

    public Double getPrix() {
        return prixOffre;
    }
    public void setPrix(Double prix) {
        this.prixOffre = prix;
    }
    public int getCondition() {
        return condition;
    }
    public void setCondition(int condition) {
        this.condition = condition;
    }
    public String getNomObjet() {
        return nomObjet;
    }
    public void setNomObjet(String nomObjet) {
        this.nomObjet = nomObjet;
    }
    public String getType() {
        return type;
    }
    public void setType(String type) {
        this.type = type;
    }
    public String getMateriau() {
        return materiau;
    }
    public void setMateriau(String materiau) {
        this.materiau = materiau;
    }
    public String getTaille() {
        return taille;
    }
    public void setTaille(String taille) {
        this.taille = taille;
    }


}
