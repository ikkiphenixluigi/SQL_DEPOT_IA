---
layout: default
title: Niveau 6 - Exercice final
parent: Niveau 6 - Creer sa base de donnees
nav_order: 4
---

# Niveau 6 — Exercice final : créer son catalogue

## Objectif

Construire une petite base à partir d’un schéma fourni, puis vérifier son fonctionnement.

## Préparation dans DBeaver

Repartez du fichier d’origine `niveau6_vide.db` transmis par votre enseignant. Sa mise à disposition en téléchargement sur le site est en cours.

1. Créez une copie nommée `niveau6_exercice.db`.
2. Ouvrez une connexion SQLite vers cette copie.
3. Ouvrez un éditeur SQL associé à cette connexion.
4. Activez le contrôle des clés étrangères, avant les autres manipulations et en dehors d’une transaction en cours :

```sql
PRAGMA foreign_keys = ON;
```

Vérifiez :

```sql
PRAGMA foreign_keys;
```

Le résultat doit être `1`.

Vous pouvez enregistrer vos réponses dans un script nommé `niveau6_exercice.sql`.

N’utilisez pas la base de démonstration : les tables et les données doivent être créées dans cette nouvelle base vide. Exécutez vos réponses progressivement, dans l’ordre des questions.

## Structure attendue

| Table | Colonne | Type | Règle |
|---|---|---|---|
| `auteurs` | `id_auteur` | `INTEGER` | Clé primaire. |
| `auteurs` | `nom` | `TEXT` | Valeur non `NULL`. |
| `livres` | `id_livre` | `INTEGER` | Clé primaire. |
| `livres` | `titre` | `TEXT` | Valeur non `NULL`. |
| `livres` | `id_auteur` | `INTEGER` | Valeur non `NULL`, clé étrangère vers `auteurs(id_auteur)`. |

Un auteur peut avoir plusieurs livres ; chaque livre est associé à un seul auteur.

## Données à ajouter

### Auteurs

| id_auteur | nom |
|---|---|
| 1 | Victor Hugo |
| 2 | Jules Verne |

### Livres

| id_livre | titre | id_auteur |
|---|---|---|
| 1 | Les Misérables | 1 |
| 2 | Notre-Dame de Paris | 1 |
| 3 | Le Tour du monde en quatre-vingts jours | 2 |

## Questions

1. Créez les deux tables en respectant les colonnes et les contraintes indiquées.
2. Ajoutez les données dans le bon ordre, avec une seule instruction d’insertion par table.
3. Ajoutez une colonne `prix` de type `REAL` à la table `livres`.
4. Vérifiez puis supprimez uniquement le livre dont l’identifiant est `2`.
5. Affichez les titres des livres restants avec le nom de leur auteur, par ordre alphabétique des titres.

## Question de compréhension

Sans l’exécuter, écrivez la commande qui supprimerait entièrement la table `livres`, et non seulement ses lignes.

## Fin du niveau

Vous avez terminé le dernier niveau du cours. Vous savez maintenant interroger une base existante, mais aussi créer des tables liées et réaliser les principales manipulations présentées dans ce niveau.

## Navigation

- [Précédent : modifier et supprimer]({{ '/docs/cours/33_niveau6_03_ALTER_DELETE_DROP.html' | relative_url }})
- [Retour au niveau 6]({{ '/niveau-6/' | relative_url }})
- [Retour au sommaire]({{ '/' | relative_url }})
