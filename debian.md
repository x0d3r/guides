## Debian minimal install

```shell
# edit 
/etc/apt/sources.list add non-free

apt-get update
apt-get install ca-certificates apt-transport-https
apt-get install build-esential git tmux vim mc
apt-get install linux-headers-$(uname -r)

apt-get install zip unzip unrar gdebi gdebi-core
apt-get install htop mplayer mpv terminator
apt-get install geany geany-plugins

# Optional 
apt-get install module-assistant
m-a prepare

# VirtualBox
blkid
mount /dev/sr0 /media/cdrom -t iso9660
sh /media/cdrom/VBoxLinuxAdditions.run

# Fonts
apt-get install fonts-roboto

# mucommander
http://apt.mucommander.com/

# mpv player
vim ~/.config/mpv/mpv.conf
vim ~/.config/mpv/input.conf

```
