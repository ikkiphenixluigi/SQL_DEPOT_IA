# Niveau 2 - UPPER, LOWER, LENGTH

## Navigation

- [Retour au SOMMAIRE](../SOMMAIRE.md)
- [Cours precedent : POWER et SQRT](10_niveau2_03_POWER_SQRT.md)
- [Cours suivant : SUBSTR et REPLACE](12_niveau2_05_SUBSTR_REPLACE.md)

---

## Introduction

Ce cours presente les fonctions de manipulation de texte UPPER, LOWER et LENGTH.

**Objectifs :**
- Mettre en majuscules avec UPPER
- Mettre en minuscules avec LOWER
- Compter les caracteres avec LENGTH

---

## 1. La fonction UPPER (majuscules)

### Definition

La fonction `UPPER()` convertit un texte en majuscules.

**Syntaxe :**
```sql
UPPER(texte)
```

### Exemple 1 : UPPER simple

**Question :** Afficher les noms des etudiants en majuscules.

**Requete :**
```sql
SELECT nom, UPPER(nom) AS nom_majuscule
FROM etudiants;
```

**Explication :**
- `UPPER('bernard')` = 'BERNARD'
- Conserve deja les majuscules

**Resultat :** Noms originaux et en majuscules.

### Exemple 2 : UPPER avec prenom

**Question :** Afficher nom et prenom tout en majuscules.

**Requete :**
```sql
SELECT 
    UPPER(nom) AS NOM,
    UPPER(prenom) AS PRENOM
FROM etudiants;
```

**Explication :**
- UPPER sur chaque colonne

**Resultat :** Tout en majuscules.

---

## 2. La fonction LOWER (minuscules)

### Definition

La fonction `LOWER()` convertit un texte en minuscules.

**Syntaxe :**
```sql
LOWER(texte)
```

### Exemple 1 : LOWER simple

**Question :** Afficher les emails en minuscules.

**Requete :**
```sql
SELECT email, LOWER(email) AS email_minuscule
FROM etudiants;
```

**Explication :**
- `LOWER('Thomas.BERNARD@univ.fr')` = 'thomas.bernard@univ.fr'
- Utile pour normaliser les emails

**Resultat :** Emails normalises en minuscules.

### Exemple 2 : LOWER avec nom

**Question :** Afficher les noms en minuscules.

**Requete :**
```sql
SELECT nom, LOWER(nom) AS nom_minuscule
FROM etudiants;
```

**Explication :**
- `LOWER('BERNARD')` = 'bernard'

**Resultat :** Noms originaux et en minuscules.

---

## 3. La fonction LENGTH (longueur)

### Definition

La fonction `LENGTH()` retourne le nombre de caracteres d'un texte.

**Syntaxe :**
```sql
LENGTH(texte)
```

### Exemple 1 : LENGTH simple

**Question :** Compter le nombre de caracteres des noms.

**Requete :**
```sql
SELECT nom, LENGTH(nom) AS longueur_nom
FROM etudiants;
```

**Explication :**
- `LENGTH('Bernard')` = 7
- Compte tous les caracteres

**Resultat :** Noms et leur longueur.

### Exemple 2 : LENGTH avec email

**Question :** Compter la longueur des emails.

**Requete :**
```sql
SELECT email, LENGTH(email) AS longueur_email
FROM etudiants;
```

**Explication :**
- Longueur totale de l'email

**Resultat :** Emails et leur longueur.

### Exemple 3 : LENGTH avec condition

**Question :** Trouver les noms de plus de 10 caracteres.

**Requete :**
```sql
SELECT nom, LENGTH(nom) AS longueur
FROM etudiants
WHERE LENGTH(nom) > 10;
```

**Explication :**
- WHERE avec LENGTH
- Filtre les noms longs

**Resultat :** Seulement les noms de plus de 10 caracteres.

---

## Exercices

### Exercice 2.6 - UPPER et LOWER (4 questions)

1. Affiche les noms des etudiants en majuscules.
2. Affiche les prenoms en minuscules.
3. Affiche les emails en majuscules.
4. Compare UPPER(nom) et LOWER(nom) pour chaque etudiant.

### Exercice 2.7 - LENGTH (4 questions)

1. Compte le nombre de caracteres de chaque nom.
2. Compte la longueur des emails.
3. Trouve les etudiants dont le nom a plus de 8 caracteres.
4. Affiche LENGTH(nom) et LENGTH(prenom) pour chaque etudiant.

---

## Navigation

- [Retour au SOMMAIRE](../SOMMAIRE.md)
- [Cours precedent : POWER et SQRT](10_niveau2_03_POWER_SQRT.md)
- [Cours suivant : SUBSTR et REPLACE](12_niveau2_05_SUBSTR_REPLACE.md)

---

**Prochain cours :** SUBSTR et REPLACE
