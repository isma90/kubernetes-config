#!/usr/bin/env bash

cd ..
cd helm

kubectl apply -f helm-rbac.yaml
helm init --service-account tiller --node-selectors "beta.kubernetes.io/os"="linux"
kubectl apply -f backend-namespace.yaml
helm install stable/nginx-ingress \
    --namespace back-end \
    -f internal-ingress.yaml \
    --set controller.replicaCount=2 \
    --set controller.nodeSelector."beta\.kubernetes\.io/os"=linux \
    --set defaultBackend.nodeSelector."beta\.kubernetes\.io/os"=linux
