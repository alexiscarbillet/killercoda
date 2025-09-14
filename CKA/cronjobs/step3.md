## Step 3: Troubleshoot CronJob

The CronJob may fail due to common errors:

* Incorrect schedule format

* Invalid image

* Missing `restartPolicy`

Use the following commands to inspect:

```bash
kubectl describe cronjob hello-cron -n training-cronjob
kubectl get jobs -n training-cronjob
kubectl logs <job-pod> -n training-cronjob
```

Fix any issues and reapply the manifest if necessary.