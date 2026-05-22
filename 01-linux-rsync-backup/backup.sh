#!/bin/bash

SOURCE_DIR="$HOME/documents"
BACKUP_DIR="$HOME/backups"
LOG_FILE="$HOME/backups/logs/backup.log"
DATE=$(date +%Y-%m-%d_%H-%M-%S)

mkdir -p "$BACKUP_DIR"
mkdir -p "$HOME/backups/logs"

rsync -avh --delete "$SOURCE_DIR" "$BACKUP_DIR" >> "$LOG_FILE" 2>&1

if [ $? -eq 0 ]; then
    echo "[$DATE] Sauvegarde terminée avec succès." >> "$LOG_FILE"
else
    echo "[$DATE] Échec de la sauvegarde." >> "$LOG_FILE"
fi
