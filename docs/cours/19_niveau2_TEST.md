# Niveau 2 - Test recapitulatif

## Navigation

- [Retour au SOMMAIRE](../SOMMAIRE.md)
- [Cours precedent : CASE WHEN](18_niveau2_11_CASE_WHEN.md)
- [Niveau 3 - Cours suivant : Agregats](17_niveau3_01_agregats.md)

---

## Test NIVEAU 2

Ce test permet de verifier ta comprehension des concepts du NIVEAU 2.

**Themes couverts :**
- Fonctions numeriques (operations, ROUND, CEIL, FLOOR, ABS, POWER, SQRT)
- Fonctions texte (UPPER, LOWER, LENGTH, SUBSTR, INSTR, REPLACE, TRIM, concatenation, LIKE)
- Fonctions date (strftime, calcul d'age approximatif)
- CAST (conversion)
- CASE WHEN (conditions)

---

## Exercices du test (10 questions)

### Question 1

Affiche le nom et le prenom en majuscules des etudiants dont le nom commence par B. Trie-les par nom d'origine croissant.

### Question 2

Affiche le nom, le prenom et la longueur de l'adresse electronique des etudiants inscrits en 2025 dont le nom contient ar. Trie-les par longueur decroissante, puis par nom croissant.

### Question 3

Affiche le code, le nom, les credits et le carre des credits des cours valant au moins 4 credits. Trie-les par carre decroissant, puis par code croissant ; limite le resultat a cinq cours.

### Question 4

Affiche l'identifiant, la note, le coefficient et la note multipliee par son coefficient, arrondie a une decimale, pour les evaluations de coefficient 2. Trie par note decroissante et affiche cinq lignes.

### Question 5

Affiche le numero de salle, le nombre de places et le nombre de groupes complets de cinq places, calcule avec FLOOR, pour les salles informatiques. Trie par nombre de places decroissant.

### Question 6

Affiche le nom, le prenom et les trois premieres lettres du nom des etudiants dont le prenom commence par L. Trie-les par nom croissant.

### Question 7

Affiche le nom, le prenom et une adresse construite en minuscules au format `prenom.nom@univ.fr` pour les etudiants habitant a Paris. Trie-les par nom puis par prenom croissants et limite le resultat a cinq etudiants.

### Question 8

Affiche le nom, le prenom, la date de naissance d'origine et sa version `JJ/MM/AAAA` pour les etudiants nes en avril 2004. Trie-les par nom croissant.

### Question 9

Affiche le nom, le prenom et l'age approximatif au 28/09/2026 des etudiants nes en 2003 dont le nom commence par B. Trie-les par nom croissant.

### Question 10

Affiche le code, le nom, les credits et une categorie calculee avec CASE WHEN : `6 credits` si le cours en vaut 6, `4 credits` s'il en vaut 4, `Autre` sinon. Ne conserve que les cours du semestre 1 et trie-les par credits decroissants, puis par code croissant.

---

## Conseils pour le test

1. **Relis les cours precedents** si besoin
2. **Teste tes requetes** dans SQLite
3. **Verifie les resultats** (nombre de lignes, valeurs)
4. **Utilise la base** `gestion_universitaire`

---

## Correction

Les solutions sont disponibles dans le fichier `sql/03_exercices.sql`.

Cherche la section **TEST NIVEAU 2** pour voir les corrections.

---

## Validation du NIVEAU 2

Si tu as reussi ce test, tu peux passer au **Niveau 3** !

**Competences acquises :**
- Fonctions numeriques (operations, ROUND, CEIL, FLOOR, ABS, POWER, SQRT)
- Fonctions texte (UPPER, LOWER, LENGTH, SUBSTR, INSTR, REPLACE, TRIM, concatenation, LIKE)
- Fonctions date (strftime, calcul d'age approximatif)
- CAST (conversion)
- CASE WHEN (conditions)

---

## Navigation

- [Retour au SOMMAIRE](../SOMMAIRE.md)
- [Cours precedent : CASE WHEN](18_niveau2_11_CASE_WHEN.md)
- [Niveau 3 - Agregats](17_niveau3_01_agregats.md)

---

**Felicitation ! Tu as termine le NIVEAU 2 !**

**Prochain cours :** Niveau 3 - Agregats (COUNT, MIN, MAX, AVG, SUM)