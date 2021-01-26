## Kubeadm Install guide

### OS setup
```sh
cat <<EOF | sudo tee /etc/modules-load.d/k8s.conf
overlay
br_netfilter
EOF

cat <<EOF | sudo tee /etc/sysctl.d/k8s.conf
net.bridge.bridge-nf-call-ip6tables = 1
net.bridge.bridge-nf-call-iptables = 1
net.ipv4.ip_forward = 1
EOF

modprobe overlay
modprobe br_netfilter

sudo sysctl --system
```

### Docker setup (Soon to be deprecated on k8s v1.23)
```sh
apt-get install -y apt-transport-https ca-certificates curl gnupg-agent software-properties-common

curl -fsSL https://download.docker.com/linux/debian/gpg | apt-key add -
add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/debian $(lsb_release -cs) stable"

apt-get update && apt-get install -y \
  containerd.io=1.2.13-2 \
  docker-ce=5:19.03.11~3-0~debian-$(lsb_release -cs) \
  docker-ce-cli=5:19.03.11~3-0~debian-$(lsb_release -cs)
```

### Containerd setup
```sh
apt-get install -qq -y apt-transport-https ca-certificates curl gnupg-agent software-properties-common

curl -fsSL https://download.docker.com/linux/debian/gpg | apt-key add -
add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/debian $(lsb_release -cs) stable"

apt-get update -qq && apt-get install -y containerd.io

mkdir -p /etc/containerd
containerd config default | sudo tee /etc/containerd/config.toml
systemctl restart containerd
```

### Kubeadm setup
```sh
curl -s https://packages.cloud.google.com/apt/doc/apt-key.gpg | sudo apt-key add -
add-apt-repository "deb https://apt.kubernetes.io/ kubernetes-xenial main"

apt-get update -qq && apt-get install -qq -y kubelet=1.18.15-00 kubectl=1.18.15-00 kubeadm=1.18.15-00
apt-mark hold kubelet kubeadm kubectl

systemctl daemon-reload
systemctl restart kubelet

kubeadm config images pull

kubeadm init \
# --apiserver-advertise-address=10.98.0.2 \ 
  --pod-network-cidr=192.168.0.0/16 \
#  --ignore-preflight-errors=NumCPU \
#  --apiserver-cert-extra-sans <10.0.0.1> \
  --kubernetes-version=v1.18.15

# Workers generate join command
kubeadm token create --print-join-command

# Deploy calico network
kubectl create -f https://docs.projectcalico.org/manifests/tigera-operator.yaml
kubectl create -f https://docs.projectcalico.org/manifests/custom-resources.yaml

# Deploy flannel network addon 
kubectl apply -f https://raw.githubusercontent.com/coreos/flannel/master/Documentation/kube-flannel.yml
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
systemctl status kubelet

journalctl -xeu kubelet
journalctl -u docker

systemctl restart docker.service
kubeadm reset
rm -R $HOME/.kube

# Run k8s on master node only
kubectl taint nodes --all node-role.kubernetes.io/master-
```

### Resources
https://kubernetes.io/docs/setup/production-environment/tools/kubeadm/

https://github.com/justmeandopensource/kubernetes/blob/master/docs/install-cluster-ubuntu-20.md

https://www.digitalocean.com/community/tutorials/how-to-create-a-kubernetes-cluster-using-kubeadm-on-debian-9
