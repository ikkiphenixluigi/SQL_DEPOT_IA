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

1. Le responsable pedagogique veut connaitre l'effectif total de la base. Donne-lui un seul nombre.
2. Combien d'etudiants resident a Paris et se sont inscrits en 2024 ?
3. Combien de cours du premier semestre donnent au moins 4 credits ?
4. Combien de salles informatiques peuvent accueillir au moins 15 personnes ?
5. Parmi les inscriptions enregistrees en 2025, combien ont le statut `abandon` ?

### Exercice 3.2 (4 questions)

1. Pour connaitre l'etendue des resultats, affiche la note la plus basse et la plus haute de toutes les evaluations.
2. Parmi les etudiants inscrits en 2025, donne la date de naissance la plus ancienne et la plus recente. Il s'agit de dates, pas des noms des etudiants correspondants.
3. Quelle est la plus petite et la plus grande capacite des salles informatiques ?
4. Pour les cours du premier semestre, affiche le nombre minimal et maximal de credits.

### Exercice 3.3 (4 questions)

1. Quelle est la moyenne des notes attribuees aux examens finaux ? Arrondis-la a deux decimales.
2. Combien de credits vaut en moyenne un cours du premier semestre ? Arrondis a une decimale.
3. Quelle est la capacite moyenne des salles informatiques ? Arrondis a une decimale.
4. Pour les evaluations de coefficient 2 dont la note atteint au moins 10, quelle est la note moyenne ? Arrondis a deux decimales.

### Exercice 3.4 (4 questions)

1. Combien de credits faudrait-il cumuler pour suivre tous les cours du premier semestre ?
2. Combien de places offrent ensemble les salles informatiques ?
3. Quel est le total des heures theoriques prevues pour les cours d'au moins 4 credits ?
4. Quel est le total des coefficients des examens finaux enregistres ?

### Exercice 3.5 (5 questions)

1. Prepare un bilan des examens finaux indiquant le nombre de notes, la plus faible, la plus forte et la moyenne arrondie a deux decimales.
2. Pour les cours du premier semestre, affiche leur nombre, le total de leurs credits et leur nombre moyen de credits.
3. Pour les salles informatiques, affiche leur nombre, la capacite minimale, la capacite maximale et le total des places.
4. Pour les etudiants inscrits en 2025, affiche leur nombre ainsi que les dates de naissance la plus ancienne et la plus recente.
5. Un enseignant veut examiner uniquement les notes inferieures a 10 : affiche combien il y en a, leur moyenne arrondie a deux decimales et la note la plus basse.

---

## Navigation

- [Retour au SOMMAIRE](../SOMMAIRE.md)
- [Niveau 2 - Test](19_niveau2_TEST.md)
- [Cours suivant : GROUP BY](18_niveau3_02_GROUP_BY.md)

---

**Prochain cours :** GROUP BY