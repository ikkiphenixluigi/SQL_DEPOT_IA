-- ============================================================
-- Fichier : 01_create_tables_revise.sql
-- Description : Schema SQLite pour 02_insert_data_revise.sql
-- ATTENTION : ce script supprime les tables et leurs donnees.
-- Executer sur une base de test avant toute mise en production.
-- ============================================================
PRAGMA foreign_keys = ON;

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
    sexe TEXT CHECK (sexe IN ('Feminin', 'Masculin')),
    date_naissance DATE,
    email TEXT UNIQUE,
    annee_inscription INTEGER,
    adresse TEXT,
    code_postal TEXT CHECK (
        code_postal IS NULL OR
        (length(code_postal) = 5 AND code_postal NOT GLOB '*[^0-9]*')
    ),
    ville TEXT,
    id_lycee INTEGER,
    FOREIGN KEY (id_lycee) REFERENCES lycees(id_lycee)
);

CREATE TABLE cours (
    id_cours INTEGER PRIMARY KEY AUTOINCREMENT,
    code_cours TEXT NOT NULL UNIQUE,
    nom_cours TEXT NOT NULL,
    credits INTEGER CHECK (credits > 0),
    semestre INTEGER CHECK (semestre BETWEEN 1 AND 6),
    nb_heures_theo INTEGER CHECK (nb_heures_theo >= 0),
    id_enseignant INTEGER,
    FOREIGN KEY (id_enseignant) REFERENCES enseignants(id_enseignant)
);

CREATE TABLE salles (
    id_salle INTEGER PRIMARY KEY AUTOINCREMENT,
    etage INTEGER,
    num_salle TEXT NOT NULL UNIQUE,
    salle_informatique TEXT CHECK (salle_informatique IN ('oui', 'non')),
    nb_places INTEGER CHECK (nb_places BETWEEN 1 AND 500)
);

CREATE TABLE seances (
    id_seance INTEGER PRIMARY KEY AUTOINCREMENT,
    id_cours INTEGER NOT NULL,
    id_salle INTEGER NOT NULL,
    jour TEXT CHECK (jour IN ('lundi', 'mardi', 'mercredi', 'jeudi', 'vendredi', 'samedi')),
    heure_debut TEXT,
    heure_fin TEXT CHECK (heure_fin > heure_debut),
    FOREIGN KEY (id_cours) REFERENCES cours(id_cours),
    FOREIGN KEY (id_salle) REFERENCES salles(id_salle)
);

CREATE TABLE inscriptions (
    id_inscription INTEGER PRIMARY KEY AUTOINCREMENT,
    id_etudiant INTEGER NOT NULL,
    id_cours INTEGER NOT NULL,
    date_inscription DATE,
    statut TEXT CHECK (statut IN ('valide', 'en cours', 'abandon', 'en attente', 'annule')),
    FOREIGN KEY (id_etudiant) REFERENCES etudiants(id_etudiant),
    FOREIGN KEY (id_cours) REFERENCES cours(id_cours),
    UNIQUE (id_etudiant, id_cours)
);

CREATE TABLE notes (
    id_note INTEGER PRIMARY KEY AUTOINCREMENT,
    id_inscription INTEGER NOT NULL,
    type_evaluation TEXT,
    note REAL CHECK (note BETWEEN 0 AND 20),
    coeff REAL NOT NULL DEFAULT 1 CHECK (coeff > 0),
    date_evaluation DATE,
    FOREIGN KEY (id_inscription) REFERENCES inscriptions(id_inscription)
);
