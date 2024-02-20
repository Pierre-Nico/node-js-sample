# Utiliser l'image de base officielle Node.js. Vous pouvez choisir une version spécifique de Node si nécessaire.
FROM node:14

# Définir le répertoire de travail dans le conteneur
WORKDIR /usr/src/app

# Copier les fichiers package.json et package-lock.json (si présent) dans le répertoire de travail
COPY package*.json ./

# Installer les dépendances de l'application
RUN npm install

# Copier le reste des fichiers de l'application dans le répertoire de travail du conteneur
COPY . .

# Exposer le port sur lequel l'application s'exécutera
# Assurez-vous que ce port correspond au port sur lequel votre application est configurée pour écouter
EXPOSE 8080

# Définir la commande pour démarrer l'application en utilisant `app.js` comme point d'entrée
CMD ["node", "app.js"]
