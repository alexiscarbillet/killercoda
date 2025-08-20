# Step 2: Restrict Traffic with a NetworkPolicy

Now we'll create a NetworkPolicy to only allow traffic to the `web` pod from the `frontend` namespace.

**Goal:**
- Create a NetworkPolicy named `deny-external` in `frontend`.
- Allow ingress traffic to pods labeled `app=web` only from the same namespace.

---

**Example manifest:**
```yaml
apiVersion: networking.k8s.io/v1
kind: NetworkPolicy
metadata:
  name: deny-external
  namespace: frontend
spec:
  podSelector:
    matchLabels:
      app: web
  policyTypes:
    - Ingress
  ingress:
    - from:
        - podSelector: {}
```

**Commands to run:**
```bash
# Label the web pod
kubectl label pod web app=web -n frontend

# Apply the NetworkPolicy
kubectl apply -f deny-external.yaml
```

**Validation:**

```bash
# From backend namespace (should fail)
kubectl exec -n backend tester -- wget -qO- --timeout=5 http://web.frontend.svc.cluster.local

# From frontend namespace (should succeed)
kubectl run temp --rm -i --image=busybox -n frontend -- wget -qO- http://web
```