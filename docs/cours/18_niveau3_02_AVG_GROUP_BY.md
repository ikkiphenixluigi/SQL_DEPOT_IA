# Niveau 3 - AVG avec GROUP BY

## Navigation

- [Retour au SOMMAIRE](../SOMMAIRE.md)
- [Cours precedent : COUNT avec GROUP BY](17_niveau3_01_COUNT_GROUP_BY.md)
- [Cours suivant : COUNT avec LEFT JOIN](19_niveau3_03_COUNT_JOIN.md)

---

## Introduction

Ce cours presente la fonction d'agregation AVG (moyenne) combinee avec GROUP BY.

**Objectifs :**
- Utiliser AVG pour calculer des moyennes
- Combiner AVG avec GROUP BY
- Calculer des moyennes par groupe

---

## 1. La fonction AVG (moyenne)

### Definition

La fonction `AVG()` calcule la moyenne d'une colonne numerique.

**Syntaxe :**
```sql
AVG(colonne)
```

### Exemple 1 : AVG simple

**Question :** Calculer la moyenne generale des notes.

**Requete :**
```sql
SELECT AVG(note) AS moyenne_generale
FROM notes;
```

**Explication :**
- `AVG(note)` : moyenne de toutes les notes
- Retourne une seule valeur

**Resultat :** La moyenne de toutes les notes.

### Exemple 2 : AVG avec alias

**Question :** Calculer la moyenne avec un alias clair.

**Requete :**
```sql
SELECT AVG(note) AS moyenne_notes
FROM notes;
```

**Explication :**
- Alias explicite pour le resultat

**Resultat :** Moyenne avec nom clair.

---

## 2. AVG avec GROUP BY

### Definition

On peut combiner `AVG()` avec `GROUP BY` pour calculer des moyennes par groupe.

**Syntaxe :**
```sql
SELECT colonne, AVG(colonne_numerique) AS moyenne
FROM table
GROUP BY colonne;
```

### Exemple 1 : Moyenne par cours

**Question :** Calculer la moyenne par cours.

**Requete :**
```sql
SELECT id_cours, AVG(note) AS moyenne_cours
FROM notes
GROUP BY id_cours;
```

**Explication :**
- `GROUP BY id_cours` : regroupe par cours
- `AVG(note)` : moyenne des notes dans chaque groupe

**Resultat :** Une moyenne par cours.

### Exemple 2 : Moyenne avec jointure

**Question :** Calculer la moyenne par nom de cours.

**Requete :**
```sql
SELECT c.nom_cours, AVG(n.note) AS moyenne
FROM cours c
JOIN notes n ON c.id_cours = n.id_cours
GROUP BY c.nom_cours;
```

**Explication :**
- JOIN pour avoir le nom du cours
- GROUP BY sur le nom
- AVG sur les notes

**Resultat :** Moyenne par nom de cours.

### Exemple 3 : Moyenne par etudiant

**Question :** Calculer la moyenne de chaque etudiant.

**Requete :**
```sql
SELECT i.id_etudiant, AVG(n.note) AS moyenne_etudiant
FROM inscriptions i
JOIN notes n ON i.id_inscription = n.id_inscription
GROUP BY i.id_etudiant;
```

**Explication :**
- JOIN entre inscriptions et notes
- GROUP BY sur l'etudiant
- AVG des notes de chaque etudiant

**Resultat :** Moyenne par etudiant.

---

## 3. AVG avec WHERE et ORDER BY

### Definition

On peut filtrer et trier les resultats de AVG.

### Exemple 1 : AVG avec WHERE

**Question :** Moyenne des notes superieures a 10.

**Requete :**
```sql
SELECT AVG(note) AS moyenne_bonnes_notes
FROM notes
WHERE note >= 10;
```

**Explication :**
- WHERE filtre avant le calcul
- AVG seulement sur les notes >= 10

**Resultat :** Moyenne des bonnes notes.

### Exemple 2 : AVG avec ORDER BY

**Question :** Moyenne par cours, du plus eleve au plus bas.

**Requete :**
```sql
SELECT id_cours, AVG(note) AS moyenne
FROM notes
GROUP BY id_cours
ORDER BY moyenne DESC;
```

**Explication :**
- GROUP BY pour grouper
- ORDER BY pour trier par moyenne

**Resultat :** Cours avec les meilleures moyennes en premier.

---

## Exercices

### Exercice 3.2 - AVG + GROUP BY (5 questions)

1. Calcule la moyenne des notes par cours.
2. Calcule la moyenne des notes par type d'evaluation.
3. Calcule la moyenne des credits par semestre.
4. Calcule la moyenne d'age des etudiants par ville.
5. Calcule la moyenne des notes pour les evaluations de coeff 2.

### Exercice 3.4 - AVG etudiant (5 questions)

1. Calcule la moyenne de chaque etudiant.
2. Affiche les etudiants avec leur moyenne, tries par moyenne decroissante.
3. Trouve la moyenne generale de tous les etudiants.
4. Compare la moyenne par annee d'inscription.
5. Affiche les 5 etudiants avec les meilleures moyennes.

---

## Navigation

- [Retour au SOMMAIRE](../SOMMAIRE.md)
- [Cours precedent : COUNT avec GROUP BY](17_niveau3_01_COUNT_GROUP_BY.md)
- [Cours suivant : COUNT avec LEFT JOIN](19_niveau3_03_COUNT_JOIN.md)

---

**Prochain cours :** COUNT avec LEFT JOIN
