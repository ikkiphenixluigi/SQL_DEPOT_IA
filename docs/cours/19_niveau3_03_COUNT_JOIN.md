# Niveau 3 - COUNT avec JOIN

## Navigation

- [Retour au SOMMAIRE](../SOMMAIRE.md)
- [Cours precedent : AVG et GROUP BY](18_niveau3_02_AVG_GROUP_BY.md)
- [Cours suivant : SUM et LIMIT](20_niveau3_04_SUM_LIMIT.md)

---

## Introduction

Ce cours presente COUNT avec LEFT JOIN.

**Objectifs :**
- Joindre avec LEFT JOIN
- Compter avec COUNT

---

## 1. COUNT + LEFT JOIN

### Definition

`LEFT JOIN` garde toutes les lignes de la table de gauche.

**Syntaxe :**
```sql
SELECT table1.colonne, COUNT(table2.colonne)
FROM table1
LEFT JOIN table2 ON table1.id = table2.id
GROUP BY table1.id;
```

### Exemple 1 : COUNT + LEFT JOIN

**Question :** Compter les etudiants par lycee (meme zero).

**Requete :**
```sql
SELECT l.nom AS lycee, COUNT(e.id_etudiant) AS nb_etudiants
FROM lycees l
LEFT JOIN etudiants e ON l.id_lycee = e.id_lycee
GROUP BY l.id_lycee, l.nom;
```

**Explication :**
- `LEFT JOIN` : garde tous les lycees
- `COUNT(e.id_etudiant)` : compte les etudiants (NULL non compte)

**Resultat :** Tous les lycees avec leur nombre d'etudiants.

---

## Exercices

### Exercice 3.3 - COUNT + LEFT JOIN (4 questions)

1. Compte les etudiants par lycee (meme zero).
2. Compte les notes par cours (meme zero).
3. Compte les notes par type d'evaluation.
4. Compte les seances par salle (meme zero).

### Exercice 3.5 - COUNT seances (4 questions)

1. Compte les seances par cours.
2. Compte les seances par jour.
3. Compte les seances par salle.
4. Trie les cours par nombre de seances (decroissant).

---

## Navigation

- [Retour au SOMMAIRE](../SOMMAIRE.md)
- [Cours precedent : AVG et GROUP BY](18_niveau3_02_AVG_GROUP_BY.md)
- [Cours suivant : SUM et LIMIT](20_niveau3_04_SUM_LIMIT.md)

---

**Prochain cours :** SUM et LIMIT
