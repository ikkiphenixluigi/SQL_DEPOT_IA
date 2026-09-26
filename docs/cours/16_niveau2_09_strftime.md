# Niveau 2 - Fonctions date - strftime()

## Navigation

- [Retour au SOMMAIRE](../SOMMAIRE.md)
- [Cours precedent : CAST](15_niveau2_08_CAST.md)
- [Cours suivant : Calcul d'age](17_niveau2_10_age.md)

---

## Introduction

Ce cours presente strftime() pour manipuler les dates.

**Objectifs :**
- Extraire des parties de date
- Formater les dates

---

## 1. strftime() extraction

### Definition

`strftime` extrait des parties d'une date.

**Syntaxe :**
```sql
strftime('%Y', date) -- annee
strftime('%m', date) -- mois
strftime('%d', date) -- jour
strftime('%w', date) -- jour de la semaine
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

## Exercices

### Exercice 2.14 (4 questions)

1. Extrais l'annee de naissance.
2. Extrais le mois de naissance.
3. Extrais le jour de naissance.
4. Extrais le jour de la semaine de naissance.

### Exercice 2.15 (4 questions)

1. Affiche la date au format francais (jj/mm/aaaa).
2. Affiche "Ne le " suivi de la date au format francais.
3. Affiche l'annee et le mois (aaaa-mm).
4. Affiche le mois et l'annee (mm/aaaa).

---

## Navigation

- [Retour au SOMMAIRE](../SOMMAIRE.md)
- [Cours precedent : CAST](15_niveau2_08_CAST.md)
- [Cours suivant : Calcul d'age](17_niveau2_10_age.md)

---

**Prochain cours :** Calcul d'age (fonctions date)
