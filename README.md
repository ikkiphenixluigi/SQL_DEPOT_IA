owner: ikkiphenixluigi
repo: SQL_DEPOT_IA
path: README.md
message: Correction encodage UTF-8 - version avec vrais accents français
content: |
  # SQL_DEPOT_IA

  Dépot pédagogique pour un projet d'initiation à SQL et SQLite dans un cadre universitaire.

  ## Objectif

  Ce projet a pour but de proposer :
  - une petite base de données SQLite ;
  - des scripts SQL pour créer et alimenter la base ;
  - des exercices progressifs de requetage ;
  - une documentation simple publiée via GitHub Pages.

  ## Structure du dépôt
SQL_DEPOT_IA/
├── README.md
├── data/ # Base SQLite et fichiers de données
├── sql/ # Scripts de création, insertion et exercices
├── docs/ # Pages destinies a GitHub Pages
└── teacher/ # Notes pedagogiques et corriges (prive)

- `data/` : base SQLite (`universite.db`) et eventuels fichiers de donnees
- `sql/` :
  - `01_create_tables.sql` : creation des tables
  - `02_insert_data.sql` : insertion des donnees
  - `03_exercices.sql` : exercices SQL pour les etudiants
- `docs/` : site GitHub Pages (accueil, schema, consignes)
- `teacher/` : corriges et notes internes (a ne pas publier)

## Public vise

Etudiants debutants en bases de donnees relationnelles et en SQL (niveau licence / premiere annee).

## Competences visees

- comprendre un schema relationnel simple ;
- ecrire des requetes `SELECT`, `JOIN`, `GROUP BY`, `HAVING` ;
- manipuler une base SQLite avec un outil graphique (DB Browser for SQLite) ;
- utiliser GitHub pour recuperer un projet et suivre des consignes.

## Premiers contenus prevus

- schema simple de base universitaire (`etudiants`, `cours`, `enseignants`, `inscriptions`, `notes`)
- exercices SQL de difficulte progressive
- page d'accueil de presentation du projet

## Utilisation

1. Cloner ou telecharger le depot
2. Ouvrir `data/universite.db` dans DB Browser for SQLite
3. Executer les requetes dans `sql/exercices.sql`
4. Consulter la documentation dans `docs/` (via GitHub Pages)

## Licence

Projet pedagogique a usage universitaire.
branch: main
sha: 7629c239ab200392929de09be2aaacaf0faf2ca5
