# Service Not Routing Traffic

In this scenario, the cluster is initially empty. You will create a web application deployment and a Service manually, but intentionally misconfigure the Service selector so it doesn't route traffic correctly.

Your task is to:
1. Create the deployment and service with the wrong selector.
2. Identify the root cause of the routing issue.
3. Fix the Service selector so traffic routes properly.

---

**Cluster Details:**
- Namespace: `default`
- Pods should be labeled with `app=web`
- Service name: `web-service`
- Deployment name: `web-deployment`
