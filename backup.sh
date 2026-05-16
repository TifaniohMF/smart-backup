#!/bin/bash

echo "==== SMART BACKUP ===="

SOURCE_DIR=$1 # path folder to save
BACKUP_DIR=$2 # path to folder destination

# Test if variable is empty
if [ -z "$SOURCE_DIR" ] || [ -z "$BACKUP_DIR" ]; then
    echo "Usage: ./backup.sh <source> <backup_dir>"
    exit 1 # Stop script with error
fi

# Verify if source folder exists
if [ ! -d "$SOURCE_DIR" ]; then
    echo "Erreur: dossier source introuvable"
    exit 1 # Stop script with error
fi

# Create folder backup if abscent
mkdir -p "$BACKUP_DIR"

# Generated date
DATE=$(date +%Y-%m-%d_%H-%M-%S)

# Create archive
BACKUP_NAME="backup_$DATE.tar.gz"

# Create path complet
FINAL_PATH="$BACKUP_DIR/$BACKUP_NAME"

# Compression
tar -czf "$FINAL_PATH" "$SOURCE_DIR"

# Verify if success
if [ $? -eq 0 ]; then
    echo "Backup réussi : $FINAL_PATH"
else
    echo "Erreur pendant le backup"
    exit 1
fi