## Step 2 - Verify Deployment

Check the status of the deployment:

```bash
kubectl get deployments
kubectl get pods -l app=webapp
```

View the application version:
```bash
kubectl exec -it <pod-name> -- nginx -v
```