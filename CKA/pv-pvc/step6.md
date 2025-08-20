## Step 6 - Verify Data Persistence

Check if the file still exists after pod recreation:

```bash
kubectl exec -it pv-test-pod -- cat /data/hello.txt
```

Expected output:
```bash
Hello from PV!
```