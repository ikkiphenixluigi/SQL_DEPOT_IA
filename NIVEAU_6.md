---
layout: default
title: Niveau 6 - Creer sa base de donnees
nav_order: 12
has_children: true
permalink: /niveau-6/
---

# Niveau 6 — Créer et modifier sa base de données

## Introduction

Jusqu’ici, vous avez travaillé sur une base de données déjà construite : vous avez appris à rechercher des informations, à les filtrer, à les regrouper et à relier plusieurs tables.

Dans ce dernier niveau, vous allez apprendre à construire votre propre base de données.

À partir d’un exemple simple — des auteurs et leurs livres — vous apprendrez à :

- Créer des tables.
- Définir une clé primaire et une clé étrangère.
- Ajouter des données.
- Ajouter une colonne à une table existante.
- Supprimer des lignes et distinguer cette opération de la suppression d’une table.

Les jointures vous ont permis d’exploiter les relations entre les tables. Vous allez maintenant apprendre à définir ces relations dès leur création.

L’objectif n’est pas de concevoir une base complexe, mais de construire une petite base cohérente et de réaliser les opérations essentielles sur sa structure et ses données.

## Préparer votre base dans DBeaver

### 1. Préparer une copie de la base vide

Une base SQLite vide nommée `niveau6_vide.db` est prévue pour ce niveau.

> Mise à disposition du fichier en cours : le téléchargement n’est pas encore disponible sur cette page. Utilisez le fichier transmis par votre enseignant. Ne renommez pas un simple fichier texte en `.db`.

Conservez ce fichier intact, puis créez une copie nommée :

```text
niveau6_catalogue.db
```

Placez cette copie dans votre dossier de travail.

Cette base ne contient aucune table utilisateur ni donnée. Vous allez la remplir progressivement pendant le cours.

### 2. Ouvrir la base dans DBeaver

1. Ouvrez DBeaver.
2. Choisissez `Base de données / Database` → `Nouvelle connexion / New Database Connection`.
3. Sélectionnez `SQLite`.
4. Dans le champ du chemin de la base, sélectionnez votre copie `niveau6_catalogue.db`.
5. Terminez la configuration.

Votre connexion apparaît dans le navigateur de bases de données.

DBeaver est l’outil utilisé pour exécuter vos commandes. SQLite est le système de base de données utilisé dans ce niveau.

### 3. Ouvrir un éditeur SQL

Faites un clic droit sur votre connexion, puis ouvrez un nouveau script depuis le menu `Éditeur SQL / SQL Editor`.

Vérifiez que l’éditeur utilise bien la connexion associée à `niveau6_catalogue.db`.

Vous pouvez enregistrer votre script sous le nom `niveau6_catalogue.sql`.

Le fichier `.sql` conserve vos instructions ; le fichier `.db` contient votre base de données.

### 4. Activer le contrôle des clés étrangères

Avant les autres instructions, exécutez :

```sql
PRAGMA foreign_keys = ON;
```

Puis vérifiez :

```sql
PRAGMA foreign_keys;
```

Le résultat attendu est `1`.

Ce réglage concerne la connexion utilisée, pas le fichier `.db` lui-même. Vérifiez-le à nouveau après une reconnexion.

Cette instruction vous est fournie : vous n’avez pas à la mémoriser. Exécutez-la avant les manipulations, en dehors d’une transaction en cours.

### 5. Exécuter les exemples progressivement

- Exécutez les instructions dans l’ordre.
- Utilisez les requêtes `SELECT` pour vérifier votre travail.
- Ne relancez pas les créations ou les insertions simplement pour revoir un résultat.
- Exécutez les exemples d’erreur volontaire séparément.
- Ne lancez pas les commandes de suppression complète présentées uniquement pour comparaison.

## Programme du niveau

| Partie | Objectif |
|---|---|
| 6.1 — Créer des tables liées | Créer deux tables et définir leur relation. |
| 6.2 — Ajouter des données | Remplir les tables dans un ordre cohérent. |
| 6.3 — Modifier et supprimer | Ajouter une colonne et supprimer des lignes ciblées. |
| Exercice final | Construire un petit catalogue à partir d’une base vide. |

Pour l’exercice final, vous utiliserez une nouvelle copie du fichier vide, nommée `niveau6_exercice.db`.

## Navigation

- [Retour au sommaire]({{ '/' | relative_url }})
- [Précédent : test du niveau 5]({{ '/docs/cours/30_niveau5_TEST.html' | relative_url }})
