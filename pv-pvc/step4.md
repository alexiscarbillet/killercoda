
## Step 4 - Write Data to PV

Write a file to the mounted volume:

```bash
kubectl exec -it pv-test-pod -- sh -c "echo 'Hello from PV!' > /data/hello.txt"
```

Verify the content:

```bash
kubectl exec -it pv-test-pod -- cat /data/hello.txt
```
