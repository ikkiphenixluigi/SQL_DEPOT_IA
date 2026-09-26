# Niveau 1 - LIMIT

## Navigation

- [Retour au SOMMAIRE](../SOMMAIRE.md)
- [Cours precedent : ORDER BY](03_niveau1_03_ORDER_BY.md)
- [Cours suivant : Test NIVEAU 1](05_niveau1_05_TEST.md)

---

## Introduction

Ce cours presente LIMIT pour limiter le nombre de resultats.

**Objectifs :**
- Limiter avec LIMIT
- Combiner avec ORDER BY (top N)
- Pagination avec OFFSET

---

## 1. LIMIT simple

### Definition

`LIMIT` limite le nombre de resultats.

**Syntaxe :**
```sql
SELECT colonnes
FROM table
LIMIT N;
```

### Exemple 1 : LIMIT simple

**Question :** Afficher les 5 premiers etudiants.

**Requete :**
```sql
SELECT nom, prenom
FROM etudiants
LIMIT 5;
```

**Explication :**
- `LIMIT 5` : garde les 5 premieres lignes

**Resultat :** 5 premiers etudiants.

### Exemple 2 : LIMIT avec OFFSET

**Question :** Afficher les etudiants 6 a 10 (page 2).

**Requete :**
```sql
SELECT nom, prenom
FROM etudiants
LIMIT 5 OFFSET 5;
```

**Explication :**
- `LIMIT 5` : 5 resultats
- `OFFSET 5` : saute les 5 premiers

**Resultat :** Etudiants 6 a 10.

---

## 2. LIMIT avec ORDER BY (top N)

### Definition

On combine LIMIT et ORDER BY pour avoir le top N.

**Syntaxe :**
```sql
SELECT colonnes
FROM table
ORDER BY colonne DESC
LIMIT N;
```

### Exemple 1 : Top 5 des cours

**Question :** Afficher les 5 cours avec le plus de credits.

**Requete :**
```sql
SELECT code_cours, nom_cours, credits
FROM cours
ORDER BY credits DESC
LIMIT 5;
```

**Explication :**
- `ORDER BY credits DESC` : trie du plus grand au plus petit
- `LIMIT 5` : garde les 5 premiers

**Resultat :** Top 5 des cours.

### Exemple 2 : Top 10 des etudiants

**Question :** Afficher les 10 etudiants par ordre alphabetique.

**Requete :**
```sql
SELECT nom, prenom
FROM etudiants
ORDER BY nom ASC
LIMIT 10;
```

**Explication :**
- `ORDER BY nom ASC` : trie alphabetiquement
- `LIMIT 10` : garde les 10 premiers

**Resultat :** 10 premiers etudiants.

---

## Exercices

### Exercice 1.12 (4 questions)

1. Affiche les 5 premiers etudiants.
2. Affiche les 10 premiers cours.
3. Affiche les 3 premiers lycees.
4. Affiche les 5 premieres salles.

### Exercice 1.13 (5 questions)

1. Affiche les 5 cours avec le plus de credits.
2. Affiche les 10 etudiants par ordre alphabetique.
3. Affiche les 3 lycees avec le plus de villes.
4. Affiche les 5 salles avec le plus de places.
5. Affiche les etudiants 6 a 10 (page 2).

---

## Navigation

- [Retour au SOMMAIRE](../SOMMAIRE.md)
- [Cours precedent : ORDER BY](03_niveau1_03_ORDER_BY.md)
- [Cours suivant : Test NIVEAU 1](05_niveau1_05_TEST.md)

---

**Prochain cours :** Test recapitulatif NIVEAU 1
