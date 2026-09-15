# Niveau 1 - ORDER BY simple et multiple

## Navigation

- [Retour au SOMMAIRE](../SOMMAIRE.md)
- [Cours precedent : WHERE avec plage et FK](03_niveau1_03_WHERE_plage_FK.md)
- [Cours suivant : WHERE avec AND](05_niveau1_05_WHERE_AND.md)

---

## Introduction

Ce cours presente la clause ORDER BY pour trier les resultats d'une requate.

**Objectifs :**
- Trier avec ORDER BY ASC (croissant)
- Trier avec ORDER BY DESC (decroissant)
- Trier sur plusieurs colonnes

---

## 1. ORDER BY simple

### Definition

La clause `ORDER BY` permet de **trier les resultats** selon une ou plusieurs colonnes.

**Syntaxe :**
```sql
SELECT colonnes FROM table ORDER BY colonne_tri [ASC|DESC];
```

- `ASC` : ordre croissant (defaut)
- `DESC` : ordre decroissant

### Exemple 1 : Tri croissant (ASC)

**Question :** Afficher les lycees tries par nom.

**Requete :**
```sql
SELECT nom, ville
FROM lycees
ORDER BY nom ASC;
```

**Explication :**
- `ORDER BY nom ASC` : trie par nom de A a Z
- ASC est optionnel (c'est le defaut)

**Resultat :** Lycees tries alphabetiquement.

### Exemple 2 : Tri decroissant (DESC)

**Question :** Afficher les cours tries par credits decroissant.

**Requete :**
```sql
SELECT code_cours, nom_cours, credits
FROM cours
ORDER BY credits DESC;
```

**Explication :**
- `ORDER BY credits DESC` : du plus grand au plus petit

**Resultat :** Cours avec 6 credits, puis 4, puis 3.

### Exemple 3 : Tri avec WHERE

**Question :** Afficher les etudiants de Paris tries par nom.

**Requete :**
```sql
SELECT nom, prenom, ville
FROM etudiants
WHERE ville = 'Paris'
ORDER BY nom ASC;
```

**Explication :**
- WHERE filtre d'abord
- ORDER BY trie ensuite

**Resultat :** Etudiants parisiens tries par nom.

---

## 2. ORDER BY multiple

### Definition

On peut trier sur **plusieurs colonnes** en les separant par des virgules.

**Syntaxe :**
```sql
SELECT colonnes FROM table 
ORDER BY colonne1 [ASC|DESC], colonne2 [ASC|DESC], ...;
```

### Exemple 1 : Tri sur 2 colonnes

**Question :** Afficher les etudiants tries par ville puis par nom.

**Requete :**
```sql
SELECT nom, prenom, ville
FROM etudiants
ORDER BY ville ASC, nom ASC;
```

**Explication :**
- Trie d'abord par ville (A a Z)
- Puis par nom dans chaque ville

**Resultat :** Tous les etudiants de Paris tries par nom, puis tous ceux de Lyon, etc.

### Exemple 2 : Tri mixte ASC/DESC

**Question :** Afficher les cours tries par credits (decroissant) puis par nom (croissant).

**Requete :**
```sql
SELECT code_cours, nom_cours, credits
FROM cours
ORDER BY credits DESC, nom_cours ASC;
```

**Explication :**
- D'abord par credits du plus grand au plus petit
- Puis par nom alphabetique pour les cours avec memes credits

**Resultat :** Cours avec 6 credits (tries par nom), puis 4 credits, etc.

### Exemple 3 : Tri sur 3 colonnes

**Question :** Afficher les etudiants tries par annee, puis sexe, puis nom.

**Requete :**
```sql
SELECT nom, prenom, annee_inscription, sexe
FROM etudiants
ORDER BY annee_inscription ASC, sexe ASC, nom ASC;
```

**Explication :**
- 3 niveaux de tri
- Utile pour regrouper les donnees

**Resultat :** Etudiants de 2024 (Feminin puis Masculin, tries par nom), puis 2025, etc.

---

## Exercices

### Exercice 1.5 - ORDER BY multiple (4 questions)

1. Affiche les lycees tries par ville puis par nom.
2. Affiche les etudiants tries par annee_inscription puis par nom.
3. Affiche les cours tries par semestre puis par credits (decroissant).
4. Affiche les enseignants tries par departement puis par grade.

### Exercice 1.9 - ORDER BY DESC (4 questions)

1. Affiche les etudiants tries par date_naissance (du plus recent au plus ancien).
2. Affiche les salles avec le plus de places en premier.
3. Affiche les cours avec le plus de credits en premier.
4. Affiche les lycees tries par ville (Z a A).

---

## Navigation

- [Retour au SOMMAIRE](../SOMMAIRE.md)
- [Cours precedent : WHERE avec plage et FK](03_niveau1_03_WHERE_plage_FK.md)
- [Cours suivant : WHERE avec AND](05_niveau1_05_WHERE_AND.md)

---

**Prochain cours :** WHERE avec AND
