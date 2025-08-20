
# Step 2 - Fix the Issue

Now that you know why the Pod is failing, you must **apply a fix**.

## Instructions
- If the issue is due to a bad command or environment variable, update the Pod’s manifest accordingly.
- Use `kubectl edit` to fix the resource, or apply an updated YAML file.
- Once the fix is applied, delete the failing Pod so that a new one is created:
  ```bash
  kubectl delete pod <pod-name>
  ```

**Validation**

Run:
  ```bash
  kubectl get pods
  ```

The Pod should now be in the `Running` state.