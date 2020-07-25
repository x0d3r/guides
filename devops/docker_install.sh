#!/bin/bash

echo "starting installer.."

apt-get update

apt-get install -y apt-transport-https ca-certificates curl gnupg-agent software-properties-common

curl -fsSL https://download.docker.com/linux/debian/gpg | apt-key add -

add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/debian $(lsb_release -cs) stable"

apt-get update

apt-get install -y docker-ce docker-ce-cli containerd.io

systemctl daemon-reload

docker -v
containerd -v
