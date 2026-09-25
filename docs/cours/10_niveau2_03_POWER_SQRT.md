# Niveau 2 - POWER et SQRT

## Navigation

- [Retour au SOMMAIRE](../SOMMAIRE.md)
- [Cours precedent : CEIL, FLOOR, ABS](09_niveau2_02_CEIL_FLOOR_ABS.md)
- [Cours suivant : UPPER, LOWER, LENGTH](11_niveau2_04_UPPER_LOWER_LENGTH.md)

---

## Introduction

Ce cours presente POWER et SQRT.

**Objectifs :**
- Calculer des puissances avec POWER
- Calculer des racines carrees avec SQRT

---

## 1. POWER (puissance)

### Definition

`POWER` eleve un nombre a une puissance.

**Syntaxe :**
```sql
POWER(base, exposant)
```

### Exemple 1 : POWER au carre

**Question :** Calculer le carre des notes.

**Requete :**
```sql
SELECT note, POWER(note, 2) AS note_carre
FROM notes;
```

**Explication :**
- `POWER(note, 2)` : note au carre

**Resultat :** Notes au carre.

---

## 2. SQRT (racine carree)

### Definition

`SQRT` calcule la racine carree.

**Syntaxe :**
```sql
SQRT(nombre)
```

### Exemple 1 : SQRT simple

**Question :** Calculer la racine carree des notes.

**Requete :**
```sql
SELECT note, SQRT(note) AS note_racine
FROM notes;
```

**Explication :**
- `SQRT(note)` : racine carree de note

**Resultat :** Racines carrees des notes.

---

## Exercices

### Exercice 2.5.bis - POWER et SQRT (4 questions)

1. Calcule le carre des notes.
2. Calcule le cube des credits.
3. Calcule la racine carree des notes.
4. Calcule le carre des notes puis la racine carree du resultat.

---

## Navigation

- [Retour au SOMMAIRE](../SOMMAIRE.md)
- [Cours precedent : CEIL, FLOOR, ABS](09_niveau2_02_CEIL_FLOOR_ABS.md)
- [Cours suivant : UPPER, LOWER, LENGTH](11_niveau2_04_UPPER_LOWER_LENGTH.md)

---

**Prochain cours :** UPPER, LOWER, LENGTH
