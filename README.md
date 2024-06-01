# BloodHound

BloodHound est un outil utilisé pour identifier les relations et les chemins d'attaque au sein des environnements Active Directory (AD) et Azure Active Directory (Azure AD). Il permet aux équipes de sécurité et aux administrateurs de visualiser et d'analyser les configurations et les permissions pour renforcer la sécurité de leurs infrastructures.

## Contenu du Dépôt

Ce dépôt contient les outils suivants :

- **SharpHound** : Outil de collecte de données pour les environnements Active Directory.
- **AzureHound** : Outil de collecte de données pour les environnements Microsoft Entra ID (anciennement Azure Active Directory).

## Prérequis

Avant de commencer, assurez-vous d'avoir les éléments suivants :

- Une machine virtuelle Kali Linux ou un autre environnement compatible pour exécuter BloodHound.
- Accès administrateur à un environnement Active Directory pour utiliser SharpHound.
- Accès administrateur à un environnement Azure AD pour utiliser AzureHound.
- Docker et Docker Compose installés pour exécuter BloodHound CE.

## Installation de BloodHound CE

### Étape 1 : Mise à jour du Système

```sh
sudo apt -y update && sudo apt upgrade && sudo apt full-upgrade && sudo apt autoclean && sudo apt clean
