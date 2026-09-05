# Niveau 1 - FROM et SELECT - Bases

## Navigation

- [Retour au SOMMAIRE](../SOMMAIRE.md)
- [Cours precedent : Introduction](00_intro.md)
- [Cours suivant : WHERE avec texte](02_niveau1_02_WHERE_texte_annee.md)

---

## Introduction

Ce premier cours pratique presente les bases de la requatation SQL avec les clauses `SELECT` et `FROM`.
Ces deux clauses sont indispensables pour toute requate SQL.

**Objectifs :**
- Comprendre le role de `SELECT` et `FROM`
- Selectionner toutes les colonnes d'une table
- Selectionner des colonnes specifiques
- Utiliser des alias pour les colonnes

---

## 1. La clause FROM - choix de table

### Definition

La clause `FROM` indique **quelle table** on veut interroger.
C'est la premiere chose a preciser dans une requate.

**Syntaxe :**
```sql
SELECT * FROM nom_table;
```

### Exemple 1 : Voir toutes les donnees d'une table

**Question :** Afficher tous les lycees.

**Requete :**
```sql
SELECT * FROM lycees;
```

**Explication :**
- `SELECT *` : selectionne toutes les colonnes
- `FROM lycees` : dans la table `lycees`

**Resultat :** Toutes les lignes et colonnes de la table `lycees`.

### Exemple 2 : Choisir une autre table

**Question :** Afficher tous les cours.

**Requete :**
```sql
SELECT * FROM cours;
```

**Resultat :** Toutes les lignes et colonnes de la table `cours`.

### Tables disponibles

Dans notre base `gestion_universitaire`, tu peux utiliser :
- `lycees`
- `etudiants`
- `enseignants`
- `cours`
- `seances`
- `salles`
- `inscriptions`
- `notes`

---

## 2. La clause SELECT - selection de colonnes

### Definition

La clause `SELECT` permet de choisir **quelles colonnes** on veut afficher.
Au lieu de `*` (toutes), on peut lister les colonnes desirees.

**Syntaxe :**
```sql
SELECT colonne1, colonne2, colonne3 FROM nom_table;
```

### Exemple 1 : Selectionner quelques colonnes

**Question :** Afficher seulement le nom et la ville des lycees.

**Requete :**
```sql
SELECT nom, ville FROM lycees;
```

**Resultat :**
```
nom                       | ville
--------------------------+------------
Lycee Louis-le-Grand      | Paris
Lycee du Parc             | Lyon
Lycee Thiers              | Marseille
...
```

### Exemple 2 : Selectionner dans une autre table

**Question :** Afficher le nom, prenom et email des etudiants.

**Requete :**
```sql
SELECT nom, prenom, email FROM etudiants;
```

**Resultat :** Seulement ces 3 colonnes pour tous les etudiants.

### Exemple 3 : Une seule colonne

**Question :** Afficher seulement les noms des lycees.

**Requete :**
```sql
SELECT nom FROM lycees;
```

**Resultat :** Une seule colonne avec tous les noms.

---

## 3. SELECT simple avec alias

### Definition

Un **alias** permet de renommer une colonne dans le resultat.
C'est utile pour afficher des noms plus clairs ou plus courts.

**Syntaxe :**
```sql
SELECT nom_colonne AS alias FROM nom_table;
```

### Exemple 1 : Renommer une colonne

**Question :** Afficher le nom des lycees avec un titre clair.

**Requete :**
```sql
SELECT nom AS "Nom du lycee" FROM lycees;
```

**Resultat :**
```
Nom du lycee
--------------------------
Lycee Louis-le-Grand
Lycee du Parc
...
```

### Exemple 2 : Plusieurs alias

**Question :** Afficher les informations des etudiants avec des titres clairs.

**Requete :**
```sql
SELECT 
    nom AS "Nom",
    prenom AS "Prenom",
    email AS "Adresse email"
FROM etudiants;
```

**Resultat :**
```
Nom      | Prenom | Adresse email
---------+--------+---------------------------
Bernard  | Thomas | thomas.bernard@univ.fr
Thomas   | Emma   | emma.thomas@univ.fr
...
```

---

## Exercices

### Exercice 1.1 - FROM - choix de table (4 questions)

1. Affiche toutes les donnees de la table `etudiants`.
2. Affiche toutes les donnees de la table `enseignants`.
3. Affiche toutes les donnees de la table `cours`.
4. Affiche toutes les donnees de la table `salles`.

### Exercice 1.2 - FROM - selection de colonnes (4 questions)

1. Affiche seulement les colonnes `nom` et `prenom` de la table `etudiants`.
2. Affiche les colonnes `nom_cours` et `credits` de la table `cours`.
3. Affiche les colonnes `nom` et `ville` de la table `lycees`.
4. Affiche les colonnes `nom`, `prenom` et `departement` de la table `enseignants`.

### Exercice 1.3 - SELECT simple (4 questions)

1. Affiche seulement la colonne `email` de la table `etudiants`.
2. Affiche les colonnes `code_cours` et `nom_cours` de la table `cours`.
3. Affiche les colonnes `nom` et `grade` de la table `enseignants`.
4. Affiche les colonnes `etage` et `num_salle` de la table `salles`.

---

## Navigation

- [Retour au SOMMAIRE](../SOMMAIRE.md)
- [Cours precedent : Introduction](00_intro.md)
- [Cours suivant : WHERE avec texte](02_niveau1_02_WHERE_texte_annee.md)

---

**Prochain cours :** WHERE avec texte, egalite, annee
