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

helm repo add stable https://charts.helm.sh/stable
helm repo add incubator https://charts.helm.sh/incubator
helm repo update

helm search repo nginx

helm ls

helm install stable/mysql --generate-name
helm uninstall [helm-name]

helm inspect values stable/nginx > /tmp/nginx.values
helm install www stable/nginx --values /tmp/nginx.values

helm delete name
```
