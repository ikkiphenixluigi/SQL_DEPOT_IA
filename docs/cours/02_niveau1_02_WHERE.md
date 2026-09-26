# Niveau 1 - WHERE

## Navigation

- [Retour au SOMMAIRE](../SOMMAIRE.md)
- [Cours precedent : SELECT et FROM](01_niveau1_01_SELECT_FROM.md)
- [Cours suivant : ORDER BY](03_niveau1_03_ORDER_BY.md)

---

## Introduction

Ce cours presente WHERE pour filtrer les resultats.

**Objectifs :**
- Filtrer avec = et !=
- Combiner avec AND, OR, NOT
- Utiliser IN, BETWEEN
- Comparer avec <, >, <=, >=
- Tester avec IS NULL

---

## 1. WHERE avec = et !=

### Definition

`WHERE` filtre les lignes selon une condition.

**Syntaxe :**
```sql
SELECT colonnes
FROM table
WHERE condition;
```

### Exemple 1 : WHERE avec egalite

**Question :** Afficher les etudiants de Paris.

**Requete :**
```sql
SELECT nom, prenom, ville
FROM etudiants
WHERE ville = 'Paris';
```

**Explication :**
- `WHERE ville = 'Paris'` : filtre par ville

**Resultat :** Etudiants parisiens.

### Exemple 2 : WHERE avec !=

**Question :** Afficher les etudiants NON de Paris.

**Requete :**
```sql
SELECT nom, prenom, ville
FROM etudiants
WHERE ville != 'Paris';
```

**Explication :**
- `WHERE ville != 'Paris'` : tous sauf Paris

**Resultat :** Etudiants qui ne sont pas de Paris.

---

## 2. WHERE avec AND, OR, NOT

### Definition

- `AND` : les deux conditions doivent etre vraies
- `OR` : au moins une condition doit etre vraie
- `NOT` : inverse la condition

### Exemple 1 : WHERE avec AND

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

### Exemple 2 : WHERE avec OR

**Question :** Afficher les etudiants de Paris OU Lyon.

**Requete :**
```sql
SELECT nom, prenom, ville
FROM etudiants
WHERE ville = 'Paris' OR ville = 'Lyon';
```

**Explication :**
- `ville = 'Paris'` OU `ville = 'Lyon'`

**Resultat :** Etudiants de Paris et de Lyon.

### Exemple 3 : WHERE avec NOT

**Question :** Afficher les cours PAS du semestre 1.

**Requete :**
```sql
SELECT code_cours, nom_cours, semestre
FROM cours
WHERE NOT semestre = 1;
```

**Explication :**
- `NOT semestre = 1` : inverse la condition

**Resultat :** Cours des semestres 2, 3, etc.

---

## 3. WHERE avec IN et BETWEEN

### Definition

- `IN` : teste si une valeur est dans une liste
- `BETWEEN` : teste si une valeur est dans une plage

### Exemple 1 : WHERE avec IN

**Question :** Afficher les etudiants des lycees 1, 2 et 3.

**Requete :**
```sql
SELECT nom, prenom, id_lycee
FROM etudiants
WHERE id_lycee IN (1, 2, 3);
```

**Explication :**
- `IN (1, 2, 3)` : id_lycee est 1, 2 ou 3

**Resultat :** Etudiants de ces 3 lycees.

### Exemple 2 : WHERE avec BETWEEN

**Question :** Afficher les cours avec 4 a 6 credits.

**Requete :**
```sql
SELECT code_cours, nom_cours, credits
FROM cours
WHERE credits BETWEEN 4 AND 6;
```

**Explication :**
- `BETWEEN 4 AND 6` : de 4 a 6 inclus

**Resultat :** Cours avec 4, 5 ou 6 credits.

---

## 4. WHERE avec <, >, <=, >=

### Definition

Comparaisons numeriques.

### Exemple 1 : WHERE avec >

**Question :** Afficher les cours avec plus de 4 credits.

**Requete :**
```sql
SELECT code_cours, nom_cours, credits
FROM cours
WHERE credits > 4;
```

**Explication :**
- `> 4` : strictement superieur a 4

**Resultat :** Cours avec 5, 6, etc. credits.

### Exemple 2 : WHERE avec <=

**Question :** Afficher les salles avec 20 places ou moins.

**Requete :**
```sql
SELECT num_salle, nb_places
FROM salles
WHERE nb_places <= 20;
```

**Explication :**
- `<= 20` : inferieur ou egal a 20

**Resultat :** Salles avec 20 places ou moins.

---

## 5. WHERE avec IS NULL

### Definition

`IS NULL` teste si une valeur est nulle.

### Exemple 1 : WHERE avec IS NULL

**Question :** Afficher les etudiants SANS lycée.

**Requete :**
```sql
SELECT nom, prenom, id_lycee
FROM etudiants
WHERE id_lycee IS NULL;
```

**Explication :**
- `IS NULL` : valeur nulle

**Resultat :** Etudiants sans lycée.

---

## Exercices

### Exercice 1.4 (5 questions)

1. Affiche les etudiants de Paris.
2. Affiche les cours avec 4 credits.
3. Affiche les etudiants NON de Paris.
4. Affiche les cours avec != 4 credits.
5. Affiche les salles avec 20 places.

### Exercice 1.5 (5 questions)

1. Affiche les etudiants masculins inscrits en 2024.
2. Affiche les cours du semestre 2 ET 4 credits.
3. Affiche les etudiants de Paris OU Lyon.
4. Affiche les cours du semestre 1 OU 2.
5. Affiche les cours PAS du semestre 1.

### Exercice 1.6 (5 questions)

1. Affiche les etudiants des lycees 1, 2 et 3.
2. Affiche les cours avec 4 a 6 credits.
3. Affiche les salles avec 15 a 20 places.
4. Affiche les etudiants des lycees 5, 6, 7 et 8.
5. Affiche les cours avec 3, 4 ou 5 credits.

### Exercice 1.7 (5 questions)

1. Affiche les cours avec plus de 4 credits.
2. Affiche les salles avec 20 places ou moins.
3. Affiche les etudiants avec annee_inscription >= 2024.
4. Affiche les cours avec credits < 5.
5. Affiche les salles avec nb_places > 15.

### Exercice 1.8 (4 questions)

1. Affiche les etudiants SANS lycée.
2. Affiche les cours SANS enseignant.
3. Affiche les salles AVEC un lycée.
4. Affiche les etudiants AVEC un lycée.

---

## Navigation

- [Retour au SOMMAIRE](../SOMMAIRE.md)
- [Cours precedent : SELECT et FROM](01_niveau1_01_SELECT_FROM.md)
- [Cours suivant : ORDER BY](03_niveau1_03_ORDER_BY.md)

---

**Prochain cours :** ORDER BY (ASC, DESC, multiple)
