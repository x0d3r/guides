## Misc util cmds

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

# Check hdd 
fsck -y /dev/sda
e2fsck -p -c /dev/sda

/sbin/fsck.ext4 -p /dev/sdb1

# Convert flac to mp4 and increase volume
ffmpeg -i "Clip 1" -af "volume=8dB" output.mp4
```
