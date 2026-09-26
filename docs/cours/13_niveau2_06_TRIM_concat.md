# Niveau 2 - TRIM et concatenation

## Navigation

- [Retour au SOMMAIRE](../SOMMAIRE.md)
- [Cours precedent : SUBSTR, REPLACE](12_niveau2_05_SUBSTR_REPLACE.md)
- [Cours suivant : LIKE](14_niveau2_07_LIKE.md)

---

## Introduction

Ce cours presente TRIM et la concatenation.

**Objectifs :**
- Nettoyer les espaces avec TRIM
- Concatener avec ||

---

## 1. TRIM

### Definition

`TRIM` supprime les espaces au debut et a la fin.

**Syntaxe :**
```sql
TRIM(texte)
```

### Exemple 1 : TRIM simple

**Question :** Nettoyer les noms.

**Requete :**
```sql
SELECT nom, TRIM(nom) AS nom_nettoye, LENGTH(nom) AS long, LENGTH(TRIM(nom)) AS long_net
FROM etudiants;
```

**Explication :**
- `TRIM(nom)` : enleve les espaces

**Resultat :** Noms nettoyes.

---

## 2. Concatenation (||)

### Definition

`||` concatene (assemble) des textes.

**Syntaxe :**
```sql
texte1 || texte2
```

### Exemple 1 : Concatenation simple

**Question :** Afficher le nom complet.

**Requete :**
```sql
SELECT nom || ' ' || prenom AS nom_complet
FROM etudiants;
```

**Explication :**
- `nom || ' ' || prenom` : assemble nom, espace, prenom

**Resultat :** Noms complets.

### Exemple 2 : Generer des emails

**Question :** Generer des emails universitaires.

**Requete :**
```sql
SELECT LOWER(nom) || '.' || LOWER(prenom) || '@univ.fr' AS email_genere
FROM etudiants;
```

**Explication :**
- Concatenation de plusieurs parties

**Resultat :** Emails generes.

---

## Exercices

### Exercice 2.10 (5 questions)

1. Nettoie les noms et compare les longueurs.
2. Affiche le nom complet (nom + prenom).
3. Genere des emails universitaires.
4. Ajoute "Cours : " devant le nom des cours.
5. Affiche le nom complet en majuscule.

---

## Navigation

- [Retour au SOMMAIRE](../SOMMAIRE.md)
- [Cours precedent : SUBSTR, REPLACE](12_niveau2_05_SUBSTR_REPLACE.md)
- [Cours suivant : LIKE](14_niveau2_07_LIKE.md)

---

**Prochain cours :** LIKE avec % et _
