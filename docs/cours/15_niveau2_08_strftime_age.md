# Niveau 2 - strftime et calcul d'age

## Navigation

- [Retour au SOMMAIRE](../SOMMAIRE.md)
- [Cours precedent : LIKE](14_niveau2_07_LIKE.md)
- [Cours suivant : Test Niveau 2](16_niveau2_TEST.md)

---

## Introduction

Ce cours presente les fonctions strftime pour manipuler les dates et le calcul d'age.

**Objectifs :**
- Extraire des parties de dates avec strftime
- Calculer des differences de dates
- Calculer l'age d'une personne

---

## 1. strftime() - extraction de dates

### Definition

La fonction `strftime()` extrait des parties d'une date selon un format.

**Syntaxe :**
```sql
strftime(format, date)
```

**Formats courants :**
- '%Y' : annee sur 4 chiffres (2003)
- '%m' : mois sur 2 chiffres (01 a 12)
- '%d' : jour sur 2 chiffres (01 a 31)
- '%w' : jour de la semaine (0 = dimanche)
- '%H' : heure (00 a 23)
- '%M' : minutes (00 a 59)

### Exemple 1 : Extraire l'annee

**Question :** Extraire l'annee de naissance.

**Requete :**
```sql
SELECT 
    nom,
    date_naissance,
    strftime('%Y', date_naissance) AS annee
FROM etudiants;
```

**Explication :**
- `strftime('%Y', '2003-04-08')` = '2003'
- Extrait l'annee

**Resultat :** Noms, dates et annees.

### Exemple 2 : Extraire le mois

**Question :** Extraire le mois de naissance.

**Requete :**
```sql
SELECT 
    nom,
    date_naissance,
    strftime('%m', date_naissance) AS mois
FROM etudiants;
```

**Explication :**
- `strftime('%m', '2003-04-08')` = '04'
- Extrait le mois

**Resultat :** Noms, dates et mois.

### Exemple 3 : Extraire le jour de la semaine

**Question :** Savoir quel jour de la semaine est la naissance.

**Requete :**
```sql
SELECT 
    nom,
    date_naissance,
    strftime('%w', date_naissance) AS jour_semaine
FROM etudiants;
```

**Explication :**
- `strftime('%w', date)` = 0 a 6
- 0 = dimanche, 1 = lundi, etc.

**Resultat :** Jour de la semaine.

---

## 2. strftime() - formatage

### Definition

On peut combiner plusieurs formats pour creer des dates formatees.

### Exemple 1 : Formater en JJ/MM/AAAA

**Question :** Afficher les dates au format francais.

**Requete :**
```sql
SELECT 
    nom,
    date_naissance,
    strftime('%d/%m/%Y', date_naissance) AS date_francaise
FROM etudiants;
```

**Explication :**
- Combine jour, mois, annee
- Separateurs '/'

**Resultat :** Dates au format JJ/MM/AAAA.

### Exemple 2 : Formater avec texte

**Question :** Afficher 'Ne en AAAA'.

**Requete :**
```sql
SELECT 
    nom,
    'Ne en ' || strftime('%Y', date_naissance) AS info_naissance
FROM etudiants;
```

**Explication :**
- Texte fixe + annee extraite
- Concatenation avec ||

**Resultat :** Informations formatees.

---

## 3. Calcul d'age

### Definition

Pour calculer l'age, on soustrait l'annee de naissance de l'annee actuelle.

### Exemple 1 : Age simple

**Question :** Calculer l'age de chaque etudiant.

**Requete :**
```sql
SELECT 
    nom,
    date_naissance,
    CAST(strftime('%Y', 'now') AS INTEGER) 
    - CAST(strftime('%Y', date_naissance) AS INTEGER) AS age
FROM etudiants;
```

**Explication :**
- `strftime('%Y', 'now')` : annee actuelle
- `strftime('%Y', date_naissance)` : annee de naissance
- CAST pour convertir en entier
- Soustraction pour l'age

**Resultat :** Noms, dates et ages.

### Exemple 2 : Age avec condition

**Question :** Trouver les etudiants de plus de 22 ans.

**Requete :**
```sql
SELECT 
    nom,
    date_naissance,
    CAST(strftime('%Y', 'now') AS INTEGER) 
    - CAST(strftime('%Y', date_naissance) AS INTEGER) AS age
FROM etudiants
WHERE CAST(strftime('%Y', 'now') AS INTEGER) 
      - CAST(strftime('%Y', date_naissance) AS INTEGER) > 22;
```

**Explication :**
- WHERE avec calcul d'age
- Filtre les plus de 22 ans

**Resultat :** Etudiants de plus de 22 ans.

### Exemple 3 : Age par annee de naissance

**Question :** Calculer l'age moyen par annee.

**Requete :**
```sql
SELECT 
    strftime('%Y', date_naissance) AS annee,
    COUNT(*) AS nb_etudiants,
    AVG(CAST(strftime('%Y', 'now') AS INTEGER) 
        - CAST(strftime('%Y', date_naissance) AS INTEGER)) AS age_moyen
FROM etudiants
GROUP BY strftime('%Y', date_naissance);
```

**Explication :**
- GROUP BY annee de naissance
- COUNT et AVG pour statistiques

**Resultat :** Statistiques par annee.

---

## Exercices

### Exercice 2.13 - strftime() extraction (4 questions)

1. Extrais l'annee de naissance de chaque etudiant.
2. Extrais le mois de naissance.
3. Extrais le jour de naissance.
4. Affiche le jour de la semaine de naissance (0-6).

### Exercice 2.14 - strftime() formatage (4 questions)

1. Formate les dates au format 'JJ/MM/AAAA'.
2. Affiche 'Ne le JJ/MM/AAAA' pour chaque etudiant.
3. Formate les dates au format 'AAAA-MM'.
4. Affiche seulement le mois et l'annee 'MM/AAAA'.

### Exercice 2.15 - Calcul d'age (5 questions)

1. Calcule l'age de chaque etudiant.
2. Trouve les etudiants de 22 ans ou plus.
3. Calcule l'age moyen de tous les etudiants.
4. Groupe les etudiants par age et compte-les.
5. Trouve l'etudiant le plus jeune et le plus age.

---

## Navigation

- [Retour au SOMMAIRE](../SOMMAIRE.md)
- [Cours precedent : LIKE](14_niveau2_07_LIKE.md)
- [Cours suivant : Test Niveau 2](16_niveau2_TEST.md)

---

**Prochain cours :** Test recapitulatif Niveau 2
