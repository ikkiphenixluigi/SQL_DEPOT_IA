-- ============================================================
-- Fichier : 02_insert_data.sql
-- Description : Insertion de donnees fictives pour le projet
-- Encodage : ASCII uniquement
-- ============================================================

-- Lycees : France metropolitaine
INSERT INTO lycees (nom, ville) VALUES
('Lycee Louis-le-Grand', 'Paris'),
('Lycee du Parc', 'Lyon'),
('Lycee Thiers', 'Marseille'),
('Lycee Pierre-de-Fermat', 'Toulouse'),
('Lycee Michel-Montaigne', 'Bordeaux'),
('Lycee Faidherbe', 'Lille'),
('Lycee Clemenceau', 'Nantes'),
('Lycee Kleber', 'Strasbourg'),
('Lycee Massena', 'Nice'),
('Lycee Chateaubriand', 'Rennes'),
('Lycee Champollion', 'Grenoble'),
('Lycee Joffre', 'Montpellier'),
('Lycee Carnot', 'Dijon'),
('Lycee Corneille', 'Rouen'),
('Lycee Descartes', 'Tours'),
('Lycee Henri-IV', 'Paris'),
('Lycee Saint-Louis', 'Paris'),
('Lycee Victor-Hugo', 'Besancon'),
('Lycee Pasteur', 'Neuilly-sur-Seine'),
('Lycee Blaise-Pascal', 'Orsay'),
('Lycee Hoche', 'Versailles'),
('Lycee Lakanal', 'Sceaux'),
('Lycee Berthollet', 'Annecy'),
('Lycee Fustel-de-Coulanges', 'Strasbourg'),
('Lycee Marcelin-Berthelot', 'Saint-Maur-des-Fosses');




-- Salles
INSERT INTO salles (etage, num_salle, salle_informatique, nb_places) VALUES
(0, 'A001', 'non', 18),
(0, 'A002', 'oui', 16),
(1, 'A101', 'non', 20),
(1, 'A102', 'oui', 15),
(1, 'A103', 'non', 12),
(2, 'A201', 'oui', 20),
(2, 'A202', 'non', 14),
(2, 'A203', 'oui', 18),
-- Extension : salles
(0, 'B001', 'non', 40),
(0, 'B002', 'oui', 32),
(1, 'B101', 'non', 55),
(1, 'B102', 'oui', 25),
(2, 'B201', 'non', 80),
(2, 'B202', 'non', 120),
(3, 'B301', 'oui', 35);

