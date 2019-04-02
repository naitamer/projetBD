
--création des types
CREATE TYPE user_type AS ENUM
    ('expert', 'annonceur', 'acheteur');

CREATE TYPE categorie AS ENUM
    ('maison', 'vetement', 'bebe', 'location', 'loisir', 'meuble', 'autre')

CREATE TYPE maisonCat AS ENUM
    ('electomenager', 'vaissele', 'objet de decoration', 'literie')

CREATE TYPE vetementCat AS ENUM
    ('pantalon', 'chemise', 'robe', 'chandail', 'veste', 'chaussure')

CREATE TYPE bebeCat AS ENUM
    ('nouveau ne', '6mois', '9mois', '12mois', '18mois', '24mois')

CREATE TYPE location AS ENUM
    ('voiture', 'camion', 'instrument de musique' 'appartement')

CREATE TYPE loisirCat AS ENUM
    ('jeux video', 'jeu de societe', 'jeu de carte')

CREATE TYPE meubleCat AS ENUM
    ('futon', 'chaise', 'table', 'foyer')

CREATE TYPE type_produit AS ENUM 
    ('attente', 'estimed', 'validate')


--Création des table	

CREATE TABLE UTILISATEUR
(
    id_utilisateur serial PRIMARY KEY,
    nom character varying(100) NOT NULL,
    prenom character varying(100) NOT NULL,
    email character varying(100) NOT NULL,
    nip character varying(50) NOT NULL,
    nom_usager character varying(50) NOT NULL,
    type user_type NOT NULL,
    CONSTRAINT email_unique UNIQUE (email),
    CONSTRAINT nom_usager_unique UNIQUE (nom_usager)
);

CREATE TABLE PRODUIT
(
    id_produit serial PRIMARY KEY,
    categorie categorie NOT NULL,
    prix_annonceur numeric(8,2) NOT NULL,
    titre character varying(50),
    description character varying(600)
    statut type_produit NOT NULL,
    CONSTRAINT prix_positif CHECK (prix >= 0::numeric) NOT VALID,
);


-- Données

INSERT INTO UTILISATEUR VALUES (1, 'nait', 'ounissa', 'ounissa.nait@gmail.com', 'ounissa123', 'ounissa.nait', 'acheteur');
INSERT INTO UTILISATEUR VALUES (2, 'hanoun', 'meshleen', 'meshleen@gmail.com', 'meshleen123', 'hanoun.mesh', 'expert');
ALTER SEQUENCE utilisateurs_num_utilisateur_seq RESTART WITH 2;

INSERT INTO PRODUIT VALUES (1, 'meuble', 50.00, 'Divan', 'très peu utilisé, état comme neuf', 'attente');
ALTER SEQUENCE objets_num_objet_seq RESTART WITH 2;

