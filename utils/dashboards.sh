#!/usr/bin/env bash

while true; do
    kill -9 $(lsof -t -i:3000)
    kill -9 $(lsof -t -i:9090)
    kill -9 $(lsof -t -i:9093)
    sleep 2s
    kubectl port-forward -n monitoring service/grafana 3000:3000 > ./k8s.log &
    K8S=$(kubectl get pods -n kube-system | grep -oe "kubernetes-dashboard-[a-z0-9]*-[a-z0-9]*")
    kubectl port-forward -n kube-system ${K8S} 9090:9090 > ./grafana.log &
    kubectl port-forward -n monitoring service/alertmanager 9093:9093 > ./alertmanager.log &

    sleep 120s

done
