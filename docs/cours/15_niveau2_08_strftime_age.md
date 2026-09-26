# Niveau 2 - strftime() et calcul d'age

## Navigation

- [Retour au SOMMAIRE](../SOMMAIRE.md)
- [Cours precedent : LIKE](14_niveau2_07_LIKE.md)
- [Cours suivant : Test Niveau 2](16_niveau2_TEST.md)

---

## Introduction

Ce cours presente strftime() et le calcul d'age.

**Objectifs :**
- Extraire des dates avec strftime()
- Formater des dates
- Calculer l'age

---

## 1. strftime() extraction

### Definition

`strftime` extrait des parties d'une date.

**Syntaxe :**
```sql
strftime('%Y', date) -- annee
strftime('%m', date) -- mois
strftime('%d', date) -- jour
```

### Exemple 1 : Extraire l'annee

**Question :** Extraire l'annee de naissance.

**Requete :**
```sql
SELECT nom, strftime('%Y', date_naissance) AS annee
FROM etudiants;
```

**Explication :**
- `strftime('%Y', date_naissance)` : extrait l'annee

**Resultat :** Annes de naissance.

### Exemple 2 : Extraire le mois

**Question :** Extraire le mois de naissance.

**Requete :**
```sql
SELECT nom, strftime('%m', date_naissance) AS mois
FROM etudiants;
```

**Explication :**
- `strftime('%m', date_naissance)` : extrait le mois

**Resultat :** Mois de naissance.

---

## 2. strftime() formatage

### Definition

`strftime` formate une date.

**Syntaxe :**
```sql
strftime('%d/%m/%Y', date)
```

### Exemple 1 : Format francais

**Question :** Afficher la date au format francais.

**Requete :**
```sql
SELECT nom, strftime('%d/%m/%Y', date_naissance) AS date_fr
FROM etudiants;
```

**Explication :**
- `'%d/%m/%Y'` : jour/mois/annee

**Resultat :** Dates au format francais.

---

## 3. Calcul d'age

### Definition

On calcule l'age en soustrayant l'annee de naissance de l'annee actuelle.

**Syntaxe :**
```sql
CAST(strftime('%Y', 'now') AS INTEGER) - CAST(strftime('%Y', date_naissance) AS INTEGER)
```

### Exemple 1 : Age simple

**Question :** Calculer l'age des etudiants.

**Requete :**
```sql
SELECT nom, date_naissance,
    CAST(strftime('%Y', 'now') AS INTEGER) - CAST(strftime('%Y', date_naissance) AS INTEGER) AS age
FROM etudiants;
```

**Explication :**
- `strftime('%Y', 'now')` : annee actuelle
- `strftime('%Y', date_naissance)` : annee de naissance
- Difference : age

**Resultat :** Ages des etudiants.

---

## Exercices

### Exercice 2.13 (4 questions)

1. Extrais l'annee de naissance.
2. Extrais le mois de naissance.
3. Extrais le jour de naissance.
4. Extrais le jour de la semaine de naissance.

### Exercice 2.14 (4 questions)

1. Affiche la date au format francais (jj/mm/aaaa).
2. Affiche "Ne le " suivi de la date au format francais.
3. Affiche l'annee et le mois (aaaa-mm).
4. Affiche le mois et l'annee (mm/aaaa).

### Exercice 2.15 (5 questions)

1. Calcule l'age des etudiants.
2. Trouve les etudiants de 22 ans ou plus.
3. Calcule l'age moyen des etudiants.
4. Compte les etudiants par age.
5. Trouve l'etudiant le plus age.

---

## Navigation

- [Retour au SOMMAIRE](../SOMMAIRE.md)
- [Cours precedent : LIKE](14_niveau2_07_LIKE.md)
- [Cours suivant : Test Niveau 2](16_niveau2_TEST.md)

---

**Prochain cours :** Test recapitulatif Niveau 2