-- Etudiants : 60 adresses reparties en Ile-de-France
INSERT INTO etudiants (nom, prenom, sexe, date_naissance, email, annee_inscription, adresse, code_postal, ville, id_lycee) VALUES
('Bernard', 'Thomas', 'Masculin', '2003-01-01', 'thomas.bernard@univ.fr', 2024, '12 rue Oberkampf', 75011, 'Paris', 1),
('Thomas', 'Emma', 'Feminin', '2003-04-08', 'emma.thomas@univ.fr', 2024, '45 rue de Vaugirard', 75006, 'Paris', 2),
('Petit', 'Lucas', 'Masculin', '2003-07-15', 'lucas.petit@univ.fr', 2024, '8 avenue de Flandre', 75019, 'Paris', 3),
('Robert', 'Lea', 'Feminin', '2003-10-22', 'lea.robert@univ.fr', 2024, '23 rue de Charenton', 75012, 'Paris', 4),
('Richard', 'Julien', 'Masculin', '2003-01-01', 'julien.richard@univ.fr', 2024, '67 rue Lecourbe', 75015, 'Paris', 5),
('Durand', 'Chloe', 'Feminin', '2003-04-08', 'chloe.durand@univ.fr', 2024, '34 rue du Faubourg Saint-Antoine', 75011, 'Paris', 6),
('Lefebvre', 'Maxime', 'Masculin', '2003-07-15', 'maxime.lefebvre@univ.fr', 2024, '91 boulevard Voltaire', 75011, 'Paris', 7),
('Moreau', 'Manon', 'Feminin', '2003-10-22', 'manon.moreau@univ.fr', 2024, '56 rue de Charonne', 75011, 'Paris', 8),
('Simon', 'Raphael', 'Masculin', '2003-01-01', 'raphael.simon@univ.fr', 2024, '78 avenue des Gobelins', 75013, 'Paris', 9),
('Laurent', 'Camille', 'Feminin', '2003-04-08', 'camille.laurent@univ.fr', 2024, '15 rue du Commerce', 75015, 'Paris', 10),
('Michel', 'Hugo', 'Masculin', '2003-07-15', 'hugo.michel@univ.fr', 2024, '3 rue de Paris', 92100, 'Boulogne-Billancourt', 11),
('Garcia', 'Sarah', 'Feminin', '2003-10-22', 'sarah.garcia@univ.fr', 2024, '22 avenue de la Republique', 92120, 'Montrouge', 12),
('David', 'Antoine', 'Masculin', '2003-01-01', 'antoine.david@univ.fr', 2024, '10 rue Jean Jaures', 92130, 'Issy-les-Moulineaux', 13),
('Bertrand', 'Julie', 'Feminin', '2003-04-08', 'julie.bertrand@univ.fr', 2024, '44 boulevard Bineau', 92200, 'Neuilly-sur-Seine', 14),
('Roux', 'Valentin', 'Masculin', '2003-07-15', 'valentin.roux@univ.fr', 2024, '7 rue de Verdun', 92000, 'Nanterre', 15),
('Vincent', 'Clara', 'Feminin', '2003-10-22', 'clara.vincent@univ.fr', 2024, '19 avenue de Paris', 92300, 'Levallois-Perret', 1),
('Fournier', 'Mathieu', 'Masculin', '2003-01-01', 'mathieu.fournier@univ.fr', 2024, '26 rue des Bas', 92600, 'Asnieres-sur-Seine', 2),
('Morel', 'Alice', 'Feminin', '2003-04-08', 'alice.morel@univ.fr', 2024, '5 rue des Grands Champs', 92230, 'Gennevilliers', 3),
('Girard', 'Baptiste', 'Masculin', '2003-07-15', 'baptiste.girard@univ.fr', 2024, '81 rue de la Republique', 93100, 'Montreuil', 4),
('Andre', 'Eva', 'Feminin', '2003-10-22', 'eva.andre@univ.fr', 2024, '14 avenue Anatole France', 93500, 'Pantin', 5),
('Leroy', 'Nathan', 'Masculin', '2003-01-01', 'nathan.leroy@univ.fr', 2024, '35 rue de Paris', 93200, 'Saint-Denis', 6),
('Mercier', 'Ines', 'Feminin', '2003-04-08', 'ines.mercier@univ.fr', 2024, '6 avenue du General Leclerc', 93170, 'Bagnolet', 7),
('Blanc', 'Theo', 'Masculin', '2003-07-15', 'theo.blanc@univ.fr', 2024, '28 rue de la Republique', 93300, 'Aubervilliers', 8),
('Guerin', 'Louise', 'Feminin', '2003-10-22', 'louise.guerin@univ.fr', 2024, '9 rue du Clos Saint-Lazare', 93400, 'Saint-Ouen-sur-Seine', 9),
('Boyer', 'Kevin', 'Masculin', '2003-01-01', 'kevin.boyer@univ.fr', 2024, '16 rue de Paris', 94120, 'Fontenay-sous-Bois', 10),
('Muller', 'Pauline', 'Feminin', '2003-04-08', 'pauline.muller@univ.fr', 2024, '48 avenue du General de Gaulle', 94000, 'Creteil', 11),
('Francois', 'Quentin', 'Masculin', '2003-07-15', 'quentin.francois@univ.fr', 2024, '11 rue de Paris', 94220, 'Charenton-le-Pont', 12),
('Lopez', 'Marine', 'Feminin', '2003-10-22', 'marine.lopez@univ.fr', 2024, '24 avenue de la Republique', 94110, 'Arcueil', 13),
('Martinez', 'Romain', 'Masculin', '2003-01-01', 'romain.martinez@univ.fr', 2024, '39 rue Victor Hugo', 94300, 'Vincennes', 14),
('Dupont', 'Justine', 'Feminin', '2003-04-08', 'justine.dupont@univ.fr', 2024, '2 rue du Commerce', 94200, 'Ivry-sur-Seine', 15),
('Fontaine', 'Alexandre', 'Masculin', '2004-07-15', 'alexandre.fontaine@univ.fr', 2025, '17 rue de la Republique', 78000, 'Versailles', 1),
('Chevalier', 'Marion', 'Feminin', '2004-10-22', 'marion.chevalier@univ.fr', 2025, '63 rue du Marechal Foch', 78100, 'Saint-Germain-en-Laye', 2),
('Robin', 'Clement', 'Masculin', '2004-01-01', 'clement.robin@univ.fr', 2025, '20 avenue de Paris', 78180, 'Montigny-le-Bretonneux', 3),
('Masson', 'Agathe', 'Feminin', '2004-04-08', 'agathe.masson@univ.fr', 2025, '73 rue de la Gare', 78370, 'Plaisir', 4),
('Henry', 'Florian', 'Masculin', '2004-07-15', 'florian.henry@univ.fr', 2025, '4 rue des Ecoles', 78280, 'Guyancourt', 5),
('Renaud', 'Elise', 'Feminin', '2004-10-22', 'elise.renaud@univ.fr', 2025, '36 avenue de la Republique', 78390, 'Bois-d-Arcy', 6),
('Gautier', 'Nicolas', 'Masculin', '2004-01-01', 'nicolas.gautier@univ.fr', 2025, '58 rue de la Mairie', 78330, 'Fontenay-le-Fleury', 7),
('Perrot', 'Maelle', 'Feminin', '2004-04-08', 'maelle.perrot@univ.fr', 2025, '27 rue du Centre', 78400, 'Chatou', 8),
('Charles', 'Arthur', 'Masculin', '2004-07-15', 'arthur.charles@univ.fr', 2025, '32 rue de l Eglise', 78960, 'Voisins-le-Bretonneux', 9),
('Barre', 'Lucie', 'Feminin', '2004-10-22', 'lucie.barre@univ.fr', 2025, '70 rue de Paris', 91000, 'Evry-Courcouronnes', 10),
('Renard', 'Vincent', 'Masculin', '2004-01-01', 'vincent.renard@univ.fr', 2025, '13 boulevard Aristide Briand', 91120, 'Palaiseau', 11),
('Meyer', 'Noemie', 'Feminin', '2004-04-08', 'noemie.meyer@univ.fr', 2025, '47 avenue de la Gare', 91300, 'Massy', 12),
('Dufour', 'Julien', 'Masculin', '2004-07-15', 'julien.dufour@univ.fr', 2025, '8 rue de la Republique', 91200, 'Athis-Mons', 13),
('Benoit', 'Anais', 'Feminin', '2004-10-22', 'anais.benoit@univ.fr', 2025, '25 rue des Ecoles', 91700, 'Sainte-Genevieve-des-Bois', 14),
('Perrin', 'Louis', 'Masculin', '2004-01-01', 'louis.perrin@univ.fr', 2025, '54 rue de Paris', 77000, 'Melun', 15),
('Faure', 'Helene', 'Feminin', '2004-04-08', 'helene.faure@univ.fr', 2025, '16 avenue Charles de Gaulle', 77100, 'Meaux', 1),
('Caron', 'Benjamin', 'Masculin', '2004-07-15', 'benjamin.caron@univ.fr', 2025, '41 rue du General Leclerc', 77300, 'Fontainebleau', 2),
('Giraud', 'Sophie', 'Feminin', '2004-10-22', 'sophie.giraud@univ.fr', 2025, '3 rue de la Gare', 77400, 'Lagny-sur-Marne', 3),
('Lemoine', 'Adrien', 'Masculin', '2004-01-01', 'adrien.lemoine@univ.fr', 2025, '62 avenue de France', 77500, 'Chelles', 4),
('Barbier', 'Charlotte', 'Feminin', '2004-04-08', 'charlotte.barbier@univ.fr', 2025, '18 rue de Paris', 95000, 'Cergy', 5),
('Granger', 'Paul', 'Masculin', '2004-07-15', 'paul.granger@univ.fr', 2025, '29 avenue du General de Gaulle', 95100, 'Argenteuil', 6),
('Cousin', 'Marion', 'Feminin', '2004-10-22', 'marion.cousin@univ.fr', 2025, '46 rue de la Republique', 95200, 'Sarcelles', 7),
('Leger', 'Simon', 'Masculin', '2004-01-01', 'simon.leger@univ.fr', 2025, '7 rue du General Leclerc', 95300, 'Pontoise', 8),
('Schmitt', 'Laura', 'Feminin', '2004-04-08', 'laura.schmitt@univ.fr', 2025, '34 avenue de Paris', 95400, 'Arnouville', 9),
('Pascal', 'Antoine', 'Masculin', '2004-07-15', 'antoine.pascal@univ.fr', 2025, '51 rue de la Liberte', 95500, 'Gonesse', 10),
('Chartier', 'Valerie', 'Feminin', '2004-10-22', 'valerie.chartier@univ.fr', 2025, '22 avenue des Sports', 95600, 'Eaubonne', 11),
('Mallet', 'Herve', 'Masculin', '2004-01-01', 'herve.mallet@univ.fr', 2025, '65 rue de Paris', 75020, 'Paris', 12),
('Vidal', 'Justine', 'Feminin', '2004-04-08', 'justine.vidal@univ.fr', 2025, '9 rue de l Avenir', 92240, 'Malakoff', 13),
('Bailly', 'Guillaume', 'Masculin', '2004-07-15', 'guillaume.bailly@univ.fr', 2025, '38 rue des Ecoles', 93000, 'Bobigny', 14),
('Roussel', 'Pauline', 'Feminin', '2004-10-22', 'pauline.roussel@univ.fr', 2025, '12 rue de la Gare', 94500, 'Champigny-sur-Marne', 15),
-- Extension : etudiants
('Morin', 'Amira', 'Feminin', '2003-01-01', 'amira.morin.61@univ.fr', 2024, '10 rue des Etudes', '91940', 'Les Ulis', 1),
('Lacroix', 'Leo', 'Masculin', '2003-02-02', 'leo.lacroix.62@univ.fr', 2024, '11 rue des Etudes', '91400', 'Orsay', 2),
('Delorme', 'Nora', 'Feminin', '2003-03-03', 'nora.delorme.63@univ.fr', 2024, '12 rue des Etudes', '91300', 'Massy', 3),
('Boucher', 'Ethan', 'Masculin', '2003-04-04', 'ethan.boucher.64@univ.fr', 2024, '13 rue des Etudes', '91120', 'Palaiseau', 4),
('Philippe', 'Maya', 'Feminin', '2003-05-05', 'maya.philippe.65@univ.fr', 2024, '14 rue des Etudes', '75013', 'Paris', 5),
('Brun', 'Yanis', 'Masculin', '2003-06-06', 'yanis.brun.66@univ.fr', 2024, '15 rue des Etudes', '78000', 'Versailles', 6),
('Roy', 'Lina', 'Feminin', '2003-07-07', 'lina.roy.67@univ.fr', 2024, '16 rue des Etudes', '91940', 'Les Ulis', 7),
('Garnier', 'Adam', 'Masculin', '2003-08-08', 'adam.garnier.68@univ.fr', 2024, '17 rue des Etudes', '91400', 'Orsay', 8),
('Roche', 'Zoe', 'Feminin', '2003-09-09', 'zoe.roche.69@univ.fr', 2024, '18 rue des Etudes', '91300', 'Massy', 9),
('Poirier', 'Eliott', 'Masculin', '2003-10-10', 'eliott.poirier.70@univ.fr', 2024, '19 rue des Etudes', '91120', 'Palaiseau', 10),
('Lefort', 'Sofia', 'Feminin', '2003-11-11', 'sofia.lefort.71@univ.fr', 2024, '20 rue des Etudes', '75013', 'Paris', 11),
('Bourgeois', 'Noah', 'Masculin', '2003-12-12', 'noah.bourgeois.72@univ.fr', 2024, '21 rue des Etudes', '78000', 'Versailles', 12),
('Pons', 'Mila', 'Feminin', '2003-01-13', 'mila.pons.73@univ.fr', 2024, '22 rue des Etudes', '91940', 'Les Ulis', 13),
('Olivier', 'Ilan', 'Masculin', '2003-02-14', 'ilan.olivier.74@univ.fr', 2024, '23 rue des Etudes', '91400', 'Orsay', 14),
('Gauthier', 'Anna', 'Feminin', '2003-03-15', 'anna.gauthier.75@univ.fr', 2024, '24 rue des Etudes', '91300', 'Massy', 15),
('Bertin', 'Sami', 'Masculin', '2003-04-16', 'sami.bertin.76@univ.fr', 2024, '25 rue des Etudes', '91120', 'Palaiseau', 16),
('Arnaud', 'Jade', 'Feminin', '2003-05-17', 'jade.arnaud.77@univ.fr', 2024, '26 rue des Etudes', '75013', 'Paris', 17),
('Jacquet', 'Tom', 'Masculin', '2003-06-18', 'tom.jacquet.78@univ.fr', 2024, '27 rue des Etudes', '78000', 'Versailles', 18),
('Denis', 'Luna', 'Feminin', '2003-07-19', 'luna.denis.79@univ.fr', 2024, '28 rue des Etudes', '91940', 'Les Ulis', 19),
('Rolland', 'Hugo', 'Masculin', '2003-08-20', 'hugo.rolland.80@univ.fr', 2024, '29 rue des Etudes', '91400', 'Orsay', 20),
('Marty', 'Eva', 'Feminin', '2003-09-21', 'eva.marty.81@univ.fr', 2024, '30 rue des Etudes', '91300', 'Massy', 21),
('Rossi', 'Paul', 'Masculin', '2003-10-22', 'paul.rossi.82@univ.fr', 2024, '31 rue des Etudes', '91120', 'Palaiseau', 22),
('Aubert', 'Ines', 'Feminin', '2003-11-23', 'ines.aubert.83@univ.fr', 2024, '32 rue des Etudes', '75013', 'Paris', 23),
('Texier', 'Nils', 'Masculin', '2003-12-24', 'nils.texier.84@univ.fr', 2024, '33 rue des Etudes', '78000', 'Versailles', 24),
('Clement', 'Sara', 'Feminin', '2003-01-25', 'sara.clement.85@univ.fr', 2024, '34 rue des Etudes', '91940', 'Les Ulis', 25),
('Chauvin', 'Axel', 'Masculin', '2003-02-26', 'axel.chauvin.86@univ.fr', 2024, '35 rue des Etudes', '91400', 'Orsay', 1),
('Paris', 'Lola', 'Feminin', '2003-03-27', 'lola.paris.87@univ.fr', 2024, '36 rue des Etudes', '91300', 'Massy', 2),
('Noel', 'Rayan', 'Masculin', '2003-04-01', 'rayan.noel.88@univ.fr', 2024, '37 rue des Etudes', '91120', 'Palaiseau', 3),
('Meunier', 'Iris', 'Feminin', '2003-05-02', 'iris.meunier.89@univ.fr', 2024, '38 rue des Etudes', '75013', 'Paris', 4),
('Rey', 'Enzo', 'Masculin', '2003-06-03', 'enzo.rey.90@univ.fr', 2024, '39 rue des Etudes', '78000', 'Versailles', 5),
('Morin', 'Amira', 'Feminin', '2004-01-01', 'amira.morin.91@univ.fr', 2025, '40 rue des Etudes', '91940', 'Les Ulis', 6),
('Lacroix', 'Leo', 'Masculin', '2004-02-02', 'leo.lacroix.92@univ.fr', 2025, '41 rue des Etudes', '91400', 'Orsay', 7),
('Delorme', 'Nora', 'Feminin', '2004-03-03', 'nora.delorme.93@univ.fr', 2025, '42 rue des Etudes', '91300', 'Massy', 8),
('Boucher', 'Ethan', 'Masculin', '2004-04-04', 'ethan.boucher.94@univ.fr', 2025, '43 rue des Etudes', '91120', 'Palaiseau', 9),
('Philippe', 'Maya', 'Feminin', '2004-05-05', 'maya.philippe.95@univ.fr', 2025, '44 rue des Etudes', '75013', 'Paris', 10),
('Brun', 'Yanis', 'Masculin', '2004-06-06', 'yanis.brun.96@univ.fr', 2025, '45 rue des Etudes', '78000', 'Versailles', 11),
('Roy', 'Lina', 'Feminin', '2004-07-07', 'lina.roy.97@univ.fr', 2025, '46 rue des Etudes', '91940', 'Les Ulis', 12),
('Garnier', 'Adam', 'Masculin', '2004-08-08', 'adam.garnier.98@univ.fr', 2025, '47 rue des Etudes', '91400', 'Orsay', 13),
('Roche', 'Zoe', 'Feminin', '2004-09-09', 'zoe.roche.99@univ.fr', 2025, '48 rue des Etudes', '91300', 'Massy', 14),
('Poirier', 'Eliott', 'Masculin', '2004-10-10', 'eliott.poirier.100@univ.fr', 2025, '49 rue des Etudes', '91120', 'Palaiseau', 15),
('Lefort', 'Sofia', 'Feminin', '2004-11-11', 'sofia.lefort.101@univ.fr', 2025, '50 rue des Etudes', '75013', 'Paris', 16),
('Bourgeois', 'Noah', 'Masculin', '2004-12-12', 'noah.bourgeois.102@univ.fr', 2025, '51 rue des Etudes', '78000', 'Versailles', 17),
('Pons', 'Mila', 'Feminin', '2004-01-13', 'mila.pons.103@univ.fr', 2025, '52 rue des Etudes', '91940', 'Les Ulis', 18),
('Olivier', 'Ilan', 'Masculin', '2004-02-14', 'ilan.olivier.104@univ.fr', 2025, '53 rue des Etudes', '91400', 'Orsay', 19),
('Gauthier', 'Anna', 'Feminin', '2004-03-15', 'anna.gauthier.105@univ.fr', 2025, '54 rue des Etudes', '91300', 'Massy', 20),
('Bertin', 'Sami', 'Masculin', '2004-04-16', 'sami.bertin.106@univ.fr', 2025, '55 rue des Etudes', '91120', 'Palaiseau', 21),
('Arnaud', 'Jade', 'Feminin', '2004-05-17', 'jade.arnaud.107@univ.fr', 2025, '56 rue des Etudes', '75013', 'Paris', 22),
('Jacquet', 'Tom', 'Masculin', '2004-06-18', 'tom.jacquet.108@univ.fr', 2025, '57 rue des Etudes', '78000', 'Versailles', 23),
('Denis', 'Luna', 'Feminin', '2004-07-19', 'luna.denis.109@univ.fr', 2025, '58 rue des Etudes', '91940', 'Les Ulis', 24),
('Rolland', 'Hugo', 'Masculin', '2004-08-20', 'hugo.rolland.110@univ.fr', 2025, '59 rue des Etudes', '91400', 'Orsay', 25),
('Marty', 'Eva', 'Feminin', '2004-09-21', 'eva.marty.111@univ.fr', 2025, '60 rue des Etudes', '91300', 'Massy', 1),
('Rossi', 'Paul', 'Masculin', '2004-10-22', 'paul.rossi.112@univ.fr', 2025, '61 rue des Etudes', '91120', 'Palaiseau', 2),
('Aubert', 'Ines', 'Feminin', '2004-11-23', 'ines.aubert.113@univ.fr', 2025, '62 rue des Etudes', '75013', 'Paris', 3),
('Texier', 'Nils', 'Masculin', '2004-12-24', 'nils.texier.114@univ.fr', 2025, '63 rue des Etudes', '78000', 'Versailles', 4),
('Clement', 'Sara', 'Feminin', '2004-01-25', 'sara.clement.115@univ.fr', 2025, '64 rue des Etudes', '91940', 'Les Ulis', 5),
('Chauvin', 'Axel', 'Masculin', '2004-02-26', 'axel.chauvin.116@univ.fr', 2025, '65 rue des Etudes', '91400', 'Orsay', 6),
('Paris', 'Lola', 'Feminin', '2004-03-27', 'lola.paris.117@univ.fr', 2025, '66 rue des Etudes', '91300', 'Massy', 7),
('Noel', 'Rayan', 'Masculin', '2004-04-01', 'rayan.noel.118@univ.fr', 2025, '67 rue des Etudes', '91120', 'Palaiseau', 8),
('Meunier', 'Iris', 'Feminin', '2004-05-02', 'iris.meunier.119@univ.fr', 2025, '68 rue des Etudes', '75013', 'Paris', 9),
('Rey', 'Enzo', 'Masculin', '2004-06-03', 'enzo.rey.120@univ.fr', 2025, '69 rue des Etudes', '78000', 'Versailles', 10);

