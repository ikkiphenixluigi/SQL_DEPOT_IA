# Niveau 2 - Fonctions date - Calcul d'age

## Navigation

- [Retour au SOMMAIRE](../SOMMAIRE.md)
- [Cours precedent : strftime()](16_niveau2_09_strftime.md)
- [Cours suivant : CASE WHEN](18_niveau2_11_CASE_WHEN.md)

---

## Introduction

Ce cours presente le calcul d'une difference entre annees avec strftime().

**Objectifs :**
- Calculer une difference entre annees a partir d'une date de naissance
- Utiliser CAST pour les calculs

---

## 1. Age approximatif

### Definition

Soustraire l'annee de naissance de l'annee de reference donne un age approximatif : le resultat peut depasser l'age exact d'un an si l'anniversaire n'est pas encore passe. Dans ce cours, on fixe la date de reference au `2026-09-28` pour obtenir les memes resultats lors de chaque execution.

**Syntaxe :**
```sql
CAST(strftime('%Y', '2026-09-28') AS INTEGER) - CAST(strftime('%Y', date_naissance) AS INTEGER)
```

### Exemple 1 : Age approximatif

**Question :** Calculer l'age approximatif des etudiants au 28/09/2026.

**Requete :**
```sql
SELECT nom, date_naissance,
    CAST(strftime('%Y', '2026-09-28') AS INTEGER) - CAST(strftime('%Y', date_naissance) AS INTEGER) AS age_approximatif
FROM etudiants;
```

**Explication :**
- `strftime('%Y', '2026-09-28')` : annee de reference fixe
- `strftime('%Y', date_naissance)` : annee de naissance
- La soustraction ne verifie pas si l'anniversaire est deja passe

**Resultat :** Differences entre annees, et non ages exacts.

### Exemple 2 : Age approximatif avec filtre

**Question :** Trouver les etudiants dont l'age approximatif au 28/09/2026 atteint 23 ans.

**Requete :**
```sql
SELECT nom, date_naissance,
    CAST(strftime('%Y', '2026-09-28') AS INTEGER) - CAST(strftime('%Y', date_naissance) AS INTEGER) AS age_approximatif
FROM etudiants
WHERE CAST(strftime('%Y', '2026-09-28') AS INTEGER) - CAST(strftime('%Y', date_naissance) AS INTEGER) >= 23;
```

**Explication :**
- WHERE filtre sur la difference entre annees

**Resultat :** Etudiants nes en 2003 dans les donnees fournies.

---

## Exercices

### Exercice 2.16 (5 questions)

1. Affiche le nom, le prenom, la date de naissance et l'age approximatif au 28/09/2026 des etudiants habitant a Paris. Trie-les par nom croissant.
2. Affiche le nom, le prenom et l'age approximatif au 28/09/2026 des etudiants nes en 2003. Trie-les par nom croissant et limite le resultat a cinq lignes.
3. Affiche le nom, le prenom, l'annee de naissance et l'age approximatif au 28/09/2026 des etudiants inscrits en 2025 et nes en 2004. Trie-les par nom croissant.
4. Affiche le nom, le prenom et l'age approximatif au 28/09/2026 des etudiants dont le nom commence par B. Trie-les par age approximatif decroissant, puis par nom croissant.
5. Affiche le nom, le prenom, la date de naissance et l'age approximatif au 28/09/2026 des cinq etudiants les plus jeunes selon leur date de naissance. En cas d'egalite sur la date, trie par nom croissant.

---

## Navigation

- [Retour au SOMMAIRE](../SOMMAIRE.md)
- [Cours precedent : strftime()](16_niveau2_09_strftime.md)
- [Cours suivant : CASE WHEN](18_niveau2_11_CASE_WHEN.md)

---

**Prochain cours :** CASE WHEN (fonctions avancees)