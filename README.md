# SQL_DEPOT_IA

Projet de base de donnees SQL pour la gestion universitaire.

## Structure du projet

```
SQL_DEPOT_IA/
+-- README.md
+-- init_db.sh          # Script d'initialisation (Linux/Mac)
+-- init_db.bat         # Script d'initialisation (Windows)
+-- sql/
    +-- 01_create_tables.sql   # Creation des tables
    +-- 02_insert_data.sql     # Insertion des donnees
```

## Pre-requis

- **SQLite3** installe sur votre machine
  - Linux : `sudo apt install sqlite3` ou `sudo dnf install sqlite`
  - Mac : `brew install sqlite`
  - Windows : telecharger sur https://www.sqlite.org/download.html

## Initialisation de la base de donnees

### Option 1 : Utiliser les scripts d'initialisation (recommande)

**Linux / macOS :**

```bash
# Rendre le script executable
chmod +x init_db.sh

# Executer le script
./init_db.sh
```

**Windows :**

```batch
init_db.bat
```

Ces scripts vont :
1. Supprimer l'ancienne base `gestion_universitaire.db` si elle existe
2. Creer une nouvelle base de donnees
3. Executer `01_create_tables.sql` pour creer les tables
4. Executer `02_insert_data.sql` pour inserer les donnees

### Option 2 : Commandes manuelles

Si vous preferez executer les commandes manuellement :

```bash
# Creer la base et charger les tables
sqlite3 gestion_universitaire.db < sql/01_create_tables.sql

# Charger les donnees
sqlite3 gestion_universitaire.db < sql/02_insert_data.sql
```

### Option 3 : Mode interactif SQLite

```bash
# Ouvrir SQLite en mode interactif
sqlite3 gestion_universitaire.db

# Dans l'invite SQLite, charger les fichiers :
.read sql/01_create_tables.sql
.read sql/02_insert_data.sql
.exit
```

## Verification des donnees

Apres initialisation, vous pouvez verifier que les donnees sont bien chargees :

```bash
sqlite3 gestion_universitaire.db

-- Nombre d'etudiants
SELECT COUNT(*) AS nb_etudiants FROM etudiants;

-- Nombre de lycees
SELECT COUNT(*) AS nb_lycees FROM lycees;

-- Nombre de cours
SELECT COUNT(*) AS nb_cours FROM cours;

-- Quitter
.exit
```

## Requetes utiles

### Liste des etudiants par lycee

```sql
SELECT l.nom AS lycee, COUNT(e.id_etudiant) AS nb_etudiants
FROM lycees l
LEFT JOIN etudiants e ON l.id_lycee = e.id_lycee
GROUP BY l.id_lycee, l.nom
ORDER BY nb_etudiants DESC;
```

### Moyenne par cours

```sql
SELECT c.nom_cours, AVG(n.note) AS moyenne
FROM cours c
JOIN inscriptions i ON c.id_cours = i.id_cours
JOIN notes n ON i.id_inscription = n.id_inscription
GROUP BY c.id_cours, c.nom_cours;
```

### Etudiants avec leurs inscriptions

```sql
SELECT e.nom, e.prenom, c.nom_cours, i.statut
FROM etudiants e
JOIN inscriptions i ON e.id_etudiant = i.id_etudiant
JOIN cours c ON i.id_cours = c.id_cours
ORDER BY e.nom, c.nom_cours;
```

## Structure de la base

### Tables principales

- **lycees** : 15 lycees de France metropolitaine
- **etudiants** : 60 etudiants en Ile-de-France
- **enseignants** : 8 enseignants
- **salles** : 8 salles de cours
- **cours** : 10 cours
- **seances** : 24 seances
- **inscriptions** : 120 inscriptions (2 cours par etudiant)
- **notes** : 240 notes (2 evaluations par inscription)

## Licence

Projet educatif.