-- Enseignants
INSERT INTO enseignants (nom, prenom, grade, departement) VALUES
('Martin', 'Sophie', 'Maitre de conferences', 'Informatique'),
('Dubois', 'Jean', 'Professeur', 'Mathematiques'),
('Lefebvre', 'Marie', 'Maitre de conferences', 'Physique'),
('Moreau', 'Pierre', 'Professeur', 'Economie'),
('Petit', 'Isabelle', 'Maitre de conferences', 'Gestion'),
('Robert', 'Nicolas', 'Professeur', 'Droit'),
('Richard', 'Catherine', 'Maitre de conferences', 'Langues'),
('Durand', 'Laurent', 'Professeur', 'Histoire'),-- Extension : enseignant
('Lemaire', 'Nadia', 'Maitre de conferences', 'Informatique'),
('Colin', 'Hugo', 'Professeur', 'Statistiques'),
('Riviere', 'Amel', 'Maitre de conferences', 'Sociologie'),
('Marchand', 'Olivier', 'Maitre de conferences', 'Informatique'),
('Lambert', 'Aline', 'Professeur', 'Gestion'),
('Legrand', 'Malik', 'Maitre de conferences', 'Langues'),
('Picard', 'Claire', 'Professeur', 'Mathematiques');

-- Cours
INSERT INTO cours (code_cours, nom_cours, credits, semestre, nb_heures_theo, id_enseignant) VALUES
('INFO101', 'Introduction a l informatique', 6, 1, 24, 1),
('MATH101', 'Mathematiques pour l informatique', 6, 1, 30, 2),
('PHYS101', 'Physique generale', 4, 1, 22, 3),
('ECO101', 'Economie generale', 4, 1, 20, 4),
('GEST101', 'Introduction a la gestion', 4, 1, 18, 5),
('DROI101', 'Introduction au droit', 4, 1, 18, 6),
('LANG101', 'Anglais professionnel', 3, 1, 20, 7),
('HIST101', 'Histoire contemporaine', 3, 1, 16, 8),
('BDD101', 'Bases de donnees relationnelles', 4, 2, 20, 1),
('ALGO201', 'Algorithmique avancee', 6, 3, 28, 1),
-- Extension : cours
('STAT201', 'Statistiques descriptives', 5, 3, 25, 10),
('WEB201', 'Developpement web', 5, 3, 28, 9),
('ECO202', 'Microeconomie', 4, 4, 22, 4),
('GEST202', 'Comptabilite generale', 4, 4, 24, 13),
('SOC301', 'Sociologie des organisations', 4, 5, 20, 11),
('INFO301', 'Programmation Python', 6, 5, 30, 12),
('MATH301', 'Probabilites', 5, 5, 28, 15),
('LANG202', 'Communication professionnelle', 3, 4, 18, 14),
('BDD302', 'Optimisation des bases de donnees', 6, 6, 30, 1),
('PROJ302', 'Projet transversal', 6, 6, 36, NULL);


