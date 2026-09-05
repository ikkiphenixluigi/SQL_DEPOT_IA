# Introduction aux SGBDR et concepts de base

## Navigation

- [Retour au SOMMAIRE](../SOMMAIRE.md)
- [Niveau 1 - Cours suivant ->](01_niveau1_01_FROM_SELECT.md)

---

## Introduction

Ce cours presente les concepts fondamentaux des bases de donnees relationnelles et du langage SQL.
Il constitue le prerequis indispensable avant d'aborder les requates SQL dans les niveaux suivants.

---

## 1. Qu'est-ce qu'une base de donnees ?

### Definition

Une **base de donnees** est un ensemble structure d'informations stockees de maniere organisee.
Elle permet de :

- Stocker des donnees de facon durable
- Organiser les donnees de maniere logique
- Retrouver facilement les informations
- Modifier et mettre a jour les donnees
- Partager les donnees entre plusieurs utilisateurs

### Exemple concret

Dans notre projet `gestion_universitaire`, la base de donnees contient :
- La liste des lycees
- La liste des etudiants
- La liste des cours
- Les notes des etudiants
- Les inscriptions aux cours

---

## 2. SGBD vs SGBDR

### SGBD (Systeme de Gestion de Base de Donnees)

Un **SGBD** est un logiciel qui permet de :
- Creer une base de donnees
- Stocker des donnees
- Recuperer des donnees
- Modifier des donnees
- Administrer la base

**Exemples de SGBD :** MySQL, PostgreSQL, Oracle, SQLite, SQL Server

### SGBDR (Systeme de Gestion de Base de Donnees Relationnel)

Un **SGBDR** est un SGBD qui organise les donnees sous forme de **tables** reliees entre elles.
Le modele relationnel a ete invente par Edgar F. Codd en 1970.

**Principes cles du SGBDR :**
- Les donnees sont dans des **tables** (lignes et colonnes)
- Les tables peuvent etre **reliees** entre elles
- On utilise **SQL** pour manipuler les donnees

Notre base `gestion_universitaire` est un SGBDR car elle utilise SQLite (un SGBDR).

---

## 3. Table, ligne, colonne

### Table

Une **table** est un ensemble de donnees organisees en lignes et colonnes.
Chaque table represente un **type d'objet** ou un **concept**.

**Exemple :** La table `etudiants` contient tous les etudiants.

### Colonne (ou champ, attribut)

Une **colonne** represente une **caracteristique** de l'objet.
Chaque colonne a un **nom** et un **type de donnee**.

**Exemple dans `etudiants` :**
- `nom` (texte)
- `prenom` (texte)
- `date_naissance` (date)
- `email` (texte)

### Ligne (ou enregistrement, tuple)

Une **ligne** represente un **objet individuel**.
C'est une instance complete avec des valeurs pour chaque colonne.

**Exemple :** Une ligne = un etudiant precis (ex: Thomas Bernard)

### Exemple visuel

```
Table: etudiants
+----+----------+--------+------------+---------------------------+
| id | nom      | prenom | date_naiss | email                     |
+----+----------+--------+------------+---------------------------+
| 1  | Bernard  | Thomas | 2003-04-08 | thomas.bernard@univ.fr    |
| 2  | Thomas   | Emma   | 2003-07-15 | emma.thomas@univ.fr       |
| 3  | Petit    | Lucas  | 2003-10-22 | lucas.petit@univ.fr       |
+----+----------+--------+------------+---------------------------+
```

- **Table** : `etudiants`
- **Colonnes** : `id`, `nom`, `prenom`, `date_naiss`, `email`
- **Lignes** : 3 etudiants (Bernard, Thomas, Petit)

---

## 4. Contraintes dans une base de donnees

Les **contraintes** sont des regles qui garantissent la qualite et la coherence des donnees.

### 4.1 Contrainte de domaine

**Definition :** Une contrainte de domaine limite les valeurs possibles dans une colonne.

**Exemple :**
- La colonne `note` ne peut contenir que des nombres entre 0 et 20
- La colonne `sexe` ne peut contenir que 'Masculin' ou 'Feminin'
- La colonne `credits` ne peut contenir que des nombres positifs

**Dans SQL :**
```sql
CREATE TABLE notes (
    note REAL CHECK (note >= 0 AND note <= 20),
    coeff INTEGER CHECK (coeff > 0)
);
```

### 4.2 Unicite de la cle (cle primaire)

