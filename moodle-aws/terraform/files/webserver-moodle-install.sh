#!/bin/bash

# Remove as configurações de Log do arquivo docker-compose.yml
sed -i '/^[[:blank:]]*logging/d;s/#.*//' /home/ec2-user/multicloud/moodle-aws/compose-web/docker-compose.yml 
sed -i '/^[[:blank:]]*driver/d;s/#.*//' /home/ec2-user/multicloud/moodle-aws/compose-web/docker-compose.yml 
sed -i '/^[[:blank:]]*options/d;s/#.*//' /home/ec2-user/multicloud/moodle-aws/compose-web/docker-compose.yml 
sed -i '/^[[:blank:]]*awslogs/d;s/#.*//' /home/ec2-user/multicloud/moodle-aws/compose-web/docker-compose.yml

# Atualiza o container webserver-moodle
cd /home/ec2-user/multicloud/moodle-aws/compose-web/
docker-compose up -d
