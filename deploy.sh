#!/usr/bin/env bash

kubectl apply -f 0_dependencies
kubectl apply -f 1_load-balancer
kubectl apply -f 2_ingress-service
kubectl apply -f 3_heapster
kubectl apply -f 4_prometheus

echo "Enjoy your cluster! :D"
