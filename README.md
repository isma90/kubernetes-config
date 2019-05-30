# Configurations you need to start a kubernetes cluster

### Load Balancer
`kubectl apply -f load-balancer`
### Ingress service
`kubectl apply -f ingress-service`
### Heapster Monitoriong
Needed to use Horizontal Pod Autoscaler.
`kubectl apply -f heapster`
### Prometheus and Graphana
`kubectl apply -f prometheus`







## Access dashboard on AKS with RBAC enabled

`kubectl create clusterrolebinding kubernetes-dashboard -n kube-system --clusterrole=cluster-admin --serviceaccount=kube-system:kubernetes-dashboard`

![dashboard](https://github.com/isma90/kubernetes-config/blob/master/resources/image/dashboard-errors.png)
