# Niveau 1 - COUNT simple

## Navigation

- [Retour au SOMMAIRE](../SOMMAIRE.md)
- [Cours precedent : WHERE avec AND](05_niveau1_05_WHERE_AND.md)
- [Cours suivant : Test Niveau 1](07_niveau1_TEST.md)

---

## Introduction

Ce cours presente la fonction d'agregation COUNT pour compter des lignes.

**Objectifs :**
- Comprendre la fonction COUNT
- Compter toutes les lignes
- Compter avec des conditions

---

## 1. La fonction COUNT

### Definition

La fonction `COUNT()` permet de **compter le nombre de lignes** qui satisfont une condition.

**Syntaxe :**
```sql
SELECT COUNT(*) FROM table;
SELECT COUNT(colonne) FROM table WHERE condition;
```

- `COUNT(*)` : compte toutes les lignes
- `COUNT(colonne)` : compte les lignes ou la colonne n'est pas NULL

### Exemple 1 : Compter toutes les lignes

**Question :** Combien y a-t-il d'etudiants ?

**Requete :**
```sql
SELECT COUNT(*) AS nb_etudiants
FROM etudiants;
```

**Explication :**
- `COUNT(*)` : compte toutes les lignes
- `AS nb_etudiants` : alias pour le resultat

**Resultat :** Un nombre (ex: 60).

### Exemple 2 : Compter avec un alias

**Question :** Combien y a-t-il de lycees ?

**Requete :**
```sql
SELECT COUNT(*) AS total_lycees
FROM lycees;
```

**Explication :**
- Alias explicite pour le resultat

**Resultat :** Un nombre (ex: 15).

---

## 2. COUNT avec WHERE

### Definition

On peut combiner `COUNT()` avec `WHERE` pour compter seulement certaines lignes.

**Syntaxe :**
```sql
SELECT COUNT(*) FROM table WHERE condition;
```

### Exemple 1 : Compter avec condition texte

**Question :** Combien y a-t-il d'etudiants a Paris ?

**Requete :**
```sql
SELECT COUNT(*) AS nb_etudiants_paris
FROM etudiants
WHERE ville = 'Paris';
```

**Explication :**
- WHERE filtre les lignes
- COUNT compte les lignes filtrees

**Resultat :** Nombre d'etudiants parisiens.

### Exemple 2 : Compter avec condition nombre

**Question :** Combien y a-t-il de cours avec 6 credits ?

**Requete :**
```sql
SELECT COUNT(*) AS nb_cours_6_credits
FROM cours
WHERE credits = 6;
```

**Explication :**
- Filtre sur credits = 6

**Resultat :** Nombre de cours avec 6 credits.

### Exemple 3 : Compter avec AND

**Question :** Combien y a-t-il d'etudiantes (feminin) a Paris ?

**Requete :**
```sql
SELECT COUNT(*) AS nb_etudiantes_paris
FROM etudiants
WHERE sexe = 'Feminin'
  AND ville = 'Paris';
```

**Explication :**
- Deux conditions avec AND
- COUNT compte les lignes qui satisfont les deux

**Resultat :** Nombre d'etudiantes parisiennes.

### Exemple 4 : Compter avec date

**Question :** Combien y a-t-il d'etudiants nes en 2004 ?

**Requete :**
```sql
SELECT COUNT(*) AS nb_etudiants_2004
FROM etudiants
WHERE strftime('%Y', date_naissance) = '2004';
```

**Explication :**
- Filtre sur l'annee de naissance

**Resultat :** Nombre d'etudiants nes en 2004.

---

## 3. COUNT sur une colonne specifique

### Definition

`COUNT(colonne)` compte seulement les lignes ou la colonne n'est pas NULL.

### Exemple 1 : COUNT avec colonne

**Question :** Combien d'etudiants ont un email ?

**Requete :**
```sql
SELECT COUNT(email) AS nb_emails
FROM etudiants;
```

**Explication :**
- Compte seulement les lignes ou email n'est pas NULL

**Resultat :** Nombre d'etudiants avec email.

### Exemple 2 : Comparer COUNT(*) et COUNT(colonne)

```sql
SELECT 
    COUNT(*) AS total,
    COUNT(email) AS avec_email
FROM etudiants;
```

**Explication :**
- COUNT(*) : toutes les lignes
- COUNT(email) : seulement celles avec email

**Resultat :** Deux nombres (peuvent etre differents si certains emails sont NULL).

---

## Exercices

### Exercice 1.12 - COUNT simple (4 questions)

1. Compte le nombre total de lycees.
2. Compte le nombre d'etudiants du lycee 1.
3. Compte le nombre de cours du semestre 1.
4. Compte le nombre d'etudiants nes en 2003.

---

## Navigation

- [Retour au SOMMAIRE](../SOMMAIRE.md)
- [Cours precedent : WHERE avec AND](05_niveau1_05_WHERE_AND.md)
- [Cours suivant : Test Niveau 1](07_niveau1_TEST.md)

---

**Prochain cours :** Test recapitulatif Niveau 1
