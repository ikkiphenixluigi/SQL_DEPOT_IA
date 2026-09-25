# Niveau 3 - SUM et LIMIT

## Navigation

- [Retour au SOMMAIRE](../SOMMAIRE.md)
- [Cours precedent : COUNT avec JOIN](19_niveau3_03_COUNT_JOIN.md)
- [Cours suivant : HAVING](21_niveau3_05_HAVING.md)

---

## Introduction

Ce cours presente SUM et LIMIT.

**Objectifs :**
- Additionner avec SUM
- Limiter avec LIMIT

---

## 1. SUM (somme)

### Definition

`SUM` additionne les valeurs.

**Syntaxe :**
```sql
SUM(colonne)
```

### Exemple 1 : SUM + GROUP BY

**Question :** Calculer le total des places par etage.

**Requete :**
```sql
SELECT etage, SUM(nb_places) AS total_places
FROM salles
GROUP BY etage;
```

**Explication :**
- `GROUP BY etage` : groupe par etage
- `SUM(nb_places)` : total par groupe

**Resultat :** Total des places par etage.

---

## 2. LIMIT

### Definition

`LIMIT` limite le nombre de resultats.

**Syntaxe :**
```sql
SELECT colonnes
FROM table
ORDER BY colonne DESC
LIMIT N;
```

### Exemple 1 : LIMIT simple

**Question :** Afficher les 10 etudiants avec le plus d'inscriptions.

**Requete :**
```sql
SELECT e.nom, e.prenom, COUNT(i.id_inscription) AS nb_inscriptions
FROM etudiants e
JOIN inscriptions i ON e.id_etudiant = i.id_etudiant
GROUP BY e.id_etudiant, e.nom, e.prenom
ORDER BY nb_inscriptions DESC
LIMIT 10;
```

**Explication :**
- `ORDER BY ... DESC` : trie decroissant
- `LIMIT 10` : garde les 10 premiers

**Resultat :** Top 10 des etudiants.

---

## Exercices

### Exercice 3.6 - SUM par etage (4 questions)

1. Calcule le total des places par etage.
2. Calcule le total des credits par semestre.
3. Calcule le total des coefficients par type d'evaluation.
4. Calcule le total des notes par cours.

### Exercice 3.7 - COUNT + LIMIT (5 questions)

1. Affiche les 10 etudiants avec le plus d'inscriptions.
2. Affiche les 5 cours avec le plus de seances.
3. Affiche les 3 lycees avec le plus d'etudiants.
4. Affiche les 5 enseignants avec le plus de cours.
5. Affiche les 10 etudiants avec la meilleure moyenne.

### Exercice 3.8 - Statistiques completes (5 questions)

1. Calcule les stats generales des notes (total, min, max, moyenne).
2. Calcule les stats par cours.
3. Calcule les stats par type d'evaluation.
4. Calcule les stats des cours par semestre.
5. Calcule les stats des etudiants par ville.

---

## Navigation

- [Retour au SOMMAIRE](../SOMMAIRE.md)
- [Cours precedent : COUNT avec JOIN](19_niveau3_03_COUNT_JOIN.md)
- [Cours suivant : HAVING](21_niveau3_05_HAVING.md)

---

**Prochain cours :** HAVING pour filtrer les groupes
