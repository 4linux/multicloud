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
### Instala os pacotes amazon-cloudwatch-agent e rsyslog
yum install amazon-cloudwatch-agent rsyslog -y

### Configura o arquivo amazon-cloudwatch-agent.json
mkdir /opt/aws/amazon-cloudwatch-agent/etc/custom
wget https://raw.githubusercontent.com/4linux/multicloud/main/moodle-aws/scripts/amazon-cloudwatch-agent.json -O /opt/aws/amazon-cloudwatch-agent/etc/custom/amazon-cloudwatch-agent.json
amazon-cloudwatch-agent-ctl -a fetch-config -m ec2 -c file:/opt/aws/amazon-cloudwatch-agent/etc/custom/amazon-cloudwatch-agent.json

### Configura os serviços amazon-cloudwatch-agent e rsyslog
systemctl start amazon-cloudwatch-agent rsyslog
systemctl enable amazon-cloudwatch-agent rsyslog
