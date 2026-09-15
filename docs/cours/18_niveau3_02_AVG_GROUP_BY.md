# Niveau 3 - AVG avec GROUP BY

## Navigation

- [Retour au SOMMAIRE](../SOMMAIRE.md)
- [Cours precedent : COUNT avec GROUP BY](17_niveau3_01_COUNT_GROUP_BY.md)
- [Cours suivant : COUNT avec LEFT JOIN](19_niveau3_03_COUNT_JOIN.md)

---

## Introduction

Ce cours presente la fonction d'agregation AVG (moyenne) combinee avec GROUP BY, ainsi que les autres fonctions d'agregation classiques : MIN et MAX.

**Objectifs :**
- Utiliser AVG pour calculer des moyennes
- Utiliser MIN pour trouver le minimum
- Utiliser MAX pour trouver le maximum
- Combiner AVG avec GROUP BY
- Calculer des statistiques par groupe

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

## 3. La fonction MIN (minimum)

### Definition

La fonction `MIN()` retourne la plus petite valeur d'une colonne.

**Syntaxe :**
```sql
MIN(colonne)
```

### Exemple 1 : MIN simple

**Question :** Trouver la note minimale.

**Requete :**
```sql
SELECT MIN(note) AS note_minimale
FROM notes;
```

**Explication :**
- `MIN(note)` : retourne la plus petite note
- Une seule valeur retournee

**Resultat :** La note la plus basse.

### Exemple 2 : MIN avec GROUP BY

**Question :** Trouver la note minimale par cours.

**Requete :**
```sql
SELECT id_cours, MIN(note) AS note_min
FROM notes
GROUP BY id_cours;
```

**Explication :**
- `GROUP BY id_cours` : regroupe par cours
- `MIN(note)` : note minimale dans chaque groupe

**Resultat :** Note minimale par cours.

### Exemple 3 : MIN avec texte

**Question :** Trouver le premier nom alphabetiquement.

**Requete :**
```sql
SELECT MIN(nom) AS premier_nom
FROM etudiants;
```

**Explication :**
- `MIN(nom)` : premier nom par ordre alphabetique
- Fonctionne aussi avec les textes

**Resultat :** Le premier nom (A...).

---

## 4. La fonction MAX (maximum)

### Definition

La fonction `MAX()` retourne la plus grande valeur d'une colonne.

**Syntaxe :**
```sql
MAX(colonne)
```

### Exemple 1 : MAX simple

**Question :** Trouver la note maximale.

**Requete :**
```sql
SELECT MAX(note) AS note_maximale
FROM notes;
```

**Explication :**
- `MAX(note)` : retourne la plus grande note
- Une seule valeur retournee

**Resultat :** La note la plus haute.

### Exemple 2 : MAX avec GROUP BY

**Question :** Trouver la note maximale par cours.

**Requete :**
```sql
SELECT id_cours, MAX(note) AS note_max
FROM notes
GROUP BY id_cours;
```

**Explication :**
- `GROUP BY id_cours` : regroupe par cours
- `MAX(note)` : note maximale dans chaque groupe

**Resultat :** Note maximale par cours.

### Exemple 3 : MAX avec texte

**Question :** Trouver le dernier nom alphabetiquement.

**Requete :**
```sql
SELECT MAX(nom) AS dernier_nom
FROM etudiants;
```

**Explication :**
- `MAX(nom)` : dernier nom par ordre alphabetique
- Fonctionne aussi avec les textes

**Resultat :** Le dernier nom (Z...).

---

## 5. Combinaison de MIN, MAX et AVG

### Exemple 1 : Statistiques completes

**Question :** Afficher les statistiques des notes (min, max, moyenne).

**Requete :**
```sql
SELECT 
    MIN(note) AS note_min,
    MAX(note) AS note_max,
    AVG(note) AS note_moyenne
FROM notes;
```

**Explication :**
- Trois fonctions d'agregation dans la meme requete
- Chacune retourne une valeur

**Resultat :** Note min, max et moyenne generales.

### Exemple 2 : Statistiques par groupe

**Question :** Statistiques des notes par cours.

**Requete :**
```sql
SELECT 
    id_cours,
    MIN(note) AS note_min,
    MAX(note) AS note_max,
    AVG(note) AS note_moyenne
FROM notes
GROUP BY id_cours;
```

**Explication :**
- GROUP BY pour grouper par cours
- MIN, MAX, AVG pour chaque groupe

**Resultat :** Statistiques completes par cours.

### Exemple 3 : Avec d'autres colonnes

**Question :** Statistiques avec le nombre de notes par cours.

**Requete :**
```sql
SELECT 
    id_cours,
    COUNT(*) AS nb_notes,
    MIN(note) AS note_min,
    MAX(note) AS note_max,
    AVG(note) AS note_moyenne
FROM notes
GROUP BY id_cours;
```

**Explication :**
- COUNT pour le nombre
- MIN, MAX, AVG pour les statistiques

**Resultat :** Statistiques completes avec effectif.

---

## 6. AVG avec WHERE et ORDER BY

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

### Exercice 3.2.bis - MIN, MAX, AVG (5 questions)

1. Trouve la note minimale et maximale de toutes les evaluations.
2. Calcule la note minimale, maximale et moyenne par cours.
3. Trouve le cours avec la note maximale.
4. Affiche la note minimale, maximale et moyenne pour chaque type d'evaluation.
5. Compare MIN, MAX et AVG pour chaque semestre.

---

## Navigation

- [Retour au SOMMAIRE](../SOMMAIRE.md)
- [Cours precedent : COUNT avec GROUP BY](17_niveau3_01_COUNT_GROUP_BY.md)
- [Cours suivant : COUNT avec LEFT JOIN](19_niveau3_03_COUNT_JOIN.md)

---

**Prochain cours :** COUNT avec LEFT JOIN
