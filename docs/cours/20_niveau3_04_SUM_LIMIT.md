# Niveau 3 - SUM et LIMIT

## Navigation

- [Retour au SOMMAIRE](../SOMMAIRE.md)
- [Cours precedent : COUNT avec LEFT JOIN](19_niveau3_03_COUNT_JOIN.md)
- [Cours suivant : HAVING](21_niveau3_05_HAVING.md)

---

## Introduction

Ce cours presente la fonction SUM (somme) et la clause LIMIT pour limiter les resultats.

**Objectifs :**
- Utiliser SUM pour calculer des sommes
- Utiliser LIMIT pour limiter les resultats
- Combiner SUM avec GROUP BY

---

## 1. La fonction SUM (somme)

### Definition

La fonction `SUM()` calcule la somme d'une colonne numerique.

**Syntaxe :**
```sql
SUM(colonne)
```

### Exemple 1 : SUM simple

**Question :** Calculer le total des credits de tous les cours.

**Requete :**
```sql
SELECT SUM(credits) AS total_credits
FROM cours;
```

**Explication :**
- `SUM(credits)` : additionne tous les credits
- Retourne une seule valeur

**Resultat :** Total des credits.

### Exemple 2 : SUM avec WHERE

**Question :** Calculer le total des credits pour le semestre 1.

**Requete :**
```sql
SELECT SUM(credits) AS total_credits_s1
FROM cours
WHERE semestre = 1;
```

**Explication :**
- WHERE filtre avant le calcul
- SUM seulement sur les cours du semestre 1

**Resultat :** Total des credits du semestre 1.

---

## 2. SUM avec GROUP BY

### Definition

On peut combiner `SUM()` avec `GROUP BY` pour calculer des sommes par groupe.

### Exemple 1 : Somme par semestre

**Question :** Calculer le total des credits par semestre.

**Requete :**
```sql
SELECT semestre, SUM(credits) AS total_credits
FROM cours
GROUP BY semestre;
```

**Explication :**
- `GROUP BY semestre` : regroupe par semestre
- `SUM(credits)` : somme des credits dans chaque groupe

**Resultat :** Total des credits par semestre.

### Exemple 2 : Somme avec JOIN

**Question :** Calculer le total des coefficients par cours.

**Requete :**
```sql
SELECT c.nom_cours, SUM(n.coeff) AS total_coeff
FROM cours c
JOIN notes n ON c.id_cours = n.id_cours
GROUP BY c.nom_cours;
```

**Explication :**
- JOIN entre cours et notes
- SUM des coefficients
- GROUP BY sur le nom du cours

**Resultat :** Total des coefficients par cours.

---

## 3. La clause LIMIT

### Definition

La clause `LIMIT` permet de limiter le nombre de lignes retournees.

**Syntaxe :**
```sql
SELECT colonnes FROM table LIMIT nombre;
```

### Exemple 1 : LIMIT simple

**Question :** Afficher les 5 premiers etudiants.

**Requete :**
```sql
SELECT nom, prenom
FROM etudiants
LIMIT 5;
```

**Explication :**
- `LIMIT 5` : retourne seulement 5 lignes

**Resultat :** 5 etudiants.

### Exemple 2 : LIMIT avec ORDER BY

**Question :** Afficher les 5 etudiants avec les meilleures notes.

**Requete :**
```sql
SELECT e.nom, e.prenom, AVG(n.note) AS moyenne
FROM etudiants e
JOIN notes n ON e.id_etudiant = n.id_etudiant
GROUP BY e.id_etudiant, e.nom, e.prenom
ORDER BY moyenne DESC
LIMIT 5;
```

**Explication :**
- ORDER BY pour trier par moyenne
- LIMIT pour garder seulement les 5 premiers

**Resultat :** Top 5 des etudiants.

### Exemple 3 : LIMIT avec OFFSET

**Question :** Afficher les etudiants 6 a 10.

**Requete :**
```sql
SELECT nom, prenom
FROM etudiants
ORDER BY nom
LIMIT 5 OFFSET 5;
```

**Explication :**
- `LIMIT 5` : 5 lignes
- `OFFSET 5` : saute les 5 premieres

**Resultat :** Etudiants 6 a 10.

---

## Exercices

### Exercice 3.6 - SUM par etage (4 questions)

1. Calcule le total des places par etage de salles.
2. Calcule le total des credits par semestre.
3. Calcule le total des coefficients par type d'evaluation.
4. Calcule la somme des notes par cours.

### Exercice 3.7 - COUNT + LIMIT (5 questions)

1. Affiche les 10 etudiants avec le plus d'inscriptions.
2. Affiche les 5 cours avec le plus de seances.
3. Affiche les 3 lycees avec le plus d'etudiants.
4. Affiche les 5 enseignants avec le plus de cours.
5. Affiche le top 10 des meilleures moyennes.

---

## Navigation

- [Retour au SOMMAIRE](../SOMMAIRE.md)
- [Cours precedent : COUNT avec LEFT JOIN](19_niveau3_03_COUNT_JOIN.md)
- [Cours suivant : HAVING](21_niveau3_05_HAVING.md)

---

**Prochain cours :** HAVING avec AVG et COUNT
