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

1. Affiche le nom, le prenom et la date de naissance des etudiants habitant a Paris. Trie-les par date de naissance decroissante, du plus jeune au plus age.
2. Affiche le numero et le nombre de places des salles ayant au moins 20 places. Trie-les du plus grand au plus petit nombre de places.
3. Affiche le code, le nom et le nombre de credits des cours du semestre 2. Trie-les par nombre de credits decroissant.
4. Affiche le nom et la ville des lycees situes a Paris ou a Lyon. Trie-les par ville dans l'ordre alphabetique decroissant.

### Exercice 1.11 (4 questions)

1. Affiche le nom, le prenom et la ville des etudiants habitant a Paris ou a Lyon. Trie-les par ville dans l'ordre alphabetique, puis par nom dans l'ordre alphabetique.
2. Affiche le code, le nom, le semestre et le nombre de credits des cours ayant entre 4 et 6 credits inclus. Trie-les par semestre croissant, puis par nombre de credits decroissant.
3. Affiche le nom et la ville des lycees situes a Paris ou a Lyon. Trie-les par ville croissante, puis par nom de lycee decroissant.
4. Affiche le nom, le prenom, le departement et le grade des enseignants ayant le grade "Professeur". Trie-les par departement croissant, puis par nom croissant.

---

## Navigation

- [Retour au SOMMAIRE](../SOMMAIRE.md)
- [Cours precedent : WHERE](02_niveau1_02_WHERE.md)
- [Cours suivant : LIMIT](04_niveau1_04_LIMIT.md)

---

**Prochain cours :** LIMIT (top N, pagination)