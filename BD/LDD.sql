
--création des types
CREATE TYPE type_produit AS ENUM 
    ('waiting', 'estimated', 'validated', 'refused')

CREATE TYPE type_monnaie AS ENUM
    ('EUR', 'CAD', 'USD', 'JPY', 'AUD', 'GBP', 'BRL')


--Création des table	
CREATE TABLE utilisateur
(
    id_utilisateur serial PRIMARY KEY,
    nom character varying(100) NOT NULL,
    prenom character varying(100) NOT NULL,
    email character varying(100) NOT NULL,
    nom_usager character varying(50) NOT NULL,
    nip character varying(50) NOT NULL,
    CONSTRAINT id_region_utilisateur (id_region_fkey) references region (id_Region), 
    CONSTRAINT email_unique UNIQUE (email),
    CONSTRAINT nom_usager_unique UNIQUE (nom_usager)
);
INSERT INTO utilisateur VALUES (1, 'nait', 'ounissa', 'ounissa.nait@gmail.com', 'ounissa.nait', 'ounissa123', 3);
INSERT INTO utilisateur VALUES (2, 'hanoun', 'meshleen', 'meshleen@gmail.com', 'hanoun.mesh', 'meshleen123', 5);
ALTER SEQUENCE utilisateurs_num_utilisateur_seq RESTART WITH 2;


CREATE TABLE produit
(
    id_produit serial PRIMARY KEY,
    titre character varying(50),
    description character varying(600)
    prix_annonceur numeric(8,2) NOT NULL,
    statut type_produit NOT NULL,
    CONSTRAINT prix_positif CHECK (prix >= 0::numeric) NOT VALID,
    CONSTRAINT id_annonceur_fkey (id_utilisateur) 
        references utilisateur (id_utilisateur),
    CONSTRAINT id_categorie_fkey (id_categorie) references
        categorie (id_categorie)

);
INSERT INTO produit VALUES (1, 'table antique', 'très peu utilisé, état comme neuf', 50.00, 'attente', 5);
ALTER SEQUENCE objets_num_objet_seq RESTART WITH 1;


CREATE TABLE estimation 
(
    id_estimation serial PRIMARY KEY,
    prix_estimation numeric(8,2) NOT NULL,
    date_estimation timestamp NOT NULL,
    CONSTRAINT id_expert_fkey (id_expert) references utilisateur (id_utilisateur),
    CONSTRAINT id_produit_fkey (estimation_id_prod) references produit (id_produit)
);


CREATE TABLE offre
(
    id_offre serial PRIMARY KEY,
    prix_offre numeric(8,2) NOT NULL,
    date_offre timestamp NOT NULL,
    CONSTRAINT id_produit_fkey (offre_id_prod) references produit (id_produit),
    CONSTRAINT id_acheteur_fkey (offre_id_achet) references utilisateur (id_utilisateur)
);


CREATE TABLE vente
(
    id_vente serial PRIMARY KEY,
    date_vente timestamp NOT NULL,
    prix_vente numeric(8,2) NOT NULL,
    CONSTRAINT id_prod_kkey (vente_id_prod) references produit (id_produit),
    CONSTRAINT id_sousCat_fkey (vente_id_sousCat) references sousCategory (id_sousCategorie)
)

CREATE TABLE categorie 
(
    id_categorie serial PRIMARY KEY,
    nom_categorie character varying(50) NOT NULL,
)

CREATE TABLE region 
(
    id_region serial PRIMARY KEY,
    monnaie type_monnaie NOT NULL,
    nom_region character varying(50) NOt NULL
)
-- insertion des premières Données




