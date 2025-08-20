# Step 1: Create a ConfigMap and Secret

Your application needs a database configuration and a password stored securely.

**Goal:**
- Create a ConfigMap named `app-config` with:
  - `DB_HOST=localhost`
  - `DB_PORT=3306`
- Create a Secret named `db-secret` with:
  - `DB_PASSWORD=supersecret` (base64 encoded automatically by kubectl)

---

**Commands to run:**
```bash
# Create ConfigMap
kubectl create configmap app-config \
  --from-literal=DB_HOST=localhost \
  --from-literal=DB_PORT=3306

# Create Secret
kubectl create secret generic db-secret \
  --from-literal=DB_PASSWORD=supersecret
```

**Validation**
Run `kubectl get configmap app-config -o yaml` and `kubectl get secret db-secret -o yaml` to confirm they exist.