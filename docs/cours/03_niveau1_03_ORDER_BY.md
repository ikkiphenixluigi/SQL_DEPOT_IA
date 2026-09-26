# Niveau 1 - ORDER BY

## Navigation

- [Retour au SOMMAIRE](../SOMMAIRE.md)
- [Cours precedent : WHERE](02_niveau1_02_WHERE.md)
- [Cours suivant : LIMIT](04_niveau1_04_LIMIT.md)

---

## Introduction

Ce cours presente ORDER BY pour trier les resultats.

**Objectifs :**
- Trier avec ORDER BY ASC
- Trier avec ORDER BY DESC
- Trier sur plusieurs colonnes

---

## 1. ORDER BY ASC (croissant)

### Definition

`ORDER BY` trie les resultats.

**Syntaxe :**
```sql
SELECT colonnes
FROM table
ORDER BY colonne ASC;
```

### Exemple 1 : ORDER BY simple

**Question :** Trier les etudiants par nom.

**Requete :**
```sql
SELECT nom, prenom
FROM etudiants
ORDER BY nom ASC;
```

**Explication :**
- `ORDER BY nom ASC` : trie par nom (A a Z)

**Resultat :** Etudiants tries alphabetiquement.

### Exemple 2 : ORDER BY multiple

**Question :** Trier les lycees par ville puis par nom.

**Requete :**
```sql
SELECT nom, ville
FROM lycees
ORDER BY ville ASC, nom ASC;
```

**Explication :**
- `ORDER BY ville ASC, nom ASC` : trie par ville, puis par nom

**Resultat :** Lycees tries par ville, puis alphabetiquement.

---

## 2. ORDER BY DESC (decroissant)

### Definition

`DESC` trie en ordre decroissant.

**Syntaxe :**
```sql
ORDER BY colonne DESC;
```

### Exemple 1 : ORDER BY DESC

**Question :** Trier les etudiants par date de naissance (plus recent en premier).

**Requete :**
```sql
SELECT nom, prenom, date_naissance
FROM etudiants
ORDER BY date_naissance DESC;
```

**Explication :**
- `DESC` : du plus recent au plus ancien

**Resultat :** Etudiants tries du plus jeune au plus age.

### Exemple 2 : ORDER BY DESC avec credits

**Question :** Trier les cours par credits (plus gros en premier).

**Requete :**
```sql
SELECT code_cours, nom_cours, credits
FROM cours
ORDER BY credits DESC;
```

**Explication :**
- `DESC` : du plus grand au plus petit

**Resultat :** Cours avec le plus de credits en premier.

---

## Exercices

### Exercice 1.9 (4 questions)

1. Trie les etudiants par nom (ordre alphabetique).
2. Trie les lycees par ville puis par nom.
3. Trie les cours par semestre puis par credits.
4. Trie les enseignants par departement puis par grade.

### Exercice 1.10 (4 questions)

1. Trie les etudiants par date de naissance (plus recent en premier).
2. Trie les salles par nombre de places (plus grand en premier).
3. Trie les cours par credits (plus gros en premier).
4. Trie les lycees par ville (ordre decroissant).

### Exercice 1.11 (4 questions)

1. Trie les etudiants par ville puis par nom.
2. Trie les cours par semestre puis par credits (decroissant).
3. Trie les lycees par ville (ASC) puis par nom (DESC).
4. Trie les enseignants par grade puis par nom.

---

## Navigation

- [Retour au SOMMAIRE](../SOMMAIRE.md)
- [Cours precedent : WHERE](02_niveau1_02_WHERE.md)
- [Cours suivant : LIMIT](04_niveau1_04_LIMIT.md)

---

**Prochain cours :** LIMIT (top N, pagination)