-- Seances
INSERT INTO seances (id_cours, id_salle, jour, heure_debut, heure_fin) VALUES
(1, 1, 'lundi', '08:00', '10:00'),
(1, 2, 'mercredi', '10:00', '12:00'),
(2, 3, 'mardi', '08:00', '10:00'),
(2, 3, 'jeudi', '10:00', '12:00'),
(3, 1, 'mercredi', '14:00', '16:00'),
(3, 5, 'vendredi', '08:00', '10:00'),
(4, 4, 'lundi', '10:00', '12:00'),
(4, 5, 'jeudi', '14:00', '16:00'),
(5, 7, 'mardi', '14:00', '16:00'),
(5, 1, 'vendredi', '10:00', '12:00'),
(6, 3, 'mercredi', '08:00', '10:00'),
(6, 7, 'jeudi', '08:00', '10:00'),
(7, 2, 'mardi', '10:00', '12:00'),
(7, 6, 'vendredi', '14:00', '16:00'),
(8, 8, 'lundi', '14:00', '16:00'),
(8, 5, 'mercredi', '16:00', '18:00'),
(9, 2, 'mardi', '08:00', '10:00'),
(9, 6, 'jeudi', '14:00', '16:00'),
(9, 4, 'vendredi', '10:00', '12:00'),
(10, 6, 'lundi', '16:00', '18:00'),
(10, 2, 'mercredi', '14:00', '16:00'),
(10, 8, 'samedi', '09:00', '11:00'),
(1, 4, 'samedi', '11:00', '13:00'),
(2, 6, 'samedi', '14:00', '16:00');

