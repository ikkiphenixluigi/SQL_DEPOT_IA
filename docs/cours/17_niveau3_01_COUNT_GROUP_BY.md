# Niveau 3 - COUNT et GROUP BY

## Navigation

- [Retour au SOMMAIRE](../SOMMAIRE.md)
- [Niveau 2 - Test](16_niveau2_TEST.md)
- [Cours suivant : AVG et GROUP BY](18_niveau3_02_AVG_GROUP_BY.md)

---

## Introduction

Ce cours presente COUNT avec GROUP BY.

**Objectifs :**
- Grouper avec GROUP BY
- Compter par groupe avec COUNT

---

## 1. GROUP BY

### Definition

`GROUP BY` groupe les lignes par valeur.

**Syntaxe :**
```sql
SELECT colonne, COUNT(*)
FROM table
GROUP BY colonne;
```

### Exemple 1 : COUNT + GROUP BY

**Question :** Compter les etudiants par ville.

**Requete :**
```sql
SELECT ville, COUNT(*) AS nb_etudiants
FROM etudiants
GROUP BY ville;
```

**Explication :**
- `GROUP BY ville` : groupe par ville
- `COUNT(*)` : compte par groupe

**Resultat :** Nombre d'etudiants par ville.

---

## Exercices

### Exercice 3.1 - COUNT + GROUP BY (5 questions)

1. Compte les etudiants par ville.
2. Compte les cours par semestre.
3. Compte les enseignants par departement.
4. Compte les etudiants par annee d'inscription.
5. Compte les salles par etage.

---

## Navigation

- [Retour au SOMMAIRE](../SOMMAIRE.md)
- [Niveau 2 - Test](16_niveau2_TEST.md)
- [Cours suivant : AVG et GROUP BY](18_niveau3_02_AVG_GROUP_BY.md)

---

**Prochain cours :** AVG et GROUP BY
