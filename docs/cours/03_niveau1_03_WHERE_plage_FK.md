# Niveau 1 - WHERE avec plage et cle etrangere

## Navigation

- [Retour au SOMMAIRE](../SOMMAIRE.md)
- [Cours precedent : WHERE avec texte](02_niveau1_02_WHERE_texte_annee.md)
- [Cours suivant : ORDER BY](04_niveau1_04_ORDER_BY.md)

---

## Introduction

Ce cours presente les operateurs de comparaison pour les plages de valeurs et l'utilisation des cles etrangeres dans les conditions WHERE.

**Objectifs :**
- Utiliser BETWEEN pour les plages
- Utiliser les operateurs <, >, <=, >=
- Filtrer avec des cles etrangeres

---

## 1. WHERE avec des plages de valeurs

### Definition

Pour filtrer des valeurs dans une plage, on utilise :
- `BETWEEN ... AND ...` : compris entre (bornes incluses)
- `<, >, <=, >=` : comparaisons numeriques

### Exemple 1 : BETWEEN avec des nombres

**Question :** Afficher les cours avec entre 4 et 6 credits.

**Requete :**
```sql
SELECT code_cours, nom_cours, credits
FROM cours
WHERE credits BETWEEN 4 AND 6;
```

**Explication :**
- `BETWEEN 4 AND 6` : credits >= 4 ET credits <= 6
- Les bornes sont incluses (4 et 6 sont inclus)

**Resultat :** Cours avec 4, 5 ou 6 credits.

### Exemple 2 : Operateurs de comparaison

**Question :** Afficher les salles avec plus de 15 places.

**Requete :**
```sql
SELECT num_salle, nb_places
FROM salles
WHERE nb_places > 15;
```

**Explication :**
- `> 15` : strictement superieur a 15

**Resultat :** Salles avec 16, 18 ou 20 places.

### Exemple 3 : BETWEEN avec des dates

**Question :** Afficher les etudiants nes entre 2003 et 2004.

**Requete :**
```sql
SELECT nom, prenom, date_naissance
FROM etudiants
WHERE date_naissance BETWEEN '2003-01-01' AND '2004-12-31';
```

**Explication :**
- Plage de dates complete
- Format 'AAAA-MM-JJ'

**Resultat :** Tous les etudiants nes en 2003 ou 2004.

---

## 2. WHERE avec des cles etrangeres

### Definition

Une cle etrangere est une colonne qui reference la cle primaire d'une autre table.
On peut filtrer sur ces colonnes comme sur n'importe quelle autre colonne.

### Exemple 1 : Filtrer par id_lycee

**Question :** Afficher les etudiants du lycee 5.

**Requete :**
```sql
SELECT nom, prenom, id_lycee
FROM etudiants
WHERE id_lycee = 5;
```

**Explication :**
- `id_lycee` est une cle etrangere vers `lycees(id_lycee)`
- On filtre sur la valeur de la cle

**Resultat :** Etudiants inscrits au lycee 5.

### Exemple 2 : Filtrer avec plusieurs lycees

**Question :** Afficher les etudiants des lycees 1, 2 ou 3.

**Requete :**
```sql
SELECT nom, prenom, id_lycee
FROM etudiants
WHERE id_lycee IN (1, 2, 3);
```

**Explication :**
- `IN (1, 2, 3)` : id_lycee = 1 OU id_lycee = 2 OU id_lycee = 3

**Resultat :** Etudiants des 3 premiers lycees.

### Exemple 3 : Combiner avec d'autres conditions

**Question :** Afficher les etudiants du lycee 1 nes en 2003.

**Requete :**
```sql
SELECT nom, prenom, id_lycee, date_naissance
FROM etudiants
WHERE id_lycee = 1
  AND strftime('%Y', date_naissance) = '2003';
```

**Explication :**
- Deux conditions avec AND
- Cle etrangere + date

**Resultat :** Etudiants du lycee 1 nes en 2003.

---

## Exercices

### Exercice 1.8 - WHERE avec plage (4 questions)

1. Affiche les cours avec entre 4 et 6 credits (inclus).
2. Affiche les salles avec entre 15 et 20 places (inclus).
3. Affiche les etudiants nes entre le 1er janvier 2003 et le 31 decembre 2003.
4. Affiche les cours avec plus de 4 credits.

### Exercice 1.10 - WHERE avec FK (4 questions)

1. Affiche les etudiants du lycee numero 10.
2. Affiche les etudiants des lycees 5, 6 ou 7.
3. Affiche les etudiants du lycee 3 nes en 2004.
4. Affiche les etudiants des lycees de Paris (id 1 a 10).

---

## Navigation

- [Retour au SOMMAIRE](../SOMMAIRE.md)
- [Cours precedent : WHERE avec texte](02_niveau1_02_WHERE_texte_annee.md)
- [Cours suivant : ORDER BY](04_niveau1_04_ORDER_BY.md)

---

**Prochain cours :** ORDER BY simple et multiple
