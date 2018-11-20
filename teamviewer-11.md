## Teamviewer 11 Install Guide

```shell
dpkg --add-architecture i386
apt-get update

apt-get install libdbus-1-3:i386 libc6:i386 libgcc1:i386 libasound2:i386 libfreetype6:i386 zlib1g:i386 
libsm6:i386 libxdamage1:i386 libxext6:i386 libxfixes3:i386 libxrandr2:i386 libxrender1:i386 libxtst6:i386
libjpeg62:i386 libxinerama1:i386 libexpat1:i386 libfontconfig1:i386

# Get libpng12
https://packages.ubuntu.com/xenial/i386/libpng12-0/download

dpkg -i libpng12-0_1.2.54-1ubuntu1.1_i386.deb 
dpkg -i --force-depends teamviewer_11.0.93329_i386.deb 

# On error
apt --fix-broken install

```
