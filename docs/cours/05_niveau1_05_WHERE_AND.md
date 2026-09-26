# Niveau 1 - WHERE avec AND

## Navigation

- [Retour au SOMMAIRE](../SOMMAIRE.md)
- [Cours precedent : ORDER BY](04_niveau1_04_ORDER_BY.md)
- [Cours suivant : COUNT](06_niveau1_06_COUNT.md)

---

## Introduction

Ce cours presente WHERE avec plusieurs conditions.

**Objectifs :**
- Combiner des conditions avec AND
- Filtrer avec plusieurs criteres

---

## 1. WHERE avec AND

### Definition

`AND` combine plusieurs conditions.

**Syntaxe :**
```sql
SELECT colonnes
FROM table
WHERE condition1 AND condition2;
```

### Exemple 1 : AND simple

**Question :** Afficher les etudiants masculins inscrits en 2024.

**Requete :**
```sql
SELECT nom, prenom, sexe, annee_inscription
FROM etudiants
WHERE sexe = 'Masculin' AND annee_inscription = 2024;
```

**Explication :**
- `sexe = 'Masculin'` : premiere condition
- `AND annee_inscription = 2024` : deuxieme condition

**Resultat :** Etudiants masculins de 2024.

### Exemple 2 : AND avec cours

**Question :** Afficher les cours du semestre 2 avec 4 credits.

**Requete :**
```sql
SELECT code_cours, nom_cours, credits, semestre
FROM cours
WHERE semestre = 2 AND credits = 4;
```

**Explication :**
- Deux conditions combinees avec AND

**Resultat :** Cours du semestre 2 avec exactement 4 credits.

---

## Exercices

### Exercice 1.11 (5 questions)

1. Affiche les etudiants masculins inscrits en 2024.
2. Affiche les cours du semestre 2 avec 4 credits.
3. Affiche les lycees de Paris.
4. Affiche les etudiants nes en 2003 et habitant a Paris.
5. Affiche les salles du 2eme etage qui sont informatisees.

---

## Navigation

- [Retour au SOMMAIRE](../SOMMAIRE.md)
- [Cours precedent : ORDER BY](04_niveau1_04_ORDER_BY.md)
- [Cours suivant : COUNT](06_niveau1_06_COUNT.md)

---

**Prochain cours :** COUNT pour compter
