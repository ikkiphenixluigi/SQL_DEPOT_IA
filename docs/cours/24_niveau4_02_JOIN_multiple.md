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

1. Pour les inscriptions au statut `valide`, affiche le nom et le prenom de l'etudiant, le nom du cours et la date d'inscription. Classe-les par date puis par nom croissants.
2. Affiche le code et le nom des cours associes aux examens finaux ainsi que la note obtenue. Ne conserve que les notes d'au moins 10 et trie par note decroissante, puis par code de cours croissant.
3. Affiche le jour, l'heure de debut, le numero de salle et le nom du cours des seances du samedi. Trie par heure de debut croissante.
4. Pour les etudiants qui habitent a Paris, affiche leur nom, le nom de leur lycee et le statut de chaque inscription. Classe par nom d'etudiant puis par statut croissants.
5. Pour les notes d'au moins 16, affiche la note, le nom du cours et le nom de l'enseignant de ce cours. Trie par note decroissante ; chaque note doit rester sur une ligne distincte.

### Exercice 4.4 (5 questions)

1. Affiche la note, le nom et le prenom de l'etudiant et le nom du cours pour les examens finaux. Trie par note decroissante et limite le resultat a cinq lignes.
2. Pour les notes inferieures a 10, affiche la note, le code du cours et le nom de l'enseignant de ce cours. Trie par code de cours, puis par note croissants.
3. Pour les notes de coefficient 2, affiche le nom de l'etudiant, la note, son type d'evaluation et le coefficient. Trie par nom puis par note decroissante.
4. Pour les notes d'au moins 10 obtenues en controle continu, affiche le code et le nom du cours ainsi que la note. Trie par note decroissante et limite le resultat a cinq lignes.
5. Pour chaque cours, calcule la moyenne des notes des examens finaux ; affiche le code et le nom du cours avec cette moyenne arrondie a une decimale. Classe les cours par moyenne decroissante.

### Exercice 4.5 (5 questions)

1. Affiche le nom et le prenom des etudiants, le nom de leur lycee et celui des cours auxquels ils sont inscrits au statut `valide`. Trie par nom d'etudiant puis par nom de cours croissants.
2. Affiche la note, le type d'evaluation, le nom du cours et le nom de son enseignant pour les notes superieures a 14. Trie par note decroissante.
3. Affiche le nom et le prenom des etudiants, le cours concerne et leurs notes d'examen final. Trie par nom d'etudiant, nom de cours puis note decroissante.
4. Pour les seances en salle informatique, affiche le jour, l'heure de debut, le numero de salle et le nom du cours. Trie par jour puis par heure croissants.
5. Pour les inscriptions enregistrees en 2025, affiche la date, le statut, le nom de l'etudiant et le code du cours. Trie par date puis par nom croissants.

---

## Navigation

- [Retour a l'accueil]({{ '/' | relative_url }})
- [Cours precedent : JOIN base](23_niveau4_01_JOIN_base.md)
- [Cours suivant : JOIN avance](25_niveau4_03_JOIN_avance.md)

---

**Prochain cours :** JOIN avance avec DISTINCT et GROUP BY