# Service Not Routing Traffic

You are given a web application that is supposed to be accessible via a Kubernetes Service.  
However, when you try to access the Service, no traffic reaches the pods.

Your task is to:
1. Identify the root cause.
2. Fix the issue so that the Service correctly routes traffic to the pods.

---

**Cluster Details:**
- Namespace: `default`
- Pods should be labeled with `app=web`
- Service name: `web-service`
- Deployment name: `web-deployment`
