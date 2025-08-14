# Step 1 – Troubleshoot and Fix the Service

1. Check if the Service selector matches the labels of the pods.
   ```bash
   kubectl get svc web-service -o yaml
   kubectl get pods --show-labels
    ```

2. If the selector is wrong, patch the Service or edit it:
    ```bash
    kubectl edit svc web-service
    ```

3. Verify that the Service routes traffic:
    ```bash
    kubectl port-forward svc/web-service 8080:80
    curl http://localhost:8080
    ```

**Validation**
Run the following command to ensure the Service routes to the pods:
    ```bash
    kubectl edit svc web-service
    ```
If it returns the expected HTML, you are done.
