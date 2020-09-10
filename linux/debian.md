## Debian minimal install

```shell
# edit 
/etc/apt/sources.list add non-free

apt-get update
apt-get install apt-transport-https ca-certificates software-properties-common
apt-get install build-esential git tmux vim mc
apt-get install linux-headers-$(uname -r)

apt-get install zip unzip unrar gdebi gdebi-core
apt-get install htop mplayer mpv

# Optional 
apt-get install module-assistant
m-a prepare

# VirtualBox
blkid
mount /dev/sr0 /media/cdrom -t iso9660
sh /media/cdrom/VBoxLinuxAdditions.run

# Fonts
apt-get install fonts-roboto fonts-dejavu fonts-inconsolata ttf-anonymous-pro 

# mucommander
http://apt.mucommander.com/

# mpv player
vim ~/.config/mpv/mpv.conf
vim ~/.config/mpv/input.conf

# Re-configure VMware Modules
/usr/bin/vmware-modconfig --console --install-all
```

### nvidia
```shell
nvidia-uninstall
apt-get remove --purge '^nvidia-.*'
apt-get purge nvidia-driver
apt-get install nvidia-driver

# Blacklist nouveau to install non-free nvidia driver

# op1
vim /etc/modprobe.d/blacklist-nouveau.conf

blacklist nouveau
options nouveau modeset=0

update-initramfs -u
reboot

# op2
Add nouveau.runpm=0 as a kernel option at boot editing Grub
```

### Troubleshooting
```
systemd-analyze
dmesg
dmesg | grep /dev/...
```
