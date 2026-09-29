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

1. Affiche l'identifiant de la note, sa valeur d'origine et sa conversion en entier pour les notes d'au moins 10. Trie les resultats par note decroissante et limite-les a cinq lignes.
2. Affiche le code, le nom et les credits des cours de 6 credits. Ajoute une colonne formee des credits convertis en texte, suivis de ` credits`. Trie par code croissant.
3. Affiche le nom, le prenom et l'annee d'inscription des etudiants inscrits en 2025. Ajoute une colonne contenant le texte `Promotion ` suivi de l'annee convertie en texte.
4. Affiche la note, son coefficient et le produit note multipliee par coefficient, puis convertis ce produit en entier dans une colonne distincte. Ne conserve que les evaluations de coefficient 2 et affiche cinq lignes apres un tri par note decroissante.

---

## Navigation

- [Retour au SOMMAIRE](../SOMMAIRE.md)
- [Cours precedent : LIKE](14_niveau2_07_LIKE.md)
- [Cours suivant : strftime()](16_niveau2_09_strftime.md)

---

**Prochain cours :** strftime() (fonctions date)