# Journal de projet - SQL_DEPOT_IA

Historique complet des decisions, creations de fichiers, tests et avancement du projet.

Mise a jour : Apres chaque creation de fichier et sur demande.

---

## 2026-09-15 - Creation du cours 02 (WHERE avec texte, egalite, annee)

### Fichiers crees

- docs/cours/02_niveau1_02_WHERE_texte_annee.md (7389 octets)

### Contenu du cours 02

**Themes abordes :**
- Clause WHERE avec texte (operateurs =, <>, LIKE)
- WHERE avec egalite (texte, nombres, cles etrangeres)
- WHERE avec dates et annees (strftime)
- Fonctions strftime() pour extraire annee, mois, jour

**Exercices couverts :**
- 1.4 WHERE avec texte (5 questions)
- 1.6 WHERE avec egalite (5 questions)
- 1.7 WHERE avec annee (4 questions)
- Total : 14 questions

**Exemples utilises :**
- Filtrer les etudiants par ville
- Filtrer les lycees par ville
- LIKE avec motifs (%, _)
- Filtrer les cours par credits
- Filtrer les etudiants par lycee
- Filtrer par date de naissance (annee, mois, jour)

### Commit

- https://github.com/ikkiphenixluigi/SQL_DEPOT_IA/commit/cea34aa1051d5a49bf6e1d72a79798a291ed6aa5
- Message : "Ajout cours 02 - WHERE avec texte, egalite, annee (Niveau 1)"

### Tests

- Validation ASCII 100%
- Navigation fonctionnelle (SOMMAIRE, cours 01, cours 03)
- Structure conforme (intro, definitions, exemples, exercices, navigation)

### Prochaine action

- Cours 03 : WHERE avec plage et cle etrangere (exercices 1.8, 1.10)

---

## 2026-09-11 - Creation du journal et reprise des cours

### Decision

- Mise en place d'un systeme de log pour garder l'historique du projet
- README.md garde sa fonction de presentation (non modifie)
- Creation du dossier Logs/ avec JOURNAL_PROJET.md
- Frequence de MAJ : a chaque fichier cree + sur demande

### Fichiers crees

- Logs/JOURNAL_PROJET.md (ce fichier)

### Prochaine action

- Reprendre la creation des cours du Niveau 1
- Prochain fichier : docs/cours/02_niveau1_02_WHERE_texte_annee.md

---

## 2026-09-08 - Resume et plan d'action

### Resume des decisions

