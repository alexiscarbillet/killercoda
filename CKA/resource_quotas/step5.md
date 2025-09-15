## Step 5: Fix the Pod

Edit the manifest to include proper resources:

```yaml
resources:
  requests:
    cpu: "100m"
    memory: "128Mi"
  limits:
    cpu: "200m"
    memory: "256Mi"
```

Apply the fixed manifest:

```bash
kubectl delete pod bad-pod -n quota-lab
kubectl apply -f fixed-pod.yaml -n quota-lab
kubectl get pods -n quota-lab
```

Now the pod should run successfully.