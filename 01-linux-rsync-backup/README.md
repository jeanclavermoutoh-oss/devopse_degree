# Système de sauvegarde Linux avec rsync

Ce projet met en place un système de sauvegarde automatisé sous Linux en utilisant `rsync`.

L'objectif principal est de comprendre les bases de l'automatisation des sauvegardes dans un environnement DevOps.

## Fonctionnalités

- Sauvegarde automatique de dossiers
- Synchronisation rapide avec `rsync`
- Journalisation des opérations
- Script de restauration des données
- Compatible Termux + Linux

## Technologies utilisées

- Bash
- rsync
- Linux / Ubuntu / Termux

## Installation

```bash
pkg install rsync

## Rendre les scripts executables

```bash
~/devopse_degree/01-linux-rsync-backup $ chmod +x backup.sh restore.sh

## Lancer la Sauvegarde

```bash
~/devopse_degree/01-linux-rsync-backup $ ./backup.sh

## Lancer la restauration

```bash
~/devopse_degree/01-linux-rsync-backup $ ./restore.sh

