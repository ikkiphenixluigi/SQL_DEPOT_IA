@echo off
REM ============================================================
REM Fichier : init_db.bat
REM Description : Initialisation de la base SQLite gestion_universitaire
REM Usage : init_db.bat
REM ============================================================

set DB=gestion_universitaire.db
set SQL_DIR=sql

REM Supprime l'ancienne base si elle existe
if exist "%DB%" (
    echo Suppression de l'ancienne base : %DB%
    del /Q "%DB%"
)

REM Vérifie que les fichiers SQL existent
if not exist "%SQL_DIR%\01_create_tables.sql" (
    echo Erreur : %SQL_DIR%\01_create_tables.sql introuvable
    exit /b 1
)

if not exist "%SQL_DIR%\02_insert_data.sql" (
    echo Erreur : %SQL_DIR%\02_insert_data.sql introuvable
    exit /b 1
)

REM Cré€ation des tables
echo Cré€ation des tables...
sqlite3 "%DB%" < "%SQL_DIR%\01_create_tables.sql"

REM Insè¨¨re les données
echo Insertion des données...
sqlite3 "%DB%" < "%SQL_DIR%\02_insert_data.sql"

echo.
echo Base SQLite initialisé©©e avec succès : %DB%
echo Pour vous connecter : sqlite3 %DB%
