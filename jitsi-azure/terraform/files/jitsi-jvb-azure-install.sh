#!/bin/bash

# Remove as configurações de Log do arquivo docker-compose.yml
sed -i '/^[[:blank:]]*logging/d;s/#.*//' /home/azureuser/multicloud/jitsi-azure/compose-jvb/docker-compose.yml 
sed -i '/^[[:blank:]]*driver/d;s/#.*//' /home/azureuser/multicloud/jitsi-azure/compose-jvb/docker-compose.yml
sed -i '/^[[:blank:]]*options/d;s/#.*//' /home/azureuser/multicloud/jitsi-azure/compose-jvb/docker-compose.yml
sed -i '/^[[:blank:]]*syslog/d;s/#.*//' /home/azureuser/multicloud/jitsi-azure/compose-jvb/docker-compose.yml
sed -i '/^[[:blank:]]*tag/d;s/#.*//' /home/azureuser/multicloud/jitsi-azure/compose-jvb/docker-compose.yml

# Atualiza o container jitsi-jvb
cd /home/azureuser/multicloud/jitsi-azure/compose-jvb/
docker-compose up -d
