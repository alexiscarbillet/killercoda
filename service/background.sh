#!/bin/bash
# Create a deployment
kubectl create deployment web-deployment --image=nginx
kubectl scale deployment web-deployment --replicas=3

# Intentionally create a wrong label on the Service selector
kubectl expose deployment web-deployment --port=80 --name=web-service --selector=app=wronglabel
