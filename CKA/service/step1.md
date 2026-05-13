# Step 1 – Create Resources

Create the deployment and service with an intentionally wrong selector.

Create the deployment:

```bash
kubectl create deployment web-deployment --image=nginx --replicas=3
kubectl label deployment web-deployment app=web
```

Create the service with the wrong selector:

```bash
kubectl expose deployment web-deployment --port=80 --name=web-service --selector=app=wronglabel
```

Verify the resources are created:

```bash
kubectl get deployments
kubectl get svc
kubectl get pods
```
