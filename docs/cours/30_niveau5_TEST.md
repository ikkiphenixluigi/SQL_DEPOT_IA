# Niveau 5 - Test recapitulatif

## Navigation

- [Retour au sommaire]({{ '/' | relative_url }})
- [Cours precedent : Sous-requetes correlees](29_niveau5_03_sous_requetes_corellees.md)

---

## Test Niveau 5

Ce test permet de verifier ta comprehension des concepts du Niveau 5.

## Conventions communes

- Utiliser au moins une sous-requete par reponse et respecter l'operateur impose.
- Calculer des moyennes arithmetiques, sans coefficients, hors NULL.
- La moyenne generale concerne toutes les notes renseignees de la base, tous types d'evaluation confondus.
- La moyenne individuelle concerne toutes les notes renseignees de l'etudiant ; celle d'un cours concerne toutes ses notes renseignees.
- Une note renseignee est non NULL ; zero compte.
- Prendre en compte tous les statuts d'inscription, sauf precision contraire.
- L'effectif etudiant de 2025 designe les etudiants dont annee_inscription = 2025.
- Afficher les identifiants et les noms, les prenoms des personnes et les valeurs demandees ou calculees.
- Ne pas repeter une meme entite dans le resultat.

---

## Exercices du test (10 questions)

### Question 1

Avec IN, affiche les étudiants du « Lycee du Parc » ayant une inscription valide.

### Question 2

Avec NOT IN, trouve les enseignants du département « Mathematiques » sans cours au semestre 2.

### Question 3

Trouve les notes d’examen final de STAT102 supérieures à la moyenne générale des notes.

### Question 4

Affiche les cours de six crédits avec la même moyenne globale des notes d’examen final.

### Question 5

Avec IN, trouve les cours du semestre 2 ayant plus de cinq notes renseignées.

### Question 6

Avec EXISTS, affiche les étudiants parisiens ayant une note d’au moins 14 dans un cours de Jean Dubois.

### Question 7

Avec NOT EXISTS, trouve les cours de Hugo Colin sans note d’examen final renseignée.

### Question 8

Avec une sous-requête corrélée dans SELECT, affiche chaque lycée lyonnais avec son effectif étudiant de 2025, y compris zéro.

### Question 9

Trouve les étudiants du « Lycee Louis-le-Grand » dont la moyenne individuelle dépasse la moyenne générale des notes.

### Question 10

Avec une sous-requête corrélée, affiche les notes d’examen final de STAT201 supérieures à la moyenne des notes de ce cours.

---

## Conseils pour le test

1. **Relis les cours precedents** si besoin
2. **Teste tes requetes** dans SQLite
3. **Verifie les resultats** (nombre de lignes, valeurs)
4. **Utilise la base** `gestion_universitaire`

---

## Correction

Les corriges de cette version revisee ne sont pas fournis. Leur redaction et leur validation par execution ne font pas partie de cette publication.

---

## Validation du Niveau 5

Si tu as reussi ce test, tu as termine TOUS les niveaux !

Les enonces sont valides sur le plan redactionnel et pedagogique ; leurs resultats n'ont pas encore ete verifies par execution sur la base complete.

---

## Navigation

- [Retour au sommaire]({{ '/' | relative_url }})
- [Cours precedent : Sous-requetes correlees](29_niveau5_03_sous_requetes_corellees.md)

---

**Felicitation ! Tu as termine TOUS les niveaux !**
