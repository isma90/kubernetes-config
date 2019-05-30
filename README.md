

`kubectl apply -f load-balancer`








## Access dashboard on AKS with RBAC enabled

`kubectl create clusterrolebinding kubernetes-dashboard -n kube-system --clusterrole=cluster-admin --serviceaccount=kube-system:kubernetes-dashboard`
