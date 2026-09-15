# Niveau 3 - COUNT avec LEFT JOIN

## Navigation

- [Retour au SOMMAIRE](../SOMMAIRE.md)
- [Cours precedent : AVG avec GROUP BY](18_niveau3_02_AVG_GROUP_BY.md)
- [Cours suivant : SUM et LIMIT](20_niveau3_04_SUM_LIMIT.md)

---

## Introduction

Ce cours presente l'utilisation de COUNT avec LEFT JOIN pour compter meme les groupes vides.

**Objectifs :**
- Comprendre LEFT JOIN
- Utiliser COUNT avec LEFT JOIN
- Compter les relations nulles

---

## 1. LEFT JOIN (rappel)

### Definition

`LEFT JOIN` retourne toutes les lignes de la table de gauche, meme si aucune correspondance n'existe dans la table de droite.

**Syntaxe :**
```sql
SELECT *
FROM table_gauche
LEFT JOIN table_droite ON condition;
```

### Exemple 1 : LEFT JOIN simple

**Question :** Afficher tous les lycees avec leurs etudiants.

**Requete :**
```sql
SELECT l.nom AS lycee, e.nom AS etudiant
FROM lycees l
LEFT JOIN etudiants e ON l.id_lycee = e.id_lycee;
```

**Explication :**
- Tous les lycees sont affiches
- Les lycees sans etudiants ont NULL dans la colonne etudiant

**Resultat :** Tous les lycees, avec ou sans etudiants.

---

## 2. COUNT avec LEFT JOIN

### Definition

`COUNT` avec `LEFT JOIN` permet de compter meme les groupes avec zero elements.

### Exemple 1 : Compter les etudiants par lycee

**Question :** Compter le nombre d'etudiants par lycee, meme ceux sans etudiants.

**Requete :**
```sql
SELECT l.nom AS lycee, COUNT(e.id_etudiant) AS nb_etudiants
FROM lycees l
LEFT JOIN etudiants e ON l.id_lycee = e.id_lycee
GROUP BY l.id_lycee, l.nom;
```

**Explication :**
- `LEFT JOIN` : garde tous les lycees
- `COUNT(e.id_etudiant)` : compte seulement les etudiants (NULL n'est pas compte)
- Les lycees sans etudiants ont 0

**Resultat :** Tous les lycees avec leur nombre d'etudiants (0 si aucun).

### Exemple 2 : Compter les cours par semestre

**Question :** Compter les cours par semestre.

**Requete :**
```sql
SELECT semestre, COUNT(*) AS nb_cours
FROM cours
GROUP BY semestre;
```

**Explication :**
- GROUP BY simple
- COUNT de tous les cours

**Resultat :** Nombre de cours par semestre.

### Exemple 3 : Compter les inscriptions par etudiant

**Question :** Compter le nombre d'inscriptions par etudiant.

**Requete :**
```sql
SELECT e.nom, e.prenom, COUNT(i.id_inscription) AS nb_inscriptions
FROM etudiants e
LEFT JOIN inscriptions i ON e.id_etudiant = i.id_etudiant
GROUP BY e.id_etudiant, e.nom, e.prenom;
```

**Explication :**
- LEFT JOIN pour garder tous les etudiants
- COUNT des inscriptions
- Les etudiants sans inscriptions ont 0

**Resultat :** Tous les etudiants avec leur nombre d'inscriptions.

---

## Exercices

### Exercice 3.3 - COUNT + LEFT JOIN (4 questions)

1. Compte le nombre d'etudiants par lycee (meme les lycees vides).
2. Compte le nombre d'inscriptions par cours.
3. Compte le nombre de notes par evaluation.
4. Compte le nombre de seances par salle.

### Exercice 3.5 - COUNT seances (4 questions)

1. Compte le nombre de seances par cours.
2. Compte le nombre de seances par jour.
3. Compte le nombre de seances par salle.
4. Affiche les cours avec leur nombre de seances, tries par nombre decroissant.

---

## Navigation

- [Retour au SOMMAIRE](../SOMMAIRE.md)
- [Cours precedent : AVG avec GROUP BY](18_niveau3_02_AVG_GROUP_BY.md)
- [Cours suivant : SUM et LIMIT](20_niveau3_04_SUM_LIMIT.md)

---

**Prochain cours :** SUM et LIMIT
