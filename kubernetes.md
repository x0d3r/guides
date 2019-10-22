# Kubernetes

## Main Objects abbr
```shell
no	->	nodes
po 	-> 	pods
svc   -> 	services
rs 	->	replicasets
de	->	deployments
ns	->	namespaces

ing	->	ingress
se  -> 	secrets
cm	->	config maps
pv	->	persistent volumes
pvc -> 	persistent volumes claim

ds	->	daemon sets
sa	->	service accounts
ro	->	roles
```
## Cluster
```shell
kubectl cluster-info
kubectl config
kubectl config view
kubectl top node
```

## Basic cmds
```shell
kubectl get all
kubectl get [ob]
kubectl get [ob] --all-namespaces
kubectl get [ob] --show-labels
kubectl get [ob] -o [wide | json | yaml]

kubectl get [ob] [oname] -o yaml --export > ob-definition.yml
kubectl describe [ob] [oname]
kubectl edit [ob] [oname]
kubectl delete [ob] [oname]
```

## Create objects
```shell
kubectl apply -f ob-definition.yml
kubectl create -f ob-definition.yml
kubectl run nginx --image=nginx --restart=Never -n mynamespace
kubectl run nginx --image=nginx --restart=Never --dry-run -o yaml > pod.yml
```

## Scaling ReplicaSets
```shell
kubectl scale --replicas=6 rs/myapp-replicaset
kubectl scale --replicas=6 -f rs-definition.yml
```

## Monitoring & Logging 
```shell
kubectl get events 
kubectl get logs
```

## Basic yaml definition
```yaml
apiVersion: [v1 | apps/v1]
kind: [Pod | ReplicaSet | Deployment]
metadata:
  name: oname
spec:
```

## Example Deployment definition
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
