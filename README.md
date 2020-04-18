# Getting started
1. `git clone --recurse-submodules https://github.com/buy-my-stuff-app/api-gateway.git`

## Ingress for local development
- Install ingress: `helm install buymystuffapp-ingress stable/nginx-ingress --set rbac.create=true`
- Uninstall ingress: `helm uninstall buymystuffapp-ingress`