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

1. Pour chaque etudiant, affiche son nom, son prenom et le nom de son lycee. Classe les etudiants par nom puis par prenom croissants.
2. Affiche le code et le nom de chaque cours avec le nom et le prenom de son enseignant. Classe les cours par code croissant.
3. Pour les inscriptions au statut `valide`, affiche leur date et le nom et le prenom de l'etudiant concerne. Classe les dates croissantes.
4. Pour les seances ayant lieu le lundi, affiche le jour, l'heure de debut, le numero de salle et sa capacite. Classe les seances par heure de debut croissante.
5. Affiche le code et le nom des cours ayant une seance le samedi, avec l'heure de debut de cette seance. Classe les cours par code puis par heure croissants.

### Exercice 4.2 (4 questions)

Pour chaque requete, donne un alias court aux deux tables et utilise ces alias pour identifier les colonnes.

1. Affiche le nom des etudiants et celui de leur lycee lorsque le lycee se trouve a Paris. Ne confonds pas la ville du lycee avec celle ou habite l'etudiant.
2. Affiche le code et le nom des cours, ainsi que le nom de l'enseignant, lorsque cet enseignant a le grade `Professeur`. Trie les cours par code croissant.
3. Pour les inscriptions enregistrees en 2025, affiche leur statut, leur date et le nom de l'etudiant. Trie-les par date puis par nom croissants.
4. Affiche le numero et la capacite des salles informatiques utilisees pour des seances, ainsi que le jour de ces seances. Trie par jour puis par numero de salle croissants.

---

## Navigation

- [Retour a l'accueil]({{ '/' | relative_url }})
- [Niveau 3 - Test](20_niveau3_TEST.md)
- [Cours suivant : JOIN multiple](24_niveau4_02_JOIN_multiple.md)

---

**Prochain cours :** JOIN multiple (2 et 3 tables)