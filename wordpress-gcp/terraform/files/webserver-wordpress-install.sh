#!/bin/bash

# Remove as configurações de Log do arquio docker-compose.yml
sed -i '/^[[:blank:]]*logging/d;s/#.*//' /home/suporte-gcp/multicloud/wordpress-gcp/compose-web/docker-compose.yml
sed -i '/^[[:blank:]]*driver/d;s/#.*//' /home/suporte-gcp/multicloud/wordpress-gcp/compose-web/docker-compose.yml

# Atualiza o container webserver-wordpress
cd /home/suporte-gcp/multicloud/wordpress-gcp/compose-web
docker-compose up -d
