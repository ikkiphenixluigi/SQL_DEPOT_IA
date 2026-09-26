# Journal de projet - SQL_DEPOT_IA

Historique complet des decisions, creations de fichiers, tests et avancement du projet.

Mise a jour : Apres chaque creation de fichier et sur demande.

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

## 2026-09-16 - NIVEAU 5 COMPLETE ! TOUS LES COURS TERMINES !

### Fichiers crees

**NIVEAU 5 - 4 fichiers cours :**
- docs/cours/27_niveau5_01_sous_requetes_IN.md (3336 octets)
- docs/cours/28_niveau5_02_sous_requetes_compare.md (4209 octets)
- docs/cours/29_niveau5_03_sous_requetes_corellees.md (3288 octets)
- docs/cours/30_niveau5_TEST.md (2093 octets)

### Themes couverts par le NIVEAU 5

**Exercices 5.1 a 5.6 + TEST :**
- 5.1 Sous-requete NOT IN (5 questions)
- 5.2 Sous-requete IN (5 questions)
- 5.3 Sous-requete comparative (5 questions)
- 5.4 Sous-requete dans SELECT (5 questions)
- 5.5 Sous-requete dans WHERE (5 questions)
- 5.6 Sous-requete correlee (5 questions)
- TEST NIVEAU 5 (10 questions)

**Total : ~40 questions**

### Competences acquises

- Sous-requetes avec IN et NOT IN
- Sous-requetes comparatives
- Sous-requetes dans SELECT et WHERE
- Sous-requetes correlees (EXISTS, NOT EXISTS)

### Commit

- https://github.com/ikkiphenixluigi/SQL_DEPOT_IA/commit/adf1f3de4da28cf62b741c00c92392a62db06178
- Message : "NIVEAU 5 COMPLETE - Derniers cours 27 a 30"

### Statistiques NIVEAU 5

- Fichiers cours : 4 / 4 (100%)
- Exercices couverts : 6 + TEST
- Questions : ~40
- Fichiers totaux : ~13 KB

### Prochaine action

- **TOUS LES COURS SONT TERMINES !** ✅
- Prochaine etape : Creer sql/03_exercices.sql avec toutes les solutions (~284 questions)

---

## 2026-09-16 - NIVEAU 4 COMPLETE !

### Fichiers crees

**NIVEAU 4 - 4 fichiers cours :**
- docs/cours/23_niveau4_01_JOIN_base.md (3633 octets)
- docs/cours/24_niveau4_02_JOIN_multiple.md (3785 octets)
- docs/cours/25_niveau4_03_JOIN_avance.md (5160 octets)
- docs/cours/26_niveau4_TEST.md (2240 octets)

### Themes couverts par le NIVEAU 4

**Exercices 4.1 a 4.8 + TEST :**
- 4.1 JOIN 1 table (5 questions)
- 4.2 JOIN avec alias (4 questions)
- 4.3 JOIN multiple 2 tables (5 questions)
- 4.4 JOIN avec notes (5 questions)
- 4.5 JOIN avec 3 tables (5 questions)
- 4.6 JOIN avec DISTINCT (4 questions)
- 4.7 JOIN + GROUP BY (5 questions)
- 4.8 LEFT JOIN avance (5 questions)
- TEST NIVEAU 4 (10 questions)

**Total : ~48 questions**

### Competences acquises

- INNER JOIN avec alias
- JOIN multiple (2 et 3 tables)
- DISTINCT avec JOIN
- JOIN + GROUP BY
- LEFT JOIN avance

### Commit

- https://github.com/ikkiphenixluigi/SQL_DEPOT_IA/commit/2e2a54d7a6575704e29cc3272424c9b2a6300347
- Message : "NIVEAU 4 COMPLETE - Ajout cours 23 a 26"

### Statistiques NIVEAU 4

- Fichiers cours : 4 / 4 (100%)
- Exercices couverts : 8 + TEST
- Questions : ~48
- Fichiers totaux : ~15 KB

### Prochaine action

- Commencer le NIVEAU 5 : Sous-requetes et requates complexes
- Prochain fichier : docs/cours/27_niveau5_01_sous_requetes_IN.md

---

## 2026-09-16 - Modification cours 18 - Ajout MIN et MAX

