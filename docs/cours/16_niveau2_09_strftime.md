# Niveau 2 - Fonctions date - strftime()

## Navigation

- [Retour au SOMMAIRE](../SOMMAIRE.md)
- [Cours precedent : CAST](15_niveau2_08_CAST.md)
- [Cours suivant : Calcul d'age](17_niveau2_10_age.md)

---

## Introduction

Ce cours presente la representation des dates dans SQLite, la date et l'heure actuelles, l'extraction avec `strftime()`, les calculs en jours avec `julianday()` et les transformations de dates.

**Objectifs :**
- Lire une date et obtenir la date ou l'heure courante
- Extraire l'annee, le mois, le jour, l'heure, la minute ou la seconde
- Formater une date et calculer une duree en jours
- Decaler une date a l'aide de modificateurs

---

## 1. Comment SQLite represente les dates

SQLite ne possede pas de type de stockage DATE dedie. Une date peut notamment etre conservee sous forme de texte `AAAA-MM-JJ`, comme `2004-04-08` dans `etudiants.date_naissance`. Une date et une heure peuvent etre representees par `AAAA-MM-JJ HH:MM:SS`. Ecrire l'annee avant le mois et le jour facilite aussi le tri chronologique de ces dates textuelles au meme format.

Le 1er janvier 1970 n'est pas le debut de toutes les dates SQL : c'est l'origine du temps Unix, mesure en secondes par `unixepoch()`. `julianday()` renvoie au contraire un nombre de jours, avec une partie decimale pour l'heure, selon une autre origine (le 24 novembre 4714 avant notre ere a midi, calendrier gregorien proleptique). Pour nos calculs, ce qui compte est surtout la difference entre deux jours juliens.

---

## 2. La date et l'heure actuelles : `now`

`'now'` est une valeur transmise aux fonctions de date, pas une fonction autonome. Les resultats evoluent au fil des jours : il ne faut pas attendre une date fixe en executant ces exemples.

```sql
SELECT date('now') AS date_du_jour,
       time('now') AS heure_actuelle,
       datetime('now') AS date_et_heure;
```

Par defaut, SQLite interprete `'now'` en UTC. Pour afficher l'heure locale de l'ordinateur, on peut ecrire `datetime('now', 'localtime')`. Si l'on veut des resultats reproductibles pour un exercice, on utilise une date explicite comme `'2026-09-28'` au lieu de `'now'`.

---

## 3. strftime() extraction

### Definition

`strftime(format, date)` extrait une composante ou compose un affichage. Les codes ci-dessous renvoient du texte ; `%w` represente le jour de la semaine de 0 (dimanche) a 6 (samedi).

| Code | Element obtenu | Exemple pour `2024-04-08 14:35:09` |
|------|----------------|------------------------------------|
| `%Y` | Annee | `2024` |
| `%m` | Mois | `04` |
| `%d` | Jour du mois | `08` |
| `%H` | Heure | `14` |
| `%M` | Minute | `35` |
| `%S` | Seconde | `09` |
| `%w` | Jour de la semaine | de `0` a `6` |

Les colonnes `date_naissance` de la base contiennent une date, mais pas d'heure : pour montrer heures, minutes et secondes, on utilise une valeur comportant explicitement une heure ou `datetime('now')`.

```sql
SELECT strftime('%Y', '2024-04-08 14:35:09') AS annee,
       strftime('%m', '2024-04-08 14:35:09') AS mois,
       strftime('%d', '2024-04-08 14:35:09') AS jour,
       strftime('%H', '2024-04-08 14:35:09') AS heure,
       strftime('%M', '2024-04-08 14:35:09') AS minute,
       strftime('%S', '2024-04-08 14:35:09') AS seconde;
```

### Exemple 1 : Extraire l'annee

**Question :** Extraire l'annee de naissance.

**Requete :**
```sql
SELECT nom, strftime('%Y', date_naissance) AS annee
FROM etudiants;
```

**Explication :**
- `strftime('%Y', date_naissance)` : extrait l'annee

**Resultat :** Annees de naissance.

### Exemple 2 : Extraire le mois

**Question :** Extraire le mois de naissance.

**Requete :**
```sql
SELECT nom, strftime('%m', date_naissance) AS mois
FROM etudiants;
```

**Explication :**
- `strftime('%m', date_naissance)` : extrait le mois

**Resultat :** Mois de naissance.

---

## 4. strftime() formatage

On peut assembler plusieurs codes dans un seul format. Cela change l'affichage, pas la valeur conservee dans la table.

**Question :** Afficher la date de naissance au format francais.

**Requete :**
```sql
SELECT nom, strftime('%d/%m/%Y', date_naissance) AS date_fr
FROM etudiants;
```

**Explication :**
- `'%d/%m/%Y'` : jour/mois/annee

**Resultat :** Dates affichees au format francais.

---

## 5. Mesurer une duree avec julianday()

`julianday(date)` convertit une date en nombre de jours juliens. La soustraction de deux resultats permet de mesurer une duree en jours : date de fin moins date de debut. Le resultat peut etre decimal si les heures different.

```sql
SELECT julianday('2026-09-29') - julianday('2026-09-22') AS jours_ecoules;
```

**Resultat :** 7 jours. Avec les dates de la base, on peut calculer par exemple le delai entre la date d'inscription et celle d'une evaluation seulement lorsque ces deux dates sont disponibles dans la meme table ou apres avoir appris a relier les tables ; ici, on n'introduit pas encore de jointure.

Pour distinguer les deux reperes, `unixepoch('2024-04-08 14:35:09')` donne un nombre de secondes depuis le 01/01/1970 a 00:00:00 UTC. Ce n'est pas un nombre de jours. Une duree en secondes s'obtient en soustrayant deux timestamps Unix.

---

## 6. Decaler et ajuster une date

Les fonctions `date()` et `datetime()` acceptent des modificateurs apres la date de depart. Un decalage s'ecrit entre guillemets : `'+1 day'`, `'-7 days'`, `'+2 hours'`. Plusieurs modificateurs s'appliquent dans l'ordre de gauche a droite.

```sql
SELECT date('now', '+1 day') AS demain;
SELECT date('2024-04-08', '-7 days') AS sept_jours_avant;
SELECT datetime('2024-04-08 14:35:09', '+2 hours') AS deux_heures_apres;
SELECT date('2024-04-08', 'start of month') AS premier_jour_du_mois;
SELECT date('2024-04-08', 'start of month', '+1 month', '-1 day') AS dernier_jour_du_mois;
```

La premiere requete est relative a la date courante en UTC. Les suivantes sont reproductibles : elles partent de la date fixe du 8 avril 2024. Le dernier exemple part du premier jour du mois, avance d'un mois, puis recule d'un jour. Les decalages de mois ou d'annees en fin de mois demandent une attention particuliere, car tous les mois n'ont pas la meme longueur.

---

## Exercices

### Exercice 2.14 (4 questions)

1. Affiche le nom, le prenom, la date de naissance et l'annee de naissance des etudiants nes en 2004. Trie-les par date de naissance croissante.
2. Affiche le nom, le prenom, la date de naissance et le mois de naissance des etudiants nes en avril, toutes annees confondues. Trie-les par nom croissant.
3. Affiche le nom, le prenom et le jour de la semaine de naissance, sous forme de chiffre, pour les etudiants nes le `2003-01-01`. Trie-les par nom croissant.
4. Affiche le nom, le prenom et le mois de naissance des etudiants dont le prenom commence par M et qui sont nes en 2003. Trie-les par prenom croissant.

### Exercice 2.15 (4 questions)

1. Affiche le nom, le prenom, la date de naissance d'origine et cette meme date au format `JJ/MM/AAAA` pour les etudiants habitant a Paris. Trie-les par nom croissant.
2. Affiche, pour les etudiants nes en 2004, le nom suivi du texte ` : ne(e) le ` et de la date de naissance au format `JJ/MM/AAAA`. Trie-les par nom croissant.
3. Affiche le nom, le prenom et la date de naissance au format `AAAA-MM` pour les etudiants nes en octobre. Trie-les par nom croissant.
4. Affiche le nom, le prenom et la date de naissance au format `MM/AAAA` pour les etudiants inscrits en 2025 et nes en avril. Trie-les par nom croissant.

---

## Navigation

- [Retour au SOMMAIRE](../SOMMAIRE.md)
- [Cours precedent : CAST](15_niveau2_08_CAST.md)
- [Cours suivant : Calcul d'age](17_niveau2_10_age.md)

---

**Prochain cours :** Calcul d'age (fonctions date)