# Kubernetes

## Basic cmds

```shell
# Cluster 
kubectl get cluster-info

kubectl get no
kubectl get po
kubectl get rs
kubectl get svc
kubectl get deploy

kubectl delete svc intro

kubectl apply -f app.yml
kubectl describe deploy msb-intro
kubectl delete deploy msb-intro nginx
```

## Example App spec 

```yaml
apiVersion: apps/v1
kind: Deployment
metadata:
  name: nginx
spec:
  selector:
    matchLabels:
      app: nginx
  replicas: 5
  template:
    metadata:
      labels:
        app: nginx
    spec:
      containers:
      - image: nginx
        name: web-ctr
```        
