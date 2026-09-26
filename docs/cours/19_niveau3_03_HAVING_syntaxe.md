# Niveau 3 - HAVING + Syntaxe complete

## Navigation

- [Retour au SOMMAIRE](../SOMMAIRE.md)
- [Cours precedent : GROUP BY](18_niveau3_02_GROUP_BY.md)
- [Cours suivant : Test NIVEAU 3](20_niveau3_TEST.md)

---

## Introduction

Ce cours presente HAVING pour filtrer les groupes et la syntaxe complete SQL.

**Objectifs :**
- Filtrer les groupes avec HAVING
- Connaitre la syntaxe complete SELECT-FROM-WHERE-GROUP BY-HAVING-ORDER BY-LIMIT

---

## 1. HAVING

### Definition

`HAVING` filtre les groupes (apres GROUP BY).

**Syntaxe :**
```sql
SELECT colonne, agregat
FROM table
GROUP BY colonne
HAVING condition;
```

### Exemple 1 : HAVING + COUNT

**Question :** Trouver les lycees avec plus de 10 etudiants.

**Requete :**
```sql
SELECT id_lycee, COUNT(*) AS nb_etudiants
FROM etudiants
GROUP BY id_lycee
HAVING COUNT(*) > 10;
```

**Explication :**
- `GROUP BY id_lycee` : groupe par lycee
- `HAVING COUNT(*) > 10` : filtre les groupes

**Resultat :** Lycees avec plus de 10 etudiants.

### Exemple 2 : HAVING + AVG

**Question :** Trouver les cours avec une moyenne superieure a 12.

**Requete :**
```sql
SELECT id_cours, AVG(note) AS moyenne
FROM notes
GROUP BY id_cours
HAVING AVG(note) > 12;
```

**Explication :**
- `GROUP BY id_cours` : groupe par cours
- `HAVING AVG(note) > 12` : filtre les groupes

**Resultat :** Cours avec moyenne > 12.

---

## 2. Syntaxe complete SQL

### Ordre des clauses

```sql
SELECT attributs, calculs, agregats
FROM tables
WHERE conditions
GROUP BY attributs
HAVING conditions
ORDER BY attributs
LIMIT nombre;
```

### Ordre d'execution

1. **FROM** (tables)
2. **WHERE** (filtrage)
3. **GROUP BY** (groupement)
4. **HAVING** (filtrage des groupes)
5. **SELECT** (selection)
6. **ORDER BY** (tri)
7. **LIMIT** (limitation)

### Exemple complet

**Question :** Afficher les villes avec plus de 5 etudiants, trie par nombre d'etudiants.

**Requete :**
```sql
SELECT ville, COUNT(*) AS nb_etudiants
FROM etudiants
WHERE ville IS NOT NULL
GROUP BY ville
HAVING COUNT(*) > 5
ORDER BY nb_etudiants DESC
LIMIT 10;
```

**Explication :**
1. FROM etudiants
2. WHERE ville IS NOT NULL
3. GROUP BY ville
4. HAVING COUNT(*) > 5
5. SELECT ville, COUNT(*)
6. ORDER BY nb_etudiants DESC
7. LIMIT 10

**Resultat :** Top 10 des villes avec plus de 5 etudiants.

---

## Exercices

### Exercice 3.9 (5 questions)

1. Trouve les lycees avec plus de 10 etudiants.
2. Trouve les cours avec plus de 8 notes.
3. Trouve les etudiants avec plus de 2 inscriptions.
4. Trouve les salles avec plus de 3 seances.
5. Trouve les enseignants avec plus de 2 cours.

### Exercice 3.10 (5 questions)

1. Trouve les cours avec une moyenne superieure a 12.
2. Trouve les cours avec une moyenne inferieure a 8.
3. Trouve les types d'evaluation avec une moyenne superieure a 10.
4. Trouve les semestres avec une moyenne de credits superieure a 4.
5. Trouve les departements avec une moyenne d'heures theoriques superieure a 20.

### Exercice 3.11 (4 questions)

1. Ecris la syntaxe complete avec SELECT, FROM, WHERE, GROUP BY, HAVING, ORDER BY, LIMIT.
2. Explique l'ordre d'execution des clauses.
3. Quelle est la difference entre WHERE et HAVING ?
4. Dans quel ordre executes-tu FROM, WHERE, GROUP BY, HAVING, SELECT, ORDER BY, LIMIT ?

---

## Navigation

- [Retour au SOMMAIRE](../SOMMAIRE.md)
- [Cours precedent : GROUP BY](18_niveau3_02_GROUP_BY.md)
- [Cours suivant : Test NIVEAU 3](20_niveau3_TEST.md)

---

**Prochain cours :** Test recapitulatif NIVEAU 3
