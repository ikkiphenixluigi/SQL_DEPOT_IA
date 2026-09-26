# Niveau 2 - LIKE avec % et _

## Navigation

- [Retour au SOMMAIRE](../SOMMAIRE.md)
- [Cours precedent : TRIM et concatenation](13_niveau2_06_TRIM_concat.md)
- [Cours suivant : strftime et age](15_niveau2_08_strftime_age.md)

---

## Introduction

Ce cours presente LIKE avec les wildcards % et _.

**Objectifs :**
- Utiliser % (zero ou plusieurs caracteres)
- Utiliser _ (un seul caractere)

---

## 1. LIKE avec %

### Definition

`%` represente zero ou plusieurs caracteres.

**Syntaxe :**
```sql
WHERE colonne LIKE 'pattern%';
```

### Exemple 1 : Commence par

**Question :** Trouver les etudiants dont le nom commence par T.

**Requete :**
```sql
SELECT nom, prenom
FROM etudiants
WHERE nom LIKE 'T%';
```

**Explication :**
- `LIKE 'T%'` : commence par T

**Resultat :** Noms commencant par T.

### Exemple 2 : Finit par

**Question :** Trouver les etudiants dont le nom finit par s.

**Requete :**
```sql
SELECT nom, prenom
FROM etudiants
WHERE nom LIKE '%s';
```

**Explication :**
- `LIKE '%s'` : finit par s

**Resultat :** Noms finissant par s.

### Exemple 3 : Contient

**Question :** Trouver les etudiants dont le nom contient er.

**Requete :**
```sql
SELECT nom, prenom
FROM etudiants
WHERE nom LIKE '%er%';
```

**Explication :**
- `LIKE '%er%'` : contient er

**Resultat :** Noms avec er.

---

## 2. LIKE avec _

### Definition

`_` represente exactement un caractere.

**Syntaxe :**
```sql
WHERE colonne LIKE 'a_b';
```

### Exemple 1 : Un caractere

**Question :** Trouver les noms de 4 lettres.

**Requete :**
```sql
SELECT nom
FROM etudiants
WHERE nom LIKE '____';
```

**Explication :**
- `LIKE '____'` : exactement 4 caracteres

**Resultat :** Noms de 4 lettres.

### Exemple 2 : Pattern avec _

**Question :** Trouver les noms commencant par 2 lettres puis a.

**Requete :**
```sql
SELECT nom
FROM etudiants
WHERE nom LIKE '__a%';
```

**Explication :**
- `LIKE '__a%'` : 2 lettres, puis a, puis le reste

**Resultat :** Noms avec ce pattern.

---

## Exercices

### Exercice 2.11 (5 questions)

1. Trouve les etudiants dont le nom commence par T.
2. Trouve les etudiants dont le nom finit par s.
3. Trouve les etudiants dont le nom contient er.
4. Trouve les emails qui finissent par univ.fr.
5. Trouve les lycees dont la ville commence par P.

### Exercice 2.12 (5 questions)

1. Trouve les noms de 4 lettres.
2. Trouve les noms commencant par 2 lettres puis a.
3. Trouve les prenoms de 5 lettres commencant par M.
4. Trouve les emails de exactement 20 caracteres.
5. Trouve les noms commencant par B, une lettre, puis rn et finissant par d.

---

## Navigation

- [Retour au SOMMAIRE](../SOMMAIRE.md)
- [Cours precedent : TRIM et concatenation](13_niveau2_06_TRIM_concat.md)
- [Cours suivant : strftime et age](15_niveau2_08_strftime_age.md)

---

**Prochain cours :** strftime() et calcul d'age
