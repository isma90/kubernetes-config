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


## Automation

`chmod +X deploy.sh`

`./deploy.sh`


## Access dashboard on AKS with RBAC enabled

`kubectl create clusterrolebinding kubernetes-dashboard -n kube-system --clusterrole=cluster-admin --serviceaccount=kube-system:kubernetes-dashboard`

![dashboard](https://github.com/isma90/kubernetes-config/blob/master/resources/image/dashboard-errors.png)


### Author

**Ismael Leiva**

* [github/isma90](https://github.com/isma90)
* [dockerhub/ismaleiva90](https://hub.docker.com/u/ismaleiva90)
* [stackoverflow/isma90](https://stackoverflow.com/users/2043313/isma90?tab=profile)

### License

Copyright © 2017, [Ismael Leiva](https://github.com/isma90).
Released under the [MIT License](LICENSE).
