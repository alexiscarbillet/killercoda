## Step 1 - Create Initial Deployment

Create a file named **`deployment.yaml`** with this content:

```yaml
apiVersion: apps/v1
kind: Deployment
metadata:
  name: webapp
spec:
  replicas: 3
  selector:
    matchLabels:
      app: webapp
  template:
    metadata:
      labels:
        app: webapp
    spec:
      containers:
        - name: nginx
          image: nginx:1.19
          ports:
            - containerPort: 80
```

Apply it:
```bash
kubectl apply -f deployment.yaml
```