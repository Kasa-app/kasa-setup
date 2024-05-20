# Kasa setup
Ce dépôt contient la configuration du serveur proxy, ainsi qu'un script permettant de déployer automatiquement les micro-services de l'application à l'aide de docker.

# Prérequis
- Android Studio
- Docker Desktop
- NodeJs v18.17.1
- Git bash ou autre terminal pouvant exécuter du bash
- Port 80 libre pusique le serveur proxy se sert de ce port en local

# Instructions du déploiement de l'environnement
1 - Installer et démarrer Docker Desktop sur son environnement

2 - Se créer un dossier kasa-dev ou le nom que vous désirez où les différents dépôts se retrouveront

3 - Cloner les différents projets/microservices dans le dossier en question
  * authentification-service
  * kasa-client-app
  * management-service
  * kasa-setup
  * agenda-service

4 - À l'aide d'un terminal et de la commande cd se rendre dans le dossier du projet kasa-setup

5 - Le script setup.sh devrait être présent. Il suffit de l'exécuter en faisant "./setup.sh"
À cette étape tous les conteneurs nécessaires ainsi que le serveur proxy seront créés sans devoir exécuter chaque docker-compose un à un.

# Note
** Si c'est la première fois que les bases de données sont créées, il est possible que les services n'est pas réussi à se connecter aux bases de données puisqu'elles n'étaient pas existantes. Tout simplement rouler le script à nouveau devrait rendre le tout fonctionnel et peremttre aux services de se connecter à sa base de données. **

# Configuration de l'application client
1 - Configurer votre environnment pour qu'il puisse fonctionner avec React-Native en suivant leur guide https://reactnative.dev/docs/0.72/environment-setup?guide=native
Ce guide vous fera installer les outils nécessaires et vous iondiquera les configurations requises afin que l'application puisse fonctionner dans votre environnement.
Assurez-vous de configurer un émulateur Android.

2 - Dans le téléphone Android virtuel, assurez-vous d'activé le mode développeur.

3 - Une fois fait, se rendre dans le dossier kasa-client-app.

4 - Exécuter la commande npm i à l'aide d'un terminal afin d'installer les dépendances du projet.

5 - Exécuter la commande npm run android. Entrer la lettre "a" pour build l'application pour Android. Cette commande peut prendre quelques minutes la première fois pour build l'application.

6 - Et voilà!

# Note
** Il est possible que la commande npm run android affiche des erreurs la première fois, mais qu'il continue à faire le build tout de même. 
Si vous voyez que le build progresse, laisser le tout simplement continuer et l'application devrait s'ouvrir dans votre émulateur.

