## Step 3 - Create a Role with Limited Permissions

We’ll define a Role that only allows `get` and `list` operations on Pods.

**Task:**
- Create a YAML manifest for a Role named `pod-reader` in the `rbac-demo` namespace.
- This Role should:
  - Apply to the core API group (`""`).
  - Give `get` and `list` permissions on the `pods` resource.

**Example structure:**
```yaml
apiVersion: rbac.authorization.k8s.io/v1
kind: Role
metadata:
  name: pod-reader
  namespace: rbac-demo
rules:
- apiGroups: [""]
  resources: ["pods"]
  verbs: ["get", "list"]
```