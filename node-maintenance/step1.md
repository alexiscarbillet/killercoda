# Step 1: Drain a Node

You are a Kubernetes administrator performing scheduled maintenance on a worker node.

**Goal:**
- Identify the node named `node02`.
- Drain it so no new pods are scheduled there.
- Evict existing pods except DaemonSets.

---

**Commands to run:**
```bash
# Check all nodes
kubectl get nodes

# Drain node02 while ignoring DaemonSets
kubectl drain node02 --ignore-daemonsets
```

**Validation:**
`node02` should now have the `SchedulingDisabled` status.
