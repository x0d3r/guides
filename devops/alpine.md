# Alpine Package Management

## Basics
```shell
apk update
apk upgrade

apk add bash iptables
apk add --no-cache bash-doc 
apk add bash-completion
apk add --allow-untrusted /path/foo.apk  /path/bar.apk 

apk --no-cache add --repository http://dl-cdn.alpinelinux.org/alpine/edge/main libseccomp
apk --no-cache add --repository http://dl-cdn.alpinelinux.org/alpine/edge/community docker

echo http://dl-cdn.alpinelinux.org/alpine/latest-stable/community >> /etc/apk/repositories

# Setting bash
vi /etc/passwd
root:x:0:0:root:/root:/bin/ash 
root:x:0:0:root:/root:/bin/bash
```

## Info
```shell
apk stats

apk search -v 'miniku*' 
apk search -v --description 'compose'

apk info
apk info -a zlib
apk info -L zlib
apk info -vv bash | sort
apk info -R bash
```

## Maintenance
```shell
apk fix 

setup-apkcache
apk cache -v clean
apk cache download
apk cache -v sync 

apk policy bash
apk del vim pkg2
```

## Installing Docker
```shell
add docker
rc-update add docker boot
service docker start

# Isolate containers with a user namespace
adduser -SDHs /sbin/nologin dockremap
addgroup -S dockremap
echo dockremap:$(cat /etc/passwd|grep dockremap|cut -d: -f3):65536 >> /etc/subuid
echo dockremap:$(cat /etc/passwd|grep dockremap|cut -d: -f4):65536 >> /etc/subgid

docker info
docker version
docker pull hello-world
docker run --rm -t hello-world
```

## Resources
https://www.how2shout.com/how-to/how-to-install-docker-ce-on-alpine-linux.html

https://nubcakes.net/index.php/2019/03/15/how-to-install-docker-on-alpine-linux-vm/

https://wiki.alpinelinux.org/wiki/Docker#Installation

https://github.com/moby/moby/issues/36016

https://discuss.linuxcontainers.org/t/lxd-docker-ce-on-gentoo/4122/7
