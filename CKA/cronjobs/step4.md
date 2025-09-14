## Step 4: Verify Execution

Check that the CronJob executes successfully every minute:

```bash
kubectl get cronjob -n training-cronjob
kubectl get jobs -n training-cronjob
kubectl get pods -n training-cronjob
kubectl logs <pod-name> -n training-cronjob
```

You should see:
`Hello CKA`