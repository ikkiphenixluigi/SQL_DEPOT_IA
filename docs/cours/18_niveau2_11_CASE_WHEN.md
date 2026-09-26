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

**Question :** Afficher "Validé" ou "Non validé" selon la note.

**Requete :**
```sql
SELECT nom, note,
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
SELECT nom, note,
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

1. Affiche "Validé" ou "Non validé" selon la note.
2. Affiche "Grand cours" ou "Petit cours" selon les credits.
3. Affiche la mention (Tres bien, Bien, Assez bien, Passable, Ajourne) selon la note.
4. Affiche "Nouveau" ou "Ancien" selon l'annee d'inscription.
5. Affiche "Pas de note" ou la note selon si NULL.

---

## Navigation

- [Retour au SOMMAIRE](../SOMMAIRE.md)
- [Cours precedent : Calcul d'age](17_niveau2_10_age.md)
- [Cours suivant : Test NIVEAU 2](19_niveau2_TEST.md)

---

**Prochain cours :** Test recapitulatif NIVEAU 2
