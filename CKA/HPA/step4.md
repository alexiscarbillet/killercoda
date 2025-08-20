## Step 4 - Generate Load

Run a temporary busybox pod to send HTTP requests in a loop:

```bash
kubectl run -i --tty load-generator --image=busybox /bin/sh
```

Inside the pod, run:

```bash
while true; do wget -q -O- http://hpa-demo; done
```