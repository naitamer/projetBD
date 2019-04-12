
--ici j'ai rajoute un attribut group qui me permetera de faire des categorie et
--des sous gategorie lors de la recherche d'un produit par un acheteur
INSERT INTO category (id_categorie, groupe, nom_categorie) VALUES
(1,'auto', 'pneu'),
(2, 'auto',''),
(3, 'bebe', 'vetement'),
(4, 'bebe', 'jouet'),
(5, 'vetement', 'jupe'),
(6, 'vetement', 'pantalon'),
(7, 'autre','autre');


INSERT INTO region VALUES
(1, 'CAD' , 'Montreal');
(2, 'CAD', 'Edmonton');
(3, 'CAD' , 'Toronto');
(4, 'CAD' , 'Vancouver');
(5, 'CAD' , 'Calgary');
(6, 'CAD', 'Quebec');

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

--ici il faut juste mettre le nom et prenom comme un seul attribut
-- comme pour les 3 premier inserts
INSERT INTO utilisateur VALUES
(1, 'Nait Ounissa', 'ounissa.nait@gmail.com', 'ounissa123', 1),
(2, 'Hanoun Meshleen', 'meshleen@gmail.com', 'meshleen123', 2),
(3, 'Smith Jacob', 'jacob.smith@gmail.com', 'jacob123', 3),
(4, 'Johnson Michael', 'michael.johnson@hotmail.com', 'michael123', 4),
(5, 'Williams Joshua', 'joshua.williams@hotmail.com', 'joshua123', 5),
(6, 'Jones Matthew', 'matthew.jones@sympatico.ca', 'matthew123', 6),
(7, 'Brown Christopher', 'christopher.brown@sympatico.ca', 'christopher123', 7),
(8, 'Davis Andrew', 'andrew.davis@hotmail.com', 'andrew123', 8),
(9, 'Miller Daniel', 'daniel.miller@hotmail.com', 'daniel123', 9),
(10, 'Wilson Ethan', 'ethan.wilson@yahoo.ca', 'ethan123', 10),
(11, 'Moore Joseph', 'joseph.moore@hotmail.com', 'joseph123', 11),
(12, 'Taylor William', 'william.taylor@gmail.com', 'william123', 12),
(13, 'Anderson Anthony', 'anthony.anderson@hotmail.com', 'anthony123', 13),
(14, 'Thomas Nicholas', 'nicholas.thomas@hotmail.com', 'nicholas123', 14),
(15, 'Jackson David', 'david.jackson@yahoo.ca', 'david123', 15),
(16, 'White Alexander', 'alexander.white@yahoo.ca', 'alexander123', 16),
(17, 'Harris Ryan', 'ryan.harris@sympatico.ca', 'ryan123', 17),
(18, 'Martin Tyler', 'tyler.martin@sympatico.ca', 'tyler123', 18),
(19, 'Thompson James', 'james.thompson@sympatico.ca', 'james123', 19),
(20, 'Garcia John', 'john.garcia@gmail.com', 'john123', 20),
(21, 'Martinez Jonathan', 'jonathan.martinez@sympatico.ca', 'jonathan123', 21),
(22, 'Robinson Brandon', 'brandon.robinson@sympatico.ca', 'brandon123', 22),
(23, 'Clark Christian', 'christian.clark@hotmail.com', 'christian123', 23),
(24, 'Rodriguez Dylan', 'dylan.rodriguez@hotmail.com', 'dylan123', 24),
(25, 'Lewis Zachary', 'zachary.lewis@gmail.com', 'zachary123', 25),
(26, 'Lee Noah', 'noah.lee@yahoo.ca', 'noah123', 1),
(27, 'Walker Samuel', 'samuel.walker@sympatico.ca', 'samuel123', 2),
(28, 'Hall Benjamin', 'benjamin.hall@hotmail.com', 'benjamin123', 3),
(29, 'Allen Nathan', 'nathan.allen@gmail.com', 'nathan123', 4),
(30, 'Young Logan', 'logan.young@sympatico.ca', 'logan123', 5),
(31, 'Hernandez Justin', 'justin.hernandez@sympatico.ca', 'justin123', 6),
(32, 'King Jose', 'jose.king@gmail.com', 'jose123', 7),
(33, 'Wright Gabriel', 'gabriel.wright@yahoo.ca', 'gabriel123', 8),
(34, 'Lopez Austin', 'austin.lopez@gmail.com', 'austin123', 9),
(35, 'Hill Kevin', 'kevin.hill@sympatico.ca', 'kevin123', 10),
(36, 'Scott Caleb', 'caleb.scott@gmail.com', 'caleb123', 11),
(37, 'Green Robert', 'robert.green@hotmail.com', 'robert123', 12),
(38, 'Adams Elijah', 'elijah.adams@gmail.com', 'elijah123', 13),
(39, 'Baker Thomas', 'thomas.baker@yahoo.ca', 'thomas123', 14),
(40, 'Gonzalez Jordan', 'jordan.gonzalez@hotmail.com', 'jordan123', 15),
(41, 'Nelson Cameron', 'cameron.nelson@yahoo.ca', 'cameron123', 16),
(42, 'Carter Hunter', 'hunter.carter@yahoo.ca', 'hunter123' 17),
(43, 'Mitchell Jack', 'jack.mitchell@gmail.com', 'jack123', 18),
(44, 'Perez Angel', 'angel.perez@gmail.com', 'angel123', 19),
(45, 'Roberts Isaiah', 'isaiah.roberts@gmail.com', 'isaiah123', 20),
(46, 'Turner Jackson', 'jackson.turner@sympatico.ca', 'jackson123', 21),
(47, 'Phillips Evan', 'evan.phillips@hotmail.com', 'evan123', 22),
(48, 'Campbell Luke', 'luke.campbell@sympatico.ca', 'luke123', 23),
(49, 'Parker Jason', 'jason.parker@yahoo.ca', 'jason123', 24),
(50, 'Evans Isaac', 'isaac.evans@hotmail.com', 'isaac123', 25),
(51, 'Edwards Mason', 'mason.edwards@gmail.com', 'mason123', 2),
(52, 'Collins Aaron', 'aaron.collins@yahoo.ca', 'aaron123', 5),
(53, 'Stewart Emily', 'emily.stewart@gmail.com', 'emily123', 2),
(54, 'Sanchez Madison', 'madison.sanchez@yahoo.ca', 'madison123', 4),
(55, 'Morris Emma', 'emma.morris@hotmail.com', 'emma123', 1),
(56, 'Rogers Hannah', 'hannah.rogers@gmail.com', 'hannah123', 10),
(57, 'Reed Olivia', 'olivia.reed@hotmail.com', 'olivia123', 7),
(58, 'Cook Abigail', 'abigail.cook@sympatico.ca', 'abigail123', 11),
(59, 'Morgan Isabella', 'isabella.morgan@gmail.com', 'isabella123', 22),
(60, 'Bell Ashley', 'ashley.bell@hotmail.com', 'ashley123', 12),
(61, 'Murphy Samantha', 'samantha.murphy@sympatico.ca', 'samatha123', 13),
(62, 'Bailey Elizabeth', 'elizabeth.bailey@yahoo.ca', 'elizabeth123', 14),
(63, 'Rivera Alexis', 'alexis.rivera@sympatico.ca', 'alexis123', 11),
(64, 'Cooper Sarah', 'sarah.cooper@hotmail.com', 'sarah123', 11),
(65, 'Richardson Alyssa', 'alyssa.richardson@hotmail.com', 'alyssa123', 1),
(66, 'Cox Grace', 'grace.cox@gmail.com', 'grace123', 5),
(67, 'Howard Sophia', 'sophia.howard@gmail.com', 'sophia123', 7),
(68, 'Ward Taylor', 'taylor.ward@yahoo.ca', 'taylor123', 21),
(69, 'Torres Brianna', 'brianna.torres@sympatico.ca', 'brianna123', 22),
(70, 'Peterson Lauren', 'lauren.peterson@yahoo.ca', 'lauren123', 23),
(71, 'Gray Ava', 'ava.gray@sympatico.ca', 'ava123', 22),
(72, 'Ramirez Kayla', 'kayla.ramirez@sympatico.ca', 'kayla123', 13),
(73, 'James Jessica', 'jessica.james@hotmail.com', 'jessica123', 19),
(74, 'Watson Natalie', 'natalie.watson@gmail.com', 'natalie123', 3),
(75, 'Brooks Chloe', 'chloe.brooks@gmail.com', 'chloe123', 4),
(76, 'Kelly Anna', 'anna.kelly@sympatico.ca', 'anna123', 5); 


