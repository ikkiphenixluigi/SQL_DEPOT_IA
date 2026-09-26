# Niveau 1 - SELECT et FROM

## Navigation

- [Retour au SOMMAIRE](../SOMMAIRE.md)
- [Cours suivant : WHERE](02_niveau1_02_WHERE.md)

---

## Introduction

Ce cours presente les bases de SELECT et FROM.

**Objectifs :**
- Choisir une table avec FROM
- Selectionner des colonnes avec SELECT
- Utiliser * pour toutes les colonnes

---

## 1. La clause FROM

### Definition

`FROM` indique la table dans laquelle recuperer les donnees.

**Syntaxe :**
```sql
FROM nom_table;
```

### Exemple 1 : FROM simple

**Question :** Afficher toutes les colonnes de la table etudiants.

**Requete :**
```sql
FROM etudiants;
```

**Explication :**
- `FROM etudiants` : on choisit la table etudiants
- Toutes les colonnes sont selectionnees

**Resultat :** Toutes les lignes et colonnes de etudiants.

### Exemple 2 : FROM avec SELECT

**Question :** Afficher tous les etudiants.

**Requete :**
```sql
SELECT * FROM etudiants;
```

**Explication :**
- `SELECT *` : toutes les colonnes
- `FROM etudiants` : table etudiants

**Resultat :** Liste complete des etudiants.

---

## 2. La clause SELECT

### Definition

`SELECT` precise les colonnes a afficher.

**Syntaxe :**
```sql
SELECT colonne1, colonne2, ... FROM table;
```

### Exemple 1 : SELECT avec colonnes

**Question :** Afficher le nom et le prenom des etudiants.

**Requete :**
```sql
SELECT nom, prenom FROM etudiants;
```

**Explication :**
- `SELECT nom, prenom` : seulement ces 2 colonnes
- `FROM etudiants` : table etudiants

**Resultat :** Liste des noms et prenoms.

### Exemple 2 : SELECT avec une colonne

**Question :** Afficher les emails des etudiants.

**Requete :**
```sql
SELECT email FROM etudiants;
```

**Explication :**
- `SELECT email` : une seule colonne

**Resultat :** Liste des emails.

### Exemple 3 : SELECT avec plusieurs colonnes

**Question :** Afficher le code, le nom et les credits des cours.

**Requete :**
```sql
SELECT code_cours, nom_cours, credits FROM cours;
```

**Explication :**
- `SELECT code_cours, nom_cours, credits` : 3 colonnes

**Resultat :** Liste des cours avec ces infos.

---

## Exercices

### Exercice 1.1 (4 questions)

1. Affiche toutes les colonnes de la table etudiants.
2. Affiche toutes les colonnes de la table enseignants.
3. Affiche toutes les colonnes de la table cours.
4. Affiche toutes les colonnes de la table salles.

### Exercice 1.2 (4 questions)

1. Affiche le nom et le prenom des etudiants.
2. Affiche le nom du cours et les credits.
3. Affiche le nom et la ville des lycees.
4. Affiche le nom, le prenom et le departement des enseignants.

### Exercice 1.3 (4 questions)

1. Affiche l'email des etudiants.
2. Affiche le code et le nom des cours.
3. Affiche le nom et le grade des enseignants.
4. Affiche l'etage et le numero de salle.

---

## Navigation

- [Retour au SOMMAIRE](../SOMMAIRE.md)
- [Cours suivant : WHERE](02_niveau1_02_WHERE.md)

---

**Prochain cours :** WHERE (TOUT en un)
