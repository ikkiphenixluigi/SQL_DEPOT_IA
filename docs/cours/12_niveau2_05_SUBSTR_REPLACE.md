# Niveau 2 - SUBSTR et REPLACE

## Navigation

- [Retour au SOMMAIRE](../SOMMAIRE.md)
- [Cours precedent : UPPER, LOWER, LENGTH](11_niveau2_04_UPPER_LOWER_LENGTH.md)
- [Cours suivant : TRIM et concatenation](13_niveau2_06_TRIM_concat.md)

---

## Introduction

Ce cours presente les fonctions SUBSTR (extraction de sous-chaine) et REPLACE (remplacement de texte).

**Objectifs :**
- Extraire des parties de texte avec SUBSTR
- Remplacer du texte avec REPLACE

---

## 1. La fonction SUBSTR (sous-chaine)

### Definition

La fonction `SUBSTR()` extrait une partie d'un texte.

**Syntaxe :**
```sql
SUBSTR(texte, depart, longueur)
```

- `texte` : le texte original
- `depart` : position de depart (1 = premier caractere)
- `longueur` : nombre de caracteres a extraire (optionnel)

### Exemple 1 : SUBSTR simple

**Question :** Extraire les 3 premiers caracteres des noms.

**Requete :**
```sql
SELECT nom, SUBSTR(nom, 1, 3) AS debut_nom
FROM etudiants;
```

**Explication :**
- `SUBSTR('Bernard', 1, 3)` = 'Ber'
- Depart a 1, longueur 3

**Resultat :** Noms et leurs 3 premiers caracteres.

### Exemple 2 : SUBSTR sans longueur

**Question :** Extraire a partir du 2eme caractere jusqu'a la fin.

**Requete :**
```sql
SELECT nom, SUBSTR(nom, 2) AS nom_sans_1er
FROM etudiants;
```

**Explication :**
- `SUBSTR('Bernard', 2)` = 'ernard'
- Sans longueur = jusqu'a la fin

**Resultat :** Noms sans le premier caractere.

### Exemple 3 : SUBSTR avec email

**Question :** Extraire le domaine des emails (apres @).

**Requete :**
```sql
SELECT 
    email,
    SUBSTR(email, INSTR(email, '@') + 1) AS domaine
FROM etudiants;
```

**Explication :**
- `INSTR(email, '@')` : trouve la position de @
- `+ 1` : commence apres @
- Extrait le domaine

**Resultat :** Emails et leurs domaines.

---

## 2. La fonction REPLACE (remplacement)

### Definition

La fonction `REPLACE()` remplace toutes les occurrences d'un texte par un autre.

**Syntaxe :**
```sql
REPLACE(texte, ancien, nouveau)
```

- `texte` : le texte original
- `ancien` : le texte a remplacer
- `nouveau` : le texte de remplacement

### Exemple 1 : REPLACE simple

**Question :** Remplacer 'univ' par 'universite' dans les emails.

**Requete :**
```sql
SELECT 
    email,
    REPLACE(email, 'univ', 'universite') AS email_corrige
FROM etudiants;
```

**Explication :**
- Remplace 'univ' par 'universite'
- `REPLACE('thomas.univ@univ.fr', 'univ', 'universite')` = 'thomas.universite@universite.fr'

**Resultat :** Emails avec remplacement.

### Exemple 2 : REPLACE pour supprimer

**Question :** Supprimer les espaces des noms.

**Requete :**
```sql
SELECT nom, REPLACE(nom, ' ', '') AS nom_sans_espaces
FROM etudiants;
```

**Explication :**
- Remplace ' ' (espace) par '' (rien)
- Supprime les espaces

**Resultat :** Noms sans espaces.

### Exemple 3 : REPLACE avec chiffres

**Question :** Remplacer '2024' par '2025' dans les annees.

**Requete :**
```sql
SELECT 
    annee_inscription,
    REPLACE(CAST(annee_inscription AS TEXT), '2024', '2025') AS nouvelle_annee
FROM etudiants;
```

**Explication :**
- CAST pour convertir en texte
- Remplace 2024 par 2025

**Resultat :** Annees mises a jour.

---

## Exercices

### Exercice 2.8 - SUBSTR (5 questions)

1. Extrais les 4 premiers caracteres de chaque nom.
2. Extrais les 3 derniers caracteres de chaque email.
3. Extrais le prenom complet a partir de la colonne email (avant le point).
4. Utilise SUBSTR pour afficher seulement l'annee de date_naissance.
5. Extrais le domaine des emails (tout ce qui est apres @).

### Exercice 2.9 - REPLACE (4 questions)

1. Remplace 'fr' par 'com' dans tous les emails.
2. Remplace les espaces par des tirets dans les noms (si applicable).
3. Remplace '2024' par '2025' dans annee_inscription.
4. Utilise REPLACE pour mettre les emails en minuscules (indice : combine avec LOWER).

---

## Navigation

- [Retour au SOMMAIRE](../SOMMAIRE.md)
- [Cours precedent : UPPER, LOWER, LENGTH](11_niveau2_04_UPPER_LOWER_LENGTH.md)
- [Cours suivant : TRIM et concatenation](13_niveau2_06_TRIM_concat.md)

---

**Prochain cours :** TRIM et concatenation