--attention ici j'ai ajouter une date juste apres le statut,
INSERT INTO annonce (id_annonce, titre, description, prix_annonceur, statut,date_annonce, id_annonceur, num_categorie) VALUES
(1, 'table antique', 'très peu utilisée, état comme neuf', 50.00, 'waiting', '2019-03-11', 1, 1),
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


--ici aussi la date au lieu de timestemp, et attention, la cle etrangere pour produit a ete changer pour annonce
--une nouvelle talble qui a fait son apparition
INSERT INTO estimation (id_estimation, prix_estimation, date_estimation, id_expert, num_annonce) VALUES
(1, 18.00, '2019-03-11', 76, 2),
(2, 25.00, '2019-03-13', 76, 3),
(3, 39.00, '2019-03-15', 76, 4),
(4, 30.00, '2019-03-17', 76, 5),
(5, 100.00, '2019-03-22', 76, 7),
(6, 99.00, '2019-03-25 23:03:03', 76, 9),
(7, 950.00, '2019-03-27 23:03:03', 76, 11),
(8, 14.00, '2019-03-28 23:03:03', 76, 12),
(9, 24.00, '2019-03-20 23:03:03', 76, 13),
(10, 80.00, '2019-03-30 23:03:03', 76, 14),
(11, 950.00, '2019-03-31 23:03:03', 76, 15),
(12, 39.00, '2019-04-01 23:03:03', 76, 16),
(13, 115.00, '2019-04-02 23:03:03', 76, 17),
(14, 90.00, '2019-04-03 23:03:03', 76, 18),
(15, 9.00, '2019-04-04 23:03:03', 76, 21),
(16, 32.00, '2019-04-06 23:03:03', 76, 22),
(17, 26.00, '2019-04-05 23:03:03', 76, 23),
(18, 19.00, '2019-04-07 23:03:03', 76, 28),
(19, 94.00, '2019-04-08 23:03:03', 76, 29),
(20, 20.00, '2019-04-09 23:03:03', 76, 30),
(21, 28.00, '2019-03-11 11:03:03', 76, 31),
(22, 19.00, '2019-03-13 11:03:03', 76, 32),
(23, 25.00, '2019-03-15 21:03:03', 76, 33),
(24, 65.00, '2019-03-17 22:03:03', 76, 34),
(25, 90.00, '2019-03-22 23:44:03', 76, 35),
(26, 15.00, '2019-03-25 23:44:03', 76, 36),
(27, 15.00, '2019-03-27 23:33:03', 76, 37),
(28, 5.00, '2019-03-28 23:22:03', 76, 38),
(29, 3.00, '2019-03-20 23:22:03', 76, 41),
(30, 18.00, '2019-03-30 23:11:03', 76, 42),
(31, 28.00, '2019-03-11 23:21:03', 76, 43),
(32, 60.00, '2019-03-13 23:23:03', 76, 44),
(33, 130.00, '2019-03-15 23:46:03', 76, 45),
(34, 550.00, '2019-03-17 23:47:03', 76, 46),
(35, 48.00, '2019-03-22 23:48:03', 76, 47),
(36, 15.00, '2019-03-25 11:48:03', 76, 48),
(37, 10.00, '2019-03-27 12:03:03', 76, 49),
(38, 74.00, '2019-03-28 14:03:03', 76, 50),
(39, 45.00, '2019-03-20 15:03:03', 76, 51);