- Structure : 5 niveaux, ~30 fichiers cours, 2-3 themes par fichier
- Enonces dans les .md, solutions dans sql/03_exercices.sql
- Encodage ASCII uniquement (pas d'accents)
- Navigation : SOMMAIRE.md + liens entre cours
- Style : Academique et pedagogique, formulations simples

### Fichiers existants

- docs/SOMMAIRE.md
- docs/cours/00_intro.md
- docs/cours/01_niveau1_01_FROM_SELECT.md

### Actions a venir

- Continuer Niveau 1 (6 fichiers restants)
- Puis Niveaux 2, 3, 4, 5
- Creer sql/03_exercices.sql avec toutes les solutions

---

## 2026-09-07 - Validation et push des 3 premiers fichiers

### Fichiers crees et pushes

- docs/SOMMAIRE.md (page d'accueil avec navigation)
- docs/cours/00_intro.md (Introduction aux SGBDR)
- docs/cours/01_niveau1_01_FROM_SELECT.md (FROM et SELECT - bases)

### Commit

- https://github.com/ikkiphenixluigi/SQL_DEPOT_IA/commit/6a94e03a97de1098f948efbb4642af9b6a86682b
- Message : "Ajout cours SQL - SOMMAIRE, intro et premier cours Niveau 1"

### Tests

- Validation ASCII 100% pour tous les fichiers
- Structure de dossiers /docs/cours/ validee
- Navigation entre fichiers fonctionnelle

### Prochaine etape

- Cours 02 : WHERE avec texte, egalite, annee (exercices 1.4, 1.6, 1.7)

---

## 2026-09-05 - Creation des 3 premiers fichiers de cours

### Fichiers generes localement

- SOMMAIRE.md (4080 octets)
- 00_intro.md (7695 octets) - Introduction SGBDR
- 01_niveau1_01_FROM_SELECT.md (4784 octets) - FROM et SELECT

### Contenu

**SOMMAIRE.md :**
- Page d'accueil avec tous les liens vers les cours
- 5 niveaux listes avec ~30 fichiers
- Progression recommandee
- Base de donnees utilisee (8 tables)

**00_intro.md :**
- Qu'est-ce qu'une base de donnees
- SGBD vs SGBDR
- Table, ligne, colonne
- Contraintes (domaine, cle primaire, cle etrangere)
- Types de donnees
- Philosophie SGBDR et role de SQL

**01_niveau1_01_FROM_SELECT.md :**
- Clause FROM (choix de table)
- Clause SELECT (selection de colonnes)
- Alias de colonnes
- Exercices 1.1, 1.2, 1.3 (12 questions)
- Exemples avec base gestion_universitaire

### Tests

- Verification ASCII 100% (pas d'accents)
- Structure conforme aux specifications

---

## 2026-09-04 - Modelisation et validation de la structure

### Analyse de la structure des exercices

Structure finale retenue (5 niveaux, ~279 questions) :

**NIVEAU 1 : Requates simples** (12 exercices + Test = ~58 questions)
- 1.1 FROM - choix de table (4 questions)
- 1.2 FROM - selection de colonnes (4 questions)
- 1.3 SELECT simple (4 questions)
- 1.4 WHERE avec texte (5 questions)
- 1.5 ORDER BY multiple (4 questions)
- 1.6 WHERE avec egalite (5 questions)
- 1.7 WHERE avec annee (4 questions)
- 1.8 WHERE avec plage (4 questions)
- 1.9 ORDER BY DESC (4 questions)
- 1.10 WHERE avec FK (4 questions)
- 1.11 WHERE avec AND (5 questions)
- 1.12 COUNT simple (4 questions)
- TEST NIVEAU 1 (10 questions)

**NIVEAU 2 : Fonctions SQL** (15 exercices + Test = ~76 questions)
- 2.1 Operations arithmetiques (5)
- 2.2 ROUND (4)
- 2.3 CEIL/FLOOR (4)
- 2.4 ABS (4)
- 2.5 POWER/SQRT (4)
- 2.6 UPPER/LOWER (4)
- 2.7 LENGTH (4)
- 2.8 SUBSTR (5)
- 2.9 REPLACE (4)
- 2.10 TRIM + concatenation (5)
- 2.11 LIKE avec % (5)
- 2.12 LIKE avec _ et % (5)
- 2.13 strftime() extraction (4)
- 2.14 strftime() formatage (4)
- 2.15 Calcul d'age (5)
- TEST NIVEAU 2 (10)

**NIVEAU 3 : Agregats, GROUP BY, HAVING, LIMIT** (10 exercices + Test = ~57 questions)
- 3.1 COUNT + GROUP BY (5)
- 3.2 AVG + GROUP BY (5)
- 3.3 COUNT + LEFT JOIN (4)
- 3.4 AVG etudiant (5)
- 3.5 COUNT seances (4)
- 3.6 SUM par etage (4)
- 3.7 COUNT + LIMIT (5)
- 3.8 Statistiques completes (5)
- 3.9 HAVING + AVG (5)
- 3.10 HAVING + COUNT (5)
- TEST NIVEAU 3 (10)

**NIVEAU 4 : Jointures** (8 exercices + Test = ~48 questions)
- 4.1 JOIN 1 table (5)
- 4.2 JOIN avec alias (4)
- 4.3 JOIN multiple 2 tables (5)
- 4.4 JOIN avec notes (5)
- 4.5 JOIN avec 3 tables (5)
- 4.6 JOIN avec DISTINCT (4)
- 4.7 JOIN + GROUP BY (5)
- 4.8 LEFT JOIN avance (5)
- TEST NIVEAU 4 (10)

**NIVEAU 5 : Sous-requetes** (6 exercices + Test = ~40 questions)
- 5.1 Sous-requete NOT IN (5)
- 5.2 Sous-requete IN (5)
- 5.3 Sous-requete comparative (5)
- 5.4 Sous-requete dans SELECT (5)
- 5.5 Sous-requete dans WHERE (5)
- 5.6 Sous-requete correlee (5)
- TEST NIVEAU 5 (10)

### Organisation des fichiers cours

Decide : ~30 fichiers cours avec 2-3 themes proches par fichier

**NIVEAU 1 (7 fichiers) :**
- 01 : 1.1, 1.2, 1.3 (FROM, SELECT)
- 02 : 1.4, 1.6, 1.7 (WHERE texte, egalite, annee)
- 03 : 1.8, 1.10 (WHERE plage, FK)
- 04 : 1.5, 1.9 (ORDER BY)
- 05 : 1.11 (WHERE AND)
- 06 : 1.12 (COUNT)
- 07 : TEST

**NIVEAU 2 (9 fichiers) :**
- 08 : 2.1, 2.2 (Operations, ROUND)
- 09 : 2.3, 2.4 (CEIL, FLOOR, ABS)
- 10 : 2.5 (POWER, SQRT)
- 11 : 2.6, 2.7 (UPPER, LOWER, LENGTH)
- 12 : 2.8, 2.9 (SUBSTR, REPLACE)
- 13 : 2.10 (TRIM, concat)
- 14 : 2.11, 2.12 (LIKE)
- 15 : 2.13, 2.14, 2.15 (strftime, age)
- 16 : TEST

**NIVEAU 3 (6 fichiers) :**
- 17 : 3.1 (COUNT GROUP BY)
- 18 : 3.2, 3.4 (AVG GROUP BY)
- 19 : 3.3, 3.5 (COUNT JOIN)
- 20 : 3.6, 3.7 (SUM, LIMIT)
- 21 : 3.9, 3.10 (HAVING)
- 22 : TEST

**NIVEAU 4 (4 fichiers) :**
- 23 : 4.1, 4.2 (JOIN base)
- 24 : 4.3, 4.4, 4.5 (JOIN multiple)
- 25 : 4.6, 4.7, 4.8 (JOIN avance)
- 26 : TEST

**NIVEAU 5 (4 fichiers) :**
- 27 : 5.1, 5.2 (Sous-requetes IN, NOT IN)
- 28 : 5.3, 5.4, 5.5 (Sous-requetes comparees, SELECT)
- 29 : 5.6 (Sous-requetes correlees)
- 30 : TEST

### Structure d'un fichier cours

Validee :
- Navigation (SOMMAIRE, precedent, suivant)
- Introduction du concept
- Definitions et termes techniques
- Exemples progressifs (base universitaire)
- Enonces des exercices (dans le .md)
- Navigation fin

### Fichiers a creer

- /docs/SOMMAIRE.md
- /docs/cours/00_intro.md
- /docs/cours/01_niveau1_01_FROM_SELECT.md
- /docs/cours/02_niveau1_02_WHERE_texte_annee.md
- ... (jusqu'a 30 fichiers)
- /sql/03_exercices.sql (solutions)

### Decision importante

- Enonces des exercices : DANS les fichiers .md
- Solutions : DANS sql/03_exercices.sql (fichier separe)
- Encodage : ASCII 100% (pas d'accents)

---

## 2026-09-03 - Finalisation structure des cours

### Discussions et decisions

- Structure en 5 niveaux avec exercices detailles
- 2-3 themes par fichier cours (max 2-3 pages)
- Enonces dans les .md, solutions dans 03_exercices.sql
- Navigation : SOMMAIRE.md + liens entre cours
- Style : Academique et pedagogique
- Exemples : base gestion_universitaire en priorite

### Plan etabli

- ~30 fichiers cours + 1 SOMMAIRE.md
- Organisation par themes proches
- Tests recapitulatifs a la fin de chaque niveau

---

## 2026-09-01 a 2026-09-02 - Creation des guides outils

### Fichiers crees

- GUIDE_TEST.md (test en ligne de commande)
- GUIDE_DB_BROWSER.md (DB Browser for SQLite)
- GUIDE_DBEAVER.md (DBeaver Community)
- init_db.sh (Linux/Mac)
- init_db.bat (Windows)
- README.md (mis a jour avec instructions SQLite)

### Tests

- Validation ASCII 100% pour tous les guides
- Push sur GitHub valides
- Structure /docs/ pour les guides

### Commits

- Multiples commits pour chaque guide
- Corrections d'encodage ASCII

---

## 2026-08-31 - Initialisation du projet et tests SQLite

### Fichiers crees

- sql/01_create_tables.sql (creation des 8 tables)
- sql/02_insert_data.sql (insertion des donnees)
  - 15 lycees France metropolitaine
  - 60 etudiants Ile-de-France
  - 8 enseignants
  - 10 cours
  - 24 seances
  - 8 salles
  - 120 inscriptions
  - 240 notes

### Scripts d'initialisation

- init_db.sh (Linux/Mac)
- init_db.bat (Windows)
- README.md avec instructions

### Tests effectues

- Test sur Windows avec sqlite3.exe
- Validation de la creation de la base
- Verification des tables et donnees
- Guide de test cree (GUIDE_TEST.md)

### Problemes rencontres et solutions

- Probleme : Erreur "L'operateur < est reserve" sur PowerShell
- Solution : Utiliser cmd.exe au lieu de PowerShell
- Probleme : Encodage ASCII avec accents
- Solution : Remplacer tous les accents (e -> e, etc.)

---

## 2026-08-27 a 2026-08-30 - Creation du depot et structure initiale

### Actions

- Creation du depot GitHub SQL_DEPOT_IA
- Definition de la structure de base
- Premieres reflexions sur l'organisation

### Fichiers

- README.md initial
- Dossier sql/ avec premiers scripts

---

# Etat actuel du projet (au 2026-09-15)

## Fichiers existants

### Documentation
- README.md
- GUIDE_TEST.md
- GUIDE_DB_BROWSER.md
- GUIDE_DBEAVER.md
- docs/SOMMAIRE.md
- docs/cours/00_intro.md
- docs/cours/01_niveau1_01_FROM_SELECT.md
- docs/cours/02_niveau1_02_WHERE_texte_annee.md (NOUVEAU)
- Logs/JOURNAL_PROJET.md

### SQL
- sql/01_create_tables.sql
- sql/02_insert_data.sql
- sql/03_exercices.sql (A CREER)

### Scripts
- init_db.sh
- init_db.bat

## Prochaines actions

1. Creer docs/cours/03_niveau1_03_WHERE_plage_FK.md
2. Continuer avec les autres cours du Niveau 1
3. Creer tous les cours des Niveaux 2-5
4. Creer sql/03_exercices.sql avec toutes les solutions
5. Mettre a jour le JOURNAL a chaque fichier cree

## Statistiques

- Fichiers cours crees : 3 / ~30
- Niveaux completes : 0 / 5
- Exercices rediges : 3 / ~279
- Pourcentage d'avancement : ~10%

---

**Derniere mise a jour :** 2026-09-15
