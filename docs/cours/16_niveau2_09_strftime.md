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

1. Affiche le nom, le prenom, la date de naissance et l'annee de naissance des etudiants nes en 2004. Trie-les par date de naissance croissante.
2. Affiche le nom, le prenom, la date de naissance et le mois de naissance des etudiants nes en avril, toutes annees confondues. Trie-les par nom croissant.
3. Affiche le nom, le prenom et le jour de la semaine de naissance, sous forme de chiffre, pour les etudiants nes le `2003-01-01`. Trie-les par nom croissant.
4. Affiche le nom, le prenom et le mois de naissance des etudiants dont le prenom commence par M et qui sont nes en 2003. Trie-les par prenom croissant.

### Exercice 2.15 (4 questions)

1. Affiche le nom, le prenom, la date de naissance d'origine et cette meme date au format `JJ/MM/AAAA` pour les etudiants habitant a Paris. Trie-les par nom croissant.
2. Affiche, pour les etudiants nes en 2004, le nom suivi du texte ` : ne(e) le ` et de la date de naissance au format `JJ/MM/AAAA`. Trie-les par nom croissant.
3. Affiche le nom, le prenom et la date de naissance au format `AAAA-MM` pour les etudiants nes en octobre. Trie-les par nom croissant.
4. Affiche le nom, le prenom et la date de naissance au format `MM/AAAA` pour les etudiants inscrits en 2025 et nes en avril. Trie-les par nom croissant.

---

## Navigation

- [Retour au SOMMAIRE](../SOMMAIRE.md)
- [Cours precedent : CAST](15_niveau2_08_CAST.md)
- [Cours suivant : Calcul d'age](17_niveau2_10_age.md)

---

**Prochain cours :** Calcul d'age (fonctions date)