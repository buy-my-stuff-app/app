#!/bin/bash

printf "Removing project resources\n\n"

kubectl delete \
  -f k8s/ingress \
  -f k8s/issuer

# helm uninstall buymystuffapp-ingress --namespace buymystuffapp

kubectl delete \
  -f k8s/namespaces

kubens default

printf "\n\nAll project resources deleted"