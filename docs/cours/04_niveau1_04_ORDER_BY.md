# Niveau 1 - ORDER BY

## Navigation

- [Retour au SOMMAIRE](../SOMMAIRE.md)
- [Cours precedent : WHERE plage et FK](03_niveau1_03_WHERE_plage_FK.md)
- [Cours suivant : WHERE AND](05_niveau1_05_WHERE_AND.md)

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

### Exercice 1.5 - ORDER BY multiple (4 questions)

1. Trie les lycees par ville puis par nom.
2. Trie les etudiants par annee d'inscription puis par nom.
3. Trie les cours par semestre puis par credits (decroissant).
4. Trie les enseignants par departement puis par grade.

### Exercice 1.9 - ORDER BY DESC (4 questions)

1. Trie les etudiants par date de naissance (plus recent en premier).
2. Trie les salles par nombre de places (plus grand en premier).
3. Trie les cours par credits (plus gros en premier).
4. Trie les lycees par ville (ordre decroissant).

---

## Navigation

- [Retour au SOMMAIRE](../SOMMAIRE.md)
- [Cours precedent : WHERE plage et FK](03_niveau1_03_WHERE_plage_FK.md)
- [Cours suivant : WHERE AND](05_niveau1_05_WHERE_AND.md)

---

**Prochain cours :** WHERE avec plusieurs conditions (AND)
