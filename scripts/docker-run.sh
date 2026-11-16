#!/usr/bin/env bash
set -e

echo "=========================================="
echo "Starting Inventra Stack with Docker Compose"
echo "=========================================="

if [ ! -f .env ]; then
    echo "Creating .env from .env.example..."
    cp .env.example .env
fi

docker compose up -d --build

echo ""
echo "Waiting for services to become healthy..."
docker compose ps

echo ""
echo "Stack deployed successfully!"
echo "Frontend:    http://localhost:3000"
echo "Backend API: http://localhost:5050"
echo "MySQL:       localhost:3306"
