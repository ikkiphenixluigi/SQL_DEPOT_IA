---
layout: default
title: 6.2 - Ajouter des donnees
parent: Niveau 6 - Creer sa base de donnees
nav_order: 2
---

# 6.2 — Ajouter des données

## Objectif

Ajouter des auteurs et leurs livres avec `INSERT INTO`.

Dans DBeaver, continuez dans la connexion associée à `niveau6_catalogue.db`. Les tables de la partie précédente doivent déjà exister.

## 1. Syntaxe

```sql
INSERT INTO nom_table (colonne1, colonne2)
VALUES (valeur1, valeur2);
```

Les valeurs correspondent aux colonnes dans l’ordre indiqué. Cette syntaxe est un modèle à adapter.

- Les textes sont entourés d’apostrophes.
- Les nombres sont écrits sans apostrophes.
- Plusieurs lignes peuvent être ajoutées dans la même instruction.

## 2. Ajouter les auteurs

Exécutez une seule fois :

```sql
INSERT INTO auteurs (id_auteur, nom)
VALUES
    (1, 'Victor Hugo'),
    (2, 'Jules Verne');
```

Cette instruction ajoute deux auteurs.

## 3. Ajouter les livres

Exécutez une seule fois :

```sql
INSERT INTO livres (id_livre, titre, id_auteur)
VALUES
    (1, 'Les Misérables', 1),
    (2, 'Notre-Dame de Paris', 1),
    (3, 'Le Tour du monde en quatre-vingts jours', 2);
```

Les deux premiers livres sont associés à l’auteur `1`. Le troisième est associé à l’auteur `2`.

Les auteurs sont ajoutés avant les livres pour que les identifiants référencés existent au moment de l’insertion.

## 4. Vérifier les données

Exécutez séparément :

```sql
SELECT * FROM auteurs;
```

```sql
SELECT * FROM livres;
```

Vous devez obtenir deux auteurs et trois livres.

Pour afficher le nom de l’auteur à côté de chaque titre :

```sql
SELECT
    l.titre,
    a.nom
FROM livres AS l
JOIN auteurs AS a
    ON l.id_auteur = a.id_auteur
ORDER BY l.id_livre;
```

Résultat attendu :

| titre | nom |
|---|---|
| Les Misérables | Victor Hugo |
| Notre-Dame de Paris | Victor Hugo |
| Le Tour du monde en quatre-vingts jours | Jules Verne |

## 5. Observer le rôle de la clé étrangère

Exécutez séparément cette instruction de test :

```sql
-- Test volontaire : cette insertion doit être refusée.
INSERT INTO livres (id_livre, titre, id_auteur)
VALUES (4, 'Livre de démonstration', 99);
```

L’auteur `99` n’existe pas.

Si le contrôle des clés étrangères est actif, SQLite refuse l’insertion : le livre n’est pas ajouté. Ce refus montre que la relation protège la cohérence des références.

Si l’insertion n’est pas refusée, arrêtez les manipulations et vérifiez l’activation du contrôle :

```sql
PRAGMA foreign_keys;
```

Le résultat attendu est `1`.

## Dans DBeaver — Consulter sans réinsérer

Pour revoir les données, relancez un `SELECT`, pas un `INSERT`.

Réexécuter les insertions fournies provoquerait un conflit avec les identifiants déjà présents.

Le test avec l’auteur `99` doit être exécuté seul, pas au milieu d’un script contenant les étapes suivantes.

## À retenir

- `INSERT INTO` ajoute des lignes.
- La liste des colonnes détermine l’ordre des valeurs.
- On ajoute d’abord les auteurs, puis les livres qui les référencent.
- La clé étrangère refuse une référence vers un auteur inexistant lorsque son contrôle est actif.

## Navigation

- [Retour au sommaire]({{ '/' | relative_url }})
- [Retour au niveau 6]({{ '/niveau-6/' | relative_url }})
- [Précédent : créer des tables liées]({{ '/docs/cours/31_niveau6_01_CREATE_TABLE.html' | relative_url }})

Prochaine partie : modifier et supprimer (page en cours de publication).
