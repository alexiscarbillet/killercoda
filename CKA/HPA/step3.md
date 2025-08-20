## Step 3 - Create the HPA

Create a Horizontal Pod Autoscaler that scales between **1** and **5** replicas at 50% CPU usage:

```bash
kubectl autoscale deployment hpa-demo --cpu-percent=50 --min=1 --max=5
```

Check the HPA:
```bash
kubectl get hpa
```
