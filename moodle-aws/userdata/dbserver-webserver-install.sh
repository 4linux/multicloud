#!/bin/bash

# Instala o Docker e Git
yum install docker git -y
systemctl enable docker
systemctl start docker

# Instala o Docker Compose
curl -L "https://github.com/docker/compose/releases/download/1.25.5/docker-compose-$(uname -s)-$(uname -m)" -o /usr/bin/docker-compose
chmod +x /usr/bin/docker-compose

# Cria a rede moodle-net no Docker
docker network create moodle-net

# Configura ambiente de Logs
yum install awslogs -y

REGION=`curl http://169.254.169.254/latest/dynamic/instance-identity/document|grep region|awk -F\" '{print $4}'`
sed -i 's|us-east-1|'"${REGION}"'|g' /etc/awslogs/awscli.conf

export ID=$(ec2-metadata -i | awk -F" " '{print $2}')
sed -i 's|{instance_id}|'"${ID}"'|g' /etc/awslogs/awslogs.conf 

export LOG1='log_group_name = /var/log/messages'
export LOG2='log_group_name = moodle'
sed -i 's|'"${LOG1}"'|'"${LOG2}"'|g' /etc/awslogs/awslogs.conf

systemctl enable awslogsd
systemctl start awslogsd
