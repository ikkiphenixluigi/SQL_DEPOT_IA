# Guide DB Browser for SQLite - Base gestion_universitaire

Ce guide explique comment utiliser **DB Browser for SQLite** pour travailler avec la base de donnees `gestion_universitaire`.

---

## 1. Installation de DB Browser for SQLite

### Telechargement

1. Va sur : https://sqlitebrowser.org/dl/
2. Clique sur **Download** pour Windows
3. Telecharge le fichier d'installation (ex: `DB.Browser.for.SQLite-3.13.1-win64.exe`)

### Installation

1. Lance le fichier `.exe` telecharge
2. Suis les etapes d'installation (Next, Next, Install)
3. Une fois installe, lance DB Browser for SQLite

---

## 2. Ouvrir la base de donnees

### Si la base existe deja

1. Ouvre DB Browser for SQLite
2. Clique sur **Ouvrir une base de donnees**
3. Navigue vers ton dossier (ex: `C:\LOGS\SQL\sqlite-tools-win-x64-3530400`)
4. Selectionne `gestion_universitaire.db`
5. Clique sur **Ouvrir**

### Si la base n'existe pas encore

1. Ouvre DB Browser for SQLite
2. Clique sur **Nouvelle base de donnees**
3. Choisis l'emplacement et le nom (ex: `gestion_universitaire.db`)
4. Clique sur **Enregistrer**

Ensuite, tu devras charger les tables et donnees (voir section 3).

---

## 3. Initialiser la base (si elle est vide)

### Methode 1 : Importer les scripts SQL

1. Dans DB Browser, va dans l'onglet **Executer du SQL**
2. Clique sur **Ouvrir un fichier SQL**
3. Selectionne `01_create_tables.sql`
4. Clique sur le bouton **>** (Executer) ou appuie sur Ctrl+Return
5. Repete pour `02_insert_data.sql`

### Methode 2 : Utiliser la ligne de commande

Si tu as deja initialise la base avec `sqlite3.exe`, elle est prete a l'emploi.

Ouvre simplement `gestion_universitaire.db` dans DB Browser.

---

## 4. Explorer la base de donnees

### Voir la liste des tables

1. Va dans l'onglet **Parcourir les donnees**
2. Dans la liste a gauche, tu vois toutes les tables :
   - cours
   - enseignants
   - etudiants
   - inscriptions
   - lycees
   - notes
   - salles
   - seances

### Voir le contenu d'une table

1. Clique sur une table (ex: `etudiants`)
2. Les donnees s'affichent dans la grille
3. Tu peux trier en cliquant sur les en-tetes de colonnes

### Voir la structure d'une table

1. Va dans l'onglet **Structure de la base de donnees**
2. Clique sur une table
3. Tu vois :
   - Les colonnes et leurs types
   - Les cles primaires
   - Les contraintes

---

## 5. Executer des requetes SQL

### Ouvrir l'editeur SQL

1. Va dans l'onglet **Executer du SQL**
2. Une zone de texte est disponible pour ecrire tes requetes

### Requetes de base

#### Lister toutes les tables

```sql
SELECT name FROM sqlite_master WHERE type='table';
```

#### Compter les etudiants

```sql
SELECT COUNT(*) AS nb_etudiants FROM etudiants;
```

#### Voir les 10 premiers etudiants

```sql
SELECT nom, prenom, sexe, ville FROM etudiants LIMIT 10;
```

#### Voir tous les lycees

```sql
SELECT nom, ville FROM lycees ORDER BY nom;
```

#### Voir tous les cours

```sql
SELECT code_cours, nom_cours, credits, semestre FROM cours;
```

### Requetes avancees (niveau etudiant)

#### Voir tes cours inscrits (etudiant ID 1)

```sql
SELECT e.nom, e.prenom, c.nom_cours, i.statut
FROM etudiants e
JOIN inscriptions i ON e.id_etudiant = i.id_etudiant
JOIN cours c ON i.id_cours = c.id_cours
WHERE e.id_etudiant = 1;
```

#### Voir tes notes (etudiant ID 1)