### Fichier modifie

**Modification de :**
- docs/cours/18_niveau3_02_AVG_GROUP_BY.md

### Contenu ajoute

**Nouvelles sections :**
- Section 3 : La fonction MIN (minimum)
  - MIN simple
  - MIN avec GROUP BY
  - MIN avec texte
- Section 4 : La fonction MAX (maximum)
  - MAX simple
  - MAX avec GROUP BY
  - MAX avec texte
- Section 5 : Combinaison de MIN, MAX et AVG
  - Statistiques completes
  - Statistiques par groupe
  - Avec d'autres colonnes

**Nouveaux exercices :**
- Exercice 3.2.bis - MIN, MAX, AVG (5 questions)
  - Note min et max generales
  - Stats par cours
  - Cours avec note max
  - Stats par type d'evaluation
  - Comparaison par semestre

### Commit

- https://github.com/ikkiphenixluigi/SQL_DEPOT_IA/commit/2e5c89cf6e0f4fcaf57a2e8036d543a8def93c00
- Message : "MAJ cours 18 - Ajout MIN et MAX"

### Impact

- **Fichiers modifies :** 1 (cours 18)
- **Fichiers a creer :** 0
- **sql/03_exercices.sql :** PAS cree maintenant (sera cree a la fin de tous les cours)

### Raison de la modification

- Demande utilisateur : regrouper toutes les fonctions d'agregation classiques (MIN, MAX, AVG)
- Plus logique pedagogiquement
- Permet d'alterner les exercices sur differentes fonctions

---

## 2026-09-16 - NIVEAU 3 COMPLETE !

### Fichiers crees

**NIVEAU 3 - 6 fichiers cours :**
- docs/cours/17_niveau3_01_COUNT_GROUP_BY.md (3248 octets)
- docs/cours/18_niveau3_02_AVG_GROUP_BY.md (4207 octets) - MODIFIE avec MIN et MAX
- docs/cours/19_niveau3_03_COUNT_JOIN.md (3368 octets)
- docs/cours/20_niveau3_04_SUM_LIMIT.md (4082 octets)
- docs/cours/21_niveau3_05_HAVING.md (4841 octets)
- docs/cours/22_niveau3_TEST.md (2268 octets)

### Themes couverts par le NIVEAU 3

**Exercices 3.1 a 3.10 + TEST :**
- 3.1 COUNT + GROUP BY (5 questions)
- 3.2 AVG + GROUP BY (5 questions)
- 3.2.bis MIN, MAX, AVG (5 questions) - NOUVEAU
- 3.3 COUNT + LEFT JOIN (4 questions)
- 3.4 AVG etudiant (5 questions)
- 3.5 COUNT seances (4 questions)
- 3.6 SUM par etage (4 questions)
- 3.7 COUNT + LIMIT (5 questions)
- 3.8 Statistiques completes (5 questions)
- 3.9 HAVING + AVG (5 questions)
- 3.10 HAVING + COUNT (5 questions)
- TEST NIVEAU 3 (10 questions)

**Total : ~62 questions** (au lieu de ~57)

### Competences acquises

- COUNT avec GROUP BY
- AVG avec GROUP BY
- MIN, MAX avec et sans GROUP BY
- COUNT avec LEFT JOIN
- SUM avec GROUP BY
- LIMIT
- HAVING avec AVG et COUNT

### Commit

- https://github.com/ikkiphenixluigi/SQL_DEPOT_IA/commit/bd9b0b8f2d49422dda01a995244a72b7ac8d5e11
- Message : "NIVEAU 3 COMPLETE - Ajout cours 17 a 22"

### Statistiques NIVEAU 3

- Fichiers cours : 6 / 6 (100%)
- Exercices couverts : 10 + TEST + 1 bis
- Questions : ~62
- Fichiers totaux : ~22 KB

### Prochaine action

- Commencer le NIVEAU 4 : Jointures (INNER JOIN, LEFT JOIN)
- Prochain fichier : docs/cours/23_niveau4_01_JOIN_base.md

---

## 2026-09-16 - NIVEAU 2 COMPLETE !

### Fichiers crees

