Cria a pasta /jitsi-backup-confs
sudo su
mkdir /jitsi-backup-confs

Aplica o sistema de arquivos XFS no disco:
mkfs.xfs /dev/sdb

Monta disco para gravar backup das configurações do Jitsi
MOUNT_FSTAB=$(blkid | grep sdb | awk '{print $2}' | sed -e s/\"//g ; echo '/jitsi-backup-confs xfs defaults 0 0')
echo $MOUNT_FSTAB >> /etc/fstab
mount -a
