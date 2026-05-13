Create the required application resources and a misconfigured Ingress manually.

Create the application namespace:

```bash
kubectl create namespace app
```

Deploy the sample app:

```bash
kubectl create deployment my-app --image=nginx -n app
kubectl expose deployment my-app --name=my-app --port=80 --target-port=80 -n app
```

Create the misconfigured Ingress:

```bash
cat <<'EOF' > /tmp/my-app-ingress.yaml
apiVersion: networking.k8s.io/v1
kind: Ingress
metadata:
  name: my-app
  namespace: app
spec:
  ingressClassName: nginx
  rules:
  - host: wrong-host.example.com
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
kubectl apply -f /tmp/my-app-ingress.yaml
```

Verify the resources exist:

```bash
kubectl get all -n app
kubectl get ingress -n app
```

Inspect the Ingress configuration:

```bash
kubectl describe ingress my-app -n app
```