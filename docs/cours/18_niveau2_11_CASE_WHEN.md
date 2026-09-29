# Niveau 2 - Fonctions avancees - CASE WHEN

## Navigation

- [Retour au SOMMAIRE](../SOMMAIRE.md)
- [Cours precedent : Calcul d'age](17_niveau2_10_age.md)
- [Cours suivant : Test NIVEAU 2](19_niveau2_TEST.md)

---

## Introduction

Ce cours presente CASE WHEN pour les conditions.

**Objectifs :**
- Utiliser CASE WHEN pour les tests
- Creer des categories dynamiques

---

## 1. CASE WHEN

### Definition

`CASE WHEN` permet de faire des tests conditionnels.

**Syntaxe :**
```sql
CASE
    WHEN condition1 THEN resultat1
    WHEN condition2 THEN resultat2
    ELSE resultat_defaut
END
```

### Exemple 1 : CASE WHEN simple

**Question :** Afficher "Valide" ou "Non valide" selon la note.

**Requete :**
```sql
SELECT id_note, note,
    CASE WHEN note >= 10 THEN 'Valide' ELSE 'Non valide' END AS resultat
FROM notes;
```

**Explication :**
- `WHEN note >= 10` : si note >= 10
- `THEN 'Valide'` : alors 'Valide'
- `ELSE 'Non valide'` : sinon 'Non valide'

**Resultat :** Notes avec resultat.

### Exemple 2 : CASE WHEN avec plusieurs conditions

**Question :** Afficher la mention selon la note.

**Requete :**
```sql
SELECT id_note, note,
    CASE
        WHEN note >= 16 THEN 'Tres bien'
        WHEN note >= 14 THEN 'Bien'
        WHEN note >= 12 THEN 'Assez bien'
        WHEN note >= 10 THEN 'Passable'
        ELSE 'Ajourne'
    END AS mention
FROM notes;
```

**Explication :**
- Plusieurs conditions WHEN
- La premiere condition vraie est utilisee

**Resultat :** Notes avec mention.

---

## Exercices

### Exercice 2.17 (5 questions)

1. Affiche l'identifiant, la note et une colonne `resultat` indiquant `Valide` si la note est d'au moins 10, sinon `Non valide`. Ne conserve que les notes de coefficient 2 ; trie-les par note decroissante et affiche cinq lignes.
2. Affiche le code, le nom, les credits et une colonne `categorie` indiquant `6 credits` si le cours vaut 6 credits, sinon `Autre cours`. Trie par credits decroissants, puis par code croissant.
3. Affiche le nom, le prenom, le grade et une colonne `categorie_grade` indiquant `Professeur` pour ce grade, sinon `Autre grade`. Trie par categorie puis par nom croissants.
4. Affiche le nom, le prenom, l'annee d'inscription et une colonne `promotion` indiquant `Promotion 2024` ou `Promotion 2025` selon l'annee. Ne conserve que les etudiants dont le nom commence par B ; trie-les par annee puis par nom croissants.
5. Affiche l'identifiant, la note et une colonne `mention` : `Tres bien` a partir de 16, `Bien` de 14 a moins de 16, `Assez bien` de 12 a moins de 14, `Passable` de 10 a moins de 12 et `Ajourne` en dessous de 10. Ne conserve que les notes d'au moins 8 et trie-les par note decroissante.

---

## Navigation

- [Retour au SOMMAIRE](../SOMMAIRE.md)
- [Cours precedent : Calcul d'age](17_niveau2_10_age.md)
- [Cours suivant : Test NIVEAU 2](19_niveau2_TEST.md)

---

**Prochain cours :** Test recapitulatif NIVEAU 2