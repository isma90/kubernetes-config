#!/usr/bin/env bash

kubectl apply -f load-balancer
kubectl apply -f ingress-service
kubectl apply -f heapster
kubectl apply -f prometheus

echo "Enjoy your cluster! :D"
