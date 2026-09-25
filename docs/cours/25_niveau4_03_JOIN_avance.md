# Niveau 4 - JOIN avance avec DISTINCT et GROUP BY

## Navigation

- [Retour au SOMMAIRE](../SOMMAIRE.md)
- [Cours precedent : JOIN multiple](24_niveau4_02_JOIN_multiple.md)
- [Cours suivant : Test Niveau 4](26_niveau4_TEST.md)

---

## Introduction

Ce cours presente les jointures avancees avec DISTINCT et GROUP BY.

**Objectifs :**
- Utiliser DISTINCT avec JOIN
- Combiner JOIN et GROUP BY
- LEFT JOIN avance

---

## 1. DISTINCT avec JOIN

### Definition

`DISTINCT` permet d'eliminer les doublons dans les resultats.

**Syntaxe :**
```sql
SELECT DISTINCT colonnes
FROM table1
JOIN table2 ON condition;
```

### Exemple 1 : DISTINCT simple

**Question :** Afficher les cours uniques avec des notes.

**Requete :**
```sql
SELECT DISTINCT c.nom_cours
FROM cours c
INNER JOIN notes n ON c.id_cours = n.id_cours;
```

**Explication :**
- DISTINCT elimine les doublons
- Un cours n'apparait qu'une fois meme s'il a plusieurs notes

**Resultat :** Liste des cours sans doublons.

---

## 2. JOIN avec GROUP BY

### Definition

On peut combiner JOIN et GROUP BY pour grouper les resultats de jointures.

### Exemple 1 : COUNT avec JOIN

**Question :** Compter le nombre de notes par cours.

**Requete :**
```sql
SELECT c.nom_cours, COUNT(n.note) AS nb_notes
FROM cours c
INNER JOIN notes n ON c.id_cours = n.id_cours
GROUP BY c.nom_cours;
```

**Explication :**
- JOIN pour relier cours et notes
- GROUP BY pour grouper par cours
- COUNT pour compter les notes

**Resultat :** Nombre de notes par cours.

---

## 3. LEFT JOIN avance

### Definition

`LEFT JOIN` retourne toutes les lignes de la table de gauche, meme sans correspondance.

### Exemple 1 : LEFT JOIN avec NULL

**Question :** Afficher tous les lycees avec leurs etudiants.

**Requete :**
```sql
SELECT l.nom AS lycee, e.nom AS etudiant
FROM lycees l
LEFT JOIN etudiants e ON l.id_lycee = e.id_lycee;
```

**Explication :**
- LEFT JOIN garde tous les lycees
- Les lycees sans etudiants ont NULL dans la colonne etudiant

**Resultat :** Tous les lycees, avec ou sans etudiants.

---

## Exercices

### Exercice 4.6 - JOIN avec DISTINCT (4 questions)

1. Affiche les cours uniques qui ont des notes.
2. Affiche les combinaisons uniques etudiant/cours.
3. Affiche les lycees uniques avec des etudiants.
4. Affiche les enseignants uniques avec des cours.

### Exercice 4.7 - JOIN + GROUP BY (5 questions)

1. Compte le nombre de notes par cours.
2. Calcule la moyenne des notes par cours.
3. Calcule le total des credits par enseignant.
4. Compte le nombre d'etudiants par lycee.
5. Calcule la moyenne d'age par ville.

### Exercice 4.8 - LEFT JOIN avance (5 questions)

1. Affiche tous les lycees avec leurs etudiants.
2. Compte les etudiants par lycee (meme zero).
3. Trouve les cours sans notes.
4. Trouve les etudiants sans inscriptions.
5. Affiche tous les enseignants avec leurs cours.

---

## Navigation

- [Retour au SOMMAIRE](../SOMMAIRE.md)
- [Cours precedent : JOIN multiple](24_niveau4_02_JOIN_multiple.md)
- [Cours suivant : Test Niveau 4](26_niveau4_TEST.md)

---

**Prochain cours :** Test recapitulatif Niveau 4
