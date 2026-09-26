# Niveau 3 - Agregats - COUNT, MIN, MAX, AVG, SUM

## Navigation

- [Retour au SOMMAIRE](../SOMMAIRE.md)
- [Niveau 2 - Test](19_niveau2_TEST.md)
- [Cours suivant : GROUP BY](18_niveau3_02_GROUP_BY.md)

---

## Introduction

Ce cours presente les fonctions d'agregation.

**Objectifs :**
- Compter avec COUNT
- Trouver min/max avec MIN/MAX
- Calculer moyenne avec AVG
- Additionner avec SUM

---

## 1. COUNT (compter)

### Definition

`COUNT` compte le nombre de lignes.

**Syntaxe :**
```sql
COUNT(*) -- compte toutes les lignes
COUNT(colonne) -- compte les valeurs non-NULL
```

### Exemple 1 : COUNT(*)

**Question :** Compter le nombre total d'etudiants.

**Requete :**
```sql
SELECT COUNT(*) AS total_etudiants
FROM etudiants;
```

**Explication :**
- `COUNT(*)` : compte toutes les lignes

**Resultat :** Nombre total d'etudiants.

### Exemple 2 : COUNT(colonne)

**Question :** Compter les etudiants avec un email.

**Requete :**
```sql
SELECT COUNT(email) AS etudiants_avec_email
FROM etudiants;
```

**Explication :**
- `COUNT(email)` : compte les emails non-NULL

**Resultat :** Nombre d'etudiants avec email.

---

## 2. MIN et MAX

### Definition

`MIN` et `MAX` trouvent les valeurs minimales et maximales.

**Syntaxe :**
```sql
MIN(colonne), MAX(colonne)
```

### Exemple 1 : MIN et MAX

**Question :** Trouver les notes minimales et maximales.

**Requete :**
```sql
SELECT MIN(note) AS note_min, MAX(note) AS note_max
FROM notes;
```

**Explication :**
- `MIN(note)` : note la plus basse
- `MAX(note)` : note la plus haute

**Resultat :** Notes min et max.

---

## 3. AVG (moyenne)

### Definition

`AVG` calcule la moyenne.

**Syntaxe :**
```sql
AVG(colonne)
```

### Exemple 1 : AVG simple

**Question :** Calculer la moyenne generale des notes.

**Requete :**
```sql
SELECT AVG(note) AS moyenne_generale
FROM notes;
```

**Explication :**
- `AVG(note)` : moyenne de toutes les notes

**Resultat :** Moyenne generale.

---

## 4. SUM (somme)

### Definition

`SUM` additionne les valeurs.

**Syntaxe :**
```sql
SUM(colonne)
```

### Exemple 1 : SUM simple

**Question :** Calculer le total des credits.

**Requete :**
```sql
SELECT SUM(credits) AS total_credits
FROM cours;
```

**Explication :**
- `SUM(credits)` : total des credits

**Resultat :** Total des credits.

---

## Exercices

### Exercice 3.1 (5 questions)

1. Compte le nombre total d'etudiants.
2. Compte le nombre total de cours.
3. Compte le nombre total de lycees.
4. Compte le nombre d'etudiants avec email.
5. Compte le nombre de cours avec 4 credits.

### Exercice 3.2 (4 questions)

1. Trouve la note minimale et maximale.
2. Trouve l'age minimum et maximum.
3. Trouve le nombre de places minimum et maximum.
4. Trouve les credits minimum et maximum.

### Exercice 3.3 (4 questions)

1. Calcule la moyenne generale des notes.
2. Calcule la moyenne des credits.
3. Calcule la moyenne d'age.
4. Calcule la moyenne des places.

### Exercice 3.4 (4 questions)

1. Calcule le total des credits.
2. Calcule le total des places.
3. Calcule le total des coefficients.
4. Calcule le total des notes.

### Exercice 3.5 (5 questions)

1. Calcule les stats generales (total, min, max, moyenne) des notes.
2. Calcule les stats des credits (total, min, max, moyenne).
3. Calcule les stats des places (total, min, max, moyenne).
4. Calcule les stats des coefficients (total, min, max, moyenne).
5. Calcule les stats completes des notes par type d'evaluation.

---

## Navigation

- [Retour au SOMMAIRE](../SOMMAIRE.md)
- [Niveau 2 - Test](19_niveau2_TEST.md)
- [Cours suivant : GROUP BY](18_niveau3_02_GROUP_BY.md)

---

**Prochain cours :** GROUP BY
