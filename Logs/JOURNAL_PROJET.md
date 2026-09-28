# Journal de projet - SQL_DEPOT_IA

Historique complet des decisions, creations de fichiers, tests et avancement du projet.

Mise a jour : Apres chaque creation de fichier et sur demande.

---

## 2026-09-27 - RESTRUCTURATION COMPLETE DES NIVEAUX 1, 2 ET 3

### Modifications effectuees

**Restructuration complete pour une coherence pedagogique optimale.**

### NIVEAU 1 : Ajout DISTINCT

**Fichier modifie :**
- 01_niveau1_01_SELECT_FROM.md : Ajout section 3 "La clause DISTINCT"
- Exercice 1.4 ajoute : DISTINCT

**Commit :**
- https://github.com/ikkiphenixluigi/SQL_DEPOT_IA/commit/26812db8a4317321501fc6c06548361a04eff4ab

### NIVEAU 2 : Fil rouge NUMERIQUE → TEXTE → DATE

**Nouvelle structure (12 fichiers) :**

**Partie 1 : Fonctions numeriques**
- 08 - Operations et ROUND
- 09 - CEIL, FLOOR, ABS
- 10 - POWER, SQRT

**Partie 2 : Fonctions texte**
- 11 - UPPER, LOWER, LENGTH
- 12 - SUBSTR, REPLACE
- 13 - TRIM et concatenation
- 14 - LIKE
- 15 - CAST (NOUVEAU)

**Partie 3 : Fonctions date**
- 16 - strftime() (NOUVEAU)
- 17 - Calcul d'age (NOUVEAU)

**Partie 4 : Fonctions avancees**
- 18 - CASE WHEN (NOUVEAU)
- 19 - Test NIVEAU 2 (NOUVEAU)

**Commits :**
- https://github.com/ikkiphenixluigi/SQL_DEPOT_IA/commit/ff5bb78c686d44ce89123334d737229e878dadef (08-14)
- https://github.com/ikkiphenixluigi/SQL_DEPOT_IA/commit/5c7eefe7f17ef3b83d13f47d3221562fcb9360cf (15-19)

### NIVEAU 3 : Restructuration COMPLETE

**Ancienne structure (6 fichiers) :**
- 17 - COUNT + GROUP BY
- 18 - AVG + GROUP BY + MIN + MAX
- 19 - COUNT + LEFT JOIN (supprime)
- 20 - SUM + LIMIT (supprime)
- 21 - HAVING (supprime)
- 22 - TEST (supprime)

**Nouvelle structure (4 fichiers) :**
- 20 - Agregats (COUNT, MIN, MAX, AVG, SUM)
- 21 - GROUP BY (seul, sans JOIN)
- 22 - HAVING + Syntaxe complete (SELECT-FROM-WHERE-GROUP BY-HAVING-ORDER BY-LIMIT)
- 23 - Test NIVEAU 3

**Fichiers supprimes :**
- 19_niveau3_03_COUNT_JOIN.md (JOIN = NIVEAU 4)
- 20_niveau3_04_SUM_LIMIT.md
- 21_niveau3_05_HAVING.md
- 22_niveau3_TEST.md

**Commits :**
- https://github.com/ikkiphenixluigi/SQL_DEPOT_IA/commit/80adde7e0942afb3faa404a6fece26a9b3f51185 (creation 20-23)
- https://github.com/ikkiphenixluigi/SQL_DEPOT_IA/commit/3de3e55ab627e479a43877f529b4a62edebd1061 (suppressions)

### SOMMAIRE mis a jour

**Commit :**
- https://github.com/ikkiphenixluigi/SQL_DEPOT_IA/commit/206bf4852cf9aa73a93dbc23e6537de29ed96609

---

## 2026-09-26 - RESTRUCTURATION NIVEAU 1 COMPLETE

### Modifications effectuees

**Restructuration complete du NIVEAU 1 pour une meilleure coherence pedagogique.**

**Ancienne structure (7 fichiers) :**
- 01 - FROM et SELECT
- 02 - WHERE texte et annee
- 03 - WHERE plage et FK
- 04 - ORDER BY
- 05 - WHERE AND
- 06 - COUNT
- 07 - Test

**Nouvelle structure (5 fichiers) :**
- 01 - SELECT et FROM (bases)
- 02 - WHERE (TOUT en un : =, !=, AND, OR, NOT, IN, BETWEEN, <, >, IS NULL)
- 03 - ORDER BY (ASC, DESC, multiple)
- 04 - LIMIT (top N, pagination)
- 05 - Test NIVEAU 1

**Changements majeurs :**
1. **WHERE fusionne** : Tous les WHERE en un seul fichier (02)
2. **COUNT supprime** : Fonction d'agregat deplacee au NIVEAU 3
3. **LIMIT ajoute** : Fonction fondamentale maintenant au NIVEAU 1
4. **strftime supprime** : Deplace au NIVEAU 2 avec les fonctions date
5. **LIKE supprime** : Deplace au NIVEAU 2 (cours 14)

