# Guide de test - Base de données SQLite

Ce guide explique comment initialiser et tester la base de données `gestion_universitaire` sur ton poste.

---

## Prérequis

- Avoir téléchargé´´ SQLite3 pour Windows
- Avoir extrait les fichiers dans un dossier (ex: `C:\LOGS\SQL\sqlite-tools-win-x64-3530400`)
- Avoir les fichiers SQL suivants dans le meme dossier :
  - `01_create_tables.sql`
  - `02_insert_data.sql`

---

## Méthode 1 : Initialisation manuelle (ce que tu as fait)

### Étape 1 : Ouvrir cmd dans le dossier

1. Ouvre l'Explorateur de fichiers
2. Va dans ton dossier SQLite (ex: `C:\LOGS\SQL\sqlite-tools-win-x64-3530400`)
3. Dans la barre d'adresse, tape `cmd` et appuie sur Entré©©e

### Étape 2 : Créer la base et charger les tables

```batch
sqlite3.exe gestion_universitaire.db < 01_create_tables.sql
```

### Étape 3 : Charger les données

```batch
sqlite3.exe gestion_universitaire.db < 02_insert_data.sql
```

---

## Méthode 2 : Utiliser le script init_db.bat (automatisé©©)

### Quand l'utiliser ?

Le fichier `init_db.bat` automatise les 2 é€tapes ci-dessus. Il est utile si :
- Tu veux tout faire en une seule commande
- Tu veux supprimer l'ancienne base avant de recré©©er une nouvelle
- Tu partages le projet avec quelqu'un d'autre

### Comment l'utiliser ?

1. Télécharge le fichier `init_db.bat` depuis le dépôt GitHub
2. Place-le dans le meme dossier que les fichiers SQL
3. Ouvre cmd dans le dossier
4. Tape : `init_db.bat`

Le script va :
1. Supprimer l'ancienne base si elle existe
2. Créer les tables
3. Insé©©rer les données

**Tu peux t'en passer** si tu préfè©¨res exé©©cuter les commandes manuellement (Mé©©thode 1).

---

## Vérifier que la base fonctionne

### Ouvrir la base de données

```batch
sqlite3.exe gestion_universitaire.db
```

Tu devrais voir :
```
SQLite version 3.x.x ...
Enter ".help" for usage hints.
sqlite>
```

### Commandes de base

#### 1. Lister toutes les tables

```sql
.tables
```

Ré©©sultat attendu :
```
cours        enseignants  inscriptions  lycees       notes        salles       seances      etudiants
```

#### 2. Voir la structure d'une table

```sql
.schema nom_table
```

Exemples :
```sql
.schema etudiants
.schema cours
.schema inscriptions
```

#### 3. Compter les enregistrements

```sql
-- Nombre d'é©©tudiants
SELECT COUNT(*) AS nb_etudiants FROM etudiants;

-- Nombre de lycé©©es
SELECT COUNT(*) AS nb_lycees FROM lycees;

-- Nombre de cours
SELECT COUNT(*) AS nb_cours FROM cours;
```

#### 4. Voir quelques données

```sql
-- 5 premiers é€tudiants
SELECT nom, prenom, ville FROM etudiants LIMIT 5;

-- Tous les lycé©©es
SELECT nom, ville FROM lycees;

-- Tous les cours
SELECT code_cours, nom_cours, credits FROM cours;
```

#### 5. Quitter SQLite

```sql
.exit
```

---

## Requê©ªtes de test (niveau é€tudiant)

### Voir tes informations (é©©tudiant ID 1)

```sql
SELECT * FROM etudiants WHERE id_etudiant = 1;
```

### Voir tes cours inscrits

```sql
SELECT e.nom, e.prenom, c.nom_cours, i.statut
FROM etudiants e
JOIN inscriptions i ON e.id_etudiant = i.id_etudiant
JOIN cours c ON i.id_cours = c.id_cours
WHERE e.id_etudiant = 1;
```

### Voir tes notes

```sql
SELECT e.nom, e.prenom, c.nom_cours, n.type_evaluation, n.note, n.coeff
FROM etudiants e
JOIN inscriptions i ON e.id_etudiant = i.id_etudiant
JOIN cours c ON i.id_cours = c.id_cours
JOIN notes n ON i.id_inscription = n.id_inscription
WHERE e.id_etudiant = 1;
```

### Calculer ta moyenne par cours

```sql
SELECT c.nom_cours, AVG(n.note) AS moyenne
FROM etudiants e
JOIN inscriptions i ON e.id_etudiant = i.id_etudiant
JOIN cours c ON i.id_cours = c.id_cours
JOIN notes n ON i.id_inscription = n.id_inscription
WHERE e.id_etudiant = 1
GROUP BY c.id_cours, c.nom_cours;
```

---

## Résumé des commandes rapides

| Action | Commande |
|--------|----------|
| Ouvrir la base | `sqlite3.exe gestion_universitaire.db` |
| Lister les tables | `.tables` |
| Voir structure table | `.schema nom_table` |
| Quitter | `.exit` |
| Créer tables | `sqlite3.exe gestion_universitaire.db < 01_create_tables.sql` |
| Charger données | `sqlite3.exe gestion_universitaire.db < 02_insert_data.sql` |
| Tout faire en une fois | `init_db.bat` |

---

## Problè©¨mes courants

### Erreur "L'opé©©rateur < est ré€servé©©"

Tu es dans PowerShell, pas cmd. Solution :

```powershell
cmd
```

Puis ré€essaie les commandes dans cmd.

### Erreur "no such table"

Tu n'as pas encore chargé les tables. Exé©©cute :

```batch
sqlite3.exe gestion_universitaire.db < 01_create_tables.sql
sqlite3.exe gestion_universitaire.db < 02_insert_data.sql
```

### Base vide ou inexistante

Supprime l'ancien fichier et recré©©e :

```batch
del gestion_universitaire.db
sqlite3.exe gestion_universitaire.db < 01_create_tables.sql
sqlite3.exe gestion_universitaire.db < 02_insert_data.sql
```

---

## Pour aller plus loin

- Utiliser **DB Browser for SQLite** (interface graphique) : https://sqlitebrowser.org/dl/
- Consulter le README.md pour plus de détails
- Voir le dépôt GitHub : https://github.com/ikkiphenixluigi/SQL_DEPOT_IA
