# Niveau 3 - GROUP BY

## Navigation

- [Retour au SOMMAIRE](../SOMMAIRE.md)
- [Cours precedent : Agregats](17_niveau3_01_agregats.md)
- [Cours suivant : HAVING + syntaxe](19_niveau3_03_HAVING_syntaxe.md)

---

## Introduction

Ce cours presente GROUP BY pour grouper les resultats.

**Objectifs :**
- Grouper avec GROUP BY
- Combiner avec les agregats

---

## 1. GROUP BY

### Definition

`GROUP BY` groupe les lignes par valeur.

**Syntaxe :**
```sql
SELECT colonne, agregat
FROM table
GROUP BY colonne;
```

### Exemple 1 : GROUP BY simple

**Question :** Compter les etudiants par ville.

**Requete :**
```sql
SELECT ville, COUNT(*) AS nb_etudiants
FROM etudiants
GROUP BY ville;
```

**Explication :**
- `GROUP BY ville` : groupe par ville
- `COUNT(*)` : compte par groupe

**Resultat :** Nombre d'etudiants par ville.

### Exemple 2 : GROUP BY avec AVG

**Question :** Calculer la moyenne des notes par type d'evaluation.

**Requete :**
```sql
SELECT type_evaluation, AVG(note) AS moyenne
FROM notes
GROUP BY type_evaluation;
```

**Explication :**
- `GROUP BY type_evaluation` : groupe les notes par type d'evaluation
- `AVG(note)` : moyenne par groupe

**Resultat :** Moyenne par type d'evaluation, sans jointure.

---

## 2. GROUP BY avec plusieurs agregats

### Exemple 1 : COUNT, MIN, MAX, AVG

**Question :** Calculer les stats des notes par type d'evaluation.

**Requete :**
```sql
SELECT type_evaluation,
    COUNT(*) AS nb_notes,
    MIN(note) AS note_min,
    MAX(note) AS note_max,
    AVG(note) AS moyenne
FROM notes
GROUP BY type_evaluation;
```

**Explication :**
- `GROUP BY type_evaluation` : groupe par type d'evaluation
- Plusieurs agregats dans le SELECT

**Resultat :** Stats par type d'evaluation.

---

## Exercices

### Exercice 3.6 (5 questions)

1. L'administration veut voir dans quelles villes resident les etudiants. Affiche chaque ville avec son nombre d'etudiants, de la plus representee a la moins representee.
2. Affiche, pour chacune des annees d'inscription presentes, le nombre d'etudiants inscrits. Classe les annees de la plus recente a la plus ancienne.
3. Prepare un tableau donnant, pour chaque semestre, le nombre de cours et le total des credits correspondants. Classe les semestres dans l'ordre croissant.
4. Combien de salles trouve-t-on a chaque etage, et combien de places offrent-elles au total ? Classe les etages dans l'ordre croissant.
5. Pour chaque statut d'inscription, indique le nombre de lignes concernees. Classe les statuts par effectif decroissant, puis par nom de statut croissant.

### Exercice 3.7 (5 questions)

1. Les examens finaux sont-ils notes comme les controles continus ? Affiche, pour chaque type d'evaluation, son nombre de notes et sa moyenne arrondie a deux decimales.
2. Pour chaque semestre, indique combien de cours sont proposes et leur nombre moyen de credits, arrondi a une decimale.
3. Compare les capacites des differents etages : affiche, pour chacun, le nombre de salles et la capacite moyenne arrondie a une decimale.
4. Compare les notes selon leur coefficient : affiche chaque coefficient, le nombre d'evaluations et la note moyenne arrondie a deux decimales.
5. En ne retenant que les notes d'au moins 10, affiche pour chaque type d'evaluation le nombre de notes conservees et leur moyenne arrondie a deux decimales.

### Exercice 3.8 (5 questions)

1. Etablis, pour chaque type d'evaluation, un bilan comprenant le nombre de notes, la note minimale, la maximale et la moyenne arrondie a deux decimales.
2. Etablis, pour chaque semestre, le nombre de cours, le total de leurs credits, ainsi que le minimum et le maximum de credits.
3. Pour chaque etage, affiche le nombre de salles, le nombre total de places et la capacite moyenne arrondie a une decimale.
4. Pour chaque statut d'inscription, affiche le nombre d'inscriptions et la date d'inscription la plus ancienne et la plus recente.
5. Pour chaque annee d'inscription des etudiants, affiche l'effectif et les dates de naissance la plus ancienne et la plus recente.

---

## Navigation

- [Retour au SOMMAIRE](../SOMMAIRE.md)
- [Cours precedent : Agregats](17_niveau3_01_agregats.md)
- [Cours suivant : HAVING + syntaxe](19_niveau3_03_HAVING_syntaxe.md)

---

**Prochain cours :** HAVING + syntaxe complete