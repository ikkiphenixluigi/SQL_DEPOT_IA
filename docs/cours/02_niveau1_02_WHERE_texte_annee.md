# Niveau 1 - WHERE avec texte, egalite, annee

## Navigation

- [Retour au SOMMAIRE](../SOMMAIRE.md)
- [Cours precedent : FROM et SELECT](01_niveau1_01_FROM_SELECT.md)
- [Cours suivant : WHERE avec plage et FK](03_niveau1_03_WHERE_plage_FK.md)

---

## Introduction

Ce cours presente la clause `WHERE` pour filtrer les resultats d'une requate.
On apprend a filtrer avec du texte, des egalites et des dates (annees).

**Objectifs :**
- Utiliser `WHERE` pour filtrer des lignes
- Filtrer avec des conditions sur du texte
- Filtrer avec des egalites (=)
- Filtrer avec des dates et des annees

---

## 1. La clause WHERE avec texte

### Definition

La clause `WHERE` permet de **filtrer les lignes** selon une condition.
Seules les lignes qui satisfont la condition sont retournees.

**Syntaxe :**
```sql
SELECT colonnes FROM table WHERE condition;
```

### Operateurs de comparaison pour le texte

- `=` : egal a
- `<>` ou `!=` : different de
- `LIKE` : correspond a un motif (avec % et _)

### Exemple 1 : Filtrer avec egalite texte

**Question :** Afficher les etudiants qui habitent a Paris.

**Requete :**
```sql
SELECT nom, prenom, ville
FROM etudiants
WHERE ville = 'Paris';
```

**Explication :**
- `WHERE ville = 'Paris'` : garde seulement les lignes ou `ville` vaut 'Paris'
- Les textes s'ecrivent entre guillemets simples `' '`

**Resultat :** Seulement les etudiants parisiens.

### Exemple 2 : Filtrer avec difference

**Question :** Afficher les lycees qui ne sont PAS a Paris.

**Requete :**
```sql
SELECT nom, ville
FROM lycees
WHERE ville <> 'Paris';
```

**Explication :**
- `WHERE ville <> 'Paris'` : garde les lignes ou `ville` est different de 'Paris'
- On peut aussi utiliser `!=` au lieu de `<>`

**Resultat :** Tous les lycees sauf ceux de Paris.

### Exemple 3 : Filtrer avec LIKE (recherche de motif)

**Question :** Afficher les etudiants dont le nom commence par 'B'.

**Requete :**
```sql
SELECT nom, prenom
FROM etudiants
WHERE nom LIKE 'B%';
```

**Explication :**
- `LIKE 'B%'` : le nom commence par 'B'
- `%` signifie "n'importe quelle suite de caracteres"

**Resultat :** Bernard, Blanc, Bertrand, etc.

**Autres exemples de LIKE :**
- `LIKE '%in'` : finit par 'in' (ex: Martin)
- `LIKE '%an%'` : contient 'an' (ex: Bernard, Laurent)
- `LIKE 'B%'` : commence par 'B'

---

## 2. La clause WHERE avec egalite

### Definition

L'egalite `=` est l'operateur le plus courant pour filtrer.
Il fonctionne avec les textes, les nombres et les dates.

### Exemple 1 : Egalite avec un nombre

**Question :** Afficher les cours qui ont 6 credits.

**Requete :**
```sql
SELECT code_cours, nom_cours, credits
FROM cours
WHERE credits = 6;
```

**Explication :**
- `WHERE credits = 6` : garde les cours avec exactement 6 credits
- Pour les nombres, pas de guillemets

**Resultat :** Les cours avec 6 credits (ex: INFO101, ALGO201).

### Exemple 2 : Egalite avec une cle etrangere

**Question :** Afficher les etudiants du lycee numero 1.

**Requete :**
```sql
SELECT nom, prenom, id_lycee
FROM etudiants
WHERE id_lycee = 1;
```

**Explication :**
- `WHERE id_lycee = 1` : etudiants inscrits au lycee 1
- `id_lycee` est une cle etrangere vers `lycees(id_lycee)`

**Resultat :** Tous les etudiants du lycee 1.

### Exemple 3 : Combinaison de conditions

**Question :** Afficher les etudiants de sexe feminin.

**Requete :**
```sql
SELECT nom, prenom, sexe
FROM etudiants
WHERE sexe = 'Feminin';
```

**Explication :**
- `WHERE sexe = 'Feminin'` : filtre par sexe
- Texte entre guillemets

**Resultat :** Seulement les etudiantes.

---

## 3. La clause WHERE avec des dates et annees

### Definition

