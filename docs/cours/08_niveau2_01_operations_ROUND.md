# Niveau 2 - Operations arithmetiques et ROUND

## Navigation

- [Retour au SOMMAIRE](../SOMMAIRE.md)
- [Niveau 1 - Test](07_niveau1_TEST.md)
- [Cours suivant : CEIL, FLOOR, ABS](09_niveau2_02_CEIL_FLOOR_ABS.md)

---

## Introduction

Ce cours presente les operations arithmetiques et ROUND.

**Objectifs :**
- Utiliser +, -, *, /
- Arrondir avec ROUND

---

## 1. Operations arithmetiques

### Definition

On peut faire des calculs dans SELECT.

**Syntaxe :**
```sql
SELECT colonne + 2, colonne * 1.5, ... FROM table;
```

### Exemple 1 : Addition

**Question :** Ajouter 2 points a toutes les notes.

**Requete :**
```sql
SELECT id_inscription, note, note + 2 AS note_plus_2
FROM notes;
```

**Explication :**
- `note + 2` : ajoute 2 a chaque note

**Resultat :** Notes avec 2 points en plus.

### Exemple 2 : Multiplication

**Question :** Multiplier les credits par 2.

**Requete :**
```sql
SELECT code_cours, credits, credits * 2 AS credits_x2
FROM cours;
```

**Explication :**
- `credits * 2` : double les credits

**Resultat :** Credits doubles.

---

## 2. ROUND (arrondi)

### Definition

`ROUND` arrondit un nombre.

**Syntaxe :**
```sql
ROUND(nombre, decimales)
```

### Exemple 1 : ROUND simple

**Question :** Arrondir les notes a l'entier.

**Requete :**
```sql
SELECT note, ROUND(note) AS note_arrondie
FROM notes;
```

**Explication :**
- `ROUND(note)` : arrondit a l'entier le plus proche

**Resultat :** Notes arrondies.

### Exemple 2 : ROUND avec decimales

**Question :** Arrondir les notes a 1 decimale.

**Requete :**
```sql
SELECT note, ROUND(note, 1) AS note_arrondie_1
FROM notes;
```

**Explication :**
- `ROUND(note, 1)` : 1 decimale

**Resultat :** Notes avec 1 decimale.

---

## Exercices

### Exercice 2.1 - Operations arithmetiques (5 questions)

1. Ajoute 2 points a toutes les notes.
2. Multiplie les credits par 2.
3. Divise les notes par 2.
4. Calcule la note ponderee (note * coeff).
5. Ajoute 5 points aux notes inferieures a 10.

### Exercice 2.2 - ROUND (4 questions)

1. Arrondis les notes a l'entier.
2. Arrondis les notes a 1 decimale.
3. Ajoute 5% aux notes et arrondis a 2 decimales.
4. Arrondis les notes a l'entier.

---

## Navigation

- [Retour au SOMMAIRE](../SOMMAIRE.md)
- [Niveau 1 - Test](07_niveau1_TEST.md)
- [Cours suivant : CEIL, FLOOR, ABS](09_niveau2_02_CEIL_FLOOR_ABS.md)

---

**Prochain cours :** CEIL, FLOOR, ABS
