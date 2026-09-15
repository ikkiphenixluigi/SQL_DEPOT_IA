# Niveau 2 - LIKE avec % et _

## Navigation

- [Retour au SOMMAIRE](../SOMMAIRE.md)
- [Cours precedent : TRIM et concatenation](13_niveau2_06_TRIM_concat.md)
- [Cours suivant : strftime et calcul d'age](15_niveau2_08_strftime_age.md)

---

## Introduction

Ce cours presente l'operateur LIKE pour la recherche de motifs avec les caracteres speciaux % et _.

**Objectifs :**
- Utiliser LIKE avec % (n'importe quelle suite de caracteres)
- Utiliser LIKE avec _ (un seul caractere)
- Combiner les motifs

---

## 1. LIKE avec % (pourcentage)

### Definition

Le caractere `%` dans LIKE represente n'importe quelle suite de caracteres (y compris vide).

**Syntaxe :**
```sql
WHERE colonne LIKE 'motif%'
```

### Exemple 1 : Commence par

**Question :** Trouver les noms qui commencent par 'B'.

**Requete :**
```sql
SELECT nom
FROM etudiants
WHERE nom LIKE 'B%';
```

**Explication :**
- `'B%'` : commence par B, suivi de n'importe quoi
- Correspond a 'Bernard', 'Blanc', 'Bertrand', etc.

**Resultat :** Noms commencant par B.

### Exemple 2 : Finit par

**Question :** Trouver les noms qui finissent par 'd'.

**Requete :**
```sql
SELECT nom
FROM etudiants
WHERE nom LIKE '%d';
```

**Explication :**
- `'%d'` : n'importe quoi, termine par d
- Correspond a 'Bernard', 'David', 'Arnaud', etc.

**Resultat :** Noms finissant par d.

### Exemple 3 : Contient

**Question :** Trouver les noms qui contiennent 'an'.

**Requete :**
```sql
SELECT nom
FROM etudiants
WHERE nom LIKE '%an%';
```

**Explication :**
- `'%an%'` : contient 'an' quelque part
- Correspond a 'Bernard', 'Laurent', 'Martin', etc.

**Resultat :** Noms contenant 'an'.

---

## 2. LIKE avec _ (tiret bas)

### Definition

Le caractere `_` dans LIKE represente exactement un caractere.

**Syntaxe :**
```sql
WHERE colonne LIKE 'motif_'
```

### Exemple 1 : Un caractere precis

**Question :** Trouver les noms de 5 lettres commencant par 'P'.

**Requete :**
```sql
SELECT nom
FROM etudiants
WHERE nom LIKE 'P____';
```

**Explication :**
- `'P____'` : P suivi de 4 caracteres
- Correspond a 'Petit', 'Pierre', etc. (si 5 lettres)

**Resultat :** Noms de 5 lettres commencant par P.

### Exemple 2 : Motif avec _ au milieu

**Question :** Trouver les noms comme 'M_rtin'.

**Requete :**
```sql
SELECT nom
FROM etudiants
WHERE nom LIKE 'M_rtin';
```

**Explication :**
- `'M_rtin'` : M, un caractere, puis 'rtin'
- Correspond a 'Martin'

**Resultat :** Noms correspondant au motif.

### Exemple 3 : Combinaison % et _

**Question :** Trouver les noms avec 't' comme 2eme lettre.

**Requete :**
```sql
SELECT nom
FROM etudiants
WHERE nom LIKE '_t%';
```

**Explication :**
- `'_t%'` : un caractere, puis 't', puis n'importe quoi
- Correspond a 'Thomas', 'Martin', etc.

**Resultat :** Noms avec 't' en 2eme position.

---

## Exercices

### Exercice 2.11 - LIKE avec % (5 questions)

1. Trouve les etudiants dont le nom commence par 'T'.
2. Trouve les etudiants dont le nom finit par 's'.
3. Trouve les etudiants dont le nom contient 'er'.
4. Trouve les emails qui finissent par 'univ.fr'.
5. Trouve les villes qui commencent par 'P'.

### Exercice 2.12 - LIKE avec _ et % (5 questions)

1. Trouve les noms de 4 lettres.
2. Trouve les noms avec 'a' comme 3eme lettre.
3. Trouve les prenoms qui commencent par 'M' et ont 5 lettres.
4. Trouve les emails avec exactement 20 caracteres.
5. Combine % et _ pour trouver les noms comme 'B_rn_rd'.

---

## Navigation

- [Retour au SOMMAIRE](../SOMMAIRE.md)
- [Cours precedent : TRIM et concatenation](13_niveau2_06_TRIM_concat.md)
- [Cours suivant : strftime et calcul d'age](15_niveau2_08_strftime_age.md)

---

**Prochain cours :** strftime et calcul d'age
