# Niveau 2 - POWER et SQRT

## Navigation

- [Retour au SOMMAIRE](../SOMMAIRE.md)
- [Cours precedent : CEIL, FLOOR, ABS](09_niveau2_02_CEIL_FLOOR_ABS.md)
- [Cours suivant : UPPER, LOWER, LENGTH](11_niveau2_04_UPPER_LOWER_LENGTH.md)

---

## Introduction

Ce cours presente les fonctions POWER (puissance) et SQRT (racine carree).

**Objectifs :**
- Utiliser POWER pour elever a une puissance
- Utiliser SQRT pour calculer la racine carree

---

## 1. La fonction POWER (puissance)

### Definition

La fonction `POWER()` eleve un nombre a une puissance donnee.

**Syntaxe :**
```sql
POWER(base, exposant)
```

- `base` : le nombre de base
- `exposant` : la puissance

### Exemple 1 : POWER simple

**Question :** Calculer le carre des notes.

**Requete :**
```sql
SELECT note, POWER(note, 2) AS note_carre
FROM notes;
```

**Explication :**
- `POWER(note, 2)` : note au carre
- Equivalent a `note * note`

**Resultat :** Notes et leur carre.

### Exemple 2 : POWER avec exposant 3

**Question :** Calculer le cube des credits.

**Requete :**
```sql
SELECT credits, POWER(credits, 3) AS credits_cube
FROM cours;
```

**Explication :**
- `POWER(credits, 3)` : credits au cube
- Equivalent a `credits * credits * credits`

**Resultat :** Credits et leur cube.

### Exemple 3 : POWER avec exposant fractionnaire

**Question :** Calculer note^1.5.

**Requete :**
```sql
SELECT note, POWER(note, 1.5) AS note_puissance_1_5
FROM notes;
```

**Explication :**
- Exposant fractionnaire possible
- `note^1.5` = note * sqrt(note)

**Resultat :** Notes elevees a 1.5.

---

## 2. La fonction SQRT (racine carree)

### Definition

La fonction `SQRT()` retourne la racine carree d'un nombre.

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
- `SQRT(16)` = 4
- `SQRT(9)` = 3

**Resultat :** Notes et leur racine carree.

### Exemple 2 : SQRT avec calcul

**Question :** Calculer la racine carree de (note * 2).

**Requete :**
```sql
SELECT note, SQRT(note * 2) AS racine_note_x2
FROM notes;
```

**Explication :**
- Calcul d'abord : `note * 2`
- Puis racine carree

**Resultat :** Racine carree du double des notes.

### Exemple 3 : POWER et SQRT combines

**Question :** Verifier que SQRT(POWER(x, 2)) = x.

**Requete :**
```sql
SELECT 
    note,
    POWER(note, 2) AS note_carre,
    SQRT(POWER(note, 2)) AS verification
FROM notes;
```

**Explication :**
- `POWER(note, 2)` : note au carre
- `SQRT(...)` : racine carree du resultat
- Devrait redonner la note originale

**Resultat :** Verification de la relation.

---

## Exercices

### Exercice 2.5 - POWER et SQRT (4 questions)

1. Calcule le carre de toutes les notes.
2. Calcule le cube des credits pour chaque cours.
3. Calcule la racine carree de toutes les notes.
4. Verifie que SQRT(POWER(note, 2)) redonne la note originale.

---

## Navigation

- [Retour au SOMMAIRE](../SOMMAIRE.md)
- [Cours precedent : CEIL, FLOOR, ABS](09_niveau2_02_CEIL_FLOOR_ABS.md)
- [Cours suivant : UPPER, LOWER, LENGTH](11_niveau2_04_UPPER_LOWER_LENGTH.md)

---

**Prochain cours :** UPPER, LOWER, LENGTH
