# Niveau 3 - HAVING avec AVG et COUNT

## Navigation

- [Retour au SOMMAIRE](../SOMMAIRE.md)
- [Cours precedent : SUM et LIMIT](20_niveau3_04_SUM_LIMIT.md)
- [Cours suivant : Test Niveau 3](22_niveau3_TEST.md)

---

## Introduction

Ce cours presente la clause HAVING pour filtrer les resultats de GROUP BY.

**Objectifs :**
- Comprendre HAVING
- Utiliser HAVING avec AVG
- Utiliser HAVING avec COUNT
- Difference entre WHERE et HAVING

---

## 1. La clause HAVING

### Definition

La clause `HAVING` permet de filtrer les resultats apres un GROUP BY.
Contrairement a WHERE qui filtre avant le regroupement, HAVING filtre apres.

**Syntaxe :**
```sql
SELECT colonne, COUNT(*) 
FROM table 
GROUP BY colonne 
HAVING condition;
```

### WHERE vs HAVING

- **WHERE** : filtre les lignes AVANT GROUP BY
- **HAVING** : filtre les groupes APRES GROUP BY

---

## 2. HAVING avec AVG

### Exemple 1 : Moyenne superieure a 10

**Question :** Trouver les cours avec une moyenne superieure a 10.

**Requete :**
```sql
SELECT id_cours, AVG(note) AS moyenne
FROM notes
GROUP BY id_cours
HAVING AVG(note) > 10;
```

**Explication :**
- GROUP BY pour calculer la moyenne par cours
- HAVING pour filtrer les moyennes > 10

**Resultat :** Cours avec moyenne > 10.

### Exemple 2 : Moyenne inferieure a 8

**Question :** Trouver les cours avec une moyenne inferieure a 8.

**Requete :**
```sql
SELECT id_cours, AVG(note) AS moyenne
FROM notes
GROUP BY id_cours
HAVING AVG(note) < 8;
```

**Explication :**
- HAVING filtre les groupes avec moyenne < 8

**Resultat :** Cours avec moyenne < 8.

### Exemple 3 : Moyenne entre 10 et 15

**Question :** Trouver les cours avec une moyenne entre 10 et 15.

**Requete :**
```sql
SELECT id_cours, AVG(note) AS moyenne
FROM notes
GROUP BY id_cours
HAVING AVG(note) BETWEEN 10 AND 15;
```

**Explication :**
- HAVING avec BETWEEN pour une plage

**Resultat :** Cours avec moyenne entre 10 et 15.

---

## 3. HAVING avec COUNT

### Exemple 1 : Plus de 5 etudiants

**Question :** Trouver les lycees avec plus de 5 etudiants.

**Requete :**
```sql
SELECT id_lycee, COUNT(*) AS nb_etudiants
FROM etudiants
GROUP BY id_lycee
HAVING COUNT(*) > 5;
```

**Explication :**
- GROUP BY pour compter par lycee
- HAVING pour filtrer les lycees avec > 5 etudiants

**Resultat :** Lycees avec plus de 5 etudiants.

### Exemple 2 : Au moins 10 notes

**Question :** Trouver les cours avec au moins 10 notes.

**Requete :**
```sql
SELECT id_cours, COUNT(*) AS nb_notes
FROM notes
GROUP BY id_cours
HAVING COUNT(*) >= 10;
```

**Explication :**
- GROUP BY pour compter les notes par cours
- HAVING pour filtrer les cours avec >= 10 notes

**Resultat :** Cours avec au moins 10 notes.

### Exemple 3 : Exactement 2 evaluations

**Question :** Trouver les inscriptions avec exactement 2 evaluations.

**Requete :**
```sql
SELECT id_inscription, COUNT(*) AS nb_evaluations
FROM notes
GROUP BY id_inscription
HAVING COUNT(*) = 2;
```

**Explication :**
- GROUP BY pour compter par inscription
- HAVING pour filtrer celles avec exactement 2 evaluations

**Resultat :** Inscriptions avec 2 evaluations.

---

## 4. HAVING avec plusieurs conditions

### Exemple 1 : AND avec HAVING

**Question :** Trouver les cours avec plus de 5 notes et une moyenne > 10.

**Requete :**
```sql
SELECT id_cours, COUNT(*) AS nb_notes, AVG(note) AS moyenne
FROM notes
GROUP BY id_cours
HAVING COUNT(*) > 5 AND AVG(note) > 10;
```

**Explication :**
- Deux conditions avec AND dans HAVING
- Nombre de notes > 5 ET moyenne > 10

**Resultat :** Cours avec beaucoup de notes et bonne moyenne.

### Exemple 2 : OR avec HAVING

**Question :** Trouver les cours avec soit beaucoup de notes, soit une excellente moyenne.

**Requete :**
```sql
SELECT id_cours, COUNT(*) AS nb_notes, AVG(note) AS moyenne
FROM notes
GROUP BY id_cours
HAVING COUNT(*) > 10 OR AVG(note) > 15;
```

**Explication :**
- Deux conditions avec OR
- Soit > 10 notes, soit moyenne > 15

**Resultat :** Cours populaires ou excellents.

---

## Exercices

### Exercice 3.9 - HAVING + AVG (5 questions)

1. Trouve les cours avec une moyenne superieure a 12.
2. Trouve les cours avec une moyenne inferieure a 8.
3. Trouve les types d'evaluation avec une moyenne > 10.
4. Trouve les semestres avec une moyenne de credits > 4.
5. Trouve les departements avec une moyenne d'heures > 20.

### Exercice 3.10 - HAVING + COUNT (5 questions)

1. Trouve les lycees avec plus de 10 etudiants.
2. Trouve les cours avec plus de 8 notes.
3. Trouve les etudiants avec plus de 2 inscriptions.
4. Trouve les salles avec plus de 3 seances.
5. Trouve les enseignants avec plus de 2 cours.

---

## Navigation

- [Retour au SOMMAIRE](../SOMMAIRE.md)
- [Cours precedent : SUM et LIMIT](20_niveau3_04_SUM_LIMIT.md)
- [Cours suivant : Test Niveau 3](22_niveau3_TEST.md)

---

**Prochain cours :** Test recapitulatif Niveau 3
