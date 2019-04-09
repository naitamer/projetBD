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

-- INSERT INTO category VALUES (1, 'table');
-- INSERT INTO category VALUES (2, 'jeux');
INSERT INTO category (id_categorie, nom_categorie) VALUES
(1, 'maison'),
(2, 'vehement'),
(3, 'bebe'),
(4, 'location'),
(5, 'loisir'),
(6, 'meuble'),
(7, 'autre');
--ALTER SEQUENCE categorie_id_categorie_seq RESTART WITH 2;


CREATE TABLE region 
(
    id_region serial PRIMARY KEY,
    autre type_monnaie NOT NULL,
    nom_region character varying(50) NOT NULL
);

INSERT INTO region VALUES(1, 'CAD' , 'Montreal');
INSERT INTO region VALUES(2, 'CAD', 'Edmonton');
INSERT INTO region VALUES(3, 'CAD' , 'Toronto');
INSERT INTO region VALUES(4, 'CAD' , 'Vancouver');
INSERT INTO region VALUES(5, 'CAD' , 'Calgary');
INSERT INTO region VALUES(6, 'CAD', 'Quebec');

INSERT INTO region VALUES(7, 'USD', 'Boston');
INSERT INTO region VALUES(8, 'USD', 'New York');
INSERT INTO region VALUES(9, 'USD', 'Chicago');
INSERT INTO region VALUES(10, 'USD', 'Vermont');
INSERT INTO region VALUES(11, 'USD', 'Seatle');
INSERT INTO region VALUES(12, 'USD', 'Cleveland');


INSERT INTO region VALUES(13, 'EUR' , 'Rome');
INSERT INTO region VALUES(14, 'EUR', 'Paris');
INSERT INTO region VALUES(15, 'EUR', 'Lyon');
INSERT INTO region VALUES(16, 'EUR' , 'Nice');
INSERT INTO region VALUES(17, 'EUR', 'Naples');
INSERT INTO region VALUES(18, 'EUR', 'Milano');

INSERT INTO region VALUES(19, 'JYP', 'Tokyo');
INSERT INTO region VALUES(20, 'JYP', 'Kyoto');
INSERT INTO region VALUES(21, 'JYP', 'Osaka');

INSERT INTO region VALUES(22, 'AUD', 'Perth');
INSERT INTO region VALUES(23, 'AUD' , 'Brisbane');
INSERT INTO region VALUES(24, 'AUD', 'Sydney');
INSERT INTO region VALUES(25, 'AUD', 'Melbourne');



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

-- INSERT INTO utilisateur VALUES (1, 'nait', 'ounissa', 'ounissa.nait@gmail.com', 'ounissa123', 1);
-- INSERT INTO utilisateur VALUES (2, 'hanoun', 'meshleen', 'meshleen@gmail.com', 'meshleen123', 2);


