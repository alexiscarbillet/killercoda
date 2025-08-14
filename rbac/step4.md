## Step 4 - Bind the Role to the ServiceAccount

Now we link the Role to our ServiceAccount using a RoleBinding.

**Task:**
- Create a RoleBinding named `read-pods-binding` in `rbac-demo`.
- Bind the `pod-reader` Role to the `limited-sa` ServiceAccount.

**Hint:**
```yaml
apiVersion: rbac.authorization.k8s.io/v1
kind: RoleBinding
metadata:
  name: read-pods-binding
  namespace: rbac-demo
subjects:
- kind: ServiceAccount
  name: limited-sa
  namespace: rbac-demo
roleRef:
  kind: Role
  name: pod-reader
  apiGroup: rbac.authorization.k8s.io
```