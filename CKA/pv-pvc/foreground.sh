#!/bin/bash
echo "Setting up environment..."
# Wait for Kubernetes to be ready
kubectl wait --for=condition=Ready node --all --timeout=60s
echo "Environment is ready! Follow the steps to create your PV and PVC."
