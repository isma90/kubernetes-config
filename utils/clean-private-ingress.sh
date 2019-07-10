#!/usr/bin/env bash

helm delete $(helm list -q) #Delete all, take it easy.

cd ..
cd helm
kubectl delete -f backend-namespace.yaml
kubectl delete -f helm-rbac.yaml
