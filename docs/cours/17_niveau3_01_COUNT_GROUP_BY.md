# Niveau 3 - COUNT avec GROUP BY

## Navigation

- [Retour au SOMMAIRE](../SOMMAIRE.md)
- [Niveau 2 - Test](16_niveau2_TEST.md)
- [Cours suivant : AVG avec GROUP BY](18_niveau3_02_AVG_GROUP_BY.md)

---

## Introduction

Ce cours presente la fonction d'agregation COUNT combinee avec GROUP BY pour grouper les resultats.

**Objectifs :**
- Comprendre GROUP BY
- Utiliser COUNT avec GROUP BY
- Compter par groupe

---

## 1. La clause GROUP BY

### Definition

La clause `GROUP BY` permet de regrouper les lignes qui ont les memes valeurs dans certaines colonnes.

**Syntaxe :**
```sql
SELECT colonne, COUNT(*) 
FROM table 
GROUP BY colonne;
```

### Exemple 1 : COUNT simple avec GROUP BY

**Question :** Compter le nombre d'etudiants par ville.

**Requete :**
```sql
SELECT ville, COUNT(*) AS nb_etudiants
FROM etudiants
GROUP BY ville;
```

**Explication :**
- `GROUP BY ville` : regroupe par ville
- `COUNT(*)` : compte les lignes dans chaque groupe

**Resultat :** Une ligne par ville avec le nombre d'etudiants.

### Exemple 2 : GROUP BY avec tri

**Question :** Compter les etudiants par ville, du plus grand au plus petit.

**Requete :**
```sql
SELECT ville, COUNT(*) AS nb_etudiants
FROM etudiants
GROUP BY ville
ORDER BY nb_etudiants DESC;
```

**Explication :**
- GROUP BY d'abord
- ORDER BY ensuite sur le resultat du COUNT

**Resultat :** Villes avec le plus d'etudiants en premier.

### Exemple 3 : GROUP BY sur plusieurs colonnes

**Question :** Compter les etudiants par ville et par sexe.

**Requete :**
```sql
SELECT ville, sexe, COUNT(*) AS nb_etudiants
FROM etudiants
GROUP BY ville, sexe;
```

**Explication :**
- `GROUP BY ville, sexe` : deux niveaux de regroupement
- D'abord par ville, puis par sexe dans chaque ville

**Resultat :** Une ligne par combinaison ville/sexe.

---

## 2. COUNT avec GROUP BY et WHERE

### Definition

On peut filtrer les lignes avant le regroupement avec WHERE.

**Syntaxe :**
```sql
SELECT colonne, COUNT(*) 
FROM table 
WHERE condition
GROUP BY colonne;
```

### Exemple 1 : WHERE avant GROUP BY

**Question :** Compter les etudiants par ville pour Paris seulement.

**Requete :**
```sql
SELECT ville, COUNT(*) AS nb_etudiants
FROM etudiants
WHERE ville = 'Paris'
GROUP BY ville;
```

**Explication :**
- WHERE filtre d'abord
- GROUP BY regroupe ensuite

**Resultat :** Une ligne pour Paris.

### Exemple 2 : WHERE avec condition sur annee

**Question :** Compter les etudiants par lycee pour ceux inscrits en 2024.

**Requete :**
```sql
SELECT id_lycee, COUNT(*) AS nb_etudiants
FROM etudiants
WHERE annee_inscription = 2024
GROUP BY id_lycee;
```

**Explication :**
- WHERE filtre par annee
- GROUP BY compte par lycee

**Resultat :** Nombre d'etudiants de 2024 par lycee.

---

## Exercices

### Exercice 3.1 - COUNT + GROUP BY (5 questions)

1. Compte le nombre d'etudiants par ville.
2. Compte le nombre de cours par semestre.
3. Compte le nombre d'enseignants par departement.
4. Compte le nombre d'etudiants par annee d'inscription.
5. Compte le nombre de salles par etage.

---

## Navigation

- [Retour au SOMMAIRE](../SOMMAIRE.md)
- [Niveau 2 - Test](16_niveau2_TEST.md)
- [Cours suivant : AVG avec GROUP BY](18_niveau3_02_AVG_GROUP_BY.md)

---

**Prochain cours :** AVG avec GROUP BY
