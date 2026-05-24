# Step 1: Create a Test Environment

We will create two namespaces and two pods to test network communication.

**Goal:**
- Create namespaces `frontend` and `backend`.
- Create an `nginx` pod named `web` in `frontend`.
- Create a `busybox` pod named `tester` in `backend`.
- Verify that the `tester` pod can reach the `web` pod.

---

**Commands to run:**
```bash
# Create namespaces
kubectl create namespace frontend
kubectl create namespace backend

# Create nginx pod in frontend
kubectl run web --image=nginx --restart=Never -n frontend

# Create busybox pod in backend
kubectl run tester --image=busybox --restart=Never -n backend -- sleep 3600

# Wait for pods to be ready
kubectl wait --for=condition=Ready pod/web -n frontend --timeout=60s
kubectl wait --for=condition=Ready pod/tester -n backend --timeout=60s

# Expose frontend pod
kubectl -n frontend expose pod web --port=80

# Test connectivity
kubectl exec -n backend tester -- wget -qO- http://web.frontend.svc.cluster.local
```

**Validation:**
You should see the default Nginx HTML output from the `wget` command.
