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

## Execution des scripts

```bash
~/devopse_degree/01-linux-rsync-backup $ chmod +x backup.sh restore.sh

~/devopse_degree/01-linux-rsync-backup $ ls
README.md  backup.sh  backups  logs  restore.sh

~/devopse_degree/01-linux-rsync-backup $

## Lancer une sauvegarde

```bash
~/devopse_degree/01-linux-rsync-backup $ ./backup.sh


## Restaurer les donnees

```bash
~/devopse_degree/01-linux-rsync-backup $ ./restore.sh



