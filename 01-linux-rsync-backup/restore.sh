#!/bin/bash

BACKUP_DIR="$HOME/backups/documents"
RESTORE_DIR="$HOME/restored_documents"

mkdir -p "$RESTORE_DIR"

rsync -avh "$BACKUP_DIR" "$RESTORE_DIR"

if [ $? -eq 0 ]; then
    echo "Restauration terminée avec succès."
else
    echo "Erreur lors de la restauration."
fi
