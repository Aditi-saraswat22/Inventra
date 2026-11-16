# Inventra - Smart Inventory Management System

## Project Description
Inventra is an intelligent inventory management system designed to simplify stock tracking, optimize warehouse operations, and boost customer engagement. It combines real-time inventory monitoring with data-driven insights, helping businesses avoid shortages, reduce wastage, and improve efficiency.

For business owners, Inventra provides automated low-stock alerts, supplier management, and sales analytics to make smarter decisions.

## Technologies Used
- **Backend:** Spring Boot 3.4 (Java 21), Spring Data JPA, Spring Security, JWT, Spring Boot Actuator
- **Frontend:** React 19, Vite, Axios, Recharts
- **Database:** MySQL 8.0
- **DevOps & Cloud:** Docker, Docker Compose, Kubernetes, Helm 3, Nginx
- **CI/CD & DevSecOps:** GitHub Actions, Aqua Security Trivy, GitHub Container Registry (GHCR)

---

## 🚀 DevOps & Containerized Quickstart

Full documentation and architectural details are available in [DEVOPS.md](file:///D:/devop%20capstone/DEVOPS.md).

### Run with Docker Compose (Recommended)

Run the entire application stack (MySQL + Spring Boot Backend + React Frontend/Nginx) with a single command:

```bash
# 1. Copy the environment configuration
cp .env.example .env

# 2. Build and launch all services
docker compose up -d --build
```

- **Frontend:** [http://localhost:3000](http://localhost:3000)
- **Backend API:** [http://localhost:5050/api](http://localhost:5050/api)
- **Health Probes:** [http://localhost:5050/actuator/health](http://localhost:5050/actuator/health)

To stop the containers:
```bash
docker compose down
```

---

### Deploy to Kubernetes

Deploy production-ready manifests with Kustomize:

```bash
kubectl apply -k k8s/
```

Or deploy using the included **Helm chart**:

```bash
helm upgrade --install inventra ./helm/inventra --namespace inventra --create-namespace
```

---

## 🛠️ Local Development (Without Docker)

### Prerequisites
- Java JDK 21+
- Node.js 20+ and npm
- MySQL Server 8.0 running on `localhost:3306`
- Maven 3.9+

### Step 1: Clone the Repository
```bash
git clone https://github.com/Aditi-saraswat22/Inventra.git
cd Inventra
```

### Step 2: Set Up & Run the Backend
```bash
cd backend/InventoryMgtSys
mvn spring-boot:run
```
*Backend runs on port `5050`.*

### Step 3: Set Up & Run the Frontend
```bash
cd ../../frontend
npm install
npm run dev
```
*Frontend runs on [http://localhost:5173](http://localhost:5173).*
