# Step 2: Fix the Pod

Now that you know the issue is caused by an invalid container image:

**Goal:**
- Update the pod so it uses the correct image: `nginx:1.21`
- Ensure the pod becomes `Running`.

---

**Helpful commands:**
```bash
# Edit the pod definition
kubectl edit pod broken-pod

# OR if it's part of a deployment, update the deployment
kubectl set image deployment/my-deployment my-container=nginx:1.21
```

**Validation:**
`kubectl get pods` should show the pod in Running status.