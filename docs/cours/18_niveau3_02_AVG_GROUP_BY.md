# Niveau 3 - AVG et GROUP BY

## Navigation

- [Retour au SOMMAIRE](../SOMMAIRE.md)
- [Cours precedent : COUNT et GROUP BY](17_niveau3_01_COUNT_GROUP_BY.md)
- [Cours suivant : COUNT avec JOIN](19_niveau3_03_COUNT_JOIN.md)

---

## Introduction

Ce cours presente AVG avec GROUP BY, ainsi que MIN et MAX.

**Objectifs :**
- Calculer des moyennes avec AVG
- Grouper avec GROUP BY
- Utiliser MIN et MAX

---

## 1. AVG (moyenne)

### Definition

`AVG` calcule la moyenne.

**Syntaxe :**
```sql
AVG(colonne)
```

### Exemple 1 : AVG + GROUP BY

**Question :** Calculer la moyenne des notes par cours.

**Requete :**
```sql
SELECT id_cours, AVG(note) AS moyenne
FROM notes
GROUP BY id_cours;
```

**Explication :**
- `GROUP BY id_cours` : groupe par cours
- `AVG(note)` : moyenne par groupe

**Resultat :** Moyenne par cours.

---

## 2. MIN et MAX

### Definition

`MIN` et `MAX` trouvent les valeurs minimales et maximales.

**Syntaxe :**
```sql
MIN(colonne), MAX(colonne)
```

### Exemple 1 : MIN et MAX

**Question :** Trouver les notes minimales et maximales.

**Requete :**
```sql
SELECT MIN(note) AS note_min, MAX(note) AS note_max
FROM notes;
```

**Explication :**
- `MIN(note)` : note la plus basse
- `MAX(note)` : note la plus haute

**Resultat :** Notes min et max.

---

## Exercices

### Exercice 3.2 (5 questions)

1. Calcule la moyenne des notes par cours.
2. Calcule la moyenne des notes par type d'evaluation.
3. Calcule la moyenne des credits par semestre.
4. Calcule l'age moyen par ville.
5. Calcule la moyenne des notes pour les evaluations avec coeff 2.

### Exercice 3.2.bis (5 questions)

1. Trouve les notes minimales et maximales.
2. Calcule les stats (min, max, moyenne) par cours.
3. Trouve le cours avec la note maximale.
4. Calcule les stats par type d'evaluation.
5. Calcule les stats des credits par semestre.

### Exercice 3.4 (5 questions)

1. Calcule la moyenne par etudiant.
2. Affiche les etudiants avec leur moyenne (trier par moyenne decroissante).
3. Calcule la moyenne generale.
4. Calcule la moyenne par annee d'inscription.
5. Affiche le top 5 des etudiants.

---

## Navigation

- [Retour au SOMMAIRE](../SOMMAIRE.md)
- [Cours precedent : COUNT et GROUP BY](17_niveau3_01_COUNT_GROUP_BY.md)
- [Cours suivant : COUNT avec JOIN](19_niveau3_03_COUNT_JOIN.md)

---

**Prochain cours :** COUNT avec LEFT JOIN
