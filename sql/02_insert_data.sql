-- ============================================================
-- Fichier : 02_insert_data.sql
-- Description : Insertion de donnees fictives pour le projet
-- ============================================================

-- Lycees
INSERT INTO lycees (nom, ville) VALUES
('Lycee Louis-le-Grand', 'Paris'),
('Lycee Henri-IV', 'Paris'),
('Lycee Saint-Louis', 'Paris'),
('Lycee Fenelon', 'Paris'),
('Lycee Condorcet', 'Paris'),
('Lycee Voltaire', 'Paris'),
('Lycee Jules Ferry', 'Versailles'),
('Lycee Marie Curie', 'Versailles'),
('Lycee La Bruyere', 'Versailles'),
('Lycee Alexandre Dumas', 'Saint-Cyr-l Ecole'),
('Lycee Eiffel', 'Guyancourt'),
('Lycee de la Vallee de Chevreuse', 'Saint-Remy-les-Chevreuse'),
('Lycee Gustave Monod', 'Cergy'),
('Lycee international', 'Saint-Germain-en-Laye'),
('Lycee de Villaroy', 'Guyancourt');

-- Enseignants
INSERT INTO enseignants (nom, prenom, grade, departement) VALUES
('Martin', 'Sophie', 'Maitre de conferences', 'Informatique'),
('Dubois', 'Jean', 'Professeur', 'Mathematiques'),
('Lefebvre', 'Marie', 'Maitre de conferences', 'Physique'),
('Moreau', 'Pierre', 'Professeur', 'Economie'),
('Petit', 'Isabelle', 'Maitre de conferences', 'Gestion'),
('Robert', 'Nicolas', 'Professeur', 'Droit'),
('Richard', 'Catherine', 'Maitre de conferences', 'Langues'),
('Durand', 'Laurent', 'Professeur', 'Histoire');

-- Salles
INSERT INTO salles (etage, num_salle, salle_informatique, nb_places) VALUES
(0, 'A001', 'non', 18),
(0, 'A002', 'oui', 16),
(1, 'A101', 'non', 20),
(1, 'A102', 'oui', 15),
(1, 'A103', 'non', 12),
(2, 'A201', 'oui', 20),
(2, 'A202', 'non', 14),
(2, 'A203', 'oui', 18);

