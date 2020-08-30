## Helm Guide

### Install 
```shell
curl https://raw.githubusercontent.com/helm/helm/master/scripts/get-helm-3 > get_helm.sh
chmod 700 get_helm.sh
./get_helm.sh
```

### Commands
```shell
helm version

helm repo add stable https://kubernetes-charts.storage.googleapis.com/

helm repo update

helm search repo nginx

helm list

helm inspect values stable/nginx > /tmp/nginx.values
helm install www stable/nginx --values /tmp/nginx.values

helm delete name
```
