## Metallb guide on hetzner

### Setup

```bash
# Setup floating IP on worker nodes
cat <<EOF >> /etc/network/interfaces.d/60-floating-ip.cfg
auto eth0:1
iface eth0:1 inet static
  address <floating-ip>
  netmask 32
EOF

systemctl restart networking.service

# Edit configmap, set strictARP: true 
```bash
kubectl edit configmap -n kube-system kube-proxy
```

```yaml
apiVersion: kubeproxy.config.k8s.io/v1alpha1
kind: KubeProxyConfiguration
mode: "ipvs"
ipvs:
  strictARP: true
```

### Installation
```bash
kubectl apply -f https://raw.githubusercontent.com/metallb/metallb/v0.9.3/manifests/namespace.yaml
kubectl apply -f https://raw.githubusercontent.com/metallb/metallb/v0.9.3/manifests/metallb.yaml

# On first install only
kubectl create secret generic -n metallb-system memberlist --from-literal=secretkey="$(openssl rand -base64 128)"
```

### Configuration
```bash
cat <<EOF |kubectl apply -f-
```

```yaml
apiVersion: v1
kind: ConfigMap
metadata:
  namespace: metallb-system
  name: config
data:
  config: |
    address-pools:
    - name: default
      protocol: layer2
      addresses:
      - <floating-ip>/32
EOF
```

### Resources
https://groups.google.com/forum/#!forum/metallb-users

https://opensource.com/article/20/7/homelab-metallb

https://kapuablog.wordpress.com/2020/02/15/k8s-and-metallb-a-local-non-cloud-loadbalancer/

https://www.growse.com/2019/04/13/at-home-with-kubernetes-metallb-and-bgp.html
