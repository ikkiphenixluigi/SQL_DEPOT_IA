#!/usr/bin/env bash
# ============================================================
# Fichier : init_db.sh
# Description : Initialisation de la base SQLite gestion_universitaire
# Usage : ./init_db.sh
# ============================================================

set -e

DB="gestion_universitaire.db"
SQL_DIR="sql"

# Supprime l'ancienne base si elle existe (optionnel)
if [ -f "$DB" ]; then
    echo "Suppression de l'ancienne base : $DB"
    rm -f "$DB"
fi

# Vérifie que les fichiers SQL existent
if [ ! -f "$SQL_DIR/01_create_tables.sql" ]; then
    echo "Erreur : $SQL_DIR/01_create_tables.sql introuvable"
    exit 1
fi

if [ ! -f "$SQL_DIR/02_insert_data.sql" ]; then
    echo "Erreur : $SQL_DIR/02_insert_data.sql introuvable"
    exit 1
fi

# Crće les tables
echo "Cré«©ation des tables..."
sqlite3 "$DB" < "$SQL_DIR/01_create_tables.sql"

# Insè¨¨re les données
echo "Insertion des données..."
sqlite3 "$DB" < "$SQL_DIR/02_insert_data.sql"

echo ""
echo "Base SQLite initialisé«©e avec succès : $DB"
echo "Pour vous connecter : sqlite3 $DB"
