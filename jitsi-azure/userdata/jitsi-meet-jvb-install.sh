#!/bin/bash

# Instala o Docker
apt install apt-transport-https ca-certificates curl gnupg-agent software-properties-common -y
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | apt-key add -
add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable"
apt update
apt install docker-ce docker-ce-cli containerd.io -y

# Cria a rede jitsi-net no Docker
docker network create jitsi-net

# Instala o Docker Compose
curl -L "https://github.com/docker/compose/releases/download/1.25.5/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/sbin/docker-compose
chmod +x /usr/local/sbin/docker-compose
