#!/bin/bash
sleep 5
kubectl run broken-app --image=busybox --restart=Never --command -- sh -c "exit 1"