INSERT INTO utilisateur VALUES
(1, 'Nait', 'Ounissa', 'ounissa.nait@gmail.com', 'ounissa123', 1),
(2, 'Hanoun', 'Meshleen', 'meshleen@gmail.com', 'meshleen123', 2),
(3, 'Smith', 'Jacob', 'jacob.smith@gmail.com', 'jacob123', 3),
(4, 'Johnson', 'Michael', 'michael.johnson@hotmail.com', 'michael123', 4),
(5, 'Williams', 'Joshua', 'joshua.williams@hotmail.com', 'joshua123', 5),
(6, 'Jones', 'Matthew', 'matthew.jones@sympatico.ca', 'matthew123', 6),
(7, 'Brown', 'Christopher', 'christopher.brown@sympatico.ca', 'christopher123', 7),
(8, 'Davis', 'Andrew', 'andrew.davis@hotmail.com', 'andrew123', 8),
(9, 'Miller', 'Daniel', 'daniel.miller@hotmail.com', 'daniel123', 9),
(10, 'Wilson', 'Ethan', 'ethan.wilson@yahoo.ca', 'ethan123', 10),
(11, 'Moore', 'Joseph', 'joseph.moore@hotmail.com', 'joseph123', 11),
(12, 'Taylor', 'William', 'william.taylor@gmail.com', 'william123', 12),
(13, 'Anderson', 'Anthony', 'anthony.anderson@hotmail.com', 'anthony123', 13),
(14, 'Thomas', 'Nicholas', 'nicholas.thomas@hotmail.com', 'nicholas123', 14),
(15, 'Jackson', 'David', 'david.jackson@yahoo.ca', 'david123', 15),
(16, 'White', 'Alexander', 'alexander.white@yahoo.ca', 'alexander123', 16),
(17, 'Harris', 'Ryan', 'ryan.harris@sympatico.ca', 'ryan123', 17),
(18, 'Martin', 'Tyler', 'tyler.martin@sympatico.ca', 'tyler123', 18),
(19, 'Thompson', 'James', 'james.thompson@sympatico.ca', 'james123', 19),
(20, 'Garcia', 'John', 'john.garcia@gmail.com', 'john123', 20),
(21, 'Martinez', 'Jonathan', 'jonathan.martinez@sympatico.ca', 'jonathan123', 21),
(22, 'Robinson', 'Brandon', 'brandon.robinson@sympatico.ca', 'brandon123', 22),
(23, 'Clark', 'Christian', 'christian.clark@hotmail.com', 'christian123', 23),
(24, 'Rodriguez', 'Dylan', 'dylan.rodriguez@hotmail.com', 'dylan123', 24),
(25, 'Lewis', 'Zachary', 'zachary.lewis@gmail.com', 'zachary123', 25),
(26, 'Lee', 'Noah', 'noah.lee@yahoo.ca', 'noah123', 1),
(27, 'Walker', 'Samuel', 'samuel.walker@sympatico.ca', 'samuel123', 2),
(28, 'Hall', 'Benjamin', 'benjamin.hall@hotmail.com', 'benjamin123', 3),
(29, 'Allen', 'Nathan', 'nathan.allen@gmail.com', 'nathan123', 4),
(30, 'Young', 'Logan', 'logan.young@sympatico.ca', 'logan123', 5),
(31, 'Hernandez', 'Justin', 'justin.hernandez@sympatico.ca', 'justin123', 6),
(32, 'King', 'Jose', 'jose.king@gmail.com', 'jose123', 7),
(33, 'Wright', 'Gabriel', 'gabriel.wright@yahoo.ca', 'gabriel123', 8),
(34, 'Lopez', 'Austin', 'austin.lopez@gmail.com', 'austin123', 9),
(35, 'Hill', 'Kevin', 'kevin.hill@sympatico.ca', 'kevin123', 10),
(36, 'Scott', 'Caleb', 'caleb.scott@gmail.com', 'caleb123', 11),
(37, 'Green', 'Robert', 'robert.green@hotmail.com', 'robert123', 12),
(38, 'Adams', 'Elijah', 'elijah.adams@gmail.com', 'elijah123', 13),
(39, 'Baker', 'Thomas', 'thomas.baker@yahoo.ca', 'thomas123', 14),
(40, 'Gonzalez', 'Jordan', 'jordan.gonzalez@hotmail.com', 'jordan123', 15),
(41, 'Nelson', 'Cameron', 'cameron.nelson@yahoo.ca', 'cameron123', 16),
(42, 'Carter', 'Hunter', 'hunter.carter@yahoo.ca', 'hunter123' 17),
(43, 'Mitchell', 'Jack', 'jack.mitchell@gmail.com', 'jack123', 18),
(44, 'Perez', 'Angel', 'angel.perez@gmail.com', 'angel123', 19),
(45, 'Roberts', 'Isaiah', 'isaiah.roberts@gmail.com', 'isaiah123', 20),
(46, 'Turner', 'Jackson', 'jackson.turner@sympatico.ca', 'jackson123', 21),
(47, 'Phillips', 'Evan', 'evan.phillips@hotmail.com', 'evan123', 22),
(48, 'Campbell', 'Luke', 'luke.campbell@sympatico.ca', 'luke123', 23),
(49, 'Parker', 'Jason', 'jason.parker@yahoo.ca', 'jason123', 24),
(50, 'Evans', 'Isaac', 'isaac.evans@hotmail.com', 'isaac123', 25),
(51, 'Edwards', 'Mason', 'mason.edwards@gmail.com', 'mason123', 2),
(52, 'Collins', 'Aaron', 'aaron.collins@yahoo.ca', 'aaron123', 5),
(53, 'Stewart', 'Emily', 'emily.stewart@gmail.com', 'emily123', 2),
(54, 'Sanchez', 'Madison', 'madison.sanchez@yahoo.ca', 'madison123', 4),
(55, 'Morris', 'Emma', 'emma.morris@hotmail.com', 'emma123', 1),
(56, 'Rogers', 'Hannah', 'hannah.rogers@gmail.com', 'hannah123', 10),
(57, 'Reed', 'Olivia', 'olivia.reed@hotmail.com', 'olivia123', 7),
(58, 'Cook', 'Abigail', 'abigail.cook@sympatico.ca', 'abigail123', 11),
(59, 'Morgan', 'Isabella', 'isabella.morgan@gmail.com', 'isabella123', 22),
(60, 'Bell', 'Ashley', 'ashley.bell@hotmail.com', 'ashley123', 12),
(61, 'Murphy', 'Samantha', 'samantha.murphy@sympatico.ca', 'samatha123', 13),
(62, 'Bailey', 'Elizabeth', 'elizabeth.bailey@yahoo.ca', 'elizabeth123', 14),
(63, 'Rivera', 'Alexis', 'alexis.rivera@sympatico.ca', 'alexis123', 11),
(64, 'Cooper', 'Sarah', 'sarah.cooper@hotmail.com', 'sarah123', 11),
(65, 'Richardson', 'Alyssa', 'alyssa.richardson@hotmail.com', 'alyssa123', 1),
(66, 'Cox', 'Grace', 'grace.cox@gmail.com', 'grace123', 5),
(67, 'Howard', 'Sophia', 'sophia.howard@gmail.com', 'sophia123', 7),
(68, 'Ward', 'Taylor', 'taylor.ward@yahoo.ca', 'taylor123', 21),
(69, 'Torres', 'Brianna', 'brianna.torres@sympatico.ca', 'brianna123', 22),
(70, 'Peterson', 'Lauren', 'lauren.peterson@yahoo.ca', 'lauren123', 23),
(71, 'Gray', 'Ava', 'ava.gray@sympatico.ca', 'ava123', 22),
(72, 'Ramirez', 'Kayla', 'kayla.ramirez@sympatico.ca', 'kayla123', 13),
(73, 'James', 'Jessica', 'jessica.james@hotmail.com', 'jessica123', 19),
(74, 'Watson', 'Natalie', 'natalie.watson@gmail.com', 'natalie123', 3),
(75, 'Brooks', 'Chloe', 'chloe.brooks@gmail.com', 'chloe123', 4),
(76, 'Kelly', 'Anna', 'anna.kelly@sympatico.ca', 'anna123', 5); 


