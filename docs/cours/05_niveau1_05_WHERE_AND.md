# Niveau 1 - WHERE avec AND

## Navigation

- [Retour au SOMMAIRE](../SOMMAIRE.md)
- [Cours precedent : ORDER BY](04_niveau1_04_ORDER_BY.md)
- [Cours suivant : COUNT simple](06_niveau1_06_COUNT.md)

---

## Introduction

Ce cours presente l'operateur logique AND pour combiner plusieurs conditions dans une clause WHERE.

**Objectifs :**
- Comprendre l'operateur AND
- Combiner plusieurs conditions
- Utiliser AND avec differents types de conditions

---

## 1. L'operateur AND

### Definition

L'operateur `AND` permet de combiner **plusieurs conditions** dans un WHERE.
Toutes les conditions doivent etre vraies pour qu'une ligne soit retournee.

**Syntaxe :**
```sql
SELECT colonnes FROM table 
WHERE condition1 AND condition2 AND condition3;
```

### Exemple 1 : Deux conditions simples

**Question :** Afficher les etudiants de sexe masculin nes en 2003.

**Requete :**
```sql
SELECT nom, prenom, sexe, date_naissance
FROM etudiants
WHERE sexe = 'Masculin'
  AND strftime('%Y', date_naissance) = '2003';
```

**Explication :**
- Deux conditions avec AND
- Les deux doivent etre vraies

**Resultat :** Seulement les etudiants masculins nes en 2003.

### Exemple 2 : Trois conditions

**Question :** Afficher les cours de semestre 1 avec 6 credits.

**Requete :**
```sql
SELECT code_cours, nom_cours, credits, semestre
FROM cours
WHERE semestre = 1
  AND credits = 6;
```

**Explication :**
- Deux conditions avec AND
- Semestre 1 ET 6 credits

**Resultat :** Cours qui satisfont les deux conditions.

### Exemple 3 : AND avec differentes colonnes

**Question :** Afficher les salles informatiques du 1er etage avec plus de 15 places.

**Requete :**
```sql
SELECT num_salle, etage, nb_places, salle_informatique
FROM salles
WHERE etage = 1
  AND salle_informatique = 'oui'
  AND nb_places > 15;
```

**Explication :**
- Trois conditions avec AND
- Toutes doivent etre vraies

**Resultat :** Salles du 1er etage, informatiques, avec > 15 places.

---

## 2. AND avec differents types de conditions

### Exemple 1 : Texte + Nombre

**Question :** Afficher les etudiants de Paris avec une inscription en 2024.

**Requete :**
```sql
SELECT nom, prenom, ville, annee_inscription
FROM etudiants
WHERE ville = 'Paris'
  AND annee_inscription = 2024;
```

**Explication :**
- Condition texte (ville)
- Condition nombre (annee)

**Resultat :** Etudiants parisiens inscrits en 2024.

### Exemple 2 : Texte + Date

**Question :** Afficher les etudiants de Lyon nes en avril 2003.

**Requete :**
```sql
SELECT nom, prenom, ville, date_naissance
FROM etudiants
WHERE ville = 'Lyon'
  AND strftime('%Y', date_naissance) = '2003'
  AND strftime('%m', date_naissance) = '04';
```

**Explication :**
- Trois conditions : ville + annee + mois

**Resultat :** Etudiants de Lyon nes en avril 2003.

### Exemple 3 : Cle etrangere + Autre

**Question :** Afficher les etudiants du lycee 5 de sexe feminin.

**Requete :**
```sql
SELECT nom, prenom, id_lycee, sexe
FROM etudiants
WHERE id_lycee = 5
  AND sexe = 'Feminin';
```

**Explication :**
- Cle etrangere + condition texte

**Resultat :** Etudiantes du lycee 5.

---

## Exercices

### Exercice 1.11 - WHERE avec AND (5 questions)

1. Affiche les etudiants de sexe masculin inscrits en 2024.
2. Affiche les cours du semestre 2 avec 4 credits.
3. Affiche les lycees de Paris avec plus de 15 places (si applicable).
4. Affiche les etudiants nes en 2003 et habitant a Paris.
5. Affiche les salles informatiques du 2eme etage.

---

## Navigation

- [Retour au SOMMAIRE](../SOMMAIRE.md)
- [Cours precedent : ORDER BY](04_niveau1_04_ORDER_BY.md)
- [Cours suivant : COUNT simple](06_niveau1_06_COUNT.md)

---

**Prochain cours :** COUNT simple
