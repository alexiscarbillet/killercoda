## Step 5 - Roll Back Deployment

Roll back to the previous version:

```bash
kubectl rollout undo deployment/webapp
```

Verify rollback:

```bash
kubectl get pods -l app=webapp
kubectl exec -it <pod-name> -- nginx -v
```