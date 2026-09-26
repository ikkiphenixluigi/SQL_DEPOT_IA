# Niveau 3 - HAVING

## Navigation

- [Retour au SOMMAIRE](../SOMMAIRE.md)
- [Cours precedent : SUM et LIMIT](20_niveau3_04_SUM_LIMIT.md)
- [Cours suivant : Test Niveau 3](22_niveau3_TEST.md)

---

## Introduction

Ce cours presente HAVING pour filtrer les groupes.

**Objectifs :**
- Filtrer les groupes avec HAVING
- Combiner HAVING avec AVG et COUNT

---

## 1. HAVING

### Definition

`HAVING` filtre les groupes (apres GROUP BY).

**Syntaxe :**
```sql
SELECT colonne, COUNT(*)
FROM table
GROUP BY colonne
HAVING COUNT(*) > N;
```

### Exemple 1 : HAVING + AVG

**Question :** Trouver les cours avec une moyenne superieure a 12.

**Requete :**
```sql
SELECT id_cours, AVG(note) AS moyenne
FROM notes
GROUP BY id_cours
HAVING AVG(note) > 12;
```

**Explication :**
- `GROUP BY id_cours` : groupe par cours
- `HAVING AVG(note) > 12` : filtre les groupes

**Resultat :** Cours avec moyenne > 12.

### Exemple 2 : HAVING + COUNT

**Question :** Trouver les lycees avec plus de 10 etudiants.

**Requete :**
```sql
SELECT id_lycee, COUNT(*) AS nb_etudiants
FROM etudiants
GROUP BY id_lycee
HAVING COUNT(*) > 10;
```

**Explication :**
- `GROUP BY id_lycee` : groupe par lycee
- `HAVING COUNT(*) > 10` : filtre les groupes

**Resultat :** Lycees avec plus de 10 etudiants.

---

## Exercices

### Exercice 3.9 (5 questions)

1. Trouve les cours avec une moyenne superieure a 12.
2. Trouve les cours avec une moyenne inferieure a 8.
3. Trouve les types d'evaluation avec une moyenne superieure a 10.
4. Trouve les semestres avec une moyenne de credits superieure a 4.
5. Trouve les departements avec une moyenne d'heures theoriques superieure a 20.

### Exercice 3.10 (5 questions)

1. Trouve les lycees avec plus de 10 etudiants.
2. Trouve les cours avec plus de 8 notes.
3. Trouve les etudiants avec plus de 2 inscriptions.
4. Trouve les salles avec plus de 3 seances.
5. Trouve les enseignants avec plus de 2 cours.

---

## Navigation

- [Retour au SOMMAIRE](../SOMMAIRE.md)
- [Cours precedent : SUM et LIMIT](20_niveau3_04_SUM_LIMIT.md)
- [Cours suivant : Test Niveau 3](22_niveau3_TEST.md)

---

**Prochain cours :** Test recapitulatif Niveau 3
