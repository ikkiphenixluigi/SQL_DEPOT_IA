# Niveau 5 - Sous-requetes comparatives et dans SELECT/WHERE

## Navigation

- [Retour au SOMMAIRE](../SOMMAIRE.md)
- [Cours precedent : Sous-requetes IN](27_niveau5_01_sous_requetes_IN.md)
- [Cours suivant : Sous-requetes correlees](29_niveau5_03_sous_requetes_corellees.md)

---

## Introduction

Ce cours presente les sous-requetes comparatives et leur utilisation dans SELECT et WHERE.

**Objectifs :**
- Utiliser des operateurs de comparaison avec des sous-requetes
- Mettre des sous-requetes dans SELECT
- Mettre des sous-requetes dans WHERE

---

## 1. Sous-requetes comparatives

### Definition

Les operateurs de comparaison (`=`, `>`, `<`, `>=`, `<=`) peuvent etre utilises avec des sous-requetes.

**Syntaxe :**
```sql
SELECT colonnes
FROM table
WHERE colonne > (SELECT colonne FROM table2);
```

### Exemple 1 : Superieur a la moyenne

**Question :** Afficher les notes superieures a la moyenne.

**Requete :**
```sql
SELECT note
FROM notes
WHERE note > (SELECT AVG(note) FROM notes);
```

**Explication :**
- Sous-requete : calcule la moyenne generale
- WHERE filtre les notes superieures a cette moyenne

**Resultat :** Notes au-dessus de la moyenne.

---

## 2. Sous-requetes dans SELECT

### Definition

Une sous-requete peut etre utilisee dans la clause SELECT pour calculer des valeurs.

**Syntaxe :**
```sql
SELECT 
    colonne,
    (SELECT fonction(colonne) FROM table2) AS calcul
FROM table1;
```

### Exemple 1 : Moyenne dans SELECT

**Question :** Afficher les cours avec la moyenne generale.

**Requete :**
```sql
SELECT 
    nom_cours,
    (SELECT AVG(note) FROM notes) AS moyenne_generale
FROM cours;
```

**Explication :**
- Sous-requete dans SELECT : calcule la moyenne generale
- Affichee pour chaque ligne

**Resultat :** Tous les cours avec la meme moyenne generale.

---

## 3. Sous-requetes dans WHERE

### Definition

Une sous-requete dans WHERE permet de filtrer selon un calcul dynamique.

### Exemple 1 : WHERE avec AVG

**Question :** Afficher les etudiants avec une moyenne superieure a 10.

**Requete :**
```sql
SELECT nom, prenom
FROM etudiants
WHERE id_etudiant IN (
    SELECT id_etudiant
    FROM inscriptions i
    JOIN notes n ON i.id_inscription = n.id_inscription
    GROUP BY id_etudiant
    HAVING AVG(n.note) > 10
);
```

**Explication :**
- Sous-requete avec JOIN, GROUP BY et HAVING
- Calcule la moyenne par etudiant
- WHERE filtre ceux avec moyenne > 10

**Resultat :** Etudiants avec moyenne > 10.

---

## Exercices

### Exercice 5.3 (5 questions)

1. Trouve les notes superieures a la moyenne.
2. Trouve les cours avec plus de credits que la moyenne.
3. Trouve les etudiants plus jeunes que la moyenne d'age.
4. Trouve les salles avec plus de places que la moyenne.
5. Trouve les enseignants avec plus de cours que la moyenne.

### Exercice 5.4 (5 questions)

1. Affiche les cours avec la moyenne generale des notes.
2. Affiche les etudiants avec le nombre total d'inscriptions.
3. Affiche les lycees avec le nombre total d'etudiants.
4. Affiche les notes avec la moyenne du cours.
5. Affiche les salles avec le nombre total de seances.

### Exercice 5.5 (5 questions)

1. Trouve les etudiants avec une moyenne superieure a 10.
2. Trouve les cours avec plus de 5 notes.
3. Trouve les lycees avec plus de 5 etudiants.
4. Trouve les enseignants avec plus de 2 cours.
5. Trouve les salles avec plus de 3 seances.

---

## Navigation

- [Retour au SOMMAIRE](../SOMMAIRE.md)
- [Cours precedent : Sous-requetes IN](27_niveau5_01_sous_requetes_IN.md)
- [Cours suivant : Sous-requetes correlees](29_niveau5_03_sous_requetes_corellees.md)

---

**Prochain cours :** Sous-requetes correlees
