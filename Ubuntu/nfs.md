# Client side

## Install nfs-common

## List shared folder
NFS_SERVER=192.168.0.10
showmount -e $NFS_SERVER 

sudo mkdir /media/nfs
sudo mount "$NFS_SERVER:/media/lorenzo/Big/SERIES/Peaky Blinders" /media/nfs
