# Niveau 4 - JOIN multiple (2 et 3 tables)

## Navigation

- [Retour au SOMMAIRE](../SOMMAIRE.md)
- [Cours precedent : JOIN base](23_niveau4_01_JOIN_base.md)
- [Cours suivant : JOIN avance](25_niveau4_03_JOIN_avance.md)

---

## Introduction

Ce cours presente les jointures multiples avec 2 et 3 tables.

**Objectifs :**
- Joindre 2 tables
- Joindre 3 tables
- Comprendre l'ordre des jointures

---

## 1. JOIN avec 2 tables

### Exemple 1 : Etudiants et lycees

**Question :** Afficher les etudiants avec leur lycee.

**Requete :**
```sql
SELECT e.nom, e.prenom, l.nom AS lycee, l.ville
FROM etudiants e
INNER JOIN lycees l ON e.id_lycee = l.id_lycee;
```

**Explication :**
- 2 tables : etudiants, lycees
- Jointure sur id_lycee

**Resultat :** Etudiants avec infos lycee.

### Exemple 2 : Notes et cours

**Question :** Afficher les notes avec les cours.

**Requete :**
```sql
SELECT n.note, c.nom_cours, c.credits
FROM notes n
INNER JOIN cours c ON n.id_cours = c.id_cours;
```

**Explication :**
- 2 tables : notes, cours
- Jointure sur id_cours

**Resultat :** Notes avec infos cours.

---

## 2. JOIN avec 3 tables

### Exemple 1 : Etudiants, lycees et inscriptions

**Question :** Afficher les etudiants avec leur lycee et leurs inscriptions.

**Requete :**
```sql
SELECT e.nom, e.prenom, l.nom AS lycee, i.id_cours
FROM etudiants e
INNER JOIN lycees l ON e.id_lycee = l.id_lycee
INNER JOIN inscriptions i ON e.id_etudiant = i.id_etudiant;
```

**Explication :**
- 3 tables : etudiants, lycees, inscriptions
- Premiere jointure : etudiants-lycees
- Deuxieme jointure : etudiants-inscriptions

**Resultat :** Etudiants avec lycee et inscriptions.

### Exemple 2 : Notes, cours et enseignants

**Question :** Afficher les notes avec le cours et l'enseignant.

**Requete :**
```sql
SELECT n.note, c.nom_cours, ens.nom AS enseignant
FROM notes n
INNER JOIN cours c ON n.id_cours = c.id_cours
INNER JOIN enseignants ens ON c.id_enseignant = ens.id_enseignant;
```

**Explication :**
- 3 tables : notes, cours, enseignants
- Jointure en chaine

**Resultat :** Notes avec cours et enseignant.

### Exemple 3 : Etudiants, inscriptions et cours

**Question :** Afficher les etudiants avec leurs cours.

**Requete :**
```sql
SELECT e.nom, e.prenom, c.nom_cours, i.statut
FROM etudiants e
INNER JOIN inscriptions i ON e.id_etudiant = i.id_etudiant
INNER JOIN cours c ON i.id_cours = c.id_cours;
```

**Explication :**
- 3 tables : etudiants, inscriptions, cours
- inscriptions est la table de liaison

**Resultat :** Etudiants avec leurs cours.

---

## Exercices

### Exercice 4.3 - JOIN multiple 2 tables (5 questions)

1. Affiche les etudiants avec leur lycee.
2. Affiche les notes avec le nom du cours.
3. Affiche les cours avec le nom de l'enseignant.
4. Affiche les seances avec le nom de la salle.
5. Affiche les inscriptions avec le nom de l'etudiant.

### Exercice 4.4 - JOIN avec notes (5 questions)

1. Affiche les notes avec le nom de l'etudiant et du cours.
2. Affiche les notes avec le nom du cours et de l'enseignant.
3. Affiche les notes avec le type d'evaluation et le coefficient.
4. Affiche les notes superieures a 10 avec le nom du cours.
5. Affiche la moyenne des notes par cours.

### Exercice 4.5 - JOIN avec 3 tables (5 questions)

1. Affiche les etudiants avec leur lycee et leurs inscriptions.
2. Affiche les notes avec le cours et l'enseignant.
3. Affiche les etudiants, leurs cours et les notes.
4. Affiche les seances avec la salle et le cours.
5. Affiche les inscriptions avec l'etudiant, le cours et la date.

---

## Navigation

- [Retour au SOMMAIRE](../SOMMAIRE.md)
- [Cours precedent : JOIN base](23_niveau4_01_JOIN_base.md)
- [Cours suivant : JOIN avance](25_niveau4_03_JOIN_avance.md)

---

**Prochain cours :** JOIN avance avec DISTINCT et GROUP BY
