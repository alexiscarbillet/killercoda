## Step 5 - Delete and Recreate Pod

Delete the pod:

```bash
kubectl delete pod pv-test-pod
```

Recreate it:
```bash
kubectl apply -f pod.yaml
```
