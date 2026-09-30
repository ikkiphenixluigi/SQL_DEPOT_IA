# Niveau 4 - Test recapitulatif

## Navigation

- [Retour a l'accueil]({{ '/' | relative_url }})
- [Cours precedent : JOIN avance](25_niveau4_03_JOIN_avance.md)
- [Niveau 5 - Cours suivant : Sous-requetes IN](27_niveau5_01_sous_requetes_IN.md)

---

## Test Niveau 4

Ce test permet de verifier ta comprehension des concepts du Niveau 4 : jointures simples puis multiples, alias, DISTINCT, agregats et LEFT JOIN. Une fois la chaine a trois tables comprise, tu peux l'etendre a quatre tables ou davantage.

---

## Exercices du test (10 questions)

### Question 1

Affiche le nom et le prenom des etudiants avec le nom de leur lycee, seulement lorsque le lycee se trouve a Paris. Trie par nom d'etudiant croissant. Attention : on filtre la ville du lycee, pas la residence de l'etudiant.

### Question 2

Pour les notes d'examen final d'au moins 14, affiche la note, le code du cours et le nom de ce cours. Trie par note decroissante et limite le resultat a cinq lignes.

### Question 3

Affiche le code et le nom des cours enseignes par un enseignant de grade `Professeur`, ainsi que le nom de cet enseignant. Trie par code de cours croissant.

### Question 4

Pour chaque note d'examen final d'au moins 16, affiche le nom et le prenom de l'etudiant, le nom du cours et la note. Trie par note decroissante, puis par nom d'etudiant croissant.

### Question 5

Affiche une seule fois chaque enseignant qui dispense au moins un cours de 6 credits. Montre son nom et son prenom et trie par nom croissant.

### Question 6

Pour chaque cours ayant des examens finaux, affiche le code du cours, le nombre d'examens et leur moyenne arrondie a deux decimales. Trie par moyenne decroissante.

### Question 7

Affiche le nom de chaque lycee et le nombre d'etudiants qui en sont issus. Trie par nombre decroissant, puis par nom de lycee croissant.

### Question 8

Affiche tous les lycees avec le nom de leurs etudiants, y compris si un lycee n'a aucun etudiant. Trie par nom de lycee puis par nom d'etudiant croissants.

### Question 9

Trouve les cours sans notes.

### Question 10

Pour chaque ville de lycee, calcule la moyenne de l'age approximatif des etudiants au 28/09/2026, arrondie a une decimale. Affiche la ville du lycee et cette moyenne, de la plus elevee a la plus faible. Ne confonds pas la ville du lycee avec la ville de residence des etudiants.

---

## Conseils pour le test

1. **Relis les cours precedents** si besoin
2. **Teste tes requetes** dans SQLite
3. **Verifie les resultats** (nombre de lignes, valeurs)
4. **Utilise la base** `gestion_universitaire`

---

## Correction

Les solutions sont disponibles dans le fichier `sql/03_exercices.sql`.

Cherche la section **TEST NIVEAU 4** pour voir les corrections.

---

## Validation du Niveau 4

Si tu as reussi ce test, tu peux passer au **Niveau 5** !

**Competences acquises :**
- INNER JOIN avec alias
- JOIN multiple (2, 3 tables ou plus)
- DISTINCT avec JOIN
- JOIN + GROUP BY
- LEFT JOIN avance

---

## Navigation

- [Retour a l'accueil]({{ '/' | relative_url }})
- [Cours precedent : JOIN avance](25_niveau4_03_JOIN_avance.md)
- [Niveau 5 - Sous-requetes IN](27_niveau5_01_sous_requetes_IN.md)

---

**Felicitation ! Tu as termine le Niveau 4 !**

**Prochain cours :** Niveau 5 - Sous-requetes et requetes complexes