**NIVEAU 2 - 9 fichiers cours :**
- docs/cours/08_niveau2_01_operations_ROUND.md (4036 octets)
- docs/cours/09_niveau2_02_CEIL_FLOOR_ABS.md (4084 octets)
- docs/cours/10_niveau2_03_POWER_SQRT.md (3198 octets)
- docs/cours/11_niveau2_04_UPPER_LOWER_LENGTH.md (3718 octets)
- docs/cours/12_niveau2_05_SUBSTR_REPLACE.md (4092 octets)
- docs/cours/13_niveau2_06_TRIM_concat.md (3413 octets)
- docs/cours/14_niveau2_07_LIKE.md (3662 octets)
- docs/cours/15_niveau2_08_strftime_age.md (5225 octets)
- docs/cours/16_niveau2_TEST.md (2401 octets)

### Themes couverts par le NIVEAU 2

**Exercices 2.1 a 2.15 + TEST :**
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

**Total : ~76 questions**

### Competences acquises

- Operations arithmetiques (+, -, *, /)
- ROUND, CEIL, FLOOR, ABS
- POWER, SQRT
- UPPER, LOWER, LENGTH
- SUBSTR, REPLACE
- TRIM, concatenation (||)
- LIKE avec % et _
- strftime() et calcul d'age

### Commit

- https://github.com/ikkiphenixluigi/SQL_DEPOT_IA/commit/f0f570b36b356757f03bebaa4e5e74153407f019
- Message : "NIVEAU 2 COMPLETE - Ajout cours 08 a 16"

### Statistiques NIVEAU 2

- Fichiers cours : 9 / 9 (100%)
- Exercices couverts : 15 + TEST
- Questions : ~76
- Fichiers totaux : ~34 KB

### Prochaine action

- Commencer le NIVEAU 3 : Agregats, GROUP BY, HAVING, LIMIT
- Prochain fichier : docs/cours/17_niveau3_01_COUNT_GROUP_BY.md

---

## 2026-09-15 - NIVEAU 1 COMPLETE !

### Fichiers crees

**NIVEAU 1 - 7 fichiers cours :**
- docs/cours/01_niveau1_01_FROM_SELECT.md (deja pushe)
- docs/cours/02_niveau1_02_WHERE_texte_annee.md (deja pushe)
- docs/cours/03_niveau1_03_WHERE_plage_FK.md (3859 octets)
- docs/cours/04_niveau1_04_ORDER_BY.md (4041 octets)
- docs/cours/05_niveau1_05_WHERE_AND.md (3674 octets)
- docs/cours/06_niveau1_06_COUNT.md (4027 octets)
- docs/cours/07_niveau1_TEST.md (2337 octets)

### Themes couverts par le NIVEAU 1

**Exercices 1.1 a 1.12 + TEST :**
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

**Total : ~58 questions**

### Competences acquises

- SELECT et FROM
- WHERE avec texte, nombres, dates
- WHERE avec BETWEEN, <, >, <=, >=
- WHERE avec cles etrangeres (IN)
- ORDER BY ASC et DESC
- ORDER BY multiple
- WHERE avec AND
- COUNT(*) et COUNT(colonne)

### Commit

- https://github.com/ikkiphenixluigi/SQL_DEPOT_IA/commit/69978f96fe1ee8e8c8c0684036d230daa22ed575
- Message : "Completion NIVEAU 1 - Ajout cours 03 a 07"

### Statistiques NIVEAU 1

- Fichiers cours : 7 / 7 (100%)
- Exercices couverts : 12 + TEST
- Questions : ~58
- Fichiers totaux : ~22 KB

### Prochaine action

- Commencer le NIVEAU 2 : Fonctions SQL sur les colonnes
- Prochain fichier : docs/cours/08_niveau2_01_operations_ROUND.md

---

[Historique precedent conserve...]

---

# ETAT FINAL DU PROJET (au 2026-09-26)

## Fichiers existants

