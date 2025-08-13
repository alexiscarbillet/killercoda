# Step 1: Identify the Issue

A developer has reported that their application pod is not running.

**Goal:**
- Find the pod named `broken-pod` in the `default` namespace.
- Investigate why it’s not running.

---

**Helpful commands:**
```bash
# List pods and check their status
kubectl get pods

# Describe the problematic pod
kubectl describe pod broken-pod

# View container logs (if the container started at all)
kubectl logs broken-pod
```

**Validation:**
You should be able to identify that the pod is failing due to an incorrect container image.