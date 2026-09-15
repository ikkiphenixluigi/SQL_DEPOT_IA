# Niveau 2 - TRIM et concatenation

## Navigation

- [Retour au SOMMAIRE](../SOMMAIRE.md)
- [Cours precedent : SUBSTR et REPLACE](12_niveau2_05_SUBSTR_REPLACE.md)
- [Cours suivant : LIKE](14_niveau2_07_LIKE.md)

---

## Introduction

Ce cours presente les fonctions TRIM (nettoyage d'espaces) et la concatenation de textes.

**Objectifs :**
- Nettoyer les espaces avec TRIM, LTRIM, RTRIM
- Concatener des textes avec ||

---

## 1. La fonction TRIM (nettoyage)

### Definition

La fonction `TRIM()` supprime les espaces au debut et a la fin d'un texte.

**Syntaxe :**
```sql
TRIM(texte)
LTRIM(texte)  -- gauche seulement
RTRIM(texte)  -- droite seulement
```

### Exemple 1 : TRIM simple

**Question :** Nettoyer les noms avec espaces.

**Requete :**
```sql
SELECT nom, TRIM(nom) AS nom_nettoye
FROM etudiants;
```

**Explication :**
- `TRIM('  Bernard  ')` = 'Bernard'
- Supprime espaces debut et fin

**Resultat :** Noms nettoyes.

### Exemple 2 : LTRIM et RTRIM

**Question :** Nettoyer seulement a gauche.

**Requete :**
```sql
SELECT 
    nom,
    LTRIM(nom) AS nom_sans_espace_gauche,
    RTRIM(nom) AS nom_sans_espace_droite
FROM etudiants;
```

**Explication :**
- `LTRIM` : gauche seulement
- `RTRIM` : droite seulement

**Resultat :** Comparaison des 3 versions.

### Exemple 3 : TRIM avec WHERE

**Question :** Trouver les noms avec espaces.

**Requete :**
```sql
SELECT nom, LENGTH(nom) AS long, LENGTH(TRIM(nom)) AS long_nettoye
FROM etudiants
WHERE LENGTH(nom) > LENGTH(TRIM(nom));
```

**Explication :**
- WHERE compare longueurs
- Garde seulement les noms avec espaces

**Resultat :** Noms qui ont des espaces.

---

## 2. Concatenation avec ||

### Definition

L'operateur `||` permet de concatener (assembler) plusieurs textes.

**Syntaxe :**
```sql
texte1 || texte2 || texte3
```

### Exemple 1 : Concatenation simple

**Question :** Concatener nom et prenom.

**Requete :**
```sql
SELECT nom || ' ' || prenom AS nom_complet
FROM etudiants;
```

**Explication :**
- `||` : operateur de concatenation
- `' '` : espace entre nom et prenom

**Resultat :** Noms complets (ex: 'Bernard Thomas').

### Exemple 2 : Concatenation avec texte fixe

**Question :** Creer des emails fictifs.

**Requete :**
```sql
SELECT 
    LOWER(nom) || '.' || LOWER(prenom) || '@univ.fr' AS email_fictif
FROM etudiants;
```

**Explication :**
- Concatenation de plusieurs parties
- LOWER pour normaliser

**Resultat :** Emails generes.

### Exemple 3 : Concatenation avec chiffres

**Question :** Concatener texte et nombre.

**Requete :**
```sql
SELECT 
    'Etudiant ' || id_etudiant || ' : ' || nom AS description
FROM etudiants;
```

**Explication :**
- SQLite convertit automatiquement les nombres en texte
- Concatenation avec texte fixe

**Resultat :** Descriptions formatees.

---

## Exercices

### Exercice 2.10 - TRIM et concatenation (5 questions)

1. Nettoie les noms avec TRIM et compare avec les originaux.
2. Concatene nom et prenom avec un espace entre les deux.
3. Cree des emails au format 'nom.prenom@univ.fr' en utilisant LOWER et ||.
4. Affiche 'Cours : ' suivi du nom_cours pour chaque cours.
5. Utilise TRIM, UPPER et || pour afficher 'NOM : nom_complet' en majuscules.

---

## Navigation

- [Retour au SOMMAIRE](../SOMMAIRE.md)
- [Cours precedent : SUBSTR et REPLACE](12_niveau2_05_SUBSTR_REPLACE.md)
- [Cours suivant : LIKE](14_niveau2_07_LIKE.md)

---

**Prochain cours :** LIKE avec % et _