**Fichiers crees :**
- docs/cours/01_niveau1_01_SELECT_FROM.md
- docs/cours/02_niveau1_02_WHERE.md
- docs/cours/03_niveau1_03_ORDER_BY.md
- docs/cours/04_niveau1_04_LIMIT.md
- docs/cours/05_niveau1_05_TEST.md

**Fichiers supprimes :**
- docs/cours/02_niveau1_02_WHERE_texte_annee.md
- docs/cours/03_niveau1_03_WHERE_plage_FK.md
- docs/cours/04_niveau1_04_ORDER_BY.md
- docs/cours/05_niveau1_05_WHERE_AND.md
- docs/cours/06_niveau1_06_COUNT.md
- docs/cours/07_niveau1_TEST.md

**Commits :**
- https://github.com/ikkiphenixluigi/SQL_DEPOT_IA/commit/6032bd159d92de3b59abe87be6acc6c0cfeed4b4 (5 nouveaux fichiers)
- https://github.com/ikkiphenixluigi/SQL_DEPOT_IA/commit/61b443f13d53cd0fb80e5b66bf2cffa1bbc63edf (MAJ SOMMAIRE)
- https://github.com/ikkiphenixluigi/SQL_DEPOT_IA/commit/5a52e5fd13e259d45e02f3cdf802ca00ea76963a (6 suppressions)

### Raison de la restructuration

- **Progression logique** : SELECT → WHERE → ORDER BY → LIMIT
- **WHERE complet en un bloc** : Plus de decoupage artificiel
- **Pas de repetition** : COUNT uniquement au NIVEAU 3
- **LIMIT au bon endroit** : Dans les bases (NIVEAU 1)
- **Dates au bon niveau** : strftime au NIVEAU 2 avec les fonctions

---

## 2026-09-26 - NETTOYAGE COMPLET DES ENONCES

### Modifications effectuees

**2 vagues de modifications :**

1. **Premiere vague :** Retrait des mentions de commandes dans les exercices
   - "avec SELECT", "avec FROM", "avec WHERE", etc.
   - "utilise ORDER BY", "en utilisant LIKE", etc.
   - "la fonction AVG", "la clause WHERE", etc.

2. **Deuxieme vague :** Retrait des descriptions dans les titres
   - "Exercice 1.4 - WHERE avec texte" → "Exercice 1.4"
   - "Question 3 (CEIL, FLOOR)" → "Question 3"
   - "Exercice 2.1 - Operations arithmetiques" → "Exercice 2.1"

**Exemples avant/apres :**

| Avant | Apres |
|-------|-------|
| Exercice 1.4 - WHERE avec texte (5 questions) | Exercice 1.4 (5 questions) |
| Affiche les etudiants avec SELECT et FROM. | Affiche les etudiants. |
| Question 3 (CEIL, FLOOR) | Question 3 |
| Exercice 3.2 - AVG + GROUP BY (5 questions) | Exercice 3.2 (5 questions) |
| Exercice 2.1 - Operations arithmetiques (+, -, *, /) | Exercice 2.1 |

**Fichiers modifies :** 30 fichiers (TOUS les cours)

**Commits :**
- https://github.com/ikkiphenixluigi/SQL_DEPOT_IA/commit/e0a1db36d32fb7852fd2361982bae03a704eeefa (NIVEAU 1)
- https://github.com/ikkiphenixluigi/SQL_DEPOT_IA/commit/90171ed4937876cd43adbc0b2134f94f2fd91c35 (NIVEAU 2)
- https://github.com/ikkiphenixluigi/SQL_DEPOT_IA/commit/80594d9eedb2b770a8c689ae021dfda26a5a284a (NIVEAUX 3, 4, 5)

### Raison du nettoyage

- Les etudiants doivent trouver eux-memes les commandes a utiliser
- Les enonces sont plus reels et moins guides
- Les corrections detaillees seront dans sql/03_exercices.sql

---

[Historique precedent conserve...]

---

# ETAT FINAL DU PROJET (au 2026-09-27)

## Fichiers existants