### Documentation
- README.md
- GUIDE_TEST.md
- GUIDE_DB_BROWSER.md
- GUIDE_DBEAVER.md
- docs/SOMMAIRE.md (MAJ)
- docs/cours/00_intro.md
- docs/cours/01_niveau1_01_SELECT_FROM.md (NOUVEAU)
- docs/cours/02_niveau1_02_WHERE.md (NOUVEAU)
- docs/cours/03_niveau1_03_ORDER_BY.md (NOUVEAU)
- docs/cours/04_niveau1_04_LIMIT.md (NOUVEAU)
- docs/cours/05_niveau1_05_TEST.md (NOUVEAU)
- docs/cours/08_niveau2_01_operations_ROUND.md
- docs/cours/09_niveau2_02_CEIL_FLOOR_ABS.md
- docs/cours/10_niveau2_03_POWER_SQRT.md
- docs/cours/11_niveau2_04_UPPER_LOWER_LENGTH.md
- docs/cours/12_niveau2_05_SUBSTR_REPLACE.md
- docs/cours/13_niveau2_06_TRIM_concat.md
- docs/cours/14_niveau2_07_LIKE.md
- docs/cours/15_niveau2_08_strftime_age.md
- docs/cours/16_niveau2_TEST.md
- docs/cours/17_niveau3_01_COUNT_GROUP_BY.md
- docs/cours/18_niveau3_02_AVG_GROUP_BY.md
- docs/cours/19_niveau3_03_COUNT_JOIN.md
- docs/cours/20_niveau3_04_SUM_LIMIT.md
- docs/cours/21_niveau3_05_HAVING.md
- docs/cours/22_niveau3_TEST.md
- docs/cours/23_niveau4_01_JOIN_base.md
- docs/cours/24_niveau4_02_JOIN_multiple.md
- docs/cours/25_niveau4_03_JOIN_avance.md
- docs/cours/26_niveau4_TEST.md
- docs/cours/27_niveau5_01_sous_requetes_IN.md
- docs/cours/28_niveau5_02_sous_requetes_compare.md
- docs/cours/29_niveau5_03_sous_requetes_corellees.md
- docs/cours/30_niveau5_TEST.md
- Logs/JOURNAL_PROJET.md (MAJ)

### SQL
- sql/01_create_tables.sql
- sql/02_insert_data.sql
- sql/03_exercices.sql (A CREER - solutions de tous les exercices)

### Scripts
- init_db.sh
- init_db.bat

## Prochaines actions

1. **RESTRUCTURATION NIVEAU 1 COMPLETE !** ✅
2. **TOUS LES ENONCES SONT NETTOYES !** ✅
3. Mettre a jour sql/03_exercices.sql avec les solutions du NIVEAU 1 restructure
4. Ajouter des commentaires detailles par exercice
5. Organiser par niveau et par exercice

## Statistiques FINALES

- **Fichiers cours : 26 / 26 (100%)** ✅
  - 1 fichier intro
  - 5 fichiers NIVEAU 1 (RESTRUCTURES)
  - 9 fichiers NIVEAU 2
  - 6 fichiers NIVEAU 3
  - 4 fichiers NIVEAU 4
  - 4 fichiers NIVEAU 5
- **Niveaux completes : 5 / 5 (100%)** ✅
- **Exercices : ~270 questions** ✅
- **Fichiers modifies (restructuration) : 11** ✅

## Recapitulatif par niveau

| Niveau | Fichiers | Exercices | Questions |
|--------|----------|-----------|-----------|
| Intro | 1 | 0 | 0 |
| NIVEAU 1 | 5 | 13 + TEST | ~63 |
| NIVEAU 2 | 9 | 15 + 1 bis + TEST | ~76 |
| NIVEAU 3 | 6 | 10 + 1 bis + TEST | ~62 |
| NIVEAU 4 | 4 | 8 + TEST | ~48 |
| NIVEAU 5 | 4 | 6 + TEST | ~40 |
| **TOTAL** | **29** | **~43** | **~289** |

---

**Derniere mise a jour :** 2026-09-26

**PROJET DE COURS SQL : TERMINE !** 🎉

**NIVEAU 1 : RESTRUCTURE !** ✅
**NIVEAU 2 : COMPLETE !** ✅
**NIVEAU 3 : COMPLETE !** ✅
**NIVEAU 4 : COMPLETE !** ✅
**NIVEAU 5 : COMPLETE !** ✅

**TOUS LES COURS : TERMINES !** ✅
**TOUS LES ENONCES : NETTOYES !** ✅
**STRUCTURE : COHERENTE !** ✅

**Prochaine etape :** Mettre a jour sql/03_exercices.sql avec solutions et commentaires detailles
