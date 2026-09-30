# Niveau 4 - JOIN avance avec DISTINCT et GROUP BY

## Navigation

- [Retour a l'accueil]({{ '/' | relative_url }})
- [Cours precedent : JOIN multiple](24_niveau4_02_JOIN_multiple.md)
- [Cours suivant : Test Niveau 4](26_niveau4_TEST.md)

---

## Introduction

Ce cours presente les jointures avancees avec DISTINCT et GROUP BY.

**Objectifs :**
- Utiliser DISTINCT avec JOIN
- Combiner JOIN et GROUP BY
- LEFT JOIN avance

---

## 1. DISTINCT avec JOIN

### Definition

`DISTINCT` permet d'eliminer les doublons dans les resultats.

**Syntaxe :**
```sql
SELECT DISTINCT colonnes
FROM table1
JOIN table2 ON condition;
```

### Exemple 1 : DISTINCT simple

**Question :** Afficher une seule fois chaque cours ayant des notes.

**Requete :**
```sql
SELECT DISTINCT c.id_cours, c.nom_cours
FROM cours c
INNER JOIN inscriptions i ON c.id_cours = i.id_cours
INNER JOIN notes n ON i.id_inscription = n.id_inscription;
```

**Explication :**
- Une inscription relie une note au cours correspondant
- DISTINCT elimine les repetitions creees par les multiples notes d'un meme cours

**Resultat :** Cours notes sans doublons.

---

## 2. JOIN avec GROUP BY

### Definition

On peut combiner JOIN et GROUP BY pour grouper les resultats de jointures.

### Exemple 1 : COUNT avec JOIN

**Question :** Compter les notes par cours.

**Requete :**
```sql
SELECT c.id_cours, c.nom_cours, COUNT(n.id_note) AS nb_notes
FROM cours c
INNER JOIN inscriptions i ON c.id_cours = i.id_cours
INNER JOIN notes n ON i.id_inscription = n.id_inscription
GROUP BY c.id_cours, c.nom_cours;
```

**Explication :**
- `inscriptions` relie `cours` a `notes`
- GROUP BY rassemble les notes d'un meme cours
- COUNT compte les notes ; seuls les cours ayant des notes figurent ici

**Resultat :** Nombre de notes par cours.

---

## 3. LEFT JOIN avance

### Definition

`LEFT JOIN` retourne toutes les lignes de la table de gauche, meme sans correspondance. La colonne de droite vaut alors NULL ; aucun exemple des donnees fournies ne montre necessairement un lycee sans etudiant. Cela n'empeche pas d'etudier le fonctionnement de la jointure.

### Exemple 1 : LEFT JOIN avec NULL

**Question :** Afficher tous les lycees avec leurs etudiants.

**Requete :**
```sql
SELECT l.nom AS lycee, e.nom AS etudiant
FROM lycees l
LEFT JOIN etudiants e ON l.id_lycee = e.id_lycee;
```

**Explication :**
- LEFT JOIN garde tous les lycees
- Un lycee sans etudiant aurait NULL dans la colonne etudiant

**Resultat :** Tous les lycees avec leurs etudiants dans la base actuelle.

---

## Exercices

### Exercice 4.6 (4 questions)

1. Pour les cours qui possedent des notes d'au moins 10, affiche chaque code et nom de cours une seule fois. Trie les codes croissants.
2. Affiche une seule fois chaque association etudiant-cours correspondant a une inscription au statut `valide`, avec le nom de l'etudiant et le code du cours. Trie par nom puis par code croissants.
3. Pour les etudiants habitant a Paris, affiche une seule fois le nom et la ville de chaque lycee dont au moins un de ces etudiants est issu. Trie par nom de lycee croissant.
4. Pour les cours qui valent 6 credits, affiche une seule fois le nom et le prenom de chaque enseignant concerne. Trie par nom croissant.

### Exercice 4.7 (5 questions)

1. Pour chaque cours ayant des notes, affiche son code, son nom et le nombre de notes recues. Trie par nombre de notes decroissant, puis par code croissant.
2. Pour chaque cours ayant des examens finaux, affiche son code et la moyenne de ces notes arrondie a deux decimales. Trie par moyenne decroissante.
3. Pour chaque enseignant, affiche son identifiant, son nom et le total des credits des cours qu'il enseigne. Trie par total decroissant, puis par nom croissant.
4. Pour chaque lycee, affiche son identifiant, son nom et le nombre d'etudiants qui en sont issus. Trie par effectif decroissant, puis par nom croissant.
5. Calcule l'age approximatif au 28/09/2026 des etudiants et affiche sa moyenne, arrondie a une decimale, pour chaque ville de leur lycee. Il s'agit bien de la ville du lycee, pas de la ville de residence des etudiants. Trie par ville croissante.

### Exercice 4.8 (5 questions)

1. Affiche tous les lycees avec leurs etudiants.
2. Compte les etudiants par lycee (meme zero).
3. Trouve les cours sans notes.
4. Trouve les etudiants sans inscriptions.
5. Affiche tous les enseignants avec leurs cours.

---

## Navigation

- [Retour a l'accueil]({{ '/' | relative_url }})
- [Cours precedent : JOIN multiple](24_niveau4_02_JOIN_multiple.md)
- [Cours suivant : Test Niveau 4](26_niveau4_TEST.md)

---

**Prochain cours :** Test recapitulatif Niveau 4