

utilisateur(id_utilisateur, nom, prenom, email, num_usager, nip),

produit (id_produit, titre, description, prix_annonce, status, #id_utilisateur,#id_categorie),

estimation (id_estimation, prix_estimation, date_estimation, #id_utilisateur, #id_produit),

offre (id_offre , prix_offre, date_offre, #id_produit, #id_utilisateur),

vente (id_vente, date_vente, prix_vente, #id_produit, #id_acheteur)

categorie (id_categorie, nom_categorie),

sousCategorie(id_souscategorie, #id_categorie, nom_cousCategorie)

region(id_region, nom_region)
