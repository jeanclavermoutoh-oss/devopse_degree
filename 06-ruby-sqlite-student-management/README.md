# Système de gestion des étudiants

Cette application académique permet de gérer plusieurs aspects administratifs d'un établissement scolaire.

## Fonctionnalités

- Gestion des étudiants
- Inscriptions et réinscriptions
- Gestion des classes
- Suivi des paiements
- Gestion des notes
- Consultation des résultats

## Technologies utilisées

- Ruby
- SQLite3

## Installation

Installer les dépendances :

```bash
~/devopse_degree/06-ruby-sqlite-student-management $ bundle install
Fetching gem metadata from https://rubygems.org/.....
Resolving dependencies...
Installing sqlite3 2.9.4 with native extensions
Bundle complete! 1 Gemfile dependency, 2 gems now installed.
Use `bundle info [gemname]` to see where a bundled gem is installed.

~/devopse_degree/06-ruby-sqlite-student-management $

## Execution

```bash
~/devopse_degree/06-ruby-sqlite-student-management $ ruby app.rb 
Base de données initialisée avec succès.                           
===== MENU PRINCIPAL =====
1. Ajouter un étudiant
2. Lister les étudiants
3. Quitter
Choix : 2

--- LISTE DES ÉTUDIANTS ---                                        ID: 1 | Jean Dupont | Terminale A | Grade: A                       ID: 2 | Jean Dupont | Terminale A | Grade: A                       
===== MENU PRINCIPAL =====                                         1. Ajouter un étudiant
2. Lister les étudiants                                            3. Quitter                                                         Choix : 3
Au revoir.                                                         ~/devopse_degree/06-ruby-sqlite-student-management $
