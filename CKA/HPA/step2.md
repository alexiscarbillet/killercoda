## Step 2 - Expose the App as a Service

Create a file named **`service.yaml`**:

```yaml
apiVersion: v1
kind: Service
metadata:
  name: hpa-demo
spec:
  type: ClusterIP
  selector:
    app: hpa-demo
  ports:
    - port: 80
      targetPort: 80
```

Apply it:
```bash
kubectl apply -f service.yaml
kubectl get svc
```
