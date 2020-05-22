# Docker Guide

## Basics

```shell
# Containers
docker container run hello-world
docker container ls 
docker container stop hashID
-- remove all stopped containers
docker container prune 

docker tag myimg:1 myimg:latest
docker container exec -it hashID /bin/bash
docker container attach hashID

# Images
docker search nginx

docker image ls
docker image rm hashID
docker image rm name

# Networking
docker network ls
docker network inspect <network-id>

docker network create my-app ---driver bridge
docker network connet my-app <container-id>
docker network disconnet my-app <container-id>

# Networking DNS
-- Docker defaults the hostname to containers name

# Logs
docker container logs hashID

# Info
docker container inspect hashID | less

# Build and Run 
docker build . -t myimg:2020

docker container run --rm  -p 8080:80 myalpineimg:2020
docker container run --rm -d -p 8080 --name=myhttpd httpd:2.4
docker container run --rm -p 8080:80 -v /root/www:/usr/local/apache2/htdocs httpd:2.4                                                                                                                 

```
## Dockerfile

```docker
FROM nginx:alpine

LABEL maintainer="x0d3r <x0d3r@xxx.com>"

ENV APP_VERSION 1.0.3

RUN set \
        && adduser -D -g 'www' www \
        && mkdir /www \
        && chown -R www:www /usr/share/nginx/html \
        && chown -R www:www /www

COPY nginx.conf /etc/nginx/

EXPOSE 80
```

