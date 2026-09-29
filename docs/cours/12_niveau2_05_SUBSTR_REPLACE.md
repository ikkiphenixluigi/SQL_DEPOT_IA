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

**Resultat :** Fin des emails (.fr, .com, etc.).

---

## 2. INSTR (reperer un caractere)

### Definition

`INSTR(texte, motif)` indique la position de la premiere occurrence du motif, en comptant a partir de 1. Si le motif est absent, la fonction renvoie 0. On peut utiliser cette position dans `SUBSTR` pour extraire un texte de longueur variable.

**Exemple :** Dans `thomas.bernard@univ.fr`, le point se trouve avant `@` ; les adresses du projet suivent le format `prenom.nom@univ.fr`.

**Question :** Extraire le prenom avant le premier point et le domaine apres `@`.

**Requete :**
```sql
SELECT email,
       SUBSTR(email, 1, INSTR(email, '.') - 1) AS prenom,
       SUBSTR(email, INSTR(email, '@') + 1) AS domaine
FROM etudiants;
```

**Explication :**
- `INSTR(email, '.') - 1` : longueur du prenom avant le point.
- `INSTR(email, '@') + 1` : position du premier caractere apres `@`.
- `SUBSTR(email, depart)` sans troisieme argument extrait jusqu'a la fin.

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
3. Extrais le prenom de l'email (avant le point).
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