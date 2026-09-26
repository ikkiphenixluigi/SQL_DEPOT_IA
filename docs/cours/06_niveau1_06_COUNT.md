# Niveau 1 - COUNT

## Navigation

- [Retour au SOMMAIRE](../SOMMAIRE.md)
- [Cours precedent : WHERE AND](05_niveau1_05_WHERE_AND.md)
- [Cours suivant : Test Niveau 1](07_niveau1_TEST.md)

---

## Introduction

Ce cours presente COUNT pour compter les lignes.

**Objectifs :**
- Compter avec COUNT(*)
- Compter une colonne avec COUNT(colonne)

---

## 1. COUNT(*)

### Definition

`COUNT(*)` compte le nombre total de lignes.

**Syntaxe :**
```sql
SELECT COUNT(*) AS nom_alias
FROM table;
```

### Exemple 1 : COUNT(*)

**Question :** Compter le nombre total de lycees.

**Requete :**
```sql
SELECT COUNT(*) AS total_lycees
FROM lycees;
```

**Explication :**
- `COUNT(*)` : compte toutes les lignes

**Resultat :** Nombre total de lycees.

### Exemple 2 : COUNT avec WHERE

**Question :** Compter les etudiants du lycee 1.

**Requete :**
```sql
SELECT COUNT(*) AS nb_etudiants_lycee1
FROM etudiants
WHERE id_lycee = 1;
```

**Explication :**
- `COUNT(*)` : compte les lignes
- `WHERE id_lycee = 1` : filtre par lycee

**Resultat :** Nombre d'etudiants du lycee 1.

---

## 2. COUNT(colonne)

### Definition

`COUNT(colonne)` compte les valeurs non-NULL.

**Syntaxe :**
```sql
SELECT COUNT(colonne) AS nom_alias
FROM table;
```

### Exemple 1 : COUNT(colonne)

**Question :** Compter les cours du semestre 1.

**Requete :**
```sql
SELECT COUNT(*) AS nb_cours_semestre1
FROM cours
WHERE semestre = 1;
```

**Explication :**
- Compte les cours du semestre 1

**Resultat :** Nombre de cours au semestre 1.

---

## Exercices

### Exercice 1.12 (4 questions)

1. Compte le nombre total de lycees.
2. Compte les etudiants du lycee 1.
3. Compte les cours du semestre 1.
4. Compte les etudiants nes en 2003.

---

## Navigation

- [Retour au SOMMAIRE](../SOMMAIRE.md)
- [Cours precedent : WHERE AND](05_niveau1_05_WHERE_AND.md)
- [Cours suivant : Test Niveau 1](07_niveau1_TEST.md)

---

**Prochain cours :** Test recapitulatif Niveau 1
