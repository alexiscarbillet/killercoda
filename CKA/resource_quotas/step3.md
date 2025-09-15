## Step 3: Apply a LimitRange

Create a file `limitrange.yaml` with the following content:

```yaml
apiVersion: v1
kind: LimitRange
metadata:
  name: mem-limit-range
  namespace: quota-demo
spec:
  limits:
  - default:
      cpu: "500m"
      memory: 512Mi
    defaultRequest:
      cpu: "200m"
      memory: 256Mi
    type: Container
```

Apply it:

```bash
kubectl apply -f limit-range.yaml -n quota-lab
kubectl describe limitrange -n quota-lab
```

This defines:

* Default request: 100m CPU, 128Mi memory

* Default limit: 200m CPU, 256Mi memory