# Niveau 3 - HAVING + Syntaxe complete

## Navigation

- [Retour au SOMMAIRE](../SOMMAIRE.md)
- [Cours precedent : GROUP BY](18_niveau3_02_GROUP_BY.md)
- [Cours suivant : Test NIVEAU 3](20_niveau3_TEST.md)

---

## Introduction

Ce cours presente HAVING pour filtrer les groupes et la syntaxe complete SQL.

**Objectifs :**
- Filtrer les groupes avec HAVING
- Connaitre la syntaxe complete SELECT-FROM-WHERE-GROUP BY-HAVING-ORDER BY-LIMIT

---

## 1. HAVING

### Definition

`HAVING` filtre les groupes (apres GROUP BY).

**Syntaxe :**
```sql
SELECT colonne, agregat
FROM table
GROUP BY colonne
HAVING condition;
```

### Exemple 1 : HAVING + COUNT

**Question :** Trouver les villes avec au moins deux etudiants.

**Requete :**
```sql
SELECT ville, COUNT(*) AS nb_etudiants
FROM etudiants
GROUP BY ville
HAVING COUNT(*) >= 2;
```

**Explication :**
- `GROUP BY ville` : groupe par ville
- `HAVING COUNT(*) >= 2` : garde les villes avec au moins deux etudiants

**Resultat :** Villes avec au moins deux etudiants.

### Exemple 2 : HAVING + AVG

**Question :** Trouver les types d'evaluation avec une moyenne superieure a 10.

**Requete :**
```sql
SELECT type_evaluation, AVG(note) AS moyenne
FROM notes
GROUP BY type_evaluation
HAVING AVG(note) > 10;
```

**Explication :**
- `GROUP BY type_evaluation` : groupe par type d'evaluation sans jointure
- `HAVING AVG(note) > 10` : filtre les groupes

**Resultat :** Types d'evaluation avec moyenne superieure a 10.

---

## 2. Syntaxe complete SQL

### Ordre des clauses

```sql
SELECT attributs, calculs, agregats
FROM table
WHERE conditions
GROUP BY attributs
HAVING conditions
ORDER BY attributs
LIMIT nombre;
```

### Ordre d'execution

1. **FROM** (table)
2. **WHERE** (filtrage des lignes)
3. **GROUP BY** (groupement)
4. **HAVING** (filtrage des groupes)
5. **SELECT** (selection)
6. **ORDER BY** (tri)
7. **LIMIT** (limitation)

### Exemple complet

**Question :** Afficher les villes avec plus de 5 etudiants, triees par nombre d'etudiants.

**Requete :**
```sql
SELECT ville, COUNT(*) AS nb_etudiants
FROM etudiants
WHERE ville IS NOT NULL
GROUP BY ville
HAVING COUNT(*) > 5
ORDER BY nb_etudiants DESC
LIMIT 10;
```

**Explication :**
1. FROM etudiants
2. WHERE ville IS NOT NULL
3. GROUP BY ville
4. HAVING COUNT(*) > 5
5. SELECT ville, COUNT(*)
6. ORDER BY nb_etudiants DESC
7. LIMIT 10

**Resultat :** Villes avec plus de 5 etudiants (Paris dans les donnees fournies).

---

## Exercices

### Exercice 3.9 (5 questions)

1. Quelles villes comptent au moins deux etudiants ? Affiche la ville et son effectif, de l'effectif le plus eleve au plus faible.
2. Quels semestres proposent au moins deux cours ? Affiche le semestre, le nombre de cours et le total de leurs credits.
3. Parmi les salles utilisees pour les seances, quels identifiants de salle apparaissent dans au moins trois seances ? Affiche chaque identifiant et son nombre de seances, sans chercher le numero de salle dans une autre table.
4. Quels statuts d'inscription representent plus de cinq inscriptions ? Affiche le statut et son effectif decroissant.
5. En ne considerant que les etudiants inscrits en 2024, quelles villes comptent au moins deux de ces etudiants ? Affiche les villes retenues et leurs effectifs.

### Exercice 3.10 (5 questions)

1. Quels semestres ont des cours dont le nombre moyen de credits atteint au moins 4 ? Affiche le semestre et cette moyenne, arrondie a une decimale.
2. Parmi les controles continus et examens finaux, quels types d'evaluation ont une note moyenne superieure a 10 ? Affiche le type, l'effectif et la moyenne arrondie a deux decimales.
3. Quels etages presentent une capacite moyenne d'au moins 16 places par salle ? Affiche l'etage, le nombre de salles et cette moyenne.
4. En ne conservant que les cours du premier semestre, quels identifiants d'enseignant sont associes a un total d'au moins 20 heures theoriques ? Affiche l'identifiant et la somme des heures, sans chercher le nom de l'enseignant.
5. Pour chaque coefficient d'evaluation, calcule la moyenne des notes ; ne garde que les coefficients dont la moyenne atteint au moins 10. Affiche aussi le nombre de notes concernees.

### Exercice 3.11 (4 questions)

1. Pour preparer l'accueil des etudiants, affiche les cinq villes comptant le plus d'etudiants parmi ceux inscrits en 2024, a condition que chaque ville retenue en compte au moins deux. Affiche la ville et l'effectif ; departage les egalites par ville croissante.
2. Pour chaque semestre, calcule le nombre de cours et le total de credits des seuls cours valant au moins 4 credits. Ne conserve que les semestres reunissant au moins deux de ces cours ; classe-les par total de credits decroissant.
3. Parmi les seances qui se deroulent du lundi au vendredi, affiche les identifiants des salles utilisees au moins trois fois. Indique le nombre de seances par salle et classe-les de la plus utilisee a la moins utilisee.
4. En ne retenant que les evaluations de coefficient 2, affiche chaque type d'evaluation avec son effectif et sa moyenne arrondie a deux decimales. Garde les types ayant au moins dix evaluations et une moyenne d'au moins 10 ; trie par moyenne decroissante.

---

## Navigation

- [Retour au SOMMAIRE](../SOMMAIRE.md)
- [Cours precedent : GROUP BY](18_niveau3_02_GROUP_BY.md)
- [Cours suivant : Test NIVEAU 3](20_niveau3_TEST.md)

---

**Prochain cours :** Test recapitulatif NIVEAU 3