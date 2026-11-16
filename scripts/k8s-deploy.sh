#!/usr/bin/env bash
set -e

echo "=========================================="
echo "Deploying Inventra to Kubernetes"
echo "=========================================="

echo "Applying K8s manifests..."
kubectl apply -k k8s/

echo ""
echo "Checking rollout status..."
kubectl rollout status deployment/mysql -n inventra --timeout=120s
kubectl rollout status deployment/backend -n inventra --timeout=180s
kubectl rollout status deployment/frontend -n inventra --timeout=120s

echo ""
echo "All pods:"
kubectl get pods -n inventra

echo ""
echo "Services:"
kubectl get svc -n inventra

echo ""
echo "Deployment completed!"
echo "Frontend accessible via NodePort: http://<NODE-IP>:30080"
