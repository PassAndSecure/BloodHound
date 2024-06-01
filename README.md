# BloodHound

BloodHound est un outil utilisé pour identifier les relations et les chemins d'attaque au sein des environnements Active Directory (AD) et Microsoft Entra ID (anciennement Azure Active Directory). Il permet aux équipes de sécurité et aux administrateurs de visualiser et d'analyser les configurations et les permissions pour renforcer la sécurité de leurs infrastructures.

## À propos
Ce dépôt contient les outils SharpHound et AzureHound. Nous le partageons dans le but d'aider la communauté et de faciliter l'accès à cette distribution Linux.

- **SharpHound** : Outil de collecte de données pour les environnements Active Directory.
- **AzureHound** : Outil de collecte de données pour les environnements Microsoft Entra ID (anciennement Azure Active Directory).

## Téléchargement
Vous pouvez télécharger l'ISO directement depuis ce dépôt via les Releases. Cliquez sur le fichier [`debian-12.5.0-amd64-netinst.iso`](https://github.com/PassAndSecure/Debian_12/releases/download/debian-12.5.0-amd64-netinst/debian-12.5.0-amd64-netinst.iso) pour le télécharger.

## Utilisation
L'ISO est fourni tel quel pour faciliter l'installation de Debian. Vous pouvez l'utiliser pour créer une clé USB bootable ou pour démarrer une machine virtuelle.

## Avertissement
Le téléchargement et l'utilisation de l'ISO ne sont pas garantis par le site PassAndSecure. Le site et ses créateurs ne sont pas responsables des problèmes ou des dommages qui pourraient survenir suite à l'utilisation de l'ISO. Nous fournissons cet ISO sans garantie d'aucune sorte ; utilisez-le à vos propres risques.

## Contribution
Nous sommes une communauté bienveillante et ouverte à toute contribution. Si vous souhaitez contribuer, veuillez forker le dépôt et soumettre vos modifications via une pull request.

## Support
Bien que nous ne fournissions pas de support officiel, vous pouvez ouvrir un problème (issue) dans ce dépôt si vous rencontrez des difficultés avec l'ISO. La communauté pourrait être en mesure de vous aider.

Merci de votre intérêt pour Debian et pour votre participation à la communauté !
```sh
sudo apt -y update && sudo apt upgrade && sudo apt full-upgrade && sudo apt autoclean && sudo apt clean
