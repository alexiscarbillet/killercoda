## Step 6 - Clean Up

Exit the load generator pod (CTRL+C and type `exit`) and delete all resources:

```bash
kubectl delete deployment hpa-demo
kubectl delete service hpa-demo
kubectl delete hpa hpa-demo
```