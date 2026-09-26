# Niveau 2 - UPPER, LOWER, LENGTH

## Navigation

- [Retour au SOMMAIRE](../SOMMAIRE.md)
- [Cours precedent : POWER, SQRT](10_niveau2_03_POWER_SQRT.md)
- [Cours suivant : SUBSTR, REPLACE](12_niveau2_05_SUBSTR_REPLACE.md)

---

## Introduction

Ce cours presente UPPER, LOWER et LENGTH.

**Objectifs :**
- Mettre en majuscule avec UPPER
- Mettre en minuscule avec LOWER
- Calculer la longueur avec LENGTH

---

## 1. UPPER (majuscule)

### Definition

`UPPER` met un texte en majuscule.

**Syntaxe :**
```sql
UPPER(texte)
```

### Exemple 1 : UPPER simple

**Question :** Mettre les noms en majuscule.

**Requete :**
```sql
SELECT nom, UPPER(nom) AS nom_maj
FROM etudiants;
```

**Explication :**
- `UPPER(nom)` : met le nom en majuscule

**Resultat :** Noms en majuscule.

---

## 2. LOWER (minuscule)

### Definition

`LOWER` met un texte en minuscule.

**Syntaxe :**
```sql
LOWER(texte)
```

### Exemple 1 : LOWER simple

**Question :** Mettre les prenoms en minuscule.

**Requete :**
```sql
SELECT prenom, LOWER(prenom) AS prenom_min
FROM etudiants;
```

**Explication :**
- `LOWER(prenom)` : met le prenom en minuscule

**Resultat :** Prenoms en minuscule.

---

## 3. LENGTH (longueur)

### Definition

`LENGTH` calcule la longueur d'un texte.

**Syntaxe :**
```sql
LENGTH(texte)
```

### Exemple 1 : LENGTH simple

**Question :** Calculer la longueur des noms.

**Requete :**
```sql
SELECT nom, LENGTH(nom) AS longueur
FROM etudiants;
```

**Explication :**
- `LENGTH(nom)` : nombre de caracteres

**Resultat :** Noms avec leur longueur.

---

## Exercices

### Exercice 2.6 (4 questions)

1. Mets les noms en majuscule.
2. Mets les prenoms en minuscule.
3. Mets les emails en majuscule.
4. Affiche les noms en majuscule et en minuscule.

### Exercice 2.7 (4 questions)

1. Calcule la longueur des noms.
2. Calcule la longueur des emails.
3. Trouve les noms avec plus de 8 lettres.
4. Affiche la longueur des noms et prenoms.

---

## Navigation

- [Retour au SOMMAIRE](../SOMMAIRE.md)
- [Cours precedent : POWER, SQRT](10_niveau2_03_POWER_SQRT.md)
- [Cours suivant : SUBSTR, REPLACE](12_niveau2_05_SUBSTR_REPLACE.md)

---

**Prochain cours :** SUBSTR et REPLACE
