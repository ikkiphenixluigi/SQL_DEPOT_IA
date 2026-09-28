# Niveau 1 - Test recapitulatif

## Navigation

- [Retour au SOMMAIRE](../SOMMAIRE.md)
- [Cours precedent : LIMIT](04_niveau1_04_LIMIT.md)
- [Niveau 2 - Cours suivant : Fonctions texte](08_niveau2_01_operations_ROUND.md)

---

## Test NIVEAU 1

Ce test permet de verifier ta comprehension des concepts du NIVEAU 1.

**Themes couverts :**
- SELECT et FROM, DISTINCT
- WHERE (=, !=, AND, OR, NOT, IN, BETWEEN, <, >, IS NULL)
- ORDER BY (ASC, DESC, multiple)
- LIMIT

---

## Exercices du test (10 questions)

### Question 1

Affiche le nom, le prenom, la ville et l'annee d'inscription des etudiants habitant a Paris et inscrits a partir de 2024. Trie-les par annee d'inscription decroissante, puis par nom croissant.

### Question 2

Affiche le code, le nom, le semestre et le nombre de credits des cours du semestre 2 ayant entre 4 et 6 credits inclus. Trie-les par nombre de credits decroissant, puis par code de cours croissant.

### Question 3

Affiche, sans doublons, les villes des etudiants qui n'habitent pas a Paris. Classe les villes par ordre alphabetique.

### Question 4

Affiche le numero, l'etage et le nombre de places des salles informatiques ayant au moins 15 places. Trie-les de la plus grande a la plus petite capacite, puis par numero de salle croissant.

### Question 5

Affiche le nom, le prenom, le grade et le departement des enseignants ayant le grade "Professeur". Trie-les par departement, puis par nom, dans l'ordre alphabetique.

### Question 6

Affiche le nom et la ville des lycees situes a Paris ou a Lyon. Trie-les par ville croissante, puis par nom de lycee decroissant.

### Question 7

Affiche le code, le nom et le semestre des cours sans enseignant associe. Trie-les par semestre croissant, puis par code de cours croissant. Un resultat vide est acceptable si tous les cours ont un enseignant.

### Question 8

Affiche le nom, le prenom et la date de naissance des cinq etudiants de Paris dont la naissance est la plus recente. En cas de meme date de naissance, classe-les par nom puis par prenom croissants.

### Question 9

Affiche le nom, le prenom et la ville des etudiants qui n'habitent pas a Paris. Trie-les par nom puis par prenom croissants et affiche uniquement les cinq premiers resultats.

### Question 10

Affiche le code, le nom et le nombre de credits des trois cours ayant le plus de credits, en excluant ceux du semestre 1. En cas d'egalite de credits, departage-les par code de cours croissant.

---

## Conseils pour le test

1. **Relis les cours precedents** si besoin
2. **Teste tes requetes** dans SQLite
3. **Verifie les resultats** (nombre de lignes, valeurs)
4. **Utilise la base** `gestion_universitaire`

---

## Correction

Les solutions sont disponibles dans le fichier `sql/03_exercices.sql`.

Cherche la section **TEST NIVEAU 1** pour voir les corrections.

---

## Validation du NIVEAU 1

Si tu as reussi ce test, tu peux passer au **Niveau 2** !

**Competences acquises :**
- SELECT et FROM, DISTINCT
- WHERE (=, !=, AND, OR, NOT, IN, BETWEEN, <, >, IS NULL)
- ORDER BY (ASC, DESC, multiple)
- LIMIT

---

## Navigation

- [Retour au SOMMAIRE](../SOMMAIRE.md)
- [Cours precedent : LIMIT](04_niveau1_04_LIMIT.md)
- [Niveau 2 - Fonctions texte](08_niveau2_01_operations_ROUND.md)

---

**Felicitation ! Tu as termine le NIVEAU 1 !**

**Prochain cours :** Niveau 2 - Fonctions texte