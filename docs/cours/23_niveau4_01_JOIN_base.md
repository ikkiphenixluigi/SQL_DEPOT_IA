# Niveau 4 - JOIN base avec alias

## Navigation

- [Retour au SOMMAIRE](../SOMMAIRE.md)
- [Niveau 3 - Test](22_niveau3_TEST.md)
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

### Exemple 2 : JOIN avec WHERE

**Question :** Afficher les etudiants de Paris avec leur lycee.

**Requete :**
```sql
SELECT e.nom, e.prenom, l.nom AS lycee, l.ville
FROM etudiants e
INNER JOIN lycees l ON e.id_lycee = l.id_lycee
WHERE l.ville = 'Paris';
```

**Explication :**
- JOIN pour relier etudiants et lycees
- WHERE pour filtrer par ville

**Resultat :** Etudiants parisiens avec leur lycee.

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

**Question :** Afficher les notes avec les noms de cours.

**Requete :**
```sql
SELECT c.nom_cours, n.note
FROM cours AS c
INNER JOIN notes AS n ON c.id_cours = n.id_cours;
```

**Explication :**
- `cours AS c` : alias 'c' pour cours
- `notes AS n` : alias 'n' pour notes
- Plus court a ecrire dans la requete

**Resultat :** Notes avec noms de cours.

### Exemple 2 : Alias sans AS

**Question :** Meme requete sans AS.

**Requete :**
```sql
SELECT c.nom_cours, n.note
FROM cours c
INNER JOIN notes n ON c.id_cours = n.id_cours;
```

**Explication :**
- `cours c` : equivalente a `cours AS c`
- AS est optionnel pour les alias

**Resultat :** Meme resultat.

### Exemple 3 : Alias explicites

**Question :** Utiliser des alias clairs.

**Requete :**
```sql
SELECT etu.nom, etu.prenom, lyc.nom AS lycee
FROM etudiants AS etu
INNER JOIN lycees AS lyc ON etu.id_lycee = lyc.id_lycee;
```

**Explication :**
- Alias explicites : etu, lyc
- Plus lisible que e, l

**Resultat :** Etudiants avec lycees.

---

## Exercices

### Exercice 4.1 - JOIN 1 table (5 questions)

1. Affiche les etudiants avec leur lycee.
2. Affiche les cours avec le nom de l'enseignant.
3. Affiche les inscriptions avec le nom de l'etudiant.
4. Affiche les notes avec le nom du cours.
5. Affiche les seances avec le nom de la salle.

### Exercice 4.2 - JOIN avec alias (4 questions)

1. Utilise des alias pour afficher les etudiants et leurs lycees.
2. Affiche les notes avec le nom du cours en utilisant des alias.
3. Affiche les inscriptions avec le nom de l'etudiant et du cours.
4. Utilise des alias explicites (etu, lyc, cou, etc.) pour une requete avec 3 tables.

---

## Navigation

- [Retour au SOMMAIRE](../SOMMAIRE.md)
- [Niveau 3 - Test](22_niveau3_TEST.md)
- [Cours suivant : JOIN multiple](24_niveau4_02_JOIN_multiple.md)

---

**Prochain cours :** JOIN multiple (2 et 3 tables)
