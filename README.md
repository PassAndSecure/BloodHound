# BloodHound

BloodHound est un outil utilisé pour identifier les relations et les chemins d'attaque au sein des environnements Active Directory (AD) et Microsoft Entra ID (anciennement Azure Active Directory). Il permet aux équipes de sécurité et aux administrateurs de visualiser et d'analyser les configurations et les permissions pour renforcer la sécurité de leurs infrastructures.

## À propos
Ce dépôt contient les outils SharpHound et AzureHound. Nous le partageons dans le but d'aider la communauté et de faciliter l'accès à cette distribution Linux.

- **SharpHound** : Outil de collecte de données pour les environnements Active Directory.
- **AzureHound** : Outil de collecte de données pour les environnements Microsoft Entra ID (anciennement Azure Active Directory).

Pour plus d'informations et d'autres outils de sécurité, visitez notre site web [PassAndSecure](https://passandsecure.fr).

## Téléchargement
Vous pouvez télécharger les outils directement depuis ce dépôt, pour cela, utiliser les scripts Download_ SharpHound.ps1 et Download_ AzureHound.ps1, depuis Powershell pour automatiser le téléchargement.

## Utilisation
Les outils sont fourni tel quel pour faciliter l'utilisation de BloodHound. Vous pouvez les utiliser pour collecter les données de vos Active Directory et Microsoft Entra ID.

## Avertissement
Le téléchargement et l'utilisation des outils ne sont pas garantis par le site PassAndSecure. Le site et ses créateurs ne sont pas responsables des problèmes ou des dommages qui pourraient survenir suite à l'utilisation de ces outils. Nous fournissons ces outils sans garantie d'aucune sorte ; utilisez-les à vos propres risques.

## Contribution
Nous sommes une communauté bienveillante et ouverte à toute contribution. Si vous souhaitez contribuer, veuillez forker le dépôt et soumettre vos modifications via une pull request.

## Support
Bien que nous ne fournissions pas de support officiel, vous pouvez ouvrir un problème (issue) dans ce dépôt si vous rencontrez des difficultés avec les outils. La communauté pourrait être en mesure de vous aider.

Merci de votre intérêt pour BloodHound et pour votre participation à la communauté !

         _ (`-.     ('-.       .-')      .-')             ('-.          .-') _   _ .-') _           .-')       ('-.                             _  .-')      ('-.                                          
        ( (OO  )   ( OO ).-.  ( OO ).   ( OO ).          ( OO ).-.     ( OO ) ) ( (  OO) )         ( OO ).   _(  OO)                           ( \( -O )   _(  OO)                                         
        _.`     \   / . --. / (_)---\_) (_)---\_)         / . --. / ,--./ ,--,'   \     .'_        (_)---\_) (,------.    .-----.   ,--. ,--.    ,------.  (,------.                                        
        (__...--''   | \-.  \  /    _ |  /    _ |          | \-.  \  |   \ |  |\   ,`'--..._)       /    _ |   |  .---'   '  .--./   |  | |  |    |   /`. '  |  .---'                                        
        |  /  | | .-'-'  |  | \  :` `.  \  :` `.        .-'-'  |  | |    \|  | )  |  |  \  '       \  :` `.   |  |       |  |('-.   |  | | .-')  |  /  | |  |  |                                            
        |  |_.' |  \| |_.'  |  '..`''.)  '..`''.)        \| |_.'  | |  .     |/   |  |   ' |        '..`''.) (|  '--.   /_) |OO  )  |  |_|( OO ) |  |_.' | (|  '--.                                         
        |  .___.'   |  .-.  | .-._)   \ .-._)   \         |  .-.  | |  |\    |    |  |   / :       .-._)   \  |  .--'   ||  |`-'|   |  | | `-' / |  .  '.'  |  .--'                                         
        |  |        |  | |  | \       / \       /         |  | |  | |  | \   |    |  '--'  /       \       /  |  `---. (_'  '--'\  ('  '-'(_.-'  |  |\  \   |  `---.                                        
        `--'        `--' `--'  `-----'   `-----'          `--' `--' `--'  `--'    `-------'         `-----'   `------'    `-----'    `-----'     `--' '--'  `------'                                        
         _ .-') _     ('-.     _ (`-.               .-') _         .-. .-')                    .-. .-')                                         ('-.         .-') _  
        ( (  OO) )  _(  OO)   ( (OO  )             (  OO) )        \  ( OO )                   \  ( OO )                                       ( OO ).-.    ( OO ) ) 
         \     .'_ (,------. _.`     \ .-'),-----. /     '._        ;-----.\  ,--.   ,--.      ,--. ,--.  ,-.-')  ,--.      ,--.      ,-.-')   / . --. /,--./ ,--,'  
         ,`'--..._) |  .---'(__...--''( OO'  .-.  '|'--...__)       | .-.  |   \  `.'  /       |  .'   /  |  |OO) |  |.-')  |  |.-')  |  |OO)  | \-.  \ |   \ |  |\  
         |  |  \  ' |  |     |  /  | |/   |  | |  |'--.  .--'       | '-' /_).-')     /        |      /,  |  |  \ |  | OO ) |  | OO ) |  |  \.-'-'  |  ||    \|  | ) 
         |  |   ' |(|  '--.  |  |_.' |\_) |  |\|  |   |  |          | .-. `.(OO  \   /         |     ' _) |  |(_/ |  |`-' | |  |`-' | |  |(_/ \| |_.'  ||  .     |/  
         |  |   / : |  .--'  |  .___.'  \ |  | |  |   |  |          | |  \  ||   /  /\_        |  .   \  ,|  |_.'(|  '---.'(|  '---.',|  |_.'  |  .-.  ||  |\    |   
         |  '--'  / |  `---. |  |        `'  '-'  '   |  |          | '--'  /`-./  /.__)       |  |\   \(_|  |    |      |  |      |(_|  |     |  | |  ||  | \   |   
         `-------'  `------' `--'          `-----'    `--'          `------'   `--'            `--' '--'  `--'    `------'  `------'  `--'     `--' `--'`--'  `--'         
