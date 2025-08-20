# Step 2: Use ConfigMap and Secret in a Pod

Now that you have the ConfigMap and Secret, make them available to a Pod.

**Goal:**
- Create a Pod named `app-pod` using the `nginx` image.
- Inject the ConfigMap values as environment variables.
- Inject the Secret value as an environment variable.

---

**Example manifest snippet:**
```yaml
env:
  - name: DB_HOST
    valueFrom:
      configMapKeyRef:
        name: app-config
        key: DB_HOST
  - name: DB_PORT
    valueFrom:
      configMapKeyRef:
        name: app-config
        key: DB_PORT
  - name: DB_PASSWORD
    valueFrom:
      secretKeyRef:
        name: db-secret
        key: DB_PASSWORD
```

**Validation**
Run `kubectl exec app-pod -- env | grep DB_` and check that all three environment variables are set.