```sql
SELECT e.nom, e.prenom, c.nom_cours, n.type_evaluation, n.note, n.coeff
FROM etudiants e
JOIN inscriptions i ON e.id_etudiant = i.id_etudiant
JOIN cours c ON i.id_cours = c.id_cours
JOIN notes n ON i.id_inscription = n.id_inscription
WHERE e.id_etudiant = 1;
```

#### Calculer ta moyenne par cours

```sql
SELECT c.nom_cours, AVG(n.note) AS moyenne
FROM etudiants e
JOIN inscriptions i ON e.id_etudiant = i.id_etudiant
JOIN cours c ON i.id_cours = c.id_cours
JOIN notes n ON i.id_inscription = n.id_inscription
WHERE e.id_etudiant = 1
GROUP BY c.id_cours, c.nom_cours;
```

#### Liste des etudiants par lycee

```sql
SELECT l.nom AS lycee, COUNT(e.id_etudiant) AS nb_etudiants
FROM lycees l
LEFT JOIN etudiants e ON l.id_lycee = e.id_lycee
GROUP BY l.id_lycee, l.nom
ORDER BY nb_etudiants DESC;
```

#### Moyenne generale par cours

```sql
SELECT c.nom_cours, AVG(n.note) AS moyenne_generale
FROM cours c
JOIN inscriptions i ON c.id_cours = i.id_cours
JOIN notes n ON i.id_inscription = n.id_inscription
GROUP BY c.id_cours, c.nom_cours
ORDER BY moyenne_generale DESC;
```

### Executer une requete

1. Ecris ta requete dans la zone de texte
2. Clique sur le bouton **>** (Executer) ou Ctrl+Return
3. Les resultats s'affichent en bas

### Sauvegarder une requete

1. Clique sur **Enregistrer**
2. Choisis un nom (ex: `mes_requetes.sql`)
3. Tu pourras la recharger plus tard avec **Ouvrir**

---

## 6. Fonctionnalites utiles

### Filtrer les resultats

Dans l'onglet **Parcourir les donnees**, tu peux :
- Utiliser la barre de recherche en haut
- Trier par colonne en cliquant sur l'en-tete

### Exporter des donnees

1. Execute une requete
2. Clique sur **Exporter**
3. Choisis le format (CSV, SQL, JSON, etc.)
4. Enregistre le fichier

### Modifier des donnees

1. Va dans l'onglet **Parcourir les donnees**
2. Selectionne une table
3. Double-clique sur une cellule pour modifier
4. Clique sur **Ecrire les modifications** pour sauvegarder

**Attention :** Ne modifie pas les donnees si tu veux garder la base intacte pour les tests.

### Voir les relations entre tables

1. Va dans l'onglet **Relations**
2. Tu vois le schema de la base avec les liaisons entre tables

---

## 7. Astuces

### Completion automatique

DB Browser propose une completion automatique pour :
- Les noms de tables
- Les noms de colonnes
- Les mots-cles SQL

### Historique des requetes

Les requetes executees restent dans la zone de texte tant que tu ne les effaces pas.

### Zoom

Utilise Ctrl+ et Ctrl- pour zoomer/dezoomer dans l'interface.

### Themes

Tu peux changer le theme dans : Edition > Preferences > Apparence

---

## 8. Resume des actions courantes

| Action | Comment faire |
|--------|---------------|
| Ouvrir la base | Fichier > Ouvrir une base de donnees |
| Voir les tables | Onglet **Parcourir les donnees** |
| Voir structure | Onglet **Structure de la base de donnees** |
| Executer requete | Onglet **Executer du SQL** puis bouton **>** |
| Exporter resultats | Bouton **Exporter** apres une requete |
| Modifier donnees | Double-clic dans **Parcourir les donnees** |
| Sauvegarder modifications | Bouton **Ecrire les modifications** |

---

## 9. Pour aller plus loin

- Documentation officielle : https://sqlitebrowser.org/docs/
- Tutoriels video sur YouTube
- Consulter le README.md et GUIDE_TEST.md du projet
- Depot GitHub : https://github.com/ikkiphenixluigi/SQL_DEPOT_IA
