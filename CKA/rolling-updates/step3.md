## Step 3 - Perform a Rolling Update

Update the image to a newer version:

```bash
kubectl set image deployment/webapp nginx=nginx:1.21 --record
```
