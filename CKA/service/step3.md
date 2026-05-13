# Step 3 – Fix the Service and Verify Routing

Fix the service selector to match the pod labels.

Edit the service:

```bash
kubectl edit svc web-service
```

Change the selector from `app=wronglabel` to `app=web`.

Verify the endpoints are now populated:

```bash
kubectl get endpoints web-service
```

Test the service routing:

```bash
kubectl port-forward svc/web-service 8080:80 &
curl http://localhost:8080
```

The curl should return the nginx welcome page, confirming the service is routing traffic correctly.