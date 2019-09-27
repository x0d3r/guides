# Kubernetes

## Basic cmds

```shell
kubectl get nodes
kubectl get pods
kubectl get deploy

kubectl get svc
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