Pour filtrer par date, on utilise les memes operateurs.
Les dates s'ecrivent au format `'AAAA-MM-JJ'` (ex: `'2003-04-08'`).

### Exemple 1 : Egalite avec une date complete

**Question :** Afficher les etudiants nes le 8 avril 2003.

**Requete :**
```sql
SELECT nom, prenom, date_naissance
FROM etudiants
WHERE date_naissance = '2003-04-08';
```

**Explication :**
- `WHERE date_naissance = '2003-04-08'` : date exacte
- Format : `'AAAA-MM-JJ'`

**Resultat :** Les etudiants nes ce jour-la.

### Exemple 2 : Filtrer avec une annee (fonction strftime)

**Question :** Afficher les etudiants nes en 2003.

**Requete :**
```sql
SELECT nom, prenom, date_naissance
FROM etudiants
WHERE strftime('%Y', date_naissance) = '2003';
```

**Explication :**
- `strftime('%Y', date_naissance)` : extrait l'annee de la date
- `'%Y'` signifie "annee sur 4 chiffres"
- On compare avec `'2003'` (texte)

**Resultat :** Tous les etudiants nes en 2003.

### Exemple 3 : Filtrer avec un mois

**Question :** Afficher les etudiants nes en avril.

**Requete :**
```sql
SELECT nom, prenom, date_naissance
FROM etudiants
WHERE strftime('%m', date_naissance) = '04';
```

**Explication :**
- `strftime('%m', date_naissance)` : extrait le mois (01 a 12)
- `'04'` = avril

**Resultat :** Les etudiants nes en avril.

### Exemple 4 : Combinaison annee et mois

**Question :** Afficher les etudiants nes en avril 2003.

**Requete :**
```sql
SELECT nom, prenom, date_naissance
FROM etudiants
WHERE strftime('%Y', date_naissance) = '2003'
  AND strftime('%m', date_naissance) = '04';
```

**Explication :**
- Deux conditions avec `AND`
- Annee 2003 ET mois 04 (avril)

**Resultat :** Etudiants nes en avril 2003.

---

## 4. Fonctions strftime() pour les dates

### Definition

`strftime()` est une fonction SQLite pour extraire des parties d'une date.

**Syntaxe :**
```sql
strftime(format, colonne_date)
```

### Formats courants

- `'%Y'` : annee sur 4 chiffres (ex: 2003)
- `'%m'` : mois sur 2 chiffres (01 a 12)
- `'%d'` : jour sur 2 chiffres (01 a 31)
- `'%w'` : jour de la semaine (0 = dimanche, 1 = lundi, ...)

### Exemple 1 : Extraire l'annee

```sql
SELECT nom, strftime('%Y', date_naissance) AS annee
FROM etudiants;
```

**Resultat :** Nom et annee de naissance.

### Exemple 2 : Extraire le mois

```sql
SELECT nom, strftime('%m', date_naissance) AS mois
FROM etudiants;
```

**Resultat :** Nom et mois de naissance.

### Exemple 3 : Filtrer par jour de la semaine

**Question :** Afficher les etudiants nes un lundi (jour 1).

**Requete :**
```sql
SELECT nom, prenom, date_naissance
FROM etudiants
WHERE strftime('%w', date_naissance) = '1';
```

**Resultat :** Etudiants nes un lundi.

---

## Exercices

### Exercice 1.4 - WHERE avec texte (5 questions)

1. Affiche les etudiants qui habitent a Paris.
2. Affiche les lycees qui sont a Lyon.
3. Affiche les etudiants dont le nom commence par 'T'.
4. Affiche les etudiants dont le nom finit par 'd'.
5. Affiche les etudiants dont le nom contient 'an'.

### Exercice 1.6 - WHERE avec egalite (5 questions)

1. Affiche les cours qui ont 4 credits.
2. Affiche les etudiants du lycee numero 3.
3. Affiche les enseignants du departement 'Informatique'.
4. Affiche les salles qui ont exactement 20 places.
5. Affiche les etudiants de sexe 'Masculin'.

### Exercice 1.7 - WHERE avec annee (4 questions)

1. Affiche les etudiants nes en 2004.
2. Affiche les etudiants nes en janvier (mois 01).
3. Affiche les etudiants nes un mardi (jour 2).
4. Affiche les etudiants nes en mars 2003.

---

## Navigation

- [Retour au SOMMAIRE](../SOMMAIRE.md)
- [Cours precedent : FROM et SELECT](01_niveau1_01_FROM_SELECT.md)
- [Cours suivant : WHERE avec plage et FK](03_niveau1_03_WHERE_plage_FK.md)

---

**Prochain cours :** WHERE avec plage et cle etrangere
