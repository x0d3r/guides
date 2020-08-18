## Kubeadm Install guide

### Docker setup
```sh
apt-get install -y apt-transport-https ca-certificates curl gnupg-agent software-properties-common

curl -fsSL https://download.docker.com/linux/debian/gpg | apt-key add -
add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/debian $(lsb_release -cs) stable"

apt-get update && apt-get install -y docker-ce docker-ce-cli containerd.io
```

### Kubeadm setup
```sh
cat <<EOF >> /etc/sysctl.d/k8s.conf
net.bridge.bridge-nf-call-ip6tables = 1
net.bridge.bridge-nf-call-iptables = 1
EOF

sudo sysctl --system

curl -s https://packages.cloud.google.com/apt/doc/apt-key.gpg | sudo apt-key add -
add-apt-repository "deb https://apt.kubernetes.io/ kubernetes-xenial main"

apt-get update && apt-get install -y kubelet kubeadm kubectl
apt-mark hold kubelet kubeadm kubectl

systemctl daemon-reload
systemctl restart kubelet

kubeadm config images pull

kubeadm init \
  --apiserver-advertise-address=10.98.0.2 \ 
  --pod-network-cidr=10.98.0.0/16 \
  --ignore-preflight-errors=NumCPU \
  --apiserver-cert-extra-sans <10.0.0.1> \
  --kubernetes-version=v1.18.5 

# Workers generate join command
kubeadm token create --print-join-command

# Deploy calico network
kubectl --kubeconfig=/etc/kubernetes/admin.conf create -f https://docs.projectcalico.org/v3.14/manifests/calico.yaml
```

### Workers
```sh
kubeadm join <master-ip>:6443 --token <token> --discovery-token-ca-cert-hash sha256:<some-sha>
```

### Test
```sh
kubectl cluster-info
kubectl get no
kubectl get cs

kubectl create deploy nginx --image nginx
kubectl expose deploy nginx --port 80 --type NodePort

kubectl get all
```

### Troubleshoot
```sh
tail /var/log/message
journalctl -u kubelet
journalctl -u docker

systemctl restart docker.service
kubeadm reset
rm -R $HOME/.kube

# Run kubeadm without worker nodes
kubectl taint nodes --all node-role.kubernetes.io/master-
```

### Resources
https://kubernetes.io/docs/setup/production-environment/tools/kubeadm/

https://github.com/justmeandopensource/kubernetes/blob/master/docs/install-cluster-ubuntu-20.md

https://www.digitalocean.com/community/tutorials/how-to-create-a-kubernetes-cluster-using-kubeadm-on-debian-9
