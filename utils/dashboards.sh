#!/usr/bin/env bash

kill -9 $(lsof -t -i:3000)
kill -9 $(lsof -t -i:9090)

kubectl port-forward --namespace monitoring service/grafana 3000:3000 > ./k8s.log &
K8S=$(kubectl get pods -n kube-system | grep -oe "kubernetes-dashboard-[a-z0-9]*-[a-z0-9]*")
kubectl port-forward ${K8S} 9090:9090 -n kube-system > ./grafana.log &
tail -f k8s.log & tail -f grafana.log
