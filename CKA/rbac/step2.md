## Step 2 - Create a ServiceAccount

We need a ServiceAccount that will be granted limited permissions.

**Task:**
- Create a ServiceAccount named `limited-sa` in the `rbac-demo` namespace.

**Hint:**
```bash
kubectl create serviceaccount limited-sa -n rbac-demo
```