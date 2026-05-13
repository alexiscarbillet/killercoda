# Step 2 – Investigate the Service Issue

Now that you've created the deployment and service, investigate why the service isn't routing traffic.

Check the service details:

```bash
kubectl describe svc web-service
```

Check the endpoints of the service:

```bash
kubectl get endpoints web-service
```

If the endpoints are empty, the selector isn't matching any pods. Check the pod labels:

```bash
kubectl get pods --show-labels
```

Compare the service selector with the pod labels. The issue should be that the selector `app=wronglabel` doesn't match the pods' `app=web` labels.