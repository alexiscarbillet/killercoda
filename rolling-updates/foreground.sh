#!/bin/bash
echo "Setting up Kubernetes cluster..."
kubectl wait --for=condition=Ready node --all --timeout=60s
echo "Cluster is ready! Begin with Step 1."
