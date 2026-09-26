# Niveau 1 - WHERE avec plage et cles etrangeres

## Navigation

- [Retour au SOMMAIRE](../SOMMAIRE.md)
- [Cours precedent : WHERE texte et annee](02_niveau1_02_WHERE_texte_annee.md)
- [Cours suivant : ORDER BY](04_niveau1_04_ORDER_BY.md)

---

## Introduction

Ce cours presente WHERE avec des plages et des cles etrangeres.

**Objectifs :**
- Utiliser BETWEEN pour les plages
- Utiliser <, >, <=, >=
- Filtrer avec des cles etrangeres (IN)

---

## 1. WHERE avec plage

### Definition

`BETWEEN` filtre une plage de valeurs.

**Syntaxe :**
```sql
WHERE colonne BETWEEN valeur1 AND valeur2;
```

### Exemple 1 : BETWEEN

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

### Exemple 2 : Avec < et >

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

---

## 2. WHERE avec cles etrangeres

### Definition

`IN` teste si une valeur est dans une liste.

**Syntaxe :**
```sql
WHERE colonne IN (valeur1, valeur2, ...);
```

### Exemple 1 : IN avec une liste

**Question :** Afficher les etudiants des lycees 5, 6 et 7.

**Requete :**
```sql
SELECT nom, prenom, id_lycee
FROM etudiants
WHERE id_lycee IN (5, 6, 7);
```

**Explication :**
- `IN (5, 6, 7)` : id_lycee est 5, 6 ou 7

**Resultat :** Etudiants de ces 3 lycees.

### Exemple 2 : IN avec une sous-requete

**Question :** Afficher les etudiants des lycees de Paris.

**Requete :**
```sql
SELECT nom, prenom
FROM etudiants
WHERE id_lycee IN (SELECT id_lycee FROM lycees WHERE ville = 'Paris');
```

**Explication :**
- Sous-requete : trouve les id_lycee de Paris
- `IN` : filtre les etudiants de ces lycees

**Resultat :** Etudiants parisiens.

---

## Exercices

### Exercice 1.8 (4 questions)

1. Affiche les cours avec 4 a 6 credits.
2. Affiche les salles avec 15 a 20 places.
3. Affiche les etudiants nes en 2003.
4. Affiche les cours avec plus de 4 credits.

### Exercice 1.10 (4 questions)

1. Affiche les etudiants du lycee 10.
2. Affiche les etudiants des lycees 5, 6 et 7.
3. Affiche les etudiants du lycee 3 nes en 2004.
4. Affiche les etudiants des lycees 1 a 10.

---

## Navigation

- [Retour au SOMMAIRE](../SOMMAIRE.md)
- [Cours precedent : WHERE texte et annee](02_niveau1_02_WHERE_texte_annee.md)
- [Cours suivant : ORDER BY](04_niveau1_04_ORDER_BY.md)

---

**Prochain cours :** ORDER BY pour trier
