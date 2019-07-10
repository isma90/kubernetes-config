#!/usr/bin/env bash

kubectl apply -f helm/helm-rbac.yaml
helm init --service-account tiller --node-selectors "beta.kubernetes.io/os"="linux"
kubectl apply -f helm/backend-namespace.yaml

kubectl create serviceaccount --namespace kube-system tiller
kubectl create clusterrolebinding tiller-cluster-rule --clusterrole=cluster-admin --serviceaccount=kube-system:tiller
kubectl patch deploy --namespace kube-system tiller-deploy -p '{"spec":{"template":{"spec":{"serviceAccount":"tiller"}}}}'

helm install stable/nginx-ingress \
    --namespace backend \
    -f helm/internal-ingress.yaml \
    --set controller.replicaCount=2 \
    --set controller.nodeSelector."beta\.kubernetes\.io/os"=linux \
    --set defaultBackend.nodeSelector."beta\.kubernetes\.io/os"=linux
