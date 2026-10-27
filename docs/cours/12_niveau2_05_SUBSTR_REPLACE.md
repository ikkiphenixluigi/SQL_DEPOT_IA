# Niveau 2 - Fonctions texte - SUBSTR et REPLACE

## Navigation

- [Retour au SOMMAIRE](../SOMMAIRE.md)
- [Cours precedent : UPPER, LOWER, LENGTH](11_niveau2_04_UPPER_LOWER_LENGTH.md)
- [Cours suivant : TRIM et concatenation](13_niveau2_06_TRIM_concat.md)

---

## Introduction

Ce cours presente SUBSTR, INSTR et REPLACE.

**Objectifs :**
- Extraire des sous-chaines avec SUBSTR
- Reperer un caractere avec INSTR
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

**Resultat :** Trois derniers caracteres des emails (par exemple `.fr` ou `com`).

---

## 2. INSTR (reperer un caractere)

### Definition

`INSTR(texte, motif)` indique la position de la premiere occurrence du motif, en comptant a partir de 1. Si le motif est absent, la fonction renvoie 0. On peut utiliser cette position dans `SUBSTR` pour extraire un texte de longueur variable.

**Exemple :** Dans `thomas.bernard@univ.fr`, la partie avant le premier point est `thomas`. Dans `etudiant.302@univ.fr`, cette partie est `etudiant` : elle ne correspond donc pas necessairement au prenom. Les adresses du projet ne suivent pas toutes le meme format.

**Question :** Extraire la partie de l'email avant le premier point et le domaine apres `@`.

**Requete :**
```sql
SELECT email,
       SUBSTR(email, 1, INSTR(email, '.') - 1) AS partie_avant_point,
       SUBSTR(email, INSTR(email, '@') + 1) AS domaine
FROM etudiants;
```

**Explication :**
- `INSTR(email, '.') - 1` : longueur de la partie avant le premier point.
- `INSTR(email, '@') + 1` : position du premier caractere apres `@`.
- `SUBSTR(email, depart)` sans troisieme argument extrait jusqu'a la fin.
- Cet exemple suppose que l'adresse non NULL contient un point et un `@`, comme les adresses fournies dans le projet.
- Si l'email est NULL, les deux extractions valent NULL ; l'etudiant reste dans le resultat.

---

## 3. REPLACE (remplacement)

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

### Exercice 2.8 (5 questions)

1. Extrais les 4 premieres lettres du nom.
2. Extrais les 3 derniers caracteres de l'email.
3. Affiche le nom, le prenom, l'adresse electronique et la partie de cette adresse situee avant le premier point. Cette partie ne correspond pas necessairement au prenom. Conserve les etudiants dont l'adresse electronique est NULL : la partie extraite sera alors NULL.
4. Extrais l'annee de naissance de la date.
5. Extrais le domaine de l'email (apres @).

### Exercice 2.9 (4 questions)

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