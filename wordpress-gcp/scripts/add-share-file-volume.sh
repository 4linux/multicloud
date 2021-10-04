#!/bin/bash

# Configura ambiente NFS
sudo apt install nfs-common -y

# Cria pasta /wpsite
sudo mkdir /wpsite

# Monta compartilhamento remoto
sudo mount -t nfs 10.51.215.2:/wpsite /wpsite
sudo bash -c 'echo "10.51.215.2:/wpsite /wpsite nfs defaults,_netdev 0 0" >> /etc/fstab'