ALTER SEQUENCE utilisateur_id_utilisateur_seq RESTART WITH 2;


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

INSERT INTO produit (id_produit, titre, description, prix_annonceur, statut, id_annonceur, num_categorie) VALUES
(1, 'table antique', 'très peu utilisée, état comme neuf', 50.00, 'waiting', 1, 1),
(2, 'chandail', 'chandail marque cos', 20.00, 'validated', 1, 2),
(3, 'chemise', 'neuf', 30.00, 'estimated', 2, 2),
(4, 'robe', NULL, 78.00, 'validated', 3, 2),
(5, 'chaussure', 'tout a fait nouveau', 34.00, 'validated', 4, 2),
(6, 'chaussure', 'limited edition', 33.00, 'waiting', 5, 2),
(7, 'poussette', 'poussette blanche', 125.00, 'validated', 8, 3),
(8, 'vase antique', 'vase antique rouge', 550.00, 'waiting', 1, 1),
(9, 'humidifier', 'très peu utilisée', 100.00, 'validated', 9, 1),
(10, 'aspirateur', 'aspirateur dyson', 200.00, 'waiting', 12, 1),
(11, 'appartement', 'près de la station berri', 1000.00, 'validated', 15, 4),
(12, 'chandail', 'chandail pour le bebe, 6 mois', 15.00, 'validated', 19, 3),
(13, 'chapeau bleu', 'usagé, bleu, cute', 12.00, 'estimated', 38, 3),
(14, 'chaise', 'chaise pour outdoor', 64.00, 'refused', 32, 6),
(15, 'chaise', 'chaise pour le bureau', 1000.00, 'validated', 73, 6),
(16, 'chaise', 'stool', 40.00, 'validated', 44, 6),
(17, 'table', 'table pour outdoor', 120.00, 'validated', 54, 6),
(18, 'table', 'table en bois', 95.00, 'validated', 66, 6),
(19, 'jeux video', 'supermario classique', 20.00, 'waiting', 8, 5),
(20, 'jeux video', 'supermario 3D', 30.00, 'waiting' 8, 5),
(21, 'jeux video', 'cart mario', 10.00, 'validated', 33, 5)
(22, 'pantalon', 'levis jean', 56.00, 'validated', 56, 2),
(23, 'pantalon', 'jean noir', 34.00, 'validated', 55, 2),
(24, 'appartement', 'près de vieux montreal, 3 et demie', 1500.00, 'waiting', 62, 4),
(25, 'futon', 'couleur blanche', 30.00, 'waiting', 65, 6),
(26, 'vaisselle', 'cuiller en argent', 70.00, 'waiting', 11, 1),
(27, 'vaisselle', 'baguette en argent', 100.00, 'waiting', 12, 1),
(28, 'literie', 'oreiller vert', 20.00, 'validated', 13, 1),
(29, 'literie', 'couverture', 100.00, 'validated', 14, 1),
(30, 'vaisselle', 'assiette à pain', 22.00, 'validated', 11, 1),
(31, 'chaussure', 'bebe flip-flop', 30.00, 'validated', 51, 3),
(32, 'table de bebe', 'table de bebe', 20.00, 'validated', 52, 3),
(33, 'jouet', 'jouet interactif', 30.00, 'validated', 55, 3),
(34, 'fauteuil', 'fauteuil de bebe', 70.00,'validated', 56, 3),
(35, 'lit', 'lit de bebe', 100.00, 'estimated', 43, 3),
(36, 'vetements', '2 pantalons et 2 chandails', 20.00, 'estimated', 33, 3),
(37, 'vetements', '5 vetements', 20.00, 'estimated', 36, 3),
(38, 'jeu de societe', 'blocus game', 10.00, 'estimated', 66, 5),
(39, 'jeu de societe', 'opération game', 10.00, 'waiting', 65, 5),
(40, 'jeu de societe', 'connect 4 game', 15.00, 'waiting', 71, 5),
(41, 'jeu de carte', 'uno card game', 4.00, 'validated', 73, 5)
(42, 'jeu de carte', 'melissa et doug', 20.00, 'validated', 72, 5),
(43, 'maillot de bain', 'neuf', 30.00, 'validated', 6, 4),
(44, 'base guitar', 'electric bass guitar', 70.00, 'validated', 43, 4),
(45, 'speaker', 'vintage speaker', 150.00, 'estimated', 42, 4),
(46, 'guitar', 'fendre elec-guitar', 600.00, 'validated', 33, 4),
(47, 'voiture', 'hyundai elantra 50dollar par jour', 50.00, 'validated', 74, 4),
(48, 'artwork', 'pop art framed ready to hang', 30.00, 'refused', 11, 1),
(49, 'lampe', '30*20*40 lampe de lit', 30.00, 'refused', 6, 6),
(50, 'armoire', 'wardrobe cabinet', 79.00, 'validated', 6, 6),
(51, 'divan', 'très peu utilise, état comme neuf', 50.00, 'validated', 75, 6);

ALTER SEQUENCE produit_num_produit_seq RESTART WITH 1;



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




