# Minikube Guide

## Basics
```shell
minikube start
minikube start --driver=virtualbox --kubernetes-version=v1.13 --cpus=2 --memory=8g

minikube pause
minikube stop

# Info
minikube status
minikube version
minikube ip

# Hands-on
minikube dashboard
minikube service hello-app

# Addons
minikube addons list
minikube addons enable ingress

# Maintenance
minikube delete
rm -rf /usr/local/bin/minikube
rm -rf ~/.minikube .kube

# Troubleshooting
minikube logs
minikube ssh
```

## Deploying app 
```shell
# Info & Stats
kubectl cluster-info
kubectl config view

kubectl get nodes
kubectl get nodes -o wide

kubectl get pods
kubectl get pods -n kube-system
kubectl get pods --all-namespaces

kubectl get deploy
kubectl get svc
kubectl get ing

# Troubleshooting
kubectl get events
kubectl describe deployment

# Hello App
kubectl run myshell --rm -it --image busybox -- sh

kubectl create deployment nginxapp --image=nginx:latest
kubectl expose deployment nginxapp --type=NodePort --port=80

curl $(minikube service nginxapp --url)
```

## Resources
https://minikube.sigs.k8s.io/docs/start/

https://kubernetes.io/docs/tasks/tools/install-minikube/

https://kubernetes.io/blog/

https://kubernetes.io/docs/tutorials/hello-minikube/