-- Extension : seances
INSERT INTO seances (id_cours, id_salle, jour, heure_debut, heure_fin) VALUES
(11, 9, 'lundi', '08:00', '10:00'),
(12, 10, 'mardi', '08:00', '10:00'),
(13, 11, 'mercredi', '08:00', '10:00'),
(14, 12, 'jeudi', '08:00', '10:00'),
(15, 13, 'vendredi', '08:00', '10:00'),
(16, 14, 'lundi', '10:00', '12:00'),
(17, 15, 'mardi', '10:00', '12:00'),
(18, 9, 'mercredi', '10:00', '12:00'),
(19, 10, 'jeudi', '10:00', '12:00');

-- 1200 inscriptions : 8 a 12 cours par etudiant, moyenne 10.
-- On ne filtre pas par semestre, conformement au besoin pedagogique.
-- Ordre de creation fixe des IDs : executer sur une base recreee vide.
WITH RECURSIVE rang(n) AS (
 SELECT 0 UNION ALL SELECT n + 1 FROM rang WHERE n < 11
)
INSERT INTO inscriptions (id_etudiant, id_cours, date_inscription, statut)
SELECT e.id_etudiant, ((e.id_etudiant - 1 + r.n) % 20) + 1,
 printf('%04d-09-%02d', e.annee_inscription, 1 + r.n),
 CASE WHEN (e.id_etudiant + r.n) % 41 = 0 THEN 'annule'
      WHEN (e.id_etudiant + r.n) % 29 = 0 THEN 'abandon'
      WHEN (e.id_etudiant + r.n) % 31 = 0 THEN 'en attente'
      WHEN (e.id_etudiant + r.n) % 7 = 0 THEN 'valide'
      ELSE 'en cours' END
