
--ici j'ai rajoute un attribut group qui me permetera de faire des categorie et
--des sous gategorie lors de la recherche d'un produit par un acheteur
INSERT INTO category (id_categorie, groupe, nom_categorie) VALUES
(1, 'maison', 'auto'),
(2, 'maison','meuble'),
(3, 'bebe', 'vetement'),
(4, 'bebe', 'jouet'),
(5, 'vetement', 'bas'),
(6, 'vetement', 'haut'),
(7, 'autre','autre');

INSERT INTO region VALUES
(1, 'CAD' , 'Montreal');
(2, 'CAD', 'Edmonton');
(3, 'CAD' , 'Toronto');
(4, 'CAD' , 'Vancouver');
(5, 'CAD' , 'Calgary');
(6, 'CAD', 'Quebec');

INSERT INTO region VALUES
(7, 'USD', 'Boston'),
(8, 'USD', 'New York'),
(9, 'USD', 'Chicago'),
(10, 'USD', 'Vermont'),
(11, 'USD', 'Seatle'),
(12, 'USD', 'Cleveland'),
(13, 'EUR' , 'Rome'),
(14, 'EUR', 'Paris'),
(15, 'EUR', 'Lyon'),
(16, 'EUR' , 'Nice'),
(17, 'EUR', 'Naples'),
(18, 'EUR', 'Milano'),
(19, 'JYP', 'Tokyo'),
(20, 'JYP', 'Kyoto'),
(21, 'JYP', 'Osaka'),
(22, 'AUD', 'Perth'),
(23, 'AUD' , 'Brisbane'),
(24, 'AUD', 'Sydney'),
(25, 'AUD', 'Melbourne');
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
INSERT INTO annonce (id_annonce, titre, description, prix_annonceur, statut, date_annonce, id_annonceur, num_categorie) VALUES
(1, 'table antique', 'très peu utilisée, état comme neuf', 50.00, 'waiting', '2019-03-11', 1, 2),
(2, 'chandail', 'chandail marque cos', 20.00, 'validated', '2019-02-14', 1, 6),
(3, 'chemise', 'neuf', 30.00, 'estimated', '2019-01-19', 2, 6),
(4, 'robe', '', 78.00, 'validated', '2019-02-27', 3, 6),
(5, 'chaussure', 'tout a fait nouveau', 34.00, 'validated', '2019-03-02', 4, 5),
(6, 'chaussure', 'limited edition', 33.00, 'waiting', '2019-01-06', 5, 5),
(7, 'poussette', 'poussette blanche', 125.00, 'validated', '2019-01-09', 8, 4),
(8, 'vase antique', 'vase antique rouge', 550.00, 'waiting', '2019-03-23', 1, 2),
(9, 'humidifier', 'très peu utilisée', 100.00, 'validated', '2019-02-03', 9, 2),
(10, 'aspirateur', 'aspirateur dyson', 200.00, 'waiting', '2019-03-16', 12, 2),
(11, 'appartement', 'près de la station berri', 1000.00, 'validated', '2019-01-12', 15, 2),
(12, 'chandail', 'chandail pour le bebe, 6 mois', 15.00, 'validated', '2019-04-03', 19, 6),
(13, 'chapeau bleu', 'usagé, bleu, cute', 12.00, 'estimated', '2019-04-23', 38, 6),
(14, 'chaise', 'chaise pour outdoor', 64.00, 'refused', '2019-04-25', 32, 2),
(15, 'chaise', 'chaise pour le bureau', 1000.00, 'validated', '2019-03-13', 73, 2),
(16, 'chaise', 'stool', 40.00, 'validated', '2019-04-27', 44, 2),
(17, 'table', 'table pour outdoor', 120.00, 'validated', '2019-02-11', 54, 2),
(18, 'table', 'table en bois', 95.00, 'validated', '2019-02-22', 66, 2),
(19, 'jeux video', 'supermario classique', 20.00, 'waiting', '2019-03-05', 8, 7),
(20, 'jeux video', 'supermario 3D', 30.00, 'waiting', '2019-04-04', 8, 7),
(21, 'jeux video', 'cart mario', 10.00, 'validated', '2019-04-05', 33, 7),
(22, 'pantalon', 'levis jean', 56.00, 'validated', '2019-03-12', 56, 5),
(23, 'pantalon', 'jean noir', 34.00, 'validated', '2019-02-01', 55, 5),
(24, 'auto', 'près de vieux montreal, 3 portes', 1500.00, 'waiting', '2019-01-17', 62, 1),
(25, 'futon', 'couleur blanche', 30.00, 'waiting', '2019-01-28', 65, 2),
(26, 'vaisselle', 'cuiller en argent', 70.00, 'waiting', '2019-02-09', 11, 2),
(27, 'vaisselle', 'baguette en argent', 100.00, 'waiting', '2019-02-16', 12, 2),
(28, 'literie', 'oreiller vert', 20.00, 'validated', '2019-04-07', 13, 7),
(29, 'literie', 'couverture', 100.00, 'validated', '2019-01-10', 14, 7),
(30, 'vaisselle', 'assiette à pain', 22.00, 'validated', '2019-04-22', 11, 2),
(31, 'chaussure', 'bebe flip-flop', 30.00, 'validated', '2019-03-28', 51, 3),
(32, 'table de bebe', 'table de bebe', 20.00, 'validated', '2019-04-12', 52, 4),
(33, 'jouet', 'jouet interactif', 30.00, 'validated', '2019-03-20', 55, 4),
(34, 'fauteuil', 'fauteuil de bebe', 70.00,'validated', '2019-02-19', 56, 2),
(35, 'lit', 'lit de bebe', 100.00, 'estimated', '2019-04-09', 43, 2),
(36, 'vetements', '2 pantalons et 2 chandails', 20.00, 'estimated', '2019-02-06', 33, 5),
(37, 'vetements', '5 vetements', 20.00, 'estimated', '2019-01-25', 36, 5),
(38, 'jeu de societe', 'blocus game', 10.00, 'estimated', '2019-03-25', 66, 7),
(39, 'jeu de societe', 'opération game', 10.00, 'waiting', '2019-02-27', 65, 7),
(40, 'jeu de societe', 'connect 4 game', 15.00, 'waiting', '2019-04-28', 71, 7),
(41, 'jeu de carte', 'uno card game', 4.00, 'validated', '2019-01-27', 73, 7),
(42, 'jeu de carte', 'melissa et doug', 20.00, 'validated', '2019-01-09', 72, 7),
(43, 'maillot de bain', 'neuf', 30.00, 'validated', '2019-01-12', 6, 6),
(44, 'base guitar', 'electric bass guitar', 70.00, 'validated', '2019-03-06', 43, 7),
(45, 'speaker', 'vintage speaker', 150.00, 'estimated', '2019-02-19', 42, 7),
(46, 'guitar', 'fendre elec-guitar', 600.00, 'validated', '2019-01-16', 33, 7),
(47, 'voiture', 'hyundai elantra 50dollar par jour', 50.00, 'validated', '2019-03-12', 74, 1),
(48, 'artwork', 'pop art framed ready to hang', 30.00, 'refused', '2019-04-01', 11, 2),
(49, 'lampe', '30*20*40 lampe de lit', 30.00, 'refused', '2019-01-02', 6, 2),
(50, 'armoire', 'wardrobe cabinet', 79.00, 'validated', '2019-03-09', 6, 2),
(51, 'divan', 'très peu utilise, état comme neuf', 50.00, 'validated', '2019-04-04', 75, 2),
(52, 'paire de ciseaux', 'legerement utilise', 74.81, 'validated', '2019-02-06', 64, 7),
(53, 'etui a crayons', 'dans son emballage original', 463.71, 'validated', '2019-01-03', 67, 7),
(54, 'gomme a effacer', 'dans son emballage original', 340.17, 'validated', '2019-02-06', 28, 7),
(55, 'gomme a effacer', 'ayant apartenu a une celebrite', 443.54, 'validated', '2019-04-22', 1, 7),
(56, 'surligneur', 'a super bon prix', 473.5, 'validated', '2019-02-13', 61, 7),
(57, 'paire de ciseaux', 'ayant apartenu a une celebrite', 76.76, 'validated', '2019-04-10', 42, 7),
(58, 'etui a crayons', 'dans son emballage original', 158.59, 'validated', '2019-04-27', 75, 7),
(59, 'montre', 'dans son emballage original', 82.35, 'validated', '2019-02-09', 61, 7),
(60, 'porte-cles', 'comme neuf', 290.61, 'validated', '2019-02-20', 52, 7),
(61, 'cahier de notes', 'comme neuf', 421.03, 'validated', '2019-04-20', 56, 7),
(62, 'serviette', 'comme neuf', 59.96, 'validated', '2019-04-28', 11, 7),
(63, 'serviette', 'details sur demande', 142.74, 'validated', '2019-02-23', 58, 7),
(64, 'etui a crayons', 'legerement utilise', 74.26, 'validated', '2019-01-18', 54, 7),
(65, 'serviette', 'dans son emballage original', 109.60, 'validated', '2019-02-16', 4, 7),
(66, 'porte-cles', 'ayant jamais servi', 429.38, 'validated', '2019-03-09', 21, 7),
(67, 'montre', 'ayant apartenu a une celebrite', 99.86, 'validated', '2019-01-10', 3, 7),
(68, 'gomme a effacer', 'ayant apartenu a une celebrite', 333.07, 'validated', '2019-04-11', 53, 7),
(69, 'gomme a effacer', 'a super bon prix', 460.96, 'validated', '2019-03-09', 56, 7),
(70, 'surligneur', 'comme neuf', 156.90, 'validated', '2019-04-23', 10, 7),
(71, 'porte-cles', 'doit etre vendu', 133.03, 'validated', '2019-02-25', 6, 7),
(72, 'serviette', 'ayant apartenu a une celebrite', 342.19, 'validated', '2019-04-20', 26, 7),
(73, 'paire de ciseaux', 'legerement utilise', 158.00, 'validated', '2019-02-03', 62, 7),
(74, 'porte-cles', 'ayant apartenu a une celebrite', 22.56, 'validated', '2019-03-01', 53, 7),
(75, 'surligneur', 'details sur demande', 452.48, 'validated', '2019-02-17', 2, 7),
(76, 'montre', 'ayant apartenu a une celebrite', 95.16, 'validated', '2019-03-25', 50, 7),
(77, 'surligneur', 'comme neuf', 495.90, 'validated', '2019-02-14', 74, 7),
(78, 'surligneur', 'ayant apartenu a une celebrite', 120.21, 'validated', '2019-03-26', 32, 7),
(79, 'etui a crayons', 'a super bon prix', 468.13, 'validated', '2019-04-07', 13, 7),
(80, 'serviette', 'ayant apartenu a une celebrite', 310.02, 'validated', '2019-03-14', 24, 7),
(81, 'gomme a effacer', 'doit etre vendu', 379.39, 'validated', '2019-02-16', 48, 7),
(82, 'paire de ciseaux', 'dans son emballage original', 326.68, 'validated', '2019-03-05', 4, 7),
(83, 'serviette', 'doit etre vendu', 167.42, 'validated', '2019-02-10', 46, 7),
(84, 'gomme a effacer', 'comme neuf', 492.80, 'validated', '2019-02-7', 23, 7),
(85, 'etui a crayons', 'comme neuf', 439.62, 'validated', '2019-03-20', 53, 7),
(86, 'surligneur', 'comme neuf', 79.26, 'validated', '2019-01-01', 37, 7),
(87, 'montre', 'comme neuf', 346.87, 'validated', '2019-01-24', 70, 7),
(88, 'porte-cles', 'details sur demande', 183.57, 'validated', '2019-03-05', 64, 7),
(89, 'montre', 'dans son emballage original', 333.26, 'validated', '2019-02-16', 60, 7),
(90, 'surligneur', 'comme neuf', 187.63, 'validated', '2019-04-08', 28, 7),
(91, 'gomme a effacer', 'ayant apartenu a une celebrite', 263.43, 'validated', '2019-01-04', 63, 7);