### Documentation
- README.md
- GUIDE_TEST.md
- GUIDE_DB_BROWSER.md
- GUIDE_DBEAVER.md
- docs/SOMMAIRE.md (MAJ)
- docs/cours/00_intro.md
- docs/cours/01_niveau1_01_SELECT_FROM.md (DISTINCT ajoute)
- docs/cours/02_niveau1_02_WHERE.md
- docs/cours/03_niveau1_03_ORDER_BY.md
- docs/cours/04_niveau1_04_LIMIT.md
- docs/cours/05_niveau1_05_TEST.md
- docs/cours/08_niveau2_01_operations_ROUND.md (fil rouge)
- docs/cours/09_niveau2_02_CEIL_FLOOR_ABS.md (fil rouge)
- docs/cours/10_niveau2_03_POWER_SQRT.md (fil rouge)
- docs/cours/11_niveau2_04_UPPER_LOWER_LENGTH.md (fil rouge)
- docs/cours/12_niveau2_05_SUBSTR_REPLACE.md (fil rouge)
- docs/cours/13_niveau2_06_TRIM_concat.md (fil rouge)
- docs/cours/14_niveau2_07_LIKE.md (fil rouge)
- docs/cours/15_niveau2_08_CAST.md (NOUVEAU)
- docs/cours/16_niveau2_09_strftime.md (NOUVEAU)
- docs/cours/17_niveau2_10_age.md (NOUVEAU)
- docs/cours/18_niveau2_11_CASE_WHEN.md (NOUVEAU)
- docs/cours/19_niveau2_TEST.md (NOUVEAU)
- docs/cours/20_niveau3_01_agregats.md (NOUVEAU)
- docs/cours/21_niveau3_02_GROUP_BY.md (NOUVEAU)
- docs/cours/22_niveau3_03_HAVING_syntaxe.md (NOUVEAU)
- docs/cours/23_niveau3_TEST.md (NOUVEAU)
- docs/cours/24_niveau4_01_JOIN_base.md
- docs/cours/25_niveau4_02_JOIN_multiple.md
- docs/cours/26_niveau4_03_JOIN_avance.md
- docs/cours/27_niveau4_TEST.md
- docs/cours/28_niveau5_01_sous_requetes_IN.md
- docs/cours/29_niveau5_02_sous_requetes_compare.md
- docs/cours/30_niveau5_03_sous_requetes_corellees.md
- docs/cours/31_niveau5_TEST.md
- Logs/JOURNAL_PROJET.md (MAJ)

### SQL
- sql/01_create_tables.sql
- sql/02_insert_data.sql
- sql/03_exercices.sql (A METTRE A JOUR)

### Scripts
- init_db.sh
- init_db.bat

## Prochaines actions

1. **RESTRUCTURATION COMPLETE !** ✅
2. **NIVEAU 1 : DISTINCT ajoute** ✅
3. **NIVEAU 2 : Fil rouge coherent** ✅
4. **NIVEAU 3 : Structure logique** ✅
5. Mettre a jour sql/03_exercices.sql avec les nouvelles structures

## Statistiques FINALES

- **Fichiers cours : 31 / 31 (100%)** ✅
  - 1 fichier intro
  - 5 fichiers NIVEAU 1
  - 12 fichiers NIVEAU 2
  - 4 fichiers NIVEAU 3
  - 4 fichiers NIVEAU 4
  - 4 fichiers NIVEAU 5
- **Niveaux completes : 5 / 5 (100%)** ✅
- **Structure : COHERENTE ET PEDAGOGIQUE** ✅

## Recapitulatif par niveau

| Niveau | Fichiers | Thème |
|--------|----------|-------|
| Intro | 1 | Introduction |
| NIVEAU 1 | 5 | SELECT, FROM, DISTINCT, WHERE, ORDER BY, LIMIT |
| NIVEAU 2 | 12 | Fonctions (numerique → texte → date → avancees) |
| NIVEAU 3 | 4 | Agregats, GROUP BY, HAVING, Syntaxe complete |
| NIVEAU 4 | 4 | Jointures (JOIN) |
| NIVEAU 5 | 4 | Sous-requetes |
| **TOTAL** | **31** | **100% COMPLETE** |

---

**Derniere mise a jour :** 2026-09-27

**PROJET DE COURS SQL : 100% TERMINE !** 🎉

**NIVEAU 1 : RESTRUCTURE + DISTINCT** ✅
**NIVEAU 2 : FIL RUGE COHERENT** ✅
**NIVEAU 3 : STRUCTURE LOGIQUE** ✅
**NIVEAU 4 : COMPLETE** ✅
**NIVEAU 5 : COMPLETE** ✅

**STRUCTURE : COHERENTE ET PEDAGOGIQUE !** ✅

**Prochaine etape :** Mettre a jour sql/03_exercices.sql avec les nouvelles structures

## 28 septembre 2026 — Migration du site vers Just the Docs

- Correction de `_config.yml` : remplacement de `theme: just-the-docs` par `remote_theme: just-the-docs/just-the-docs`. La construction GitHub Pages a réussi et le site a été vérifié.
- Activation du bouton de copie des blocs de code avec `enable_copy_code_button: true`.
- Conservation de `index.md` à la racine comme page d’accueil et suppression du doublon `docs/index.md`.
- Suppression de `mkdocs.yml` : Jekyll et `_config.yml` sont désormais la configuration du site.
- Exclusion de `Logs/` et `teacher/` du site via `_config.yml`.
- Déplacement de `GUIDE_TEST.md` dans `teacher/` par le propriétaire du dépôt. Suppression de sa règle d’exclusion individuelle : celle de `teacher/` s’applique désormais.
- Exclusion de `docs/SOMMAIRE.md` de la publication, sans supprimer le fichier.

### À faire

- Créer la rubrique « Préparer son environnement » et organiser les guides et les niveaux du cours dans la navigation Just the Docs.
- Corriger les liens « Retour au SOMMAIRE » des cours pour qu’ils pointent vers la page d’accueil. Aucun fichier de cours n’a encore été modifié.
- Vérifier les liens des cours avant d’envisager la suppression de `docs/SOMMAIRE.md`.
