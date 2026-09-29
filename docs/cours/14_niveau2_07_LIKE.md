# Niveau 2 - Fonctions texte - LIKE

## Navigation

- [Retour au SOMMAIRE](../SOMMAIRE.md)
- [Cours precedent : TRIM et concatenation](13_niveau2_06_TRIM_concat.md)
- [Cours suivant : CAST](15_niveau2_08_CAST.md)

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

1. Affiche le nom, le prenom et la ville des etudiants dont le nom commence par B. Trie-les par nom puis par prenom croissants.
2. Affiche le nom et le prenom des etudiants dont le nom se termine par d et dont l'annee d'inscription est 2024. Trie-les par nom croissant.
3. Affiche le nom, le prenom et l'adresse electronique des etudiants dont le nom contient ar. Trie-les par nom croissant.
4. Affiche le code, le nom et les credits des cours dont le nom contient Introduction et qui valent au moins 4 credits. Trie-les par credits decroissants, puis par code croissant.
5. Affiche le nom et la ville des lycees dont la ville commence par P ou par L. Trie-les par ville puis par nom croissants.

### Exercice 2.12 (5 questions)

1. Affiche le nom et le prenom des etudiants dont le nom comporte exactement cinq lettres et commence par P. Trie-les par nom croissant.
2. Affiche le nom et le prenom des etudiants dont le nom a a comme deuxieme lettre. Trie-les par nom puis par prenom croissants.
3. Affiche le nom et le prenom des etudiants dont le prenom commence par L et comporte exactement trois lettres. Trie-les par prenom croissant.
4. Affiche le nom, le prenom et l'adresse electronique des etudiants dont le nom commence par B et a r comme troisieme lettre. Trie-les par nom croissant.
5. Affiche le nom et la ville des lycees dont le nom commence par Lycee suivi d'un espace puis d'au moins un caractere. Trie-les par nom croissant.

---

## Navigation

- [Retour au SOMMAIRE](../SOMMAIRE.md)
- [Cours precedent : TRIM et concatenation](13_niveau2_06_TRIM_concat.md)
- [Cours suivant : CAST](15_niveau2_08_CAST.md)

---

**Prochain cours :** CAST (conversion de types)