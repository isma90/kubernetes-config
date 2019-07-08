# Configurations you need to start a kubernetes cluster

### Dependencies

`kubectl apply -f 0_dependencies`

### Load Balancer
`kubectl apply -f 1_load-balancer`
### Ingress service
`kubectl apply -f 2_ingress-service`
### Heapster Monitoriong
Needed to use Horizontal Pod Autoscaler.
`kubectl apply -f 3_heapster`
### Prometheus and Graphana
`kubectl apply -f 4_prometheus`


## Automation

`chmod +X deploy.sh`

`./deploy.sh`


## Access dashboard on AKS with RBAC enabled

`kubectl create clusterrolebinding kubernetes-dashboard -n kube-system --clusterrole=cluster-admin --serviceaccount=kube-system:kubernetes-dashboard`

![dashboard](resources/image/dashboard-errors.png)


### Author

**Ismael Leiva**

* [github/isma90](https://github.com/isma90)
* [dockerhub/ismaleiva90](https://hub.docker.com/u/ismaleiva90)
* [stackoverflow/isma90](https://stackoverflow.com/users/2043313/isma90?tab=profile)

### License

Copyright © 2017, [Ismael Leiva](https://github.com/isma90).
Released under the [MIT License](LICENSE).


### Credit

This repository was heavily inspired by the implementation in [giantswarm/prometheus](https://github.com/giantswarm/prometheus)
