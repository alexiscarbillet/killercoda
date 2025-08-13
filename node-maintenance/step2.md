# Step 2: Uncordon a Node

Once maintenance is complete, you must make the node schedulable again.

---

**Commands to run:**
```bash
kubectl uncordon node02
```

**Validation:**
`node02` should now have the status `Ready` with scheduling enabled.
