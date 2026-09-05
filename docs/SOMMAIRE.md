# Cours SQL - Gestion Universitaire

Bienvenue dans ce cours progressif pour apprendre SQL a travers la base de donnees `gestion_universitaire`.

---

## Introduction

- [00 - Introduction aux SGBDR et concepts de base](cours/00_intro.md)

---

## NIVEAU 1 : Requates simples (SELECT, WHERE, ORDER BY, FROM)

- [01 - FROM et SELECT - Bases](cours/01_niveau1_01_FROM_SELECT.md)
- [02 - WHERE avec texte, egalite, annee](cours/02_niveau1_02_WHERE_texte_annee.md)
- [03 - WHERE avec plage et cle etrangere](cours/03_niveau1_03_WHERE_plage_FK.md)
- [04 - ORDER BY simple et multiple](cours/04_niveau1_04_ORDER_BY.md)
- [05 - WHERE avec AND](cours/05_niveau1_05_WHERE_AND.md)
- [06 - COUNT simple](cours/06_niveau1_06_COUNT.md)
- [TEST - Test recapitulatif Niveau 1](cours/07_niveau1_TEST.md)

---

## NIVEAU 2 : Fonctions SQL sur les colonnes

- [08 - Operations arithmetiques et ROUND](cours/08_niveau2_01_operations_ROUND.md)
- [09 - CEIL, FLOOR, ABS](cours/09_niveau2_02_CEIL_FLOOR_ABS.md)
- [10 - POWER et SQRT](cours/10_niveau2_03_POWER_SQRT.md)
- [11 - UPPER, LOWER, LENGTH](cours/11_niveau2_04_UPPER_LOWER_LENGTH.md)
- [12 - SUBSTR et REPLACE](cours/12_niveau2_05_SUBSTR_REPLACE.md)
- [13 - TRIM et concatenation](cours/13_niveau2_06_TRIM_concat.md)
- [14 - LIKE avec % et _](cours/14_niveau2_07_LIKE.md)
- [15 - strftime() et calcul d'age](cours/15_niveau2_08_strftime_age.md)
- [TEST - Test recapitulatif Niveau 2](cours/16_niveau2_TEST.md)

---

## NIVEAU 3 : Agregats, GROUP BY, HAVING, LIMIT

- [17 - COUNT avec GROUP BY](cours/17_niveau3_01_COUNT_GROUP_BY.md)
- [18 - AVG avec GROUP BY](cours/18_niveau3_02_AVG_GROUP_BY.md)
- [19 - COUNT avec LEFT JOIN](cours/19_niveau3_03_COUNT_JOIN.md)
- [20 - SUM et LIMIT](cours/20_niveau3_04_SUM_LIMIT.md)
- [21 - HAVING avec AVG et COUNT](cours/21_niveau3_05_HAVING.md)
- [TEST - Test recapitulatif Niveau 3](cours/22_niveau3_TEST.md)

---

## NIVEAU 4 : Jointures (INNER JOIN, LEFT JOIN)

- [23 - JOIN base avec alias](cours/23_niveau4_01_JOIN_base.md)
- [24 - JOIN multiple (2 et 3 tables)](cours/24_niveau4_02_JOIN_multiple.md)
- [25 - JOIN avance avec DISTINCT et GROUP BY](cours/25_niveau4_03_JOIN_avance.md)
- [TEST - Test recapitulatif Niveau 4](cours/26_niveau4_TEST.md)

---

## NIVEAU 5 : Sous-requetes et requates complexes

- [27 - Sous-requetes avec IN et NOT IN](cours/27_niveau5_01_sous_requetes_IN.md)
- [28 - Sous-requetes comparatives et dans SELECT](cours/28_niveau5_02_sous_requetes_compare.md)
- [29 - Sous-requetes dans WHERE et correlees](cours/29_niveau5_03_sous_requetes_corellees.md)
- [TEST - Test recapitulatif Niveau 5](cours/30_niveau5_TEST.md)

---

## Fichiers d'exercices

- [Solutions des exercices (SQL)](../sql/03_exercices.sql)

---

## Progression recommandee

1. Commence par l'**Introduction** (00_intro.md)
2. Suis les niveaux dans l'ordre (1 -> 2 -> 3 -> 4 -> 5)
3. Dans chaque niveau, fais les cours dans l'ordre
4. Termine chaque niveau par le **TEST** recapitulatif
5. Consulte les **solutions** dans `sql/03_exercices.sql` apres avoir essaye

---

## Base de donnees utilisee

Tous les exemples et exercices utilisent la base `gestion_universitaire` qui contient :

- **lycees** : 15 lycees de France metropolitaine
- **etudiants** : 60 etudiants en Ile-de-France
- **enseignants** : 8 enseignants
- **cours** : 10 cours
- **seances** : 24 seances
- **salles** : 8 salles
- **inscriptions** : 120 inscriptions
- **notes** : 240 notes

---

## Navigation rapide

| Niveau | Themes | Nombre d'exercices |
|--------|--------|--------------------|
| [Niveau 1](#niveau-1-requetes-simples-select-where-order-by-from) | SELECT, FROM, WHERE, ORDER BY | 12 + TEST |
| [Niveau 2](#niveau-2-fonctions-sql-sur-les-colonnes) | Fonctions (arithmetiques, texte, dates) | 15 + TEST |
| [Niveau 3](#niveau-3-agregats-group-by-having-limit) | COUNT, AVG, SUM, GROUP BY, HAVING | 10 + TEST |
| [Niveau 4](#niveau-4-jointures-inner-join-left-join) | INNER JOIN, LEFT JOIN | 8 + TEST |
| [Niveau 5](#niveau-5-sous-requetes-et-requetes-complexes) | Sous-requetes | 6 + TEST |

---

**Bon apprentissage !**
