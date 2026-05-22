# Implémentation d'un conteneur LAMP sur Azure

Ce projet montre comment déployer un environnement LAMP conteneurisé avec Docker sur Microsoft Azure.

## Fonctionnalités

- Conteneur Docker Ubuntu
- Installation automatique d'Apache
- Support PHP
- Déploiement Cloud Azure

## Technologies utilisées

- Docker
- Apache2
- PHP
- Azure VM

## Construction de l'image

```bash
docker build -t lamp-container .

```

## Lancement du conteneur

```bash
docker run -d -p 80:80 lamp-container

```


## Verification
Ouvrir le navigateur web : http://IP_SERVEUR_AZURE
