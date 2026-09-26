# Niveau 5 - Sous-requetes correlees

## Navigation

- [Retour au SOMMAIRE](../SOMMAIRE.md)
- [Cours precedent : Sous-requetes comparatives](28_niveau5_02_sous_requetes_compare.md)
- [Cours suivant : Test Niveau 5](30_niveau5_TEST.md)

---

## Introduction

Ce cours presente les sous-requetes correlees.

**Objectifs :**
- Comprendre les sous-requetes correlees
- Utiliser EXISTS et NOT EXISTS
- Comparer avec des sous-requetes non correlees

---

## 1. Sous-requetes correlees

### Definition

Une **sous-requete correlee** est une sous-requete qui fait reference a la table de la requete externe.
Elle est executee pour chaque ligne de la requete externe.

**Syntaxe :**
```sql
SELECT colonnes
FROM table1
WHERE condition (SELECT colonne FROM table2 WHERE table2.colonne = table1.colonne);
```

### Exemple 1 : EXISTS simple

**Question :** Afficher les etudiants avec des inscriptions.

**Requete :**
```sql
SELECT nom, prenom
FROM etudiants e
WHERE EXISTS (
    SELECT 1
    FROM inscriptions i
    WHERE i.id_etudiant = e.id_etudiant
);
```

**Explication :**
- Sous-requete correlee : reference a `e.id_etudiant`
- EXISTS teste si la sous-requete retourne des lignes
- Executee pour chaque etudiant

**Resultat :** Etudiants avec au moins une inscription.

### Exemple 2 : NOT EXISTS

**Question :** Afficher les etudiants sans inscriptions.

**Requete :**
```sql
SELECT nom, prenom
FROM etudiants e
WHERE NOT EXISTS (
    SELECT 1
    FROM inscriptions i
    WHERE i.id_etudiant = e.id_etudiant
);
```

**Explication :**
- NOT EXISTS : vrai si la sous-requete ne retourne rien
- Correlee a l'etudiant courant

**Resultat :** Etudiants sans aucune inscription.

---

## Exercices

### Exercice 5.6 (5 questions)

1. Affiche les etudiants avec des inscriptions (utilise EXISTS).
2. Affiche les etudiants sans inscriptions (utilise NOT EXISTS).
3. Affiche les cours avec des notes (utilise EXISTS).
4. Affiche les lycees avec des etudiants (utilise EXISTS).
5. Affiche les enseignants avec des cours (utilise EXISTS).

---

## Navigation

- [Retour au SOMMAIRE](../SOMMAIRE.md)
- [Cours precedent : Sous-requetes comparatives](28_niveau5_02_sous_requetes_compare.md)
- [Cours suivant : Test Niveau 5](30_niveau5_TEST.md)

---

**Prochain cours :** Test recapitulatif Niveau 5
