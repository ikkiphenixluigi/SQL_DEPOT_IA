# Guide DBeaver Community - Base gestion_universitaire

Ce guide explique comment utiliser **DBeaver Community** pour travailler avec la base de donnees `gestion_universitaire`.

---

## 1. Installation de DBeaver Community

### Telechargement

1. Va sur : https://dbeaver.io/download/
2. Clique sur **Download** pour ta plateforme (Windows, Mac, Linux)
3. Pour Windows, choisis :
   - **Windows Installer** (recommande) : `dbeaver-ce-latest-x86_64-setup.exe`
   - Ou **Portable** : `dbeaver-ce-latest-windows-x86_64.zip`

### Installation (Windows)

1. Lance le fichier `.exe` telecharge
2. Accepte les conditions
3. Choisis les composants (laisse les options par defaut)
4. Clique sur **Install**
5. Une fois installe, lance DBeaver

### Premiere utilisation

Au premier lancement :
1. Choisis ton theme (Dark ou Light)
2. Clique sur **Start**
3. DBeaver peut te proposer de telecharger des drivers - accepte

---

## 2. Creer une connexion a la base SQLite

### Si la base existe deja

1. Ouvre DBeaver
2. Clique sur **Nouvelle connexion** (ou Database > New Database Connection)
3. Dans la liste, choisis **SQLite**
4. Clique sur **Next**
5. Clique sur **Browse** et selectionne `gestion_universitaire.db`
6. Clique sur **Test Connection** (si c'est la premiere fois, DBeaver va telecharger le driver SQLite)
7. Clique sur **Finish**

### Si la base n'existe pas encore

1. Ouvre DBeaver
2. Clique sur **Nouvelle connexion**
3. Choisis **SQLite**
4. Clique sur **Next**
5. Dans **Database**, clique sur **Browse**
6. Navigue vers ton dossier et cree un nouveau fichier vide `gestion_universitaire.db`
7. Clique sur **Finish**
8. DBeaver va creer la base vide

Ensuite, tu devras charger les tables et donnees (voir section 3).

---

## 3. Initialiser la base (si elle est vide)

### Methode 1 : Executer les scripts SQL

1. Dans DBeaver, fais un clic droit sur ta connexion SQLite
2. Clique sur **SQL Editor** > **Open SQL Script**
3. Clique sur **Open File** et selectionne `01_create_tables.sql`
4. Clique sur le bouton **Run SQL Script** (ou Ctrl+Enter)
5. Repete pour `02_insert_data.sql`

### Methode 2 : Glisser-deposer

1. Ouvre DBeaver
2. Fais un clic droit sur la connexion > **SQL Editor**
3. Copie-colle le contenu de `01_create_tables.sql`
4. Execute (Ctrl+Enter)
5. Copie-colle le contenu de `02_insert_data.sql`
6. Execute (Ctrl+Enter)

### Methode 3 : Utiliser la ligne de commande

Si tu as deja initialise la base avec `sqlite3.exe`, elle est prete a l'emploi.

Connecte-toi simplement a `gestion_universitaire.db` dans DBeaver.

---

## 4. Explorer la base de donnees

### Voir la liste des tables

1. Dans le **Database Navigator** (a gauche), developpe ta connexion
2. Developpe **Tables**
3. Tu vois toutes les tables :
   - cours
   - enseignants
   - etudiants
   - inscriptions
   - lycees
   - notes
   - salles
   - seances

### Voir le contenu d'une table

1. Double-clique sur une table (ex: `etudiants`)
2. L'onglet **Data** s'ouvre avec toutes les lignes
3. Tu peux :
   - Trier en cliquant sur les en-tetes
   - Filtrer avec la barre de recherche
   - Modifier les cellules (double-clic)
   - Ajouter/supprimer des lignes

### Voir la structure d'une table

1. Double-clique sur une table
2. Va dans l'onglet **Properties**
3. Tu vois :
   - Les colonnes et leurs types
   - Les cles primaires (PK)
   - Les contraintes
   - Les index
   - Les triggers

### Voir les relations entre tables

1. Double-clique sur une table
2. Va dans l'onglet **ER Diagram**
3. Tu vois le diagramme de relations avec les autres tables
4. Tu peux aussi voir le diagramme complet de la base :
   - Clic droit sur la connexion > **View Diagram**

---

## 5. Executer des requetes SQL

### Ouvrir un editeur SQL

1. Fais un clic droit sur la connexion
2. Clique sur **SQL Editor** > **Open SQL Editor**
3. Une nouvelle fenetre s'ouvre avec un editeur SQL

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

1. Ecris ta requete dans l'editeur
2. Selectionne la requete (ou laisse le curseur dessus)
3. Appuie sur **Ctrl+Enter** ou clique sur **Execute SQL Script**
4. Les resultats s'affichent en bas dans l'onglet **Result**

### Executer plusieurs requetes

Tu peux ecrire plusieurs requetes separees par `;` et les executer toutes en une fois.

### Sauvegarder une requete

1. Clique sur **File** > **Save**
2. Choisis un nom (ex: `mes_requetes.sql`)
3. Le fichier est sauvegarde dans ton projet DBeaver
4. Tu peux le reouvrir avec **File** > **Open File**

### Exporter les resultats

1. Execute une requete
2. Dans le tableau de resultats, fais un clic droit
3. Clique sur **Export Data**
4. Choisis le format :
   - **CSV** (tableur)
   - **Excel** (XLSX)
   - **JSON**
   - **SQL** (INSERT)
   - **HTML**
   - Et bien d'autres...
5. Choisis l'emplacement et clique sur **Next** > **Finish**

---

## 6. Fonctionnalites avancees

### Auto-completion SQL

DBeaver propose une auto-completion intelligente :
- Commence a taper un nom de table : Ctrl+Espace
- Commence a taper un nom de colonne : Ctrl+Espace
- Mots-cles SQL : Ctrl+Espace

### Formatage automatique du SQL

1. Ecris ta requete en vrac
2. Selectionne-la
3. Fais **Ctrl+Shift+F**
4. DBeaver formate proprement ta requete

### Historique des requetes

1. Va dans **Window** > **Show View** > **Query Manager**
2. Tu vois toutes les requetes executees
3. Tu peux les filtrer, les re-executer, etc.

### Snippets SQL

1. Va dans **Window** > **Show View** > **Snippets**
2. Tu as des modeles de requetes predefinis
3. Double-clique pour les inserer

### Metadata et statistiques

1. Fais un clic droit sur une table
2. Clique sur **View Metadata**
3. Tu vois :
   - Nombre de lignes
   - Taille de la table
   - Index
   - Contraintes

### Comparer des donnees

1. Execute deux requetes similaires
2. Fais un clic droit sur les resultats
3. Clique sur **Compare Results**
4. DBeaver surligne les differences

### Generer du SQL

1. Fais un clic droit sur une table
2. Clique sur **Generate SQL**
3. Choisis :
   - **DDL** : CREATE TABLE
   - **SELECT** : requete SELECT
   - **INSERT** : lignes en INSERT
   - **UPDATE** : lignes en UPDATE
   - **DELETE** : lignes en DELETE

### Mode edition des donnees

1. Double-clique sur une table > onglet **Data**
2. Double-clique sur une cellule pour modifier
3. Les cellules modifiees sont surlignees en jaune
4. Clique sur **Save** (Ctrl+S) pour valider
5. Ou **Undo** (Ctrl+Z) pour annuler

### Filtrer et trier

Dans l'onglet **Data** :
- Clique sur une en-tete pour trier
- Clique sur l'icone de filtre pour filtrer
- Utilise la barre de recherche en haut

### Diagrammes ER

1. Fais un clic droit sur la connexion
2. Clique sur **View Diagram**
3. Tu vois toutes les tables et leurs relations
4. Tu peux :
   - Deplacer les tables
   - Zoomer/dezoomer
   - Exporter en image (PNG, SVG)

---

## 7. Astuces et raccourcis

### Raccourcis clavier

| Action | Raccourci |
|--------|----------|
| Executer requete | Ctrl+Enter |
| Executer tout le script | Alt+X |
| Formater SQL | Ctrl+Shift+F |
| Auto-completion | Ctrl+Espace |
| Sauvegarder | Ctrl+S |
| Annuler | Ctrl+Z |
| Retablir | Ctrl+Y |
| Rechercher | Ctrl+F |
| Remplacer | Ctrl+H |
| Commenter/decommenter | Ctrl+Shift+/ |
| Dupliquer ligne | Ctrl+Alt+Fl haut |

### Preferences utiles

1. Va dans **Window** > **Preferences**
2. Sections importantes :
   - **Database > SQL Editor** : options d'edition
   - **Database > Results** : affichage des resultats
   - **General > Appearance** : theme, couleurs
   - **General > Keys** : personnaliser les raccourcis

### Themes

DBeaver propose plusieurs themes :
1. **Window** > **Preferences** > **General > Appearance**
2. Choisis ton theme (Dark, Light, etc.)
3. Redemarre DBeaver

### Plugins et extensions

DBeaver supporte les plugins Eclipse :
1. **Help** > **Install New Software**
2. Tu peux ajouter des fonctionnalites supplementaires

---

## 8. Gerer plusieurs bases de donnees

### Ajouter une autre connexion

1. Clique sur **Nouvelle connexion**
2. Choisis le type (MySQL, PostgreSQL, Oracle, etc.)
3. Configure les parametres
4. Teste la connexion
5. Clique sur **Finish**

### Changer de base

Dans le **Database Navigator**, clique sur la base que tu veux utiliser.

### Copier des donnees entre bases

1. Selectionne les lignes dans une table
2. Copie (Ctrl+C)
3. Va dans l'autre base
4. Colle (Ctrl+V)

### Exporter/Importer une base complete

1. Fais un clic droit sur la connexion
2. Clique sur **Tools**
3. Choisis :
   - **Backup** : exporter la base
   - **Restore** : importer une base

---

## 9. Resume des actions courantes

| Action | Comment faire |
|--------|---------------|
| Nouvelle connexion | Database > New Database Connection |
| Ouvrir editeur SQL | Clic droit > SQL Editor > Open SQL Editor |
| Executer requete | Ctrl+Enter |
| Voir les tables | Database Navigator > Tables |
| Voir donnees | Double-clic sur table > onglet Data |
| Voir structure | Double-clic sur table > onglet Properties |
| Voir diagramme | Double-clic sur table > onglet ER Diagram |
| Exporter resultats | Clic droit sur resultats > Export Data |
| Formater SQL | Ctrl+Shift+F |
| Auto-completion | Ctrl+Espace |
| Modifier donnees | Double-clic dans l'onglet Data |
| Sauvegarder modifs | Ctrl+S |

---

## 10. Problemes courants

### Driver SQLite manquant

DBeaver telecharge automatiquement le driver au premier usage. Si ca ne marche pas :
1. Clique sur **Download** quand DBeaver le propose
2. Ou va dans **Database > Driver Manager** et telecharge manuellement

### Base verrouillee

Si tu as une erreur "database is locked" :
1. Ferme toutes les autres applications utilisant la base
2. Dans DBeaver, fais un clic droit sur la connexion > **Invalidate/Reconnect**

### Requete lente

1. Verifie que tu as des index sur les colonnes utilisees dans les JOIN/WHERE
2. Utilise **Explain Plan** pour voir comment SQLite execute ta requete

### DBeaver plante

1. Augmente la memoire allouee :
   - Edite `dbeaver.ini`
   - Augmente les valeurs `-Xms` et `-Xmx`
2. Redemarre DBeaver

---

## 11. Pour aller plus loin

- Documentation officielle : https://dbeaver.com/docs/
- Tutoriels video : https://www.youtube.com/results?search_query=dbeaver+tutorial
- Forum communautaire : https://github.com/dbeaver/dbeaver/discussions
- Consulter les autres guides du projet (README.md, GUIDE_TEST.md, GUIDE_DB_BROWSER.md)
- Depot GitHub : https://github.com/ikkiphenixluigi/SQL_DEPOT_IA