-- Etudiants : 60 enregistrements
INSERT INTO etudiants (nom, prenom, sexe, date_naissance, email, annee_inscription, adresse, code_postal, ville, id_lycee) VALUES
('Bernard', 'Thomas', 'Masculin', '2003-05-12', 'thomas.bernard@univ.fr', 2024, '12 rue de la Republique', 78000, 'Versailles', 7),
('Thomas', 'Emma', 'Feminin', '2004-02-28', 'emma.thomas@univ.fr', 2024, '45 avenue de Paris', 78100, 'Saint-Germain-en-Laye', 14),
('Petit', 'Lucas', 'Masculin', '2003-11-05', 'lucas.petit@univ.fr', 2024, '8 rue des Lilas', 78200, 'Mantes-la-Jolie', 10),
('Robert', 'Lea', 'Feminin', '2004-07-19', 'lea.robert@univ.fr', 2025, '23 boulevard Victor Hugo', 78280, 'Guyancourt', 15),
('Richard', 'Julien', 'Masculin', '2003-09-30', 'julien.richard@univ.fr', 2024, '67 rue du Chateau', 78450, 'Villepreux', 11),
('Durand', 'Chloe', 'Feminin', '2004-01-14', 'chloe.durand@univ.fr', 2025, '34 allee des Roses', 78310, 'Maurepas', 12),
('Lefebvre', 'Maxime', 'Masculin', '2003-06-22', 'maxime.lefebvre@univ.fr', 2024, '91 rue de la Gare', 78700, 'Conflans-Sainte-Honorine', 13),
('Moreau', 'Manon', 'Feminin', '2004-04-08', 'manon.moreau@univ.fr', 2025, '56 chemin des Pres', 78800, 'Houilles', 14),
('Simon', 'Raphael', 'Masculin', '2003-12-03', 'raphael.simon@univ.fr', 2024, '78 avenue de la Liberte', 78400, 'Chatou', 15),
('Laurent', 'Camille', 'Feminin', '2004-03-17', 'camille.laurent@univ.fr', 2025, '15 square du Parc', 78000, 'Versailles', 8),
('Michel', 'Hugo', 'Masculin', '2003-08-25', 'hugo.michel@univ.fr', 2024, '3 rue Pasteur', 78180, 'Montigny-le-Bretonneux', 11),
('Garcia', 'Sarah', 'Feminin', '2004-06-10', 'sarah.garcia@univ.fr', 2025, '22 rue des Ecoles', 78370, 'Plaisir', 10),
('David', 'Antoine', 'Masculin', '2003-01-18', 'antoine.david@univ.fr', 2024, '10 avenue du General Leclerc', 78190, 'Trappes', 7),
('Bertrand', 'Julie', 'Feminin', '2004-09-04', 'julie.bertrand@univ.fr', 2025, '44 rue Jean Jaures', 78140, 'Velizy-Villacoublay', 8),
('Roux', 'Valentin', 'Masculin', '2003-04-29', 'valentin.roux@univ.fr', 2024, '7 rue Victor Basch', 78960, 'Voisins-le-Bretonneux', 15),
('Vincent', 'Clara', 'Feminin', '2004-11-22', 'clara.vincent@univ.fr', 2025, '19 boulevard des Allies', 78100, 'Saint-Germain-en-Laye', 14),
('Fournier', 'Mathieu', 'Masculin', '2003-02-16', 'mathieu.fournier@univ.fr', 2024, '26 rue des Peupliers', 78220, 'Viroflay', 9),
('Morel', 'Alice', 'Feminin', '2004-05-31', 'alice.morel@univ.fr', 2025, '5 rue des Acacias', 78350, 'Jouy-en-Josas', 11),
('Girard', 'Baptiste', 'Masculin', '2003-10-12', 'baptiste.girard@univ.fr', 2024, '81 rue de la Paix', 78460, 'Chevreuse', 12),
('Andre', 'Eva', 'Feminin', '2004-08-08', 'eva.andre@univ.fr', 2025, '14 avenue de la Division Leclerc', 78320, 'La Verriere', 10),
('Leroy', 'Nathan', 'Masculin', '2003-03-24', 'nathan.leroy@univ.fr', 2024, '35 rue de la Mairie', 78210, 'Saint-Cyr-l Ecole', 10),
('Mercier', 'Ines', 'Feminin', '2004-12-15', 'ines.mercier@univ.fr', 2025, '6 avenue de l Europe', 78180, 'Montigny-le-Bretonneux', 11),
('Blanc', 'Theo', 'Masculin', '2003-07-07', 'theo.blanc@univ.fr', 2024, '28 rue de Versailles', 78530, 'Buc', 7),
('Guerin', 'Louise', 'Feminin', '2004-04-16', 'louise.guerin@univ.fr', 2025, '9 rue du Clos', 78340, 'Les Clayes-sous-Bois', 8),
('Boyer', 'Kevin', 'Masculin', '2003-09-02', 'kevin.boyer@univ.fr', 2024, '16 rue du Bel Air', 78390, 'Bois-d Arcy', 11),
('Muller', 'Pauline', 'Feminin', '2004-02-01', 'pauline.muller@univ.fr', 2025, '48 avenue de la Gare', 78330, 'Fontenay-le-Fleury', 9),
('Francois', 'Quentin', 'Masculin', '2003-06-14', 'quentin.francois@univ.fr', 2024, '11 rue des Vignes', 78114, 'Magny-les-Hameaux', 12),
('Lopez', 'Marine', 'Feminin', '2004-10-27', 'marine.lopez@univ.fr', 2025, '24 rue du Marche', 78280, 'Guyancourt', 15),
('Martinez', 'Romain', 'Masculin', '2003-12-19', 'romain.martinez@univ.fr', 2024, '39 rue de la Fontaine', 78690, 'Les Essarts-le-Roi', 12),
('Dupont', 'Justine', 'Feminin', '2004-01-09', 'justine.dupont@univ.fr', 2025, '2 rue de l Eglise', 78120, 'Rambouillet', 13),
('Fontaine', 'Alexandre', 'Masculin', '2003-05-06', 'alexandre.fontaine@univ.fr', 2024, '17 rue des Tilleuls', 78470, 'Saint-Remy-les-Chevreuse', 12),
('Chevalier', 'Marion', 'Feminin', '2004-07-28', 'marion.chevalier@univ.fr', 2025, '63 rue Nationale', 78380, 'Bougival', 14),
('Robin', 'Clement', 'Masculin', '2003-11-11', 'clement.robin@univ.fr', 2024, '20 avenue des Bois', 78500, 'Sartrouville', 13),
('Masson', 'Agathe', 'Feminin', '2004-03-05', 'agathe.masson@univ.fr', 2025, '73 rue du Centre', 78230, 'Le Pecq', 14),
('Henry', 'Florian', 'Masculin', '2003-08-20', 'florian.henry@univ.fr', 2024, '4 rue des Fleurs', 78160, 'Marly-le-Roi', 9),
('Renaud', 'Elise', 'Feminin', '2004-05-02', 'elise.renaud@univ.fr', 2025, '36 rue de la Foret', 78620, 'L Etang-la-Ville', 9),
('Gautier', 'Nicolas', 'Masculin', '2003-09-15', 'nicolas.gautier@univ.fr', 2024, '58 avenue du Parc', 78150, 'Le Chesnay-Rocquencourt', 7),
('Perrot', 'Maelle', 'Feminin', '2004-12-08', 'maelle.perrot@univ.fr', 2025, '27 rue du Moulin', 78125, 'Gazeran', 13),
('Charles', 'Arthur', 'Masculin', '2003-04-04', 'arthur.charles@univ.fr', 2024, '32 rue du Stade', 78260, 'Acheres', 13),
('Barre', 'Lucie', 'Feminin', '2004-08-13', 'lucie.barre@univ.fr', 2025, '70 rue des Jardins', 78170, 'La Celle-Saint-Cloud', 9),
('Renard', 'Vincent', 'Masculin', '2003-10-06', 'vincent.renard@univ.fr', 2024, '13 rue du Vieux Puits', 78320, 'Le Mesnil-Saint-Denis', 12),
('Meyer', 'Noemie', 'Feminin', '2004-06-29', 'noemie.meyer@univ.fr', 2025, '47 avenue Victor Hugo', 78110, 'Le Vesinet', 14),
('Dufour', 'Julien', 'Masculin', '2003-01-27', 'julien.dufour@univ.fr', 2024, '8 rue de l Egalite', 78190, 'Trappes', 10),
('Benoit', 'Anais', 'Feminin', '2004-09-21', 'anais.benoit@univ.fr', 2025, '25 rue de la Plaine', 78410, 'Aubergenville', 13),
('Perrin', 'Louis', 'Masculin', '2003-03-12', 'louis.perrin@univ.fr', 2024, '54 rue des Marais', 78580, 'Maule', 13),
('Faure', 'Helene', 'Feminin', '2004-07-03', 'helene.faure@univ.fr', 2025, '16 avenue du Chateau', 78113, 'Adainville', 12),
('Caron', 'Benjamin', 'Masculin', '2003-11-29', 'benjamin.caron@univ.fr', 2024, '41 rue des Chenes', 78250, 'Meulan-en-Yvelines', 13),
('Giraud', 'Sophie', 'Feminin', '2004-02-24', 'sophie.giraud@univ.fr', 2025, '3 rue de la Liberte', 78440, 'Gargenville', 13),
('Lemoine', 'Adrien', 'Masculin', '2003-06-01', 'adrien.lemoine@univ.fr', 2024, '62 rue du General de Gaulle', 78300, 'Poissy', 14),
('Barbier', 'Charlotte', 'Feminin', '2004-10-15', 'charlotte.barbier@univ.fr', 2025, '18 rue des Lilas', 78670, 'Villennes-sur-Seine', 14),
('Granger', 'Paul', 'Masculin', '2003-04-22', 'paul.granger@univ.fr', 2024, '29 avenue de France', 78510, 'Triel-sur-Seine', 13),
('Cousin', 'Marion', 'Feminin', '2004-08-06', 'marion.cousin@univ.fr', 2025, '46 rue du Port', 78480, 'Verneuil-sur-Seine', 13),
('Leger', 'Simon', 'Masculin', '2003-12-11', 'simon.leger@univ.fr', 2024, '7 rue du Soleil', 78570, 'Chanteloup-les-Vignes', 13),
('Schmitt', 'Laura', 'Feminin', '2004-03-29', 'laura.schmitt@univ.fr', 2025, '34 rue du Pont', 78520, 'Limay', 10),
('Pascal', 'Antoine', 'Masculin', '2003-07-16', 'antoine.pascal@univ.fr', 2024, '51 rue de Paris', 78955, 'Carrieres-sous-Poissy', 14),
('Chartier', 'Valerie', 'Feminin', '2004-01-25', 'valerie.chartier@univ.fr', 2025, '22 avenue des Sports', 78630, 'Orgeval', 14),
('Mallet', 'Herve', 'Masculin', '2003-05-19', 'herve.mallet@univ.fr', 2024, '65 rue de la Republique', 78360, 'Montesson', 13),
('Vidal', 'Justine', 'Feminin', '2004-09-08', 'justine.vidal@univ.fr', 2025, '9 rue de l Avenir', 78570, 'Andresy', 13),
('Bailly', 'Guillaume', 'Masculin', '2003-11-02', 'guillaume.bailly@univ.fr', 2024, '38 rue des Ecoles', 78360, 'Montesson', 13),
('Roussel', 'Pauline', 'Feminin', '2004-06-17', 'pauline.roussel@univ.fr', 2025, '12 rue de la Gare', 78270, 'Bonnieres-sur-Seine', 13);

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
('ALGO201', 'Algorithmique avancee', 6, 3, 28, 1);

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

