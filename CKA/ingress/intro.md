# CKA Ingress Troubleshooting

In this scenario, you will troubleshoot an Ingress resource that is not routing traffic correctly. You'll inspect the Ingress configuration, check the Ingress Controller, and fix any issues to ensure proper routing.

You’ll use the following commands:
- `kubectl get ingress -n app`
- `kubectl describe ingress my-app -n app`
- `kubectl get svc -n app`
- `kubectl logs -n ingress-nginx deployment/ingress-nginx-controller`
- `kubectl edit ingress my-app -n app`

Click **Start Scenario** to begin!