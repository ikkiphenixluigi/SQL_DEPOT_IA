# SQL_DEPOT_IA

Dé¬°p√Æ¬≠t p√≠dagogi que pour un projet d'initiation √† SQL et SQLite dans un cadre universitaire.

## Objectif

Ce projet a pour but de proposer :
- une petite base de donn√≠es SQLite ;
- des scripts SQL pour cr√≠er et alimenter la base ;
- des exercices progressifs de requ√™tage ;
- une documentation simple publi√≠e via GitHub Pages.

## Structure du d√≠p√Æ¬≠t

```
SQL_DEPOT_IA/
√É¬≠√É¬≠ README.md
√É¬≠√É¬≠ data/          # Base SQLite et fichiers de donn√≠es
√É¬≠√É¬≠ sql/          # Scripts de cr√≠ation, insertion et exercices
√É¬≠√É¬≠ docs/         # Pages destin√≠es √† GitHub Pages
√É¬≠√É¬≠ teacher/      # Notes p√≠dagogiques et corrig√≠s (priv√≠)
```

- `data/` : base SQLite (`universite.db`) et √≠ventuels fichiers de donn√≠es
- `sql/` :
  - `01_create_tables.sql` : cr√≠ation des tables
  - `02_insert_data.sql` : insertion des donn√≠es
  - `03_exercices.sql` : exercices SQL pour les √≠tudiants
- `docs/` : site GitHub Pages (accueil, sch√≠ma, consignes)
- `teacher/` : corrig√≠s et notes internes (√† ne pas publier)

## Public vis√≠

√É¬â¬©tudiants d√≠butants en bases de donn√≠es relationnelles et en SQL (niveau licence / premi√É¬∞re ann√≠e).

## Comp√≠tences vis√≠es

- comprendre un sch√≠ma relationnel simple ;
- √≠crire des requ√™tes `SELECT`, `JOIN`, `GROUP BY`, `HAVING` ;
- manipuler une base SQLite avec un outil graphique (DB Browser for SQLite) ;
- utiliser GitHub pour r√≠cup√≠rer un projet et suivre des consignes.

## Premiers contenus pr√≠vus

- sch√≠ma simple de base universitaire (`√≠tudiants`, `cours`, `enseignants`, `inscriptions`, `notes`)
- exercices SQL de difficult√≠ progressive
- page d'accueil de pr√≠sentation du projet

## Utilisation

1. Cloner ou t√≠l√≠charger le d√≠p√Æ¬≠t
2. Ouvrir `data/universite.db` dans DB Browser for SQLite
3. Ex√≠cuter les requ√™tes dans `sql/exercices.sql`
4. Consulter la documentation dans `docs/` (via GitHub Pages)

## Licence

Projet p√≠dagogique √† usage universitaire.
