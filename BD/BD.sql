
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

INSERT INTO utilisateur VALUES
(1, 'Nait', 'Ounissa', 'ounissa.nait@gmail.com', 'ONait', 'ounissa123'),
(2, 'Hanoun', 'Meshleen', 'meshleen@gmail.com', 'MHanoun', 'meshleen123'),
(3, ‘Smith’, ‘Jacob’, ‘jacob.smith@gmail.com’, ‘JSmith’, ‘jacob123’),
(4, ‘Johnson’, ‘Michael’, ‘michael.johnson@hotmail.com’, ‘MJohnson’, ‘michael123’),
(5, ‘Williams’, ‘Joshua’, ‘joshua.williams@hotmail.com’, ‘JWilliams’, ‘joshua123’),
(6, ‘Jones’, ‘Matthew’, ‘matthew.jones@sympatico.ca’, ‘MJones’, ‘matthew123’),
(7, ‘Brown’, ‘Christopher’, ‘christopher.brown@sympatico.ca’, ‘CBrown’, ‘christopher123’),
(8, ‘Davis’, ‘Andrew’, ‘andrew.davis@hotmail.com’, ‘ADavis’, ‘andrew123’),
(9, ‘Miller’, ‘Daniel’, ‘daniel.miller@hotmail.com’, ‘DMiller’, ‘daniel123’),
(10, ‘Wilson’, ‘Ethan’, ‘ethan.wilson@yahoo.ca’, ‘EWilson’, ‘ethan123’),
(11, ‘Moore’, ‘Joseph’, ‘joseph.moore@hotmail.com’, ‘JMoore’, ‘joseph123’),
(12, ‘Taylor’, ‘William’, ‘william.taylor@gmail.com’, ‘WTaylor’, ‘william123’),
(13, ‘Anderson’, ‘Anthony’, ‘anthony.anderson@hotmail.com’, ‘AAnderson’, ‘anthony123’),
(14, ‘Thomas’, ‘Nicholas’, ‘nicholas.thomas@hotmail.com’, ‘NThomas’, ‘nicholas123’),
(15, ‘Jackson’, ‘David’, ‘david.jackson@yahoo.ca’, ‘DJackson’, ‘david123’),
(16, ‘White’, ‘Alexander’, ‘alexander.white@yahoo.ca’, ‘AWhite’, ‘alexander123’),
(17, ‘Harris’, ‘Ryan’, ‘ryan.harris@sympatico.ca’, ‘RHarris’, ‘ryan123’),
(18, ‘Martin’, ‘Tyler’, ‘tyler.martin@sympatico.ca’, ‘TMartin’, ‘tyler123’),
(19, ‘Thompson’, ‘James’, ‘james.thompson@sympatico.ca’, ‘JThompson’, ‘james123’),
(20, ‘Garcia’, ‘John’, ‘john.garcia@gmail.com’, ‘JGarcia’, ‘john123’),
(21, ‘Martinez’, ‘Jonathan’, ‘jonathan.martinez@sympatico.ca’, ‘JMartinez’, ‘jonathan123’),
(22, ‘Robinson’, ‘Brandon’, ‘brandon.robinson@sympatico.ca’, ‘BRobinson’, ‘brandon123’),
(23, ‘Clark’, ‘Christian’, ‘christian.clark@hotmail.com’, ‘CClark’, ‘christian123’),
(24, ‘Rodriguez’, ‘Dylan’, ‘dylan.rodriguez@hotmail.com’, ‘DRodriguez’, ‘dylan123’),
(25, ‘Lewis’, ‘Zachary’, ‘zachary.lewis@gmail.com’, ‘ZLewis’, ‘zachary123’),
(26, ‘Lee’, ‘Noah’, ‘noah.lee@yahoo.ca’, ‘NLee’, ‘noah123’),
(27, ‘Walker’, ‘Samuel’, ‘samuel.walker@sympatico.ca’, ‘SWalker’, ‘samuel123’),
(28, ‘Hall’, ‘Benjamin’, ‘benjamin.hall@hotmail.com’, ‘BHall’, ‘benjamin123’),
(29, ‘Allen’, ‘Nathan’, ‘nathan.allen@gmail.com’, ‘NAllen’, ‘nathan123’),
(30, ‘Young’, ‘Logan’, ‘logan.young@sympatico.ca’, ‘LYoung’, ‘logan123’),
(31, ‘Hernandez’, ‘Justin’, ‘justin.hernandez@sympatico.ca’, ‘JHernandez’, ‘justin123’),
(32, ‘King’, ‘Jose’, ‘jose.king@gmail.com’, ‘JKing’, ‘jose123’),
(33, ‘Wright’, ‘Gabriel’, ‘gabriel.wright@yahoo.ca’, ‘GWright’, ‘gabriel123’),
(34, ‘Lopez’, ‘Austin’, ‘austin.lopez@gmail.com’, ‘ALopez’, ‘austin123’),
(35, ‘Hill’, ‘Kevin’, ‘kevin.hill@sympatico.ca’, ‘KHill’, ‘kevin123’),
(36, ‘Scott’, ‘Caleb’, ‘caleb.scott@gmail.com’, ‘CScott’, ‘caleb123’),
(37, ‘Green’, ‘Robert’, ‘robert.green@hotmail.com’, ‘RGreen’, ‘robert123’),
(38, ‘Adams’, ‘Elijah’, ‘elijah.adams@gmail.com’, ‘EAdams’, ‘elijah123’),
(39, ‘Baker’, ‘Thomas’, ‘thomas.baker@yahoo.ca’, ‘TBaker’, ‘thomas123’),
(40, ‘Gonzalez’, ‘Jordan’, ‘jordan.gonzalez@hotmail.com’, ‘JGonzalez’, ‘jordan123’),
(41, ‘Nelson’, ‘Cameron’, ‘cameron.nelson@yahoo.ca’, ‘CNelson’, ‘cameron123’),
(42, ‘Carter’, ‘Hunter’, ‘hunter.carter@yahoo.ca’, ‘HCarter’, ‘hunter123’),
(43, ‘Mitchell’, ‘Jack’, ‘jack.mitchell@gmail.com’, ‘JMitchell’, ‘jack123’),
(44, ‘Perez’, ‘Angel’, ‘angel.perez@gmail.com’, ‘APerez’, ‘angel123’),
(45, ‘Roberts’, ‘Isaiah’, ‘isaiah.roberts@gmail.com’, ‘IRoberts’, ‘isaiah123’),
(46, ‘Turner’, ‘Jackson’, ‘jackson.turner@sympatico.ca’, ‘JTurner’, ‘jackson123’),
(47, ‘Phillips’, ‘Evan’, ‘evan.phillips@hotmail.com’, ‘EPhillips’, ‘evan123’),
(48, ‘Campbell’, ‘Luke’, ‘luke.campbell@sympatico.ca’, ‘LCampbell’, ‘luke123’),
(49, ‘Parker’, ‘Jason’, ‘jason.parker@yahoo.ca’, ‘JParker’, ‘jason123’),
(50, ‘Evans’, ‘Isaac’, ‘isaac.evans@hotmail.com’, ‘IEvans’, ‘isaac123’),
(51, ‘Edwards’, ‘Mason’, ‘mason.edwards@gmail.com’, ‘MEdwards’, ‘mason123’),
(52, ‘Collins’, ‘Aaron’, ‘aaron.collins@yahoo.ca’, ‘ACollins’, ‘aaron123’),
(53, ‘Stewart’, ‘Emily’, ‘emily.stewart@gmail.com’, ‘EStewart’, ‘emily123’),
(54, ‘Sanchez’, ‘Madison’, ‘madison.sanchez@yahoo.ca’, ‘MSanchez’, ‘madison123’),
(55, ‘Morris’, ‘Emma’, ‘emma.morris@hotmail.com’, ‘EMorris’, ‘emma123’),
(56, ‘Rogers’, ‘Hannah’, ‘hannah.rogers@gmail.com’, ‘HRogers’, ‘hannah123’),
(57, ‘Reed’, ‘Olivia’, ‘olivia.reed@hotmail.com’, ‘OReed’, ‘olivia123’),
(58, ‘Cook’, ‘Abigail’, ‘abigail.cook@sympatico.ca’, ‘ACook’, ‘abigail123’),
(59, ‘Morgan’, ‘Isabella’, ‘isabella.morgan@gmail.com’, ‘IMorgan’, ‘isabella123’),
(60, ‘Bell’, ‘Ashley’, ‘ashley.bell@hotmail.com’, ‘ABell’, ‘ashley123’),
(61, ‘Murphy’, ‘Samantha’, ‘samantha.murphy@sympatico.ca’, ‘SMurphy’, ‘samatha123’),
(62, ‘Bailey’, ‘Elizabeth’, ‘elizabeth.bailey@yahoo.ca’, ‘EBailey’, ‘elizabeth123’),
(63, ‘Rivera’, ‘Alexis’, ‘alexis.rivera@sympatico.ca’, ‘ARivera’, ‘alexis123’),
(64, ‘Cooper’, ‘Sarah’, ‘sarah.cooper@hotmail.com’, ‘SCooper’, ‘sarah123’),
(65, ‘Richardson’, ‘Alyssa’, ‘alyssa.richardson@hotmail.com’, ‘ARichardson’, ‘alyssa123’),
(66, ‘Cox’, ‘Grace’, ‘grace.cox@gmail.com’, ‘GCox’, ‘grace123’),
(67, ‘Howard’, ‘Sophia’, ‘sophia.howard@gmail.com’, ‘SHoward’, ‘sophia123’),
(68, ‘Ward’, ‘Taylor’, ‘taylor.ward@yahoo.ca’, ‘TWard’, ‘taylor123’),
(69, ‘Torres’, ‘Brianna’, ‘brianna.torres@sympatico.ca’, ‘BTorres’, ‘brianna123’),
(70, ‘Peterson’, ‘Lauren’, ‘lauren.peterson@yahoo.ca’, ‘LPeterson’, ‘lauren123’),
(71, ‘Gray’, ‘Ava’, ‘ava.gray@sympatico.ca’, ‘AGray’, ‘ava123’),
(72, ‘Ramirez’, ‘Kayla’, ‘kayla.ramirez@sympatico.ca’, ‘KRamirez’, ‘kayla123’),
(73, ‘James’, ‘Jessica’, ‘jessica.james@hotmail.com’, ‘JJames’, ‘jessica123’),
(74, ‘Watson’, ‘Natalie’, ‘natalie.watson@gmail.com’, ‘NWatson’, ‘natalie123’),
(75, ‘Brooks’, ‘Chloe’, ‘chloe.brooks@gmail.com’, ‘CBrooks’, ‘chloe123’),
(76, ‘Kelly’, ‘Anna’, ‘anna.kelly@sympatico.ca’, ‘AKelly’, ‘anna123’); 

ALTER SEQUENCE utilisateurs_num_utilisateur_seq RESTART WITH 2;

INSERT INTO PRODUIT VALUES (1, 'meuble', 50.00, 'Divan', 'très peu utilisé, état comme neuf', 'attente');
ALTER SEQUENCE objets_num_objet_seq RESTART WITH 2;

