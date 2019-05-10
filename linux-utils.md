## Misc Util cmds

```shell

# Mount 
mount -o loop /dev/cdrom /media/cdrom
mount /dev/sda2 -t ntfs /media/x0d3r/OS 
mount -o loop Image.iso /media/iso

# Create an ISO image from CD/DVD
dd if=/dev/sr0/ of=/home/x0d3r/Downloads/winxp.iso

# HDD TEMP
hddtemp /dev/sda
hddtemp /dev/sdb

# Shutdown
shutdown -c 04:00

# HDD Space
df -Th

# Ram Use
free -h 

```
