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
