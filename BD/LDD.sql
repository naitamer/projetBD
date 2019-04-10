drop schema projetBD cascade;
create schema projetBD;
set search_path to projetBD;

--création des types
CREATE TYPE type_produit AS ENUM 
    ('waiting', 'estimated', 'validated', 'refused');

CREATE TYPE type_monnaie AS ENUM
    ('EUR', 'CAD', 'USD', 'JPY', 'AUD', 'GBP', 'BRL');


--Création des table    
CREATE TABLE categorie
(
    id_categorie serial PRIMARY KEY,
    nom_categorie character varying(50) NOT NULL
);



CREATE TABLE region 
(
    id_region serial PRIMARY KEY,
    nom_region character varying(50) NOT NULL,
    monnaie type_monnaie NOT NULL
);



CREATE TABLE utilisateur
(
    id_utilisateur serial PRIMARY KEY,
    nom character varying(100) NOT NULL,
    email character varying(100) NOT NULL,
    nip character varying(50) NOT NULL,
    num_region integer NOT NULL,
    CONSTRAINT email_unique UNIQUE (email),
    CONSTRAINT region_fkey FOREIGN KEY (num_region) REFERENCES region (id_region) 
    
);



CREATE TABLE produit
(
    id_produit serial PRIMARY KEY,
    titre character varying(50),
    description character varying(600),
    prix_annonceur numeric(8,2) NOT NULL,
    statut statut_produit NOT NULL,
    id_annonceur integer NOT NULL,
    num_categorie integer NOT NULL,
    CONSTRAINT prix_positif CHECK (prix_annonceur >= 0::numeric) NOT VALID,
    CONSTRAINT annonceur_fkey FOREIGN KEY (id_annonceur) references utilisateur (id_utilisateur),
    CONSTRAINT categorie_fkey FOREIGN KEY (num_categorie) references categorie (id_categorie)
);




CREATE TABLE estimation 
(
    id_estimation serial PRIMARY KEY,
    prix_estimation numeric(8,2) NOT NULL,
    date_estimation timestamp NOT NULL,
    id_expert integer NOT NULL,
    num_produit integer NOT NULL,
    CONSTRAINT expert_fkey FOREIGN KEY (id_expert) references utilisateur (id_utilisateur),
    CONSTRAINT produit_fkey FOREIGN KEY (num_produit) references produit (id_produit),
    CONSTRAINT prix_positif CHECK (prix_estimation >= 0::numeric) NOT VALID
);




CREATE TABLE offre
(
    id_offre serial PRIMARY KEY,
    prix_offre numeric(8,2) NOT NULL,
    date_offre timestamp NOT NULL,
    num_produit integer NOT NULL,
    id_acheteur integer NOT NULL,
    CONSTRAINT id_produit_fkey FOREIGN KEY (num_produit) references produit (id_produit),
    CONSTRAINT id_acheteur_fkey FOREIGN KEY (id_acheteur) references utilisateur (id_utilisateur),
    CONSTRAINT prix_positif CHECK (prix_offre >= 0::numeric) NOT VALID
);




CREATE TABLE vente
(
    id_vente serial PRIMARY KEY,
    date_vente timestamp NOT NULL,
    prix_vente numeric(8,2) NOT NULL,
    num_produit integer NOT NULL,
    CONSTRAINT id_prod_fkey FOREIGN KEY (num_produit) references produit (id_produit),
    CONSTRAINT id_acht_fkey FOREIGN KEY (num_acheteur) references utilisateur (id_utilisateur),
    CONSTRAINT prix_positif CHECK (prix_vente >= 0::numeric) NOT VALID
);




-- insertion des premières Données