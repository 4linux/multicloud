#!/bin/bash

# Configura ambiente de Logs

sudo yum install awslogs -y

REGION=`curl http://169.254.169.254/latest/dynamic/instance-identity/document|grep region|awk -F\" '{print $4}'`
sudo sed -i 's|us-east-1|'"${REGION}"'|g' /etc/awslogs/awscli.conf

export ID=$(ec2-metadata -i | awk -F" " '{print $2}')
sudo sed -i 's|{instance_id}|'"${ID}"'|g' /etc/awslogs/awslogs.conf 

export LOG1='log_group_name = /var/log/messages'
export LOG2='log_group_name = moodle'
sudo sed -i 's|'"${LOG1}"'|'"${LOG2}"'|g' /etc/awslogs/awslogs.conf

sudo systemctl enable awslogsd
sudo systemctl start awslogsd
