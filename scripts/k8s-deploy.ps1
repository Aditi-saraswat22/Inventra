# PowerShell helper script to deploy Inventra to Kubernetes
Write-Host "==========================================" -ForegroundColor Cyan
Write-Host "Deploying Inventra to Kubernetes" -ForegroundColor Cyan
Write-Host "==========================================" -ForegroundColor Cyan

# Deploy via Kustomize
Write-Host "Applying K8s manifests..." -ForegroundColor Yellow
kubectl apply -k k8s/

Write-Host "`nChecking rollout status..." -ForegroundColor Cyan
kubectl rollout status deployment/mysql -n inventra --timeout=120s
kubectl rollout status deployment/backend -n inventra --timeout=180s
kubectl rollout status deployment/frontend -n inventra --timeout=120s

Write-Host "`nAll pods:" -ForegroundColor Cyan
kubectl get pods -n inventra

Write-Host "`nServices:" -ForegroundColor Cyan
kubectl get svc -n inventra

Write-Host "`nDeployment completed!" -ForegroundColor Green
Write-Host "Frontend accessible via NodePort: http://<NODE-IP>:30080" -ForegroundColor Green
