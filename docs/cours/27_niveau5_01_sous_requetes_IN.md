# Niveau 5 - Sous-requetes avec IN et NOT IN

## Navigation

- [Retour au SOMMAIRE](../SOMMAIRE.md)
- [Niveau 4 - Test](26_niveau4_TEST.md)
- [Cours suivant : Sous-requetes comparatives](28_niveau5_02_sous_requetes_compare.md)

---

## Introduction

Ce cours presente les sous-requetes avec les operateurs IN et NOT IN.

**Objectifs :**
- Comprendre les sous-requetes
- Utiliser IN avec une sous-requete
- Utiliser NOT IN avec une sous-requete

---

## 1. Sous-requetes avec IN

### Definition

Une **sous-requete** est une requete SQL imbrique dans une autre requete.
L'operateur `IN` permet de tester si une valeur appartient au resultat d'une sous-requete.

**Syntaxe :**
```sql
SELECT colonnes
FROM table
WHERE colonne IN (SELECT colonne FROM table2);
```

### Exemple 1 : IN simple

**Question :** Afficher les etudiants inscrits a des cours.

**Requete :**
```sql
SELECT nom, prenom
FROM etudiants
WHERE id_etudiant IN (SELECT id_etudiant FROM inscriptions);
```

**Explication :**
- Sous-requete : `(SELECT id_etudiant FROM inscriptions)`
- Retourne tous les id_etudiant des inscriptions
- WHERE filtre les etudiants qui sont dans cette liste

**Resultat :** Etudiants qui ont au moins une inscription.

---

## 2. Sous-requetes avec NOT IN

### Definition

`NOT IN` teste si une valeur n'appartient PAS au resultat d'une sous-requete.

**Syntaxe :**
```sql
SELECT colonnes
FROM table
WHERE colonne NOT IN (SELECT colonne FROM table2);
```

### Exemple 1 : NOT IN simple

**Question :** Afficher les etudiants sans inscriptions.

**Requete :**
```sql
SELECT nom, prenom
FROM etudiants
WHERE id_etudiant NOT IN (SELECT id_etudiant FROM inscriptions);
```

**Explication :**
- Sous-requete : tous les id_etudiant inscrits
- NOT IN : exclut ceux qui sont dans la liste

**Resultat :** Etudiants qui n'ont aucune inscription.

---

## Exercices

### Exercice 5.1 (5 questions)

1. Trouve les etudiants sans inscriptions.
2. Trouve les cours sans notes.
3. Trouve les lycees sans etudiants.
4. Trouve les enseignants sans cours.
5. Trouve les salles sans seances.

### Exercice 5.2 (5 questions)

1. Affiche les etudiants avec des inscriptions.
2. Affiche les cours avec des notes.
3. Affiche les lycees avec des etudiants.
4. Affiche les enseignants avec des cours.
5. Affiche les salles avec des seances.

---

## Navigation

- [Retour au SOMMAIRE](../SOMMAIRE.md)
- [Niveau 4 - Test](26_niveau4_TEST.md)
- [Cours suivant : Sous-requetes comparatives](28_niveau5_02_sous_requetes_compare.md)

---

**Prochain cours :** Sous-requetes comparatives et dans SELECT/WHERE
