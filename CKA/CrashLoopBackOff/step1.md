# Step 1 - Identify the Problem

A developer reports that their application Pod is stuck in a `CrashLoopBackOff` state.  
Your task: **find out why**.

## Instructions
1. Check the Pods in the `default` namespace:
   ```bash
   kubectl get pods
   ```

2. Find the Pod that is in CrashLoopBackOff.

3. View detailed information about the Pod:
   ```bash
   kubectl describe pod <pod-name>
   ```

4. Check the logs for the Pod:
   ```bash
   kubectl logs <pod-name>
   ```

**Goal**

By the end of this step, you should have identified the root cause of the crash.