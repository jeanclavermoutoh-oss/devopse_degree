# Système de partage de fichiers Vagrant

Ce projet démontre comment partager des fichiers entre plusieurs machines virtuelles Vagrant.

Deux machines Ubuntu sont configurées :

- une machine serveur ;
- une machine cliente.

Le fichier `Donotshare` est synchronisé automatiquement entre les deux environnements.

## Objectifs du projet

- Comprendre Vagrant
- Manipuler VirtualBox
- Configurer des dossiers partagés
- Simuler une infrastructure locale

## Technologies utilisées

- Vagrant
- VirtualBox
- Ubuntu Server

## Démarrage

```bash
vagrant up


## Se Connecter a la machine server

```bash
vagrant ssh server


## Se connecter a la machine  client

```bash
vagrant ssh client


## Verification du partage

```bash
cd /home/vagrant/shared
ls
```
## Resultat su  partage
 Vagrant fichier `Donotshare` apparaitra sur les deux machines.
