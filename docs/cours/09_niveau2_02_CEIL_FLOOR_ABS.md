# Niveau 2 - Fonctions numeriques - CEIL, FLOOR, ABS

## Navigation

- [Retour au SOMMAIRE](../SOMMAIRE.md)
- [Cours precedent : Operations et ROUND](08_niveau2_01_operations_ROUND.md)
- [Cours suivant : POWER, SQRT](10_niveau2_03_POWER_SQRT.md)

---

## Introduction

Ce cours presente CEIL, FLOOR et ABS.

**Objectifs :**
- Arrondir au superieur avec CEIL
- Arrondir a l'inferieur avec FLOOR
- Obtenir la valeur absolue avec ABS

---

## 1. CEIL (plafond)

### Definition

`CEIL` arrondit au superieur.

**Syntaxe :**
```sql
CEIL(nombre)
```

### Exemple 1 : CEIL simple

**Question :** Arrondir les notes au superieur.

**Requete :**
```sql
SELECT note, CEIL(note) AS note_plafond
FROM notes;
```

**Explication :**
- `CEIL(note)` : arrondit a l'entier superieur

**Resultat :** Notes arrondies au-dessus.

---

## 2. FLOOR (plancher)

### Definition

`FLOOR` arrondit a l'inferieur.

**Syntaxe :**
```sql
FLOOR(nombre)
```

### Exemple 1 : FLOOR simple

**Question :** Arrondir les notes a l'inferieur.

**Requete :**
```sql
SELECT note, FLOOR(note) AS note_plancher
FROM notes;
```

**Explication :**
- `FLOOR(note)` : arrondit a l'entier inferieur

**Resultat :** Notes arrondies en-dessous.

---

## 3. ABS (valeur absolue)

### Definition

`ABS` retourne la valeur absolue.

**Syntaxe :**
```sql
ABS(nombre)
```

### Exemple 1 : ABS simple

**Question :** Calculer l'ecart a 10 pour chaque note.

**Requete :**
```sql
SELECT note, ABS(note - 10) AS ecart_a_10
FROM notes;
```

**Explication :**
- `note - 10` : difference avec 10
- `ABS` : valeur absolue (toujours positive)

**Resultat :** Ecarts a 10.

---

## Exercices

### Exercice 2.3 (4 questions)

1. Arrondis les notes au superieur.
2. Pour chaque salle informatique, affiche son numero, son nombre de places et le nombre de groupes de 5 personnes necessaires pour remplir la salle. Utilise CEIL sur la division par 5.0.
3. Pour chaque cours d'au moins 4 credits, affiche son code, ses credits et ses credits augmentes de 50 % puis arrondis a l'entier superieur.
4. Divise les notes par 5 et arrondis au superieur.

### Exercice 2.4 (4 questions)

1. Arrondis les notes a l'inferieur.
2. Pour chaque cours, affiche son code, ses credits et le nombre de groupes complets de 2 credits obtenu avec FLOOR(credits / 2.0).
3. Divise les notes par 2 et arrondis a l'inferieur.
4. Affiche le plafond et le plancher des notes.

### Exercice 2.5 (4 questions)

1. Calcule l'ecart a 10 pour chaque note.
2. Pour les notes inferieures a 12, affiche la note et son ecart absolu par rapport a 12.
3. Calcule l'ecart a 5 pour les credits.
4. Pour les notes superieures a 10, affiche la note, sa difference avec 12 et la valeur absolue de cette difference.

---

## Navigation

- [Retour au SOMMAIRE](../SOMMAIRE.md)
- [Cours precedent : Operations et ROUND](08_niveau2_01_operations_ROUND.md)
- [Cours suivant : POWER, SQRT](10_niveau2_03_POWER_SQRT.md)

---

**Prochain cours :** POWER, SQRT