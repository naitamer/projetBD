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
    groupe character varying(50) NOT NULL,
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



CREATE TABLE annonce
(
    id_annonce serial PRIMARY KEY,
    titre character varying(50),
    description character varying(600),
    prix_annonceur numeric(8,2) NOT NULL,
    statut statut_produit NOT NULL,
    date_annonce date NOT NULL,
    id_annonceur integer NOT NULL,
    num_categorie integer NOT NULL,
    CONSTRAINT prix_positif CHECK (prix_annonceur >= 0::numeric) NOT VALID,
    CONSTRAINT annonceur_fkey FOREIGN KEY (id_annonceur) references utilisateur (id_utilisateur),
    CONSTRAINT categorie_fkey FOREIGN KEY (num_categorie) references categorie (id_categorie)
);


CREATE TABLE produit
(
    id_produit serial PRIMARY KEY,
    titre character varying(50) NOT NULL
);



CREATE TABLE estimation 
(
    id_estimation serial PRIMARY KEY,
    prix_estimation numeric(8,2) NOT NULL,
    date_estimation date NOT NULL,
    id_expert integer NOT NULL,
    num_annonce integer NOT NULL,
    CONSTRAINT expert_fkey FOREIGN KEY (id_expert) references utilisateur (id_utilisateur),
    CONSTRAINT annonce_fkey FOREIGN KEY (num_annonce) references annonce (id_annonce),
    CONSTRAINT prix_positif CHECK (prix_estimation >= 0::numeric) NOT VALID
);




CREATE TABLE offre
(
    id_offre serial PRIMARY KEY,
    prix_offre numeric(8,2) NOT NULL,
    date_offre date NOT NULL,
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
    num_acht integer NOT NULL,
    CONSTRAINT id_prod_fkey FOREIGN KEY (num_produit) references produit (id_produit),
    CONSTRAINT id_acht_fkey FOREIGN KEY (num_acheteur) references utilisateur (id_utilisateur),
    CONSTRAINT prix_positif CHECK (prix_vente >= 0::numeric) NOT VALID
);

INSERT INTO vente VALUES
(1, "2019-07-23 23:55:37", 19.70, 1, 75),
(2, "2019-08-22 08:46:13", 87.96, 2, 19),
(3, "2019-06-14 22:28:09", 37.00, 3, 17),
(4, "2019-10-15 03:12:14", 124.33, 4, 22),
(5, "2019-01-19 14:04:37", 114.76, 5, 3),
(6, "2019-03-21 10:48:19", 879.52, 6, 65),
(7, "2019-02-07 06:31:44", 14.56, 7, 64),
(8, "2019-03-06 02:53:27", 1068.01, 8, 23),
(9, "2019-10-07 03:20:02", 45.87, 9, 35),
(10, "2019-02-15 15:08:18", 126.98, 10, 71),
(11, "2019-04-18 00:58:04", 89.82, 11, 55),
(12, "2019-04-14 13:07:48", 10.37, 12, 47),
(13, "2019-12-21 02:54:29", 61.23, 13, 33),
(14, "2019-08-23 05:21:55", 31.15, 14, 25),
(15, "2019-10-12 08:32:14", 19.93, 15, 38),
(16, "2019-05-10 17:57:50", 100.37, 16, 47),
(17, "2019-02-13 13:14:21", 24.41, 17, 40),
(18, "2019-03-27 22:36:01", 28.08, 18, 34),
(19, "2019-05-13 20:53:39", 21.99, 19, 65),
(20, "2019-03-09 14:09:00", 27.90, 20, 67),
(21, "2019-08-02 17:46:55", 68.21, 21, 65),
(22, "2019-02-14 06:27:29", 3.63, 22, 63),
(23, "2019-11-12 18:57:40", 21.98, 23, 28),
(24, "2019-06-08 12:33:30", 32.27, 24, 37),
(25, "2019-09-22 10:23:55", 61.46, 25, 9),
(26, "2019-05-24 16:40:16", 521.54, 26, 39),
(27, "2019-04-11 12:44:18", 53.20, 27, 44),
(28, "2019-09-27 07:44:42", 85.95, 28, 32),
(29, "2019-06-22 19:37:19", 53.36, 29, 41);



-- insertion des premières Données
