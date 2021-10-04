#!/bin/bash

# Instala o Docker
sudo yum install docker -y
sudo systemctl enable docker
sudo systemctl start docker

# Cria a rede moodle-net no Docker
sudo docker network create moodle-net

# Instala o Docker Compose
sudo curl -L "https://github.com/docker/compose/releases/download/1.25.5/docker-compose-$(uname -s)-$(uname -m)" -o /usr/bin/docker-compose
sudo chmod +x /usr/bin/docker-compose
