#!/bin/bash
set -e
kubectl create namespace app >/dev/null 2>&1 || true
kubectl create namespace ingress-nginx >/dev/null 2>&1 || true

# Deploy NGINX Ingress Controller
kubectl apply -f https://raw.githubusercontent.com/kubernetes/ingress-nginx/controller-v1.8.1/deploy/static/provider/cloud/deploy.yaml >/dev/null 2>&1 || true

# Wait for controller
kubectl wait --for=condition=available --timeout=300s deployment/ingress-nginx-controller -n ingress-nginx >/dev/null 2>&1 || true

# Create a sample app
kubectl apply -f - <<'EOF'
apiVersion: apps/v1
kind: Deployment
metadata:
  name: my-app
  namespace: app
spec:
  replicas: 1
  selector:
    matchLabels:
      app: my-app
  template:
    metadata:
      labels:
        app: my-app
    spec:
      containers:
      - name: nginx
        image: nginx
        ports:
        - containerPort: 80
EOF

kubectl apply -f - <<'EOF'
apiVersion: v1
kind: Service
metadata:
  name: my-app
  namespace: app
spec:
  selector:
    app: my-app
  ports:
    - protocol: TCP
      port: 80
      targetPort: 80
EOF

# Create a misconfigured Ingress (wrong host or path)
kubectl apply -f - <<'EOF'
apiVersion: networking.k8s.io/v1
kind: Ingress
metadata:
  name: my-app
  namespace: app
spec:
  ingressClassName: nginx
  rules:
  - host: wrong-host.example.com  # Misconfigured host
    http:
      paths:
      - path: /
        pathType: Prefix
        backend:
          service:
            name: my-app
            port:
              number: 80
EOF