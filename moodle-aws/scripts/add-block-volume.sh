#!/bin/bash

# Cria a pasta /data
sudo mkdir /data

# Monta disco para gravar dados do banco
sudo mkfs.xfs /dev/xvdf
sudo mount -t xfs /dev/xvdf /data
sudo bash -c 'echo "/dev/xvdf /data xfs defaults 0 0" >> /etc/fstab'