-- Inscriptions : 120 inscriptions, deux par etudiant
INSERT INTO inscriptions (id_etudiant, id_cours, date_inscription, statut)
SELECT id_etudiant, ((id_etudiant - 1) % 10) + 1,
       CASE WHEN id_etudiant <= 30 THEN '2024-09-01' ELSE '2025-09-01' END,
       CASE WHEN id_etudiant % 17 = 0 THEN 'abandon' WHEN id_etudiant % 13 = 0 THEN 'valide' ELSE 'en cours' END
FROM etudiants;

INSERT INTO inscriptions (id_etudiant, id_cours, date_inscription, statut)
SELECT id_etudiant, ((id_etudiant + 3) % 10) + 1,
       CASE WHEN id_etudiant <= 30 THEN '2024-09-08' ELSE '2025-09-08' END,
       CASE WHEN id_etudiant % 19 = 0 THEN 'abandon' WHEN id_etudiant % 11 = 0 THEN 'valide' ELSE 'en cours' END
FROM etudiants;

-- Notes : 240 notes, deux evaluations par inscription
INSERT INTO notes (id_inscription, type_evaluation, note, coeff, date_evaluation)
SELECT id_inscription, 'Controle continu', 8.0 + ((id_inscription * 7) % 110) / 10.0, 1,
       CASE WHEN id_inscription <= 60 THEN '2024-11-15' ELSE '2025-11-15' END
FROM inscriptions;

INSERT INTO notes (id_inscription, type_evaluation, note, coeff, date_evaluation)
SELECT id_inscription, 'Examen final', 7.0 + ((id_inscription * 11) % 120) / 10.0, 2,
       CASE WHEN id_inscription <= 60 THEN '2024-12-18' ELSE '2025-12-18' END
FROM inscriptions;
