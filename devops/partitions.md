## Linux Partitions Guide

```shell
# HDD INFO
lsblk 
lsblk -o NAME,TYPE,LABEL,UUID

blkid 
df -Th
fdisk -l


# Wipe partitions using intuitive help
fdisk /dev/sdb
d, p, 1, t 83, w

# Create Partition
mkfs.ext4 -L "Blacked" /dev/sdb1

# Edit 
vim /etc/fstab

LABEL=Blacked	/media/bl4ck3d   ext4			defaults	0	2

# Mount all from /etc/fstab
mount -a 

# Give permissions 
sudo chown -R USERNAME:USERNAME /media/bl4ck3d

# Optional label disk
e2label /dev/sdb1 /backup
```

# Resources
https://askubuntu.com/questions/684652/how-to-format-an-external-hard-drive-to-ext4

https://tecadmin.net/format-usb-in-linux/

https://www.digitalocean.com/community/tutorials/how-to-partition-and-format-storage-devices-in-linux

https://superuser.com/questions/643765/creating-ext4-partition-from-console

https://kwilson.io/blog/format-a-linux-disk-as-ext4-from-the-command-line/

https://www.cyberciti.biz/faq/linux-disk-format/

https://serverfault.com/questions/413143/is-there-such-a-thing-as-a-quick-format-for-ext4
