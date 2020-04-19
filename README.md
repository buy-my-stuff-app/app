# Getting started
1. Clone all repository: `git clone --recurse-submodules https://github.com/buy-my-stuff-app/api-gateway.git`
2. Apply k8s YAML files: `kubectl apply -f k8s`
3. Install the ingress service if it is not ready yet. (See Ingress for local development)
4. If some services did not start because of the lack of the buymystuffapp namespace, run the previous command again.
5. Run Skaffold to develop the whole application: `skaffold dev`
6. If you make changes to a submodule, make sure to make the changes on a different branch than master.

## Ingress for local development
- Install ingress: `helm install buymystuffapp-ingress stable/nginx-ingress --set rbac.create=true --namespace buymystuffapp`
- Uninstall ingress: `helm uninstall buymystuffapp-ingress --namespace buymystuffapp`

## Watch buymystuffapp namespace
1. Install kubectx on Mac OS: `brew install kubectx`
2. List the namespaces: `kubens`
3. Change the default namespace to buymystuffapp: `kubens buymystuffapp`

## Clean up
1. Close the skaffold development process
2. Delete existing resources. The deletion order must be the reversed order of creation: ``

# Development issues
## The skaffold dev command takes an eternity to start
- Close the process and run it again.

## Resources dependencies
- Some resources depends on anothers. For example, to create a deployment on a namespace, such namespace must exists first.