**Definition :** Une **cle primaire** (PRIMARY KEY) identifie de maniere unique chaque ligne d'une table.
Deux lignes ne peuvent pas avoir la meme cle primaire.

**Exemple :**
- Dans `etudiants`, `id_etudiant` est la cle primaire
- Chaque etudiant a un ID unique (1, 2, 3, etc.)
- Impossible d'avoir deux etudiants avec id_etudiant = 5

**Dans SQL :**
```sql
CREATE TABLE etudiants (
    id_etudiant INTEGER PRIMARY KEY,
    nom TEXT,
    prenom TEXT
);
```

### 4.3 Contrainte de reference (cle etrangere)

**Definition :** Une **cle etrangere** (FOREIGN KEY) fait reference a la cle primaire d'une autre table.
Elle cree un lien entre deux tables et garantit la coherence des references.

**Exemple :**
- Dans `etudiants`, la colonne `id_lycee` est une cle etrangere
- Elle fait reference a `lycees(id_lycee)`
- Un etudiant ne peut pas etre dans un lycee qui n'existe pas

**Dans SQL :**
```sql
CREATE TABLE etudiants (
    id_etudiant INTEGER PRIMARY KEY,
    nom TEXT,
    id_lycee INTEGER,
    FOREIGN KEY (id_lycee) REFERENCES lycees(id_lycee)
);
```

**Avantage :** Impossible de creer un etudiant avec `id_lycee = 99` si le lycee 99 n'existe pas.

---

## 5. Le contenu d'une table

Une table contient des **donnees** qui sont :

### Types de donnees courants

- **INTEGER** : nombres entiers (ex: 1, 42, -5)
- **REAL** : nombres a virgule (ex: 3.14, 15.5)
- **TEXT** : texte (ex: 'Bernard', 'Paris')
- **DATE** : dates (ex: '2003-04-08')

### Valeurs particulieres

- **NULL** : valeur absente ou inconnue
  - Different de 0 ou d'une chaine vide
  - Signifie "pas de valeur" ou "inconnu"

**Exemple :**
```sql
-- Un etudiant sans email
INSERT INTO etudiants (nom, prenom, email) 
VALUES ('Dupont', 'Jean', NULL);
```

---

## 6. Philosophie des SGBDR et role de SQL

### Philosophie des SGBDR

Les SGBDR reposent sur plusieurs principes fondamentaux :

1. **Separation des donnees et du programme**
   - Les donnees sont stockees separement des applications
   - Plusieurs applications peuvent utiliser la meme base

2. **Independance physique et logique**
   - On peut changer le stockage physique sans changer les requates
   - On peut changer la structure logique sans changer les applications

3. **Integrite des donnees**
   - Les contraintes garantissent la coherence
   - Pas de donnees incoherentes ou orphelines

4. **Partage et concurrence**
   - Plusieurs utilisateurs peuvent acceder en meme temps
   - Le SGBDR gere les conflits automatiquement

5. **Persistance**
   - Les donnees restent meme apres fermeture du programme
   - Sauvegarde et restauration possibles

### Role de SQL

**SQL** (Structured Query Language) est le langage standard pour :

1. **Creer** la structure (tables, colonnes, contraintes)
   - Commandes : CREATE TABLE, ALTER TABLE, DROP TABLE

2. **Inserer** des donnees
   - Commandes : INSERT INTO

3. **Consulter** des donnees (le plus frequent !)
   - Commandes : SELECT, FROM, WHERE, JOIN, etc.

4. **Modifier** des donnees
   - Commandes : UPDATE, DELETE

5. **Controler** les acces
   - Commandes : GRANT, REVOKE

**Dans ce cours, nous allons surtout apprendre a CONSULTER** (SELECT) les donnees.

---

## Resume

| Concept | Definition |
|---------|------------|
| Base de donnees | Ensemble structure d'informations |
| SGBD | Logiciel pour gerer une base |
| SGBDR | SGBD avec tables relationnelles |
| Table | Ensemble de lignes et colonnes |
| Colonne | Caracteristique d'un objet |
| Ligne | Objet individuel |
| Cle primaire | Identifiant unique d'une ligne |
| Cle etrangere | Reference a une autre table |
| Contrainte | Regle de coherence des donnees |
| SQL | Langage pour manipuler les donnees |

---

## Navigation

- [Retour au SOMMAIRE](../SOMMAIRE.md)
- [Niveau 1 - Cours suivant ->](01_niveau1_01_FROM_SELECT.md)

---

**Prochain cours :** Niveau 1 - FROM et SELECT - Bases
