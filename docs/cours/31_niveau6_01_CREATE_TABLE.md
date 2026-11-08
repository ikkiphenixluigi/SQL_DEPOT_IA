---
layout: default
title: 6.1 - Creer des tables liees
parent: Niveau 6 - Creer sa base de donnees
nav_order: 1
---

# 6.1 — Créer des tables liées

## Objectif

Créer les tables `auteurs` et `livres`, puis définir la relation entre elles.

Un auteur peut être associé à plusieurs livres. Dans notre exemple, chaque livre est associé à un seul auteur.

## 1. Définir la structure d’une table

`CREATE TABLE` permet de créer une table en précisant ses colonnes.

```sql
CREATE TABLE nom_table (
    colonne1 TYPE,
    colonne2 TYPE
);
```

Cette syntaxe est un modèle : remplacez les noms et les types avant de l’utiliser.

| Type | Utilisation dans ce niveau |
|---|---|
| `INTEGER` | Identifiants et nombres entiers. |
| `TEXT` | Noms et titres. |
| `REAL` | Nombres avec une partie décimale. |

| Contrainte | Rôle |
|---|---|
| `PRIMARY KEY` | Identifier chaque ligne de manière unique. |
| `NOT NULL` | Interdire une valeur absente, représentée par `NULL`. |

`NOT NULL` interdit `NULL`, mais ne suffit pas à interdire un texte vide.

## 2. Créer la table des auteurs

Dans DBeaver, utilisez l’éditeur associé à `niveau6_catalogue.db`. Le contrôle des clés étrangères doit avoir été activé comme indiqué dans la préparation du niveau.

Exécutez :

```sql
CREATE TABLE auteurs (
    id_auteur INTEGER PRIMARY KEY,
    nom TEXT NOT NULL
);
```

- `id_auteur` est l’identifiant unique de l’auteur.
- `nom` contient le nom de l’auteur et ne peut pas être `NULL`.

La table est créée, mais elle ne contient encore aucune ligne.

## 3. Créer la table des livres

Exécutez :

```sql
CREATE TABLE livres (
    id_livre INTEGER PRIMARY KEY,
    titre TEXT NOT NULL,
    id_auteur INTEGER NOT NULL,
    FOREIGN KEY (id_auteur) REFERENCES auteurs(id_auteur)
);
```

- `id_livre` est l’identifiant unique du livre.
- `titre` contient son titre.
- `id_auteur` indique l’auteur associé.

La dernière ligne définit la clé étrangère :

```sql
FOREIGN KEY (id_auteur) REFERENCES auteurs(id_auteur)
```

Elle indique que `livres.id_auteur` fait référence à `auteurs.id_auteur`.

Avec le contrôle des clés étrangères actif, un livre ne peut pas référencer un auteur inexistant. La contrainte `NOT NULL` rend également cette association obligatoire.

## 4. Comprendre la relation

```text
auteurs.id_auteur  ←  livres.id_auteur
```

| Colonne | Rôle |
|---|---|
| `auteurs.id_auteur` | Clé primaire : un identifiant ne peut désigner qu’un seul auteur. |
| `livres.id_auteur` | Clé étrangère : plusieurs livres peuvent référencer le même auteur. |

La clé primaire de `livres` reste `id_livre`.

## Dans DBeaver — Vérifier les tables

Actualisez le navigateur si les tables n’apparaissent pas.

Exécutez séparément :

```sql
SELECT * FROM auteurs;
```

```sql
SELECT * FROM livres;
```

Les colonnes doivent apparaître, mais les résultats ne contiennent aucune ligne.

Ne relancez pas `CREATE TABLE` pour actualiser l’affichage : la table existe déjà.

## À retenir

- `CREATE TABLE` crée une table.
- La clé primaire identifie chaque ligne.
- La clé étrangère définit une référence vers une autre table.
- Créer une table ne lui ajoute pas de données.

## Navigation

- [Retour au sommaire]({{ '/' | relative_url }})
- [Précédent : préparation du niveau 6]({{ '/niveau-6/' | relative_url }})

Prochaine partie : ajouter des données avec `INSERT INTO` (page en cours de publication).
