## Misc util cmds

```shell

# Mount 
mount -o loop /dev/cdrom /media/cdrom
mount /dev/sda2 -t ntfs /media/x0d3r/OS 
mount -o loop Image.iso /media/iso

# Create an ISO image from CD/DVD
dd if=/dev/sr0/ of=/home/x0d3r/Downloads/winxp.iso

# Create Bootable USB 
dd if=/media/x0d3r/k8s/debian-11.0.0-amd64-netinst.iso of=/dev/sdb conv=fdatasync status=progress bs=4M 

# HDD TEMP
hddtemp /dev/sda
hddtemp /dev/sdb

# Shutdown
shutdown -c 04:00

# HDD Space
df -Th

# Ram Use
free -h 

# Check hdd 
fsck -y /dev/sda
e2fsck -p -c /dev/sda

/sbin/fsck.ext4 -p /dev/sdb1

# Join Files
cat file1.csv file2.csv >> file.csv
cat * >> file.csv

# Recover deleted files
extundelete /dev/sda2 --restore-directory /home/user/docs
extundelete /dev/sda2 --restore-file /home/user/docs/file.flv

# Convert flac to mp4 and increase volume
ffmpeg -i "Clip 1" -af "volume=8dB" output.mp4
```