--ici jai modifier le timestemp en date 
--je cest que cest chainat desolee :(
INSERT INTO offre VALUES
(1, 19.83, "2019-03-18", 28, 40),
(2, 110.39, "2019-04-10", 29, 68),
(3, 31.71, "2019-02-28", 31, 75),
(4, 110.83, "2019-03-18", 17, 54),
(5, 26.18, "2019-03-25 00:07:09", 31, 31),
(6, 78.29, "2019-03-27 20:36:40", 50, 44),
(7, 27.26, "2019-03-12 19:52:05", 33, 54),
(8, 14.59, "2019-01-17 21:12:30", 12, 24),
(9, 30.54, "2019-04-01 15:21:10", 33, 64),
(10, 16.49, "2019-01-16 18:15:11", 12, 50),
(11, 3.64, "2019-01-02 19:26:38", 41, 64),
(12, 15.25, "2019-04-17 07:04:16", 12, 14),
(13, 38.28, "2019-03-15 07:33:39", 5, 44),
(14, 4.89, "2019-02-23 00:30:28", 41, 36),
(15, 27.00, "2019-01-07 13:39:27", 33, 19),
(16, 21.26, "2019-01-22 12:43:16", 32, 1),
(17, 9.06, "2019-02-17 10:22:31", 21, 12),
(18, 37.78, "2019-04-09 06:48:29", 23, 29),
(19, 75.77, "2019-01-27 00:27:07", 4, 53),
(20, 3.97, "2019-01-15 08:32:44", 41, 22),
(21, 79.31, "2019-04-11 15:20:25", 50, 59),
(22, 9.11, "2019-01-22 22:25:01", 21, 23),
(23, 16.91, "2019-02-28 12:30:28", 12, 25),
(24, 38.95, "2019-02-13 08:38:40", 23, 32),
(25, 86.97, "2019-04-03 21:52:08", 29, 65),
(26, 71.82, "2019-01-20 03:30:08", 4, 54),
(27, 17.25, "2019-02-20 12:46:40", 42, 6),
(28, 33.23, "2019-03-17 17:49:01", 31, 4),
(29, 129.17, "2019-02-17 01:43:40", 7, 54),
(30, 19.21, "2019-01-08 09:26:58", 30, 30),
(31, 4.44, "2019-03-07 02:03:09", 41, 3),
(32, 4.30, "2019-03-23 13:23:57", 41, 26),
(33, 3.07, "2019-04-15 05:30:26", 41, 35),
(34, 85.07, "2019-04-28 02:31:36", 4, 47),
(35, 33.03, "2019-01-15 10:41:33", 31, 51),
(36, 131.72, "2019-04-22 16:17:30", 17, 76),
(37, 41.13, "2019-01-22 17:55:29", 16, 67),
(38, 76.45, "2019-03-25 10:31:22", 34, 8),
(39, 119.51, "2019-04-15 16:21:47", 7, 58),
(40, 17.90, "2019-01-13 14:38:29", 42, 37),
(41, 61.78, "2019-03-27 06:12:31", 22, 36),
(42, 62.49, "2019-01-05 23:48:46", 34, 70),
(43, 66.97, "2019-01-08 22:15:34", 34, 33),
(44, 91.79, "2019-03-05 15:32:18", 18, 36),
(45, 35.15, "2019-02-08 14:39:05", 23, 67),
(46, 43.30, "2019-02-26 20:55:12", 16, 60),
(47, 61.65, "2019-04-28 07:08:04", 22, 18),
(48, 76.83, "2019-02-17 06:08:19", 34, 53),
(49, 547.80, "2019-02-16 05:27:13", 46, 16),
(50, 70.02, "2019-03-03 00:19:14", 50, 2);

-- pour la table vente il va falloir ajouter id_acheteur



--ajouter des entree pour la table produits
