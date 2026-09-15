# Niveau 2 - Operations arithmetiques et ROUND

## Navigation

- [Retour au SOMMAIRE](../SOMMAIRE.md)
- [Niveau 1 - Test](07_niveau1_TEST.md)
- [Cours suivant : CEIL, FLOOR, ABS](09_niveau2_02_CEIL_FLOOR_ABS.md)

---

## Introduction

Ce cours presente les operations arithmetiques de base et la fonction ROUND pour arrondir les nombres.

**Objectifs :**
- Effectuer des operations arithmetiques (+, -, *, /)
- Utiliser la fonction ROUND pour arrondir
- Comprendre les types de donnees dans les calculs

---

## 1. Operations arithmetiques de base

### Definition

SQLite supporte les operations arithmetiques standards :
- `+` : addition
- `-` : soustraction
- `*` : multiplication
- `/` : division

**Syntaxe :**
```sql
SELECT colonne1 + colonne2 AS resultat FROM table;
SELECT colonne * nombre AS resultat FROM table;
```

### Exemple 1 : Addition

**Question :** Ajouter 5 points a toutes les notes.

**Requete :**
```sql
SELECT id_inscription, note, note + 5 AS note_augmentee
FROM notes;
```

**Explication :**
- `note + 5` : ajoute 5 a chaque note
- Alias `note_augmentee` pour le resultat

**Resultat :** Notes originales et notes augmentees.

### Exemple 2 : Multiplication

**Question :** Calculer le total des credits multiplie par 10.

**Requete :**
```sql
SELECT code_cours, credits, credits * 10 AS credits_x10
FROM cours;
```

**Explication :**
- `credits * 10` : multiplie les credits par 10

**Resultat :** Credits originaux et multiplies.

### Exemple 3 : Division

**Question :** Calculer la moyenne des notes divisee par 2.

**Requete :**
```sql
SELECT note, note / 2 AS moitie_note
FROM notes;
```

**Explication :**
- `note / 2` : divise la note par 2

**Resultat :** Notes et leur moitie.

### Exemple 4 : Combinaison d'operations

**Question :** Calculer (note * 2) + 10.

**Requete :**
```sql
SELECT note, (note * 2) + 10 AS resultat
FROM notes;
```

**Explication :**
- Parentheses pour prioriser les operations
- Multiplication avant addition

**Resultat :** Notes transformees.

---

## 2. La fonction ROUND

### Definition

La fonction `ROUND()` permet d'arrondir un nombre a un certain nombre de decimales.

**Syntaxe :**
```sql
ROUND(nombre, decimales)
```

- `nombre` : le nombre a arrondir
- `decimales` : nombre de decimales (optionnel, defaut = 0)

### Exemple 1 : Arrondir a l'entier

**Question :** Arrondir les notes a l'entier le plus proche.

**Requete :**
```sql
SELECT note, ROUND(note) AS note_arrondie
FROM notes;
```

**Explication :**
- `ROUND(note)` : arrondit a 0 decimale
- 12.3 devient 12, 12.7 devient 13

**Resultat :** Notes originales et arrondies.

### Exemple 2 : Arrondir a 1 decimale

**Question :** Arrondir les notes a 1 decimale.

**Requete :**
```sql
SELECT note, ROUND(note, 1) AS note_arrondie_1
FROM notes;
```

**Explication :**
- `ROUND(note, 1)` : 1 decimale
- 12.34 devient 12.3, 12.37 devient 12.4

**Resultat :** Notes avec 1 decimale.

### Exemple 3 : Arrondir avec calcul

**Question :** Calculer la moyenne de deux notes et l'arrondir.

**Requete :**
```sql
SELECT 
    note,
    ROUND(note * 1.1, 1) AS note_ajustee
FROM notes;
```

**Explication :**
- Calcul d'abord : `note * 1.1`
- Puis arrondi a 1 decimale

**Resultat :** Notes ajustees et arrondies.

---

## Exercices

### Exercice 2.1 - Operations arithmetiques (5 questions)

1. Affiche les notes avec une colonne montrant la note + 2.
2. Affiche les credits des cours multiplies par 2.
3. Affiche les notes divisees par 2.
4. Affiche (note * coeff) pour chaque evaluation.
5. Affiche (note + 5) pour les notes inferieures a 10.

### Exercice 2.2 - ROUND (4 questions)

1. Arrondis toutes les notes a l'entier le plus proche.
2. Arrondis toutes les notes a 1 decimale.
3. Arrondis le resultat de (note * 1.05) a 2 decimales.
4. Affiche les notes originales et arrondies pour comparaison.

---

## Navigation

- [Retour au SOMMAIRE](../SOMMAIRE.md)
- [Niveau 1 - Test](07_niveau1_TEST.md)
- [Cours suivant : CEIL, FLOOR, ABS](09_niveau2_02_CEIL_FLOOR_ABS.md)

---

**Prochain cours :** CEIL, FLOOR, ABS
