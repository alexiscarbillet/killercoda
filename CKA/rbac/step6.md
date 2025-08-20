## Step 6 - Test Forbidden Actions

Let’s confirm that actions outside the Role’s scope are denied.

**Task:**
- Try creating a pod as the ServiceAccount.
- Check if deleting pods is allowed.

**Example:**
```bash
kubectl auth can-i create pods --as=system:serviceaccount:rbac-demo:limited-sa -n rbac-demo
kubectl auth can-i delete pods --as=system:serviceaccount:rbac-demo:limited-sa -n rbac-demo
```

Both should return no.

You’ve now verified RBAC restrictions in Kubernetes.