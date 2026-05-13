Inspect the Ingress resource to understand the routing issue.

List the Ingress resources in the app namespace:

```bash
kubectl get ingress -n app
```

Describe the Ingress to see its configuration:

```bash
kubectl describe ingress my-app -n app
```

Check the associated Service:

```bash
kubectl get svc -n app
kubectl describe svc my-app -n app
```