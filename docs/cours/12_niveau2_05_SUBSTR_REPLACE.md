# Niveau 2 - SUBSTR et REPLACE

## Navigation

- [Retour au SOMMAIRE](../SOMMAIRE.md)
- [Cours precedent : UPPER, LOWER, LENGTH](11_niveau2_04_UPPER_LOWER_LENGTH.md)
- [Cours suivant : TRIM et concatenation](13_niveau2_06_TRIM_concat.md)

---

## Introduction

Ce cours presente SUBSTR et REPLACE.

**Objectifs :**
- Extraire des sous-chaines avec SUBSTR
- Remplacer du texte avec REPLACE

---

## 1. SUBSTR (sous-chaine)

### Definition

`SUBSTR` extrait une partie d'un texte.

**Syntaxe :**
```sql
SUBSTR(texte, depart, longueur)
```

### Exemple 1 : SUBSTR simple

**Question :** Extraire les 4 premieres lettres du nom.

**Requete :**
```sql
SELECT nom, SUBSTR(nom, 1, 4) AS debut_nom
FROM etudiants;
```

**Explication :**
- `SUBSTR(nom, 1, 4)` : 4 caracteres a partir de la position 1

**Resultat :** Debut des noms.

### Exemple 2 : SUBSTR avec fin

**Question :** Extraire les 3 derniers caracteres de l'email.

**Requete :**
```sql
SELECT email, SUBSTR(email, -3) AS fin_email
FROM etudiants;
```

**Explication :**
- `SUBSTR(email, -3)` : 3 derniers caracteres

**Resultat :** Fin des emails (.fr, .com, etc.).

---

## 2. REPLACE (remplacement)

### Definition

`REPLACE` remplace un texte par un autre.

**Syntaxe :**
```sql
REPLACE(texte, ancien, nouveau)
```

### Exemple 1 : REPLACE simple

**Question :** Remplacer "fr" par "com" dans les emails.

**Requete :**
```sql
SELECT email, REPLACE(email, 'fr', 'com') AS email_modifie
FROM etudiants;
```

**Explication :**
- `REPLACE(email, 'fr', 'com')` : remplace fr par com

**Resultat :** Emails avec .com au lieu de .fr.

---

## Exercices

### Exercice 2.8 - SUBSTR (5 questions)

1. Extrais les 4 premieres lettres du nom.
2. Extrais les 3 derniers caracteres de l'email.
3. Extrais le prenom de l'email (avant le point).
4. Extrais l'annee de naissance de la date.
5. Extrais le domaine de l'email (apres @).

### Exercice 2.9 - REPLACE (4 questions)

1. Remplace "fr" par "com" dans les emails.
2. Remplace les espaces par des tirets dans les noms.
3. Remplace "2024" par "2025" dans les annees d'inscription.
4. Mets les emails en minuscule.

---

## Navigation

- [Retour au SOMMAIRE](../SOMMAIRE.md)
- [Cours precedent : UPPER, LOWER, LENGTH](11_niveau2_04_UPPER_LOWER_LENGTH.md)
- [Cours suivant : TRIM et concatenation](13_niveau2_06_TRIM_concat.md)

---

**Prochain cours :** TRIM et concatenation
