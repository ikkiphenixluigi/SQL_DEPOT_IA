# Niveau 4 - JOIN multiple (2 et 3 tables)

## Navigation

- [Retour a l'accueil]({{ '/' | relative_url }})
- [Cours precedent : JOIN base](23_niveau4_01_JOIN_base.md)
- [Cours suivant : JOIN avance](25_niveau4_03_JOIN_avance.md)

---

## Introduction

Ce cours presente les jointures multiples avec 2 et 3 tables. Une fois le principe de la chaine compris, on peut ajouter une quatrieme table en reliant chaque nouvelle table par une cle appropriee.

**Objectifs :**
- Joindre 2 tables
- Joindre 3 tables et prolonger la chaine si necessaire
- Comprendre l'ordre et les conditions des jointures

---

## 1. JOIN avec 2 tables

### Exemple 1 : Etudiants et lycees

**Question :** Afficher les etudiants avec leur lycee.

**Requete :**
```sql
SELECT e.nom, e.prenom, l.nom AS lycee, l.ville AS ville_lycee
FROM etudiants e
INNER JOIN lycees l ON e.id_lycee = l.id_lycee;
```

**Explication :**
- 2 tables : etudiants et lycees
- Jointure sur id_lycee
- `l.ville` designe la ville du lycee, pas celle de residence de l'etudiant

**Resultat :** Etudiants avec leur lycee et la ville de ce lycee.

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
- Premiere jointure : etudiants-lycees
- Deuxieme jointure : etudiants-inscriptions
- Chaque ligne correspond a une inscription, pas necessairement a un etudiant distinct

**Resultat :** Etudiants avec lycee et inscriptions.

### Exemple 2 : Etudiants, inscriptions et cours

**Question :** Afficher les cours suivis par les etudiants.

**Requete :**
```sql
SELECT e.nom, e.prenom, c.nom_cours, i.statut
FROM etudiants e
INNER JOIN inscriptions i ON e.id_etudiant = i.id_etudiant
INNER JOIN cours c ON i.id_cours = c.id_cours;
```

**Explication :**
- `inscriptions` est la table de liaison entre etudiants et cours
- Ajouter `cours` prolonge la chaine apres une premiere jointure

**Resultat :** Une ligne par inscription avec etudiant, cours et statut.

### Exemple 3 : Notes, inscriptions et cours

**Question :** Afficher chaque note avec le nom du cours associe.

**Requete :**
```sql
SELECT n.id_note, n.note, c.nom_cours
FROM notes n
INNER JOIN inscriptions i ON n.id_inscription = i.id_inscription
INNER JOIN cours c ON i.id_cours = c.id_cours;
```

**Explication :**
- `notes` ne contient pas `id_cours` mais `id_inscription`
- `inscriptions` fournit ensuite `id_cours` pour rejoindre `cours`
- Le meme principe s'etend a quatre tables en ajoutant par exemple `enseignants` a partir de `cours.id_enseignant`

**Resultat :** Notes avec noms de cours.

---

## Exercices

### Exercice 4.3 (5 questions)

1. Affiche les etudiants avec leur lycee.
2. Affiche les notes avec le nom du cours.
3. Affiche les cours avec le nom de l'enseignant.
4. Affiche les seances avec le nom de la salle.
5. Affiche les inscriptions avec le nom de l'etudiant.

### Exercice 4.4 (5 questions)

1. Affiche les notes avec le nom de l'etudiant et du cours.
2. Affiche les notes avec le nom du cours et de l'enseignant.
3. Affiche les notes avec le type d'evaluation et le coefficient.
4. Affiche les notes superieures a 10 avec le nom du cours.
5. Affiche la moyenne des notes par cours.

### Exercice 4.5 (5 questions)

1. Affiche les etudiants avec leur lycee et leurs inscriptions.
2. Affiche les notes avec le cours et l'enseignant.
3. Affiche les etudiants, leurs cours et les notes.
4. Affiche les seances avec la salle et le cours.
5. Affiche les inscriptions avec l'etudiant, le cours et la date.

---

## Navigation

- [Retour a l'accueil]({{ '/' | relative_url }})
- [Cours precedent : JOIN base](23_niveau4_01_JOIN_base.md)
- [Cours suivant : JOIN avance](25_niveau4_03_JOIN_avance.md)

---

**Prochain cours :** JOIN avance avec DISTINCT et GROUP BY