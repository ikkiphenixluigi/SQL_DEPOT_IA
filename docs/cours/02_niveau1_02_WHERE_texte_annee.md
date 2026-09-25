# Niveau 1 - WHERE avec texte et annee

## Navigation

- [Retour au SOMMAIRE](../SOMMAIRE.md)
- [Cours precedent : FROM et SELECT](01_niveau1_01_FROM_SELECT.md)
- [Cours suivant : WHERE plage et FK](03_niveau1_03_WHERE_plage_FK.md)

---

## Introduction

Ce cours presente WHERE avec du texte et des dates.

**Objectifs :**
- Filtrer avec WHERE et du texte
- Filtrer avec des annees (strftime)
- Utiliser = avec WHERE

---

## 1. WHERE avec texte

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

### Exemple 2 : WHERE avec LIKE

**Question :** Afficher les etudiants dont le nom commence par T.

**Requete :**
```sql
SELECT nom, prenom
FROM etudiants
WHERE nom LIKE 'T%';
```

**Explication :**
- `LIKE 'T%'` : commence par T

**Resultat :** Noms commencant par T.

---

## 2. WHERE avec annee (strftime)

### Definition

`strftime('%Y', date)` extrait l'annee d'une date.

**Syntaxe :**
```sql
WHERE strftime('%Y', date) = '2004';
```

### Exemple 1 : WHERE avec annee de naissance

**Question :** Afficher les etudiants nes en 2004.

**Requete :**
```sql
SELECT nom, prenom, date_naissance
FROM etudiants
WHERE strftime('%Y', date_naissance) = '2004';
```

**Explication :**
- `strftime('%Y', date_naissance)` : extrait l'annee
- `= '2004'` : filtre par annee

**Resultat :** Etudiants nes en 2004.

### Exemple 2 : WHERE avec mois

**Question :** Afficher les etudiants nes en janvier.

**Requete :**
```sql
SELECT nom, prenom, date_naissance
FROM etudiants
WHERE strftime('%m', date_naissance) = '01';
```

**Explication :**
- `strftime('%m', date_naissance)` : extrait le mois

**Resultat :** Etudiants nes en janvier.

---

## Exercices

### Exercice 1.4 - WHERE avec texte (5 questions)

1. Affiche les etudiants de Paris.
2. Affiche les lycees de Lyon.
3. Affiche les etudiants dont le nom commence par T.
4. Affiche les etudiants dont le nom finit par d.
5. Affiche les etudiants dont le nom contient an.

### Exercice 1.6 - WHERE avec egalite (5 questions)

1. Affiche les cours avec 4 credits.
2. Affiche les etudiants du lycee 3.
3. Affiche les enseignants du departement Informatique.
4. Affiche les salles avec 20 places.
5. Affiche les etudiants masculins.

### Exercice 1.7 - WHERE avec annee (4 questions)

1. Affiche les etudiants nes en 2004.
2. Affiche les etudiants nes en janvier.
3. Affiche les etudiants nes un mardi.
4. Affiche les etudiants nes en mars 2003.

---

## Navigation

- [Retour au SOMMAIRE](../SOMMAIRE.md)
- [Cours precedent : FROM et SELECT](01_niveau1_01_FROM_SELECT.md)
- [Cours suivant : WHERE plage et FK](03_niveau1_03_WHERE_plage_FK.md)

---

**Prochain cours :** WHERE avec plage et cles etrangeres