FROM etudiants e CROSS JOIN rang r
WHERE r.n < 8 + e.id_etudiant % 5;

-- Notes : 0 a 3 evaluations, selon le statut et l'inscription.
-- Le NULL signifie une evaluation prevue mais pas encore notee.
INSERT INTO notes (id_inscription, type_evaluation, note, coeff, date_evaluation)
SELECT i.id_inscription, 'Controle continu',
 CASE WHEN i.statut = 'en cours' AND i.id_inscription % 13 = 0 THEN NULL
      ELSE 5.0 + ((i.id_inscription * 7) % 151) / 10.0 END,
 1, substr(i.date_inscription, 1, 4) || '-11-15'
FROM inscriptions i
WHERE i.statut = 'valide' OR (i.statut = 'en cours' AND i.id_inscription % 11 <> 0);

INSERT INTO notes (id_inscription, type_evaluation, note, coeff, date_evaluation)
SELECT i.id_inscription, 'Examen final',
 3.0 + ((i.id_inscription * 11) % 171) / 10.0,
 2, substr(i.date_inscription, 1, 4) || '-12-18'
FROM inscriptions i
WHERE i.statut = 'valide'
 OR (i.statut = 'en cours' AND i.id_inscription % 11 <> 0 AND i.id_inscription % 7 <> 0);

INSERT INTO notes (id_inscription, type_evaluation, note, coeff, date_evaluation)
SELECT i.id_inscription, 'Projet', 6.0 + ((i.id_inscription * 3) % 141) / 10.0,
 1.5, substr(i.date_inscription, 1, 4) || '-12-05'
FROM inscriptions i
WHERE i.statut = 'valide' AND i.id_inscription % 9 = 0;
