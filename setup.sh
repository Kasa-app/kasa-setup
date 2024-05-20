#!/bin/bash

# Création du network sur lequel se retoruvera tous les micro-services
docker-compose -f docker-compose-setup-network.yml up -d

# Démarre le micro-service d'authentification
cd ../authentification-service
docker-compose up --build -d
cd -

# Démarre le micro-service de management
cd ../management-service
docker-compose up --build -d
cd -

# Démarre le micro-service agenda
cd ../agenda-service
docker-compose up --build -d
cd -

# Démarre le serveur proxy nginx
docker-compose -f docker-compose.yml up --build -d

read -p "Press Enter to exit..."