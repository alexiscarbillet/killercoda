# CKA Ingress Troubleshooting

In this scenario, the cluster is initially empty for the application resources. You will create the namespace, deployment, service, and Ingress manually, then troubleshoot the misconfigured Ingress.

You’ll use the following commands:
- `kubectl create namespace app`
- `kubectl create deployment my-app --image=nginx -n app`
- `kubectl expose deployment my-app --name=my-app --port=80 --target-port=80 -n app`
- `kubectl apply -f /tmp/ingress.yaml`
- `kubectl get ingress -n app`
- `kubectl describe ingress my-app -n app`
- `kubectl logs -n ingress-nginx deployment/ingress-nginx-controller`
- `kubectl edit ingress my-app -n app`

Click **Start Scenario** to begin!