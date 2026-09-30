# Niveau 4 - JOIN base avec alias

## Navigation

- [Retour a l'accueil]({{ '/' | relative_url }})
- [Niveau 3 - Test](20_niveau3_TEST.md)
- [Cours suivant : JOIN multiple](24_niveau4_02_JOIN_multiple.md)

---

## Introduction

Ce cours presente les jointures INNER JOIN avec des alias de tables.

**Objectifs :**
- Comprendre INNER JOIN
- Utiliser des alias de tables
- Joindre 2 tables

---

## 1. INNER JOIN (jointure interne)

### Definition

`INNER JOIN` combine les lignes de deux tables selon une condition de jointure.
Seules les lignes qui ont une correspondance dans les deux tables sont retournees.

**Syntaxe :**
```sql
SELECT colonnes
FROM table1
INNER JOIN table2 ON table1.colonne = table2.colonne;
```

### Exemple 1 : JOIN simple

**Question :** Afficher les etudiants avec leurs lycees.

**Requete :**
```sql
SELECT e.nom, e.prenom, l.nom AS lycee
FROM etudiants e
INNER JOIN lycees l ON e.id_lycee = l.id_lycee;
```

**Explication :**
- `INNER JOIN lycees` : jointure avec la table lycees
- `ON e.id_lycee = l.id_lycee` : condition de jointure
- Seuls les etudiants avec un lycee valide sont affiches

**Resultat :** Etudiants avec leur lycee.

---

## 2. Alias de tables

### Definition

Un alias permet de donner un nom court a une table dans une requete.

**Syntaxe :**
```sql
FROM table AS alias
-- ou
FROM table alias
```

### Exemple 1 : Alias avec AS

**Question :** Afficher les cours avec le nom de leur enseignant.

**Requete :**
```sql
SELECT c.code_cours, c.nom_cours, ens.nom AS nom_enseignant
FROM cours AS c
INNER JOIN enseignants AS ens ON c.id_enseignant = ens.id_enseignant;
```

**Explication :**
- `cours AS c` et `enseignants AS ens` donnent des noms courts aux deux tables
- `ON c.id_enseignant = ens.id_enseignant` relie les colonnes presentes dans les deux tables
- `AS nom_enseignant` renomme la colonne affichee

**Resultat :** Cours avec le nom de leur enseignant.

---

## Exercices

### Exercice 4.1 (5 questions)

1. Affiche les etudiants avec leur lycee.
2. Affiche les cours avec le nom de l'enseignant.
3. Affiche les inscriptions avec le nom de l'etudiant.
4. Affiche les notes avec le nom du cours.
5. Affiche les seances avec le nom de la salle.

### Exercice 4.2 (4 questions)

1. Utilise des alias pour afficher les etudiants et leurs lycees.
2. Affiche les notes avec le nom du cours en utilisant des alias.
3. Affiche les inscriptions avec le nom de l'etudiant et du cours.
4. Utilise des alias explicites (etu, lyc, cou, etc.) pour une requete avec 3 tables.

---

## Navigation

- [Retour a l'accueil]({{ '/' | relative_url }})
- [Niveau 3 - Test](20_niveau3_TEST.md)
- [Cours suivant : JOIN multiple](24_niveau4_02_JOIN_multiple.md)

---

**Prochain cours :** JOIN multiple (2 et 3 tables)