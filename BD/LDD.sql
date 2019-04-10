drop schema projetBD cascade;
create schema projetBD;
set search_path to projetBD;

--création des types
CREATE TYPE type_produit AS ENUM 
    ('waiting', 'estimated', 'validated', 'refused');

CREATE TYPE type_monnaie AS ENUM
    ('EUR', 'CAD', 'USD', 'JPY', 'AUD', 'GBP', 'BRL');


--Création des table	
CREATE TABLE category
(
    --id_categorie serial PRIMARY KEY,
    id_categorie numeric(3) NOT NULL,
    nom_categorie character varying(50) NOT NULL,
    PRIMARY KEY (id_categorie)

);
INSERT INTO category VALUES (1, 'table');
INSERT INTO category VALUES (2, 'jeux');
--ALTER SEQUENCE categorie_id_categorie_seq RESTART WITH 2;


CREATE TABLE region 
(
    id_region serial PRIMARY KEY,
    autre type_monnaie NOT NULL,
    nom_region character varying(50) NOT NULL
);

INSERT INTO region VALUES(1, 'CAD' , 'Montreal');
INSERT INTO region VALUES(2, 'CAD', 'Quebec');
INSERT INTO region VALUES(3, 'CAD', 'Laval');
ALTER SEQUENCE region_id_region_seq RESTART WITH 3;

CREATE TABLE utilisateur
(
    id_utilisateur serial PRIMARY KEY,
    nom character varying(100) NOT NULL,
    prenom character varying(100) NOT NULL,
    email character varying(100) NOT NULL,
    nip character varying(50) NOT NULL,
    num_region integer NOT NULL,
    --CONSTRAINT email_unique UNIQUE (email),
    CONSTRAINT region_fkey FOREIGN KEY (num_region) REFERENCES region (id_region) 
    
);

INSERT INTO utilisateur VALUES (1,'nait', 'ounissa', 'ounissa.nait@gmail.com', 'ounissa123', 1);
INSERT INTO utilisateur VALUES (2,'hanoun', 'meshleen', 'meshleen@gmail.com', 'meshleen123', 2);
--ALTER SEQUENCE utilisateur_id_utilisateur_seq RESTART WITH 2;


CREATE TABLE produit
(
    id_produit serial PRIMARY KEY,
    titre character varying(50),
    description character varying(600),
    prix_annonceur numeric(8,2) NOT NULL,
    statut type_produit NOT NULL,
    id_annonceur integer NOT NULL,
    num_categorie integer NOT NULL,
    CONSTRAINT prix_positif CHECK (prix_annonceur >= 0::numeric) NOT VALID,
    CONSTRAINT annonceur_fkey FOREIGN KEY (id_annonceur) references utilisateur (id_utilisateur),
    CONSTRAINT categorie_fkey FOREIGN KEY (num_categorie) references category (id_categorie)

);
ALTER SEQUENCE  produit_id_produit_seq RESTART WITH 1;
INSERT INTO produit VALUES (default,'table antique', 'très peu utilisée, état comme neuf', 50.00,'waiting', 1, 1);
INSERT INTO produit VALUES ( default,'table new', 'brand new, état neuf', 100.00,'waiting', 1, 1);






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
    offre_id_prod integer NOT NULL,
    offre_id_acht integer NOT NULL,
    CONSTRAINT id_produit_fkey FOREIGN KEY (offre_id_prod) references produit (id_produit),
    CONSTRAINT id_acheteur_fkey FOREIGN KEY (offre_id_acht) references utilisateur (id_utilisateur),
    CONSTRAINT prix_positif CHECK (prix_offre >= 0::numeric) NOT VALID
);


CREATE TABLE vente
(
    id_vente serial PRIMARY KEY,
    date_vente timestamp NOT NULL,
    prix_vente numeric(8,2) NOT NULL,
    num_prod integer NOT NULL,
    num_cat integer NOT NULL,
    id_cat integer NOT NULL,
    CONSTRAINT prod_fkey FOREIGN KEY (num_prod) references produit (id_produit),
    CONSTRAINT cat_fkey FOREIGN KEY (num_cat) references category (id_categorie),
    CONSTRAINT prix_positif CHECK (prix_vente >= 0::numeric) NOT VALID
);




-- insertion des premières Données




