## Docker Mini Guide

```shell

# Repos
apt install apt-transport-https ca-certificates curl software-properties-common
curl -fsSL https://download.docker.com/linux/debian/gpg | apt-key add -
add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/debian $(lsb_release -cs) stable"

# Install
apt update
apt install docker-ce

docker -v
docker run hello-world

# systemctl cmds
systemctl { start | stop | restart | status | enable } docker

# Add user to docker group
groupadd docker

useradd x0d3r
usermod -aG docker x0d3r

# Basic cmds
docker search superset
docker image pull amancevice/superset
docker image ls
docker image rm debian
```

## Resources
https://docs.docker.com/install/linux/docker-ce/debian/#install-docker-ce-1

https://www.linuxbabe.com/linux-server/install-docker-on-debian-8-jessie-server

https://linuxize.com/post/how-to-install-and-use-docker-on-debian-9/
