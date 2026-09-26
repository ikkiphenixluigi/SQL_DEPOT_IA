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

## 2. GROUP BY avec plusieurs agregats

### Exemple 1 : COUNT, MIN, MAX, AVG

**Question :** Calculer les stats des notes par cours.

**Requete :**
```sql
SELECT id_cours,
    COUNT(*) AS nb_notes,
    MIN(note) AS note_min,
    MAX(note) AS note_max,
    AVG(note) AS moyenne
FROM notes
GROUP BY id_cours;
```

**Explication :**
- `GROUP BY id_cours` : groupe par cours
- Plusieurs agregats dans le SELECT

**Resultat :** Stats par cours.

---

## Exercices

### Exercice 3.6 (5 questions)

1. Compte les etudiants par ville.
2. Compte les cours par semestre.
3. Compte les enseignants par departement.
4. Compte les etudiants par annee d'inscription.
5. Compte les salles par etage.

### Exercice 3.7 (5 questions)

1. Calcule la moyenne des notes par cours.
2. Calcule la moyenne des notes par type d'evaluation.
3. Calcule la moyenne des credits par semestre.
4. Calcule l'age moyen par ville.
5. Calcule la moyenne des notes pour les evaluations avec coeff 2.

### Exercice 3.8 (5 questions)

1. Calcule les stats (total, min, max, moyenne) des notes par cours.
2. Calcule les stats des credits par semestre.
3. Calcule les stats des places par etage.
4. Calcule les stats des coefficients par type d'evaluation.
5. Calcule les stats completes des notes par type d'evaluation.

---

## Navigation

- [Retour au SOMMAIRE](../SOMMAIRE.md)
- [Cours precedent : Agregats](17_niveau3_01_agregats.md)
- [Cours suivant : HAVING + syntaxe](19_niveau3_03_HAVING_syntaxe.md)

---

**Prochain cours :** HAVING + syntaxe complete
