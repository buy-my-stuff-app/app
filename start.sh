#!/bin/bash

printf "Starting development services\n\n"

kubectl apply -f k8s/namespaces

kubens buymystuffapp
# helm install buymystuffapp-ingress stable/nginx-ingress --set rbac.create=true --namespace buymystuffapp

kubectl apply \
  -f k8s/issuer \
  -f k8s/ingress
  
printf "\n\n All services Ready"
