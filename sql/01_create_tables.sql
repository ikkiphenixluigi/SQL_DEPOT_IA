-- ============================================================
-- Fichier : 01_create_tables.sql
-- Description : Creation des tables de la base universitaire
-- Base de donnees : SQL_DEPOT_IA
-- ============================================================

DROP TABLE IF EXISTS notes;
DROP TABLE IF EXISTS inscriptions;
DROP TABLE IF EXISTS seances;
DROP TABLE IF EXISTS salles;
DROP TABLE IF EXISTS cours;
DROP TABLE IF EXISTS enseignants;
DROP TABLE IF EXISTS etudiants;
DROP TABLE IF EXISTS lycees;

CREATE TABLE lycees (
    id_lycee INTEGER PRIMARY KEY AUTOINCREMENT,
    nom TEXT NOT NULL,
    ville TEXT NOT NULL
);

CREATE TABLE enseignants (
    id_enseignant INTEGER PRIMARY KEY AUTOINCREMENT,
    nom TEXT NOT NULL,
    prenom TEXT NOT NULL,
    grade TEXT,
    departement TEXT
);

CREATE TABLE etudiants (
    id_etudiant INTEGER PRIMARY KEY AUTOINCREMENT,
    nom TEXT NOT NULL,
    prenom TEXT NOT NULL,
    sexe TEXT CHECK(sexe IN ('Feminin', 'Masculin')),
    date_naissance DATE,
    email TEXT UNIQUE,
    annee_inscription INTEGER,
    adresse TEXT,
    code_postal INTEGER,
    ville TEXT,
    id_lycee INTEGER,
    FOREIGN KEY (id_lycee) REFERENCES lycees(id_lycee)
);

CREATE TABLE cours (
    id_cours INTEGER PRIMARY KEY AUTOINCREMENT,
    code_cours TEXT UNIQUE NOT NULL,
    nom_cours TEXT NOT NULL,
    credits INTEGER,
    semestre INTEGER CHECK(semestre BETWEEN 1 AND 6),
    nb_heures_theo INTEGER,
    id_enseignant INTEGER,
    FOREIGN KEY (id_enseignant) REFERENCES enseignants(id_enseignant)
);

CREATE TABLE salles (
    id_salle INTEGER PRIMARY KEY AUTOINCREMENT,
    etage INTEGER,
    num_salle TEXT NOT NULL,
    salle_informatique TEXT CHECK(salle_informatique IN ('oui', 'non')),
    nb_places INTEGER CHECK(nb_places BETWEEN 10 AND 20)
);

CREATE TABLE seances (
    id_seance INTEGER PRIMARY KEY AUTOINCREMENT,
    id_cours INTEGER NOT NULL,
    id_salle INTEGER NOT NULL,
    jour TEXT CHECK(jour IN ('lundi', 'mardi', 'mercredi', 'jeudi', 'vendredi', 'samedi')),
    heure_debut TEXT,
    heure_fin TEXT,
    FOREIGN KEY (id_cours) REFERENCES cours(id_cours),
    FOREIGN KEY (id_salle) REFERENCES salles(id_salle)
);

CREATE TABLE inscriptions (
    id_inscription INTEGER PRIMARY KEY AUTOINCREMENT,
    id_etudiant INTEGER NOT NULL,
    id_cours INTEGER NOT NULL,
    date_inscription DATE,
    statut TEXT CHECK(statut IN ('valide', 'en cours', 'abandon')),
    FOREIGN KEY (id_etudiant) REFERENCES etudiants(id_etudiant),
    FOREIGN KEY (id_cours) REFERENCES cours(id_cours)
);

CREATE TABLE notes (
    id_note INTEGER PRIMARY KEY AUTOINCREMENT,
    id_inscription INTEGER NOT NULL,
    type_evaluation TEXT,
    note REAL CHECK(note BETWEEN 0 AND 20),
    coeff REAL DEFAULT 1,
    date_evaluation DATE,
    FOREIGN KEY (id_inscription) REFERENCES inscriptions(id_inscription)
);