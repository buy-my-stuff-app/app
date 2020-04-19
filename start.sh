#!/bin/bash

printf "Starting development services\n\n"

kubectl apply \
  -f k8s/namespaces \
  -f k8s/ingress \
  -f k8s/issuer
  
printf "\n\n All services Ready"