--ici aussi la date au lieu de timestemp, et attention, la cle etrangere pour produit a ete changer pour annonce
--une nouvelle talble qui a fait son apparition
INSERT INTO estimation (id_estimation, prix_estimation, date_estimation, id_expert, num_annonce) VALUES
(1, 30.00, '2019-05-20', 74, 3),
(2, 78.00, '2019-05-28', 75, 4),
(3, 34.00, '2019-05-13', 73, 5),
(4, 125.00, '2019-05-11', 72, 7),
(5, 100.00, '2019-05-21', 75, 9),
(6, 1000.00, '2019-05-01', 72, 11),
(7, 15.00, '2019-05-12', 70, 12),
(8, 12.00, '2019-05-27', 76, 13),
(9, 114.00, '2019-05-16', 70, 14),
(10, 1000, '2019-05-16', 75, 15),
(11, 40.00, '2019-06-02', 74, 16),
(12, 120.00, '2019-06-11', 72, 17),
(13, 95.00, '2019-06-25', 71, 18),
(14, 10.00, '2019-06-19', 70, 21),
(15, 56.00, '2019-06-07', 75, 22),
(16, 34.00, '2019-06-11', 73, 23),
(17, 20.00, '2019-06-16', 75, 28),
(18, 100.00, '2019-06-23', 70, 29),
(19, 22.00, '2019-06-24', 75, 30),
(20, 30.00, '2019-06-16', 71, 31),
(21, 20.00, '2019-05-02', 75, 32),
(22, 30.00, '2019-05-24', 74, 33),
(23, 70.00, '2019-05-12', 74, 34),
(24, 100.00, '2019-05-13', 72, 35),
(25, 20.00, '2019-05-21', 70, 36),
(26, 20.00, '2019-05-14', 75, 37),
(27, 10.00, '2019-05-13', 74, 38),
(28, 4.00, '2019-05-23', 70, 41),
(29, 20.00, '2019-05-03', 74, 42),
(30, 30.00, '2019-05-12', 76, 43),
(31, 70.00, '2019-06-06', 72, 44),
(32, 150.00, '2019-06-19', 72, 45),
(33, 600.00, '2019-06-08', 73, 46),
(34, 50.00, '2019-06-19', 76, 47),
(35, 80.00, '2019-06-12', 70, 48),
(36, 80.00, '2019-06-06', 71, 49),
(37, 79.00, '2019-06-03', 76, 50),
(38, 50.00, '2019-06-25', 71, 51),
(39, 74.81, '2019-06-25', 75, 52),
(40, 463.71, '2019-06-24', 70, 53),
(41, 340.17, '2019-05-14', 72, 54),
(42, 443.54, '2019-05-23', 72, 55),
(43, 473.50, '2019-05-14', 70, 56),
(44, 76.76, '2019-05-13', 73, 57),
(45, 158.59, '2019-05-25', 76, 58),
(46, 82.35, '2019-05-19', 76, 59),
(47, 290.61, '2019-05-10', 75, 60),
(48, 421.03, '2019-05-04', 70, 61),
(49, 59.96, '2019-05-03', 73, 62),
(50, 142.74, '2019-05-07', 75, 63),
(51, 74.26, '2019-05-15', 73, 64),
(52, 109.60, '2019-05-06', 74, 65),
(53, 429.38, '2019-05-10', 76, 66),
(54, 99.86, '2019-05-26', 73, 67),
(55, 333.07, '2019-05-02', 72, 68),
(56, 460.96, '2019-05-28', 72, 69),
(57, 156.90, '2019-05-23', 75, 70),
(58, 133.03, '2019-05-23', 75, 71),
(59, 342.19, '2019-05-14', 71, 72),
(60, 158.00, '2019-05-17', 76, 73),
(61, 22.56, '2019-06-23', 71, 74),
(62, 452.48, '2019-06-13', 74, 75),
(63, 95.16, '2019-06-19', 76, 76),
(64, 495.90, '2019-06-24', 75, 77),
(65, 120.21, '2019-06-28', 72, 78),
(66, 468.13, '2019-06-15', 76, 79),
(67, 310.02, '2019-06-20', 74, 80),
(68, 379.39, '2019-06-09', 72, 81),
(69, 326.68, '2019-06-17', 72, 82),
(70, 167.42, '2019-06-08', 75, 83),
(71, 492.80, '2019-05-22', 76, 84),
(72, 439.62, '2019-05-22', 71, 85),
(73, 79.26, '2019-05-28', 75, 86),
(74, 346.87, '2019-05-08', 73, 87),
(75, 183.57, '2019-05-12', 73, 88),
(76, 333.26, '2019-05-24', 72, 89),
(77, 187.63, '2019-05-10', 73, 90),
(78, 263.43, '2019-05-03', 70, 91),
(79, 20.00, '2019-05-10', 74, 2);

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
INSERT INTO produit VALUES
(1, 'table antique', 1),
(2, 'chandail', 2),
(3, 'chemise', 3),
(4, 'robe', 4),
(5, 'chaussure', 5),
(6, 'chaussure', 6),
(7, 'poussette', 7),
(8, 'vase antique', 8),
(9, 'humidifier', 9),
(10, 'aspirateur', 10),
(11, 'appartement', 11),
(12, 'chandail', 12),
(13, 'chapeau bleu', 13),
(14, 'chaise', 14),
(15, 'chaise', 15),
(16, 'chaise', 16),
(17, 'table', 17),
(18, 'table', 18),
(19, 'jeux video', 19),
(20, 'jeux video', 20),
(21, 'jeux video', 21),
(22, 'pantalon', 22),
(23, 'pantalon', 23),
(24, 'auto', 24),
(25, 'futon', 25),
(26, 'vaisselle', 26),
(27, 'vaisselle', 27),
(28, 'literie', 28),
(29, 'literie', 29),
(30, 'vaisselle', 30),
(31, 'chaussure', 31),
(32, 'table de bebe', 32),
(33, 'jouet', 33),
(34, 'fauteuil', 34),
(35, 'lit', 35),
(36, 'vetements', 36),
(37, 'vetements', 37),
(38, 'jeu de societe', 38),
(39, 'jeu de societe', 39),
(40, 'jeu de societe', 40),
(41, 'jeu de carte', 41),
(42, 'jeu de carte', 42),
(43, 'maillot de bain', 43),
(44, 'base guitar', 44),
(45, 'speaker', 45),
(46, 'guitar', 46),
(47, 'voiture', 47),
(48, 'artwork', 48),
(49, 'lampe', 49),
(50, 'armoire', 50),
(51, 'divan', 51),
(52, 'paire de ciseaux', 52),
(53, 'etui a crayons', 53),
(54, 'gomme a effacer', 54),
(55, 'gomme a effacer', 55),
(56, 'surligneur', 56),
(57, 'paire de ciseaux', 57),
(58, 'etui a crayons', 58),
(59, 'montre', 59),
(60, 'porte-cles', 60),
(61, 'cahier de notes', 61),
(62, 'serviette', 62),
(63, 'serviette', 63),
(64, 'etui a crayons', 64),
(65, 'serviette', 65),
(66, 'porte-cles', 66),
(67, 'montre', 67),
(68, 'gomme a effacer', 68),
(69, 'gomme a effacer', 69),
(70, 'surligneur', 70),
(71, 'porte-cles', 71),
(72, 'serviette', 72),
(73, 'paire de ciseaux', 73),
(74, 'porte-cles', 74),
(75, 'surligneur', 75),
(76, 'montre', 76),
(77, 'surligneur', 77),
(78, 'surligneur', 78),
(79, 'etui a crayons', 79),
(80, 'serviette', 80),
(81, 'gomme a effacer', 81),
(82, 'paire de ciseaux', 82),
(83, 'serviette', 83),
(84, 'gomme a effacer', 84),
(85, 'etui a crayons', 85),
(86, 'surligneur', 86),
(87, 'montre', 87),
(88, 'porte-cles', 88),
(89, 'montre', 89),
(90, 'surligneur', 90),
(91, 'gomme a effacer', 91);
