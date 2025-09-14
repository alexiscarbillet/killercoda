## Step 2: Apply CronJob

Create the file `hello-cron.yaml`:

```yaml
apiVersion: batch/v1
kind: CronJob
metadata:
  name: hello-cron
  namespace: training-cronjob
spec:
  schedule: "* * * * *"
  jobTemplate:
    spec:
      template:
        spec:
          containers:
          - name: hello
            image: busybox
            command: ["echo", "Hello CKA"]
          restartPolicy: OnFailure
```

Apply the newly created manifest:

```bash
kubectl apply -f hello-cron.yaml
```
