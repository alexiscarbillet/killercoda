## Step 5 - Test Allowed Actions

We can test the ServiceAccount’s permissions by impersonating it.

**Task:**
- Create a test pod in `rbac-demo`.
- Use `kubectl auth can-i` to verify that the ServiceAccount can `get` and `list` pods.

**Example:**
```bash
kubectl auth can-i get pods --as=system:serviceaccount:rbac-demo:limited-sa -n rbac-demo
kubectl auth can-i list pods --as=system:serviceaccount:rbac-demo:limited-sa -n rbac-demo
```
Both should return yes.