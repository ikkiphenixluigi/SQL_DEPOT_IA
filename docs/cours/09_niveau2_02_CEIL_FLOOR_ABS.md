# Niveau 2 - CEIL, FLOOR, ABS

## Navigation

- [Retour au SOMMAIRE](../SOMMAIRE.md)
- [Cours precedent : Operations et ROUND](08_niveau2_01_operations_ROUND.md)
- [Cours suivant : POWER et SQRT](10_niveau2_03_POWER_SQRT.md)

---

## Introduction

Ce cours presente les fonctions mathematiques CEIL, FLOOR et ABS pour manipuler les nombres.

**Objectifs :**
- Comprendre CEIL (plafond)
- Comprendre FLOOR (plancher)
- Comprendre ABS (valeur absolue)

---

## 1. La fonction CEIL (plafond)

### Definition

La fonction `CEIL()` (ou `CEILING()`) retourne le plus petit entier superieur ou egal au nombre donne.

**Syntaxe :**
```sql
CEIL(nombre)
```

### Exemple 1 : CEIL simple

**Question :** Arrondir les notes a l'entier superieur.

**Requete :**
```sql
SELECT note, CEIL(note) AS note_plafond
FROM notes;
```

**Explication :**
- `CEIL(12.3)` = 13
- `CEIL(12.0)` = 12
- Toujours vers le haut

**Resultat :** Notes avec arrondi superieur.

### Exemple 2 : CEIL avec calcul

**Question :** Calculer le nombre de groupes necessaires (plafond).

**Requete :**
```sql
SELECT 
    COUNT(*) AS total,
    CEIL(COUNT(*) / 30.0) AS groupes_necessaires
FROM etudiants;
```

**Explication :**
- Division par 30 etudiants par groupe
- CEIL pour avoir le nombre entier superieur

**Resultat :** Nombre de groupes necessaires.

---

## 2. La fonction FLOOR (plancher)

### Definition

La fonction `FLOOR()` retourne le plus grand entier inferieur ou egal au nombre donne.

**Syntaxe :**
```sql
FLOOR(nombre)
```

### Exemple 1 : FLOOR simple

**Question :** Arrondir les notes a l'entier inferieur.

**Requete :**
```sql
SELECT note, FLOOR(note) AS note_plancher
FROM notes;
```

**Explication :**
- `FLOOR(12.9)` = 12
- `FLOOR(12.0)` = 12
- Toujours vers le bas

**Resultat :** Notes avec arrondi inferieur.

### Exemple 2 : FLOOR avec division

**Question :** Calculer le nombre complet de dizaines.

**Requete :**
```sql
SELECT 
    credits,
    FLOOR(credits / 10) AS dizaines_completes
FROM cours;
```

**Explication :**
- Division par 10
- FLOOR pour garder seulement les dizaines entieres

**Resultat :** Nombre de dizaines completes.

---

## 3. La fonction ABS (valeur absolue)

### Definition

La fonction `ABS()` retourne la valeur absolue d'un nombre (toujours positif).

**Syntaxe :**
```sql
ABS(nombre)
```

### Exemple 1 : ABS simple

**Question :** Afficher la valeur absolue des differences.

**Requete :**
```sql
SELECT 
    note,
    ABS(note - 10) AS ecart_a_10
FROM notes;
```

**Explication :**
- `ABS(-5)` = 5
- `ABS(5)` = 5
- Toujours positif

**Resultat :** Ecarts a 10 (toujours positifs).

### Exemple 2 : ABS avec soustraction

**Question :** Calculer l'ecart entre deux notes.

**Requete :**
```sql
SELECT 
    n1.note AS note1,
    n2.note AS note2,
    ABS(n1.note - n2.note) AS ecart
FROM notes n1, notes n2
WHERE n1.id_inscription = 1 AND n2.id_inscription = 2;
```

**Explication :**
- Difference entre deux notes
- ABS pour avoir l'ecart positif

**Resultat :** Ecart entre les deux notes.

---

## Exercices

### Exercice 2.3 - CEIL (4 questions)

1. Arrondis toutes les notes a l'entier superieur.
2. Calcule le nombre de groupes de 20 etudiants necessaires (utilise CEIL).
3. Arrondis les credits multiplies par 1.5 a l'entier superieur.
4. Affiche CEIL(note / 5) pour chaque evaluation.

### Exercice 2.4 - FLOOR (4 questions)

1. Arrondis toutes les notes a l'entier inferieur.
2. Calcule le nombre complet de dizaines de credits pour chaque cours.
3. Affiche FLOOR(note / 2) pour chaque evaluation.
4. Compare CEIL et FLOOR sur les memes notes.

### Exercice 2.5 - ABS (4 questions)

1. Affiche la valeur absolue de (note - 10) pour chaque evaluation.
2. Calcule l'ecart entre la note et la moyenne de la classe.
3. Affiche ABS(credits - 5) pour chaque cours.
4. Compare les ecarts positifs et negatifs avec ABS.

---

## Navigation

- [Retour au SOMMAIRE](../SOMMAIRE.md)
- [Cours precedent : Operations et ROUND](08_niveau2_01_operations_ROUND.md)
- [Cours suivant : POWER et SQRT](10_niveau2_03_POWER_SQRT.md)

---

**Prochain cours :** POWER et SQRT
