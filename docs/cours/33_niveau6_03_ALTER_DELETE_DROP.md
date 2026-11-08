---
layout: default
title: 6.3 - Modifier et supprimer
parent: Niveau 6 - Creer sa base de donnees
nav_order: 3
---

# 6.3 — Modifier et supprimer

## Objectif

Ajouter une colonne, supprimer un livre ciblé et distinguer suppression des données et suppression de la table.

Dans DBeaver, continuez dans la connexion associée à `niveau6_catalogue.db`, après les créations et les insertions des parties précédentes.

## 1. Ajouter une colonne avec ALTER TABLE

Nous souhaitons pouvoir enregistrer le prix des livres.

Exécutez :

```sql
ALTER TABLE livres
ADD COLUMN prix REAL;
```

`ALTER TABLE ... ADD COLUMN` ajoute une colonne à une table existante.

Vérifiez :

```sql
SELECT * FROM livres;
```

La colonne `prix` apparaît. Les livres sont conservés.

Pour les lignes déjà présentes, le prix vaut `NULL` : nous n’avons fourni aucune valeur par défaut.

Ajouter une colonne ne renseigne pas automatiquement ses valeurs. La modification des valeurs existantes avec `UPDATE` n’est pas abordée dans ce niveau.

### Dans DBeaver

Réexécutez le `SELECT` pour obtenir un nouveau résultat avec la colonne `prix`.

Actualisez également le navigateur si nécessaire.

Ne relancez pas `ALTER TABLE ... ADD COLUMN prix` : la colonne a déjà été ajoutée.

## 2. Supprimer une ligne avec DELETE FROM

Nous souhaitons supprimer uniquement le livre dont l’identifiant est `2`.

Commencez par vérifier la ligne concernée :

```sql
SELECT *
FROM livres
WHERE id_livre = 2;
```

Le résultat doit correspondre à `Notre-Dame de Paris`.

Exécutez ensuite :

```sql
DELETE FROM livres
WHERE id_livre = 2;
```

Puis vérifiez les livres restants :

```sql
SELECT *
FROM livres
ORDER BY id_livre;
```

Il reste les livres dont les identifiants sont `1` et `3`.

### Attention à la condition WHERE

La condition détermine les lignes supprimées.

Sans condition, l’instruction suivante supprimerait toutes les lignes de `livres` :

```sql
-- Exemple de comparaison : ne pas exécuter.
-- DELETE FROM livres;
```

La table existerait toujours, mais elle serait vide.

## 3. Tenir compte des relations

Supprimer un livre ne supprime pas son auteur.

En revanche, avec notre définition de clé étrangère et son contrôle actif, supprimer un auteur encore référencé par un livre est refusé.

Par exemple, l’auteur `1` reste référencé par `Les Misérables` : on ne peut donc pas le supprimer tant que cette référence existe.

Nous n’abordons pas les suppressions automatiques en cascade dans ce niveau.

## 4. Supprimer une table avec DROP TABLE

La commande suivante supprimerait toute la table `livres`, avec ses données :

```sql
-- Exemple de comparaison : ne pas exécuter.
-- DROP TABLE livres;
```

La table ne serait plus disponible pour un `SELECT`.

### Ne pas confondre

| Instruction | Effet |
|---|---|
| `DELETE FROM livres WHERE id_livre = 2;` | Supprime uniquement les lignes correspondant à la condition. |
| `DELETE FROM livres;` | Supprime toutes les lignes et conserve la table. |
| `DROP TABLE livres;` | Supprime la table et ses données. |

`DELETE` agit sur les lignes. `DROP TABLE` supprime la table elle-même.

Aucune de ces deux commandes ne supprime l’ensemble du fichier de base de données.

## À retenir

- `ALTER TABLE ... ADD COLUMN` ajoute une colonne.
- `DELETE FROM ... WHERE` supprime des lignes ciblées.
- Avant un `DELETE`, vérifiez les lignes avec un `SELECT` utilisant la même condition.
- `DROP TABLE` supprime une table : ce n’est pas l’équivalent d’un `DELETE`.

## Bilan du niveau

| Besoin | Commande ou contrainte |
|---|---|
| Créer une table | `CREATE TABLE` |
| Identifier chaque ligne | `PRIMARY KEY` |
| Interdire `NULL` | `NOT NULL` |
| Relier les tables par une référence | `FOREIGN KEY ... REFERENCES` |
| Ajouter des lignes | `INSERT INTO ... VALUES` |
| Ajouter une colonne | `ALTER TABLE ... ADD COLUMN` |
| Supprimer des lignes ciblées | `DELETE FROM ... WHERE` |
| Supprimer une table | `DROP TABLE` |

## Navigation

- [Retour au sommaire]({{ '/' | relative_url }})
- [Retour au niveau 6]({{ '/niveau-6/' | relative_url }})
- [Précédent : ajouter des données]({{ '/docs/cours/32_niveau6_02_INSERT_INTO.html' | relative_url }})

Prochaine partie : exercice final (page en cours de publication).
