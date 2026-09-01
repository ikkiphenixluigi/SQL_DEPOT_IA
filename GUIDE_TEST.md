# Guide de test - Base de donnees SQLite

Ce guide explique comment initialiser et tester la base de donnees `gestion_universitaire` sur ton poste.

---

## Pre-requis

- Avoir telecharge SQLite3 pour Windows
- Avoir extrait les fichiers dans un dossier (ex: `C:\LOGS\SQL\sqlite-tools-win-x64-3530400`)
- Avoir les fichiers SQL suivants dans le meme dossier :
  - `01_create_tables.sql`
  - `02_insert_data.sql`

---

## Methode 1 : Initialisation manuelle (ce que tu as fait)

### Etape 1 : Ouvrir cmd dans le dossier

1. Ouvre l'Explorateur de fichiers
2. Va dans ton dossier SQLite (ex: `C:\LOGS\SQL\sqlite-tools-win-x64-3530400`)
3. Dans la barre d'adresse, tape `cmd` et appuie sur Entree

### Etape 2 : Creer la base et charger les tables

```batch
sqlite3.exe gestion_universitaire.db < 01_create_tables.sql
```

### Etape 3 : Charger les donnees

```batch
sqlite3.exe gestion_universitaire.db < 02_insert_data.sql
```

---

## Methode 2 : Utiliser le script init_db.bat (automatise)

### Quand l'utiliser ?

Le fichier `init_db.bat` automatise les 2 etapes ci-dessus. Il est utile si :
- Tu veux tout faire en une seule commande
- Tu veux supprimer l'ancienne base avant de recreer une nouvelle
- Tu partages le projet avec quelqu'un d'autre

### Comment l'utiliser ?

1. Telecharge le fichier `init_db.bat` depuis le depot GitHub
2. Place-le dans le meme dossier que les fichiers SQL
3. Ouvre cmd dans le dossier
4. Tape : `init_db.bat`

Le script va :
1. Supprimer l'ancienne base si elle existe
2. Creer les tables
3. Inserer les donnees

**Tu peux t'en passer** si tu preferes executer les commandes manuellement (Methode 1).

---

## Verifier que la base fonctionne

### Ouvrir la base de donnees

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

Resultat attendu :
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
-- Nombre d'etudiants
SELECT COUNT(*) AS nb_etudiants FROM etudiants;

-- Nombre de lycees
SELECT COUNT(*) AS nb_lycees FROM lycees;

-- Nombre de cours
SELECT COUNT(*) AS nb_cours FROM cours;
```

#### 4. Voir quelques donnees

```sql
-- 5 premiers etudiants
SELECT nom, prenom, ville FROM etudiants LIMIT 5;

-- Tous les lycees
SELECT nom, ville FROM lycees;

-- Tous les cours
SELECT code_cours, nom_cours, credits FROM cours;
```

#### 5. Quitter SQLite

```sql
.exit
```

---

## Requetes de test (niveau etudiant)

### Voir tes informations (etudiant ID 1)

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

## Resume des commandes rapides

| Action | Commande |
|--------|----------|
| Ouvrir la base | `sqlite3.exe gestion_universitaire.db` |
| Lister les tables | `.tables` |
| Voir structure table | `.schema nom_table` |
| Quitter | `.exit` |
| Creer tables | `sqlite3.exe gestion_universitaire.db < 01_create_tables.sql` |
| Charger donnees | `sqlite3.exe gestion_universitaire.db < 02_insert_data.sql` |
| Tout faire en une fois | `init_db.bat` |

---

## Problemes courants

### Erreur "L'operateur < est reserve"

Tu es dans PowerShell, pas cmd. Solution :

```powershell
cmd
```

Puis reessaie les commandes dans cmd.

### Erreur "no such table"

Tu n'as pas encore charge les tables. Execute :

```batch
sqlite3.exe gestion_universitaire.db < 01_create_tables.sql
sqlite3.exe gestion_universitaire.db < 02_insert_data.sql
```

### Base vide ou inexistante

Supprime l'ancien fichier et recree :

```batch
del gestion_universitaire.db
sqlite3.exe gestion_universitaire.db < 01_create_tables.sql
sqlite3.exe gestion_universitaire.db < 02_insert_data.sql
```

---

## Pour aller plus loin

- Utiliser **DB Browser for SQLite** (interface graphique) : https://sqlitebrowser.org/dl/
- Consulter le README.md pour plus de details
- Voir le depot GitHub : https://github.com/ikkiphenixluigi/SQL_DEPOT_IA
