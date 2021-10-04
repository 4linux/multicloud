#!/bin/bash

# Cria a pasta /data
sudo mkdir /data

# Monta disco para gravar dados do banco
sudo mkfs.xfs /dev/sdb
sudo mount -t xfs /dev/sdb /data
sudo bash -c 'echo "/dev/sdb /data xfs defaults 0 0" >> /etc/fstab'
