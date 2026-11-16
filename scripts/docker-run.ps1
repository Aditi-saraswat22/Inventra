# PowerShell helper script to run Inventra via Docker Compose
Write-Host "==========================================" -ForegroundColor Cyan
Write-Host "Starting Inventra Stack with Docker Compose" -ForegroundColor Cyan
Write-Host "==========================================" -ForegroundColor Cyan

# Check if .env exists, if not copy from .env.example
if (!(Test-Path ".env")) {
    Write-Host "Creating .env from .env.example..." -ForegroundColor Yellow
    Copy-Item ".env.example" ".env"
}

# Build and start containers
docker compose up -d --build

Write-Host "`nWaiting for services to become healthy..." -ForegroundColor Cyan
docker compose ps

Write-Host "`nStack deployed successfully!" -ForegroundColor Green
Write-Host "Frontend: http://localhost:3000" -ForegroundColor Green
Write-Host "Backend API: http://localhost:5050" -ForegroundColor Green
Write-Host "MySQL: localhost:3306" -ForegroundColor Green
