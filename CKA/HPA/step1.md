## Step 1 - Deploy a Sample App

Create a file named **`deployment.yaml`** with this content:

```yaml
apiVersion: apps/v1
kind: Deployment
metadata:
  name: hpa-demo
spec:
  replicas: 1
  selector:
    matchLabels:
      app: hpa-demo
  template:
    metadata:
      labels:
        app: hpa-demo
    spec:
      containers:
        - name: hpa-demo
          image: k8s.gcr.io/hpa-example
          ports:
            - containerPort: 80
          resources:
            limits:
              cpu: 500m
            requests:
              cpu: 200m
```

Apply it:

```bash
kubectl apply -f deployment.yaml
kubectl get deployments
```