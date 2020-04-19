#!/bin/bash

printf "Removing project resources\n\n"

kubectl delete \
  -f k8s/issuer \
  -f k8s/ingress \
  -f k8s/namespaces

printf "\n\nAll project resources deleted"