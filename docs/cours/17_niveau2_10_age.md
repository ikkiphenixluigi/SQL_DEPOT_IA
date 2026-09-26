# Niveau 2 - Fonctions date - Calcul d'age

## Navigation

- [Retour au SOMMAIRE](../SOMMAIRE.md)
- [Cours precedent : strftime()](16_niveau2_09_strftime.md)
- [Cours suivant : CASE WHEN](18_niveau2_11_CASE_WHEN.md)

---

## Introduction

Ce cours presente le calcul d'age avec strftime().

**Objectifs :**
- Calculer l'age a partir d'une date
- Utiliser CAST pour les calculs

---

## 1. Calcul d'age

### Definition

On calcule l'age en soustrayant l'annee de naissance de l'annee actuelle.

**Syntaxe :**
```sql
CAST(strftime('%Y', 'now') AS INTEGER) - CAST(strftime('%Y', date_naissance) AS INTEGER)
```

### Exemple 1 : Age simple

**Question :** Calculer l'age des etudiants.

**Requete :**
```sql
SELECT nom, date_naissance,
    CAST(strftime('%Y', 'now') AS INTEGER) - CAST(strftime('%Y', date_naissance) AS INTEGER) AS age
FROM etudiants;
```

**Explication :**
- `strftime('%Y', 'now')` : annee actuelle
- `strftime('%Y', date_naissance)` : annee de naissance
- Difference : age

**Resultat :** Ages des etudiants.

### Exemple 2 : Age avec filtre

**Question :** Trouver les etudiants de 22 ans ou plus.

**Requete :**
```sql
SELECT nom, date_naissance,
    CAST(strftime('%Y', 'now') AS INTEGER) - CAST(strftime('%Y', date_naissance) AS INTEGER) AS age
FROM etudiants
WHERE CAST(strftime('%Y', 'now') AS INTEGER) - CAST(strftime('%Y', date_naissance) AS INTEGER) >= 22;
```

**Explication :**
- Calcul de l'age
- WHERE filtre par age

**Resultat :** Etudiants de 22 ans ou plus.

---

## Exercices

### Exercice 2.16 (5 questions)

1. Calcule l'age des etudiants.
2. Trouve les etudiants de 22 ans ou plus.
3. Calcule l'age moyen des etudiants.
4. Compte les etudiants par age.
5. Trouve l'etudiant le plus age.

---

## Navigation

- [Retour au SOMMAIRE](../SOMMAIRE.md)
- [Cours precedent : strftime()](16_niveau2_09_strftime.md)
- [Cours suivant : CASE WHEN](18_niveau2_11_CASE_WHEN.md)

---

**Prochain cours :** CASE WHEN (fonctions avancees)
