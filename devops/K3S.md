## K3S Guide

### Master Node
```sh
curl -sfL https://get.k3s.io | sh -

kubectl cluster-info

kubectl config view 

cat /var/lib/rancher/k3s/server/token

watch kubectl get no
```

### Workers
```sh
export INSTALL_K3S_EXEC="--node-ip=<worker-ip> --flannel-iface=ens10"
export K3S_URL=https://<master-ip>:6443
export K3S_TOKEN=<TOKEN_ID>

curl -sfL https://get.k3s.io | sh -
```

### Test
```sh
kubectl create deploy nginx --image=nginx 
kubectl expose deploy nginx --port 80 --type NodePort
kubectl get all
```

### Troubleshoot
```sh
/usr/local/bin/k3s-uninstall.sh
```
