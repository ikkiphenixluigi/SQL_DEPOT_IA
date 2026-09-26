# Niveau 2 - Fonctions texte - CAST

## Navigation

- [Retour au SOMMAIRE](../SOMMAIRE.md)
- [Cours precedent : LIKE](14_niveau2_07_LIKE.md)
- [Cours suivant : strftime()](16_niveau2_09_strftime.md)

---

## Introduction

Ce cours presente CAST pour convertir les types.

**Objectifs :**
- Convertir un type en un autre
- Utiliser CAST dans les requetes

---

## 1. CAST (conversion)

### Definition

`CAST` convertit une valeur d'un type a un autre.

**Syntaxe :**
```sql
CAST(valeur AS TYPE)
```

### Exemple 1 : CAST en INTEGER

**Question :** Convertir les notes en entier.

**Requete :**
```sql
SELECT note, CAST(note AS INTEGER) AS note_entier
FROM notes;
```

**Explication :**
- `CAST(note AS INTEGER)` : convertit en entier
- Les decimales sont supprimees

**Resultat :** Notes en entier.

### Exemple 2 : CAST en TEXT

**Question :** Concatener les credits avec du texte.

**Requete :**
```sql
SELECT credits, CAST(credits AS TEXT) || ' credits' AS credits_texte
FROM cours;
```

**Explication :**
- `CAST(credits AS TEXT)` : convertit en texte
- Permet la concatenation

**Resultat :** Credits avec texte.

---

## Exercices

### Exercice 2.13 (4 questions)

1. Convertis les notes en entier.
2. Concatene les credits avec ' credits'.
3. Convertis les annees d'inscription en texte.
4. Affiche les notes en entier et en texte.

---

## Navigation

- [Retour au SOMMAIRE](../SOMMAIRE.md)
- [Cours precedent : LIKE](14_niveau2_07_LIKE.md)
- [Cours suivant : strftime()](16_niveau2_09_strftime.md)

---

**Prochain cours :** strftime() (fonctions date)
