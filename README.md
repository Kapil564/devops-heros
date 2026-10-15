# 🚀 DevOps Heros — Comprehensive DevOps Engineering Repository

[![CI/CD Status](https://img.shields.io/badge/CI%2FCD-Passing-brightgreen?style=flat-square&logo=github-actions)](https://github.com/Kapil564/devops-heros)
[![Terraform](https://img.shields.io/badge/IaC-Terraform-blueviolet?style=flat-square&logo=terraform)](https://www.terraform.io/)
[![Kubernetes](https://img.shields.io/badge/Orchestration-Kubernetes-blue?style=flat-square&logo=kubernetes)](https://kubernetes.io/)
[![Helm](https://img.shields.io/badge/Packaging-Helm-0F1689?style=flat-square&logo=helm)](https://helm.sh/)
[![Security](https://img.shields.io/badge/DevSecOps-Trivy%20%7C%20CodeQL-orange?style=flat-square&logo=shield)](https://github.com/aquasecurity/trivy)
[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg?style=flat-square)](./LICENSE)

A complete, production-grade DevOps engineering curriculum and hands-on repository covering foundational Linux systems, networking, containerization, Kubernetes orchestration, CI/CD automation, DevSecOps, Infrastructure as Code (Terraform), Cloud Architecture (AWS), Monitoring & Observability (Prometheus & Grafana), GitOps (ArgoCD), and a full-stack SaaS Capstone Project.

---

## 📌 Course Resources & Submission Links

- 📄 **DevOps Homework Document**: [Google Docs Syllabus & Assignment Guide](https://docs.google.com/document/d/1cjXFYf2Thm8cBEN-0C48B-v02cj3jGLd47lcO18prHE/edit?usp=sharing)
- 📝 **Assignment Submission (Section A)**: [Google Form Link](https://forms.gle/ydjAJcwxjpjBXgxB8)
- 📝 **Assignment Submission (Section B)**: [Google Form Link](https://forms.gle/pAuXQaokwVzhRzit6)
- 📑 **Assignment Specification PDF**: [`DevOps Homework.pdf`](./DevOps%20Homework.pdf)

---

## 🧭 Course Directory & Homework Status

| # | Session Name | Topic Focus | Homework Status |
|:---:|:---|:---|:---:|
| **01** | [`session1-devops-engineer-roadmap`](./session1-devops-engineer-roadmap) | DevOps Culture, Tools & Career Roadmap | ✅ Completed |
| **02** | [`session2-linux`](./session2-linux) | Linux OS Internals, Shell, Permissions & System Administration | ✅ Completed |
| **03** | [`session3-shell-scripting`](./session3-shell-scripting) | Bash Scripting, Automation, Conditionals & Loops | ✅ Completed |
| **04** | [`session4-networking`](./session4-networking) | TCP/IP, OSI Layers, DNS, Subnets, Routing & Firewalls | ✅ Completed |
| **05** | [`session5-git-github`](./session5-git-github) | Git Version Control, Branching, Merging & Collaboration | ✅ Completed |
| **06** | [`session6-7-docker`](./session6-7-docker) | Containerization Basics, Dockerfile & Image Optimization | ✅ Completed |
| **07** | [`session8-docker-networking-volume`](./session8-docker-networking-volume) | Docker Networks, Volumes & Multi-Container Compose | ✅ Completed |
| **08** | [`session9-k8s`](./session9-k8s) | Kubernetes Architecture, Master/Worker Nodes & Pods | ✅ Completed |
| **09** | [`session10-k8s-core-objects`](./session10-k8s-core-objects) | ReplicaSets, Deployments, Namespaces & Rollouts | ✅ Completed |
| **10** | [`session-11-kubernetes-services`](./session-11-kubernetes-services) | ClusterIP, NodePort, LoadBalancer & Headless Services | ✅ Completed |
| **11** | [`session-12-ingress-configmaps-secrets`](./session-12-ingress-configmaps-secrets) | Ingress Controllers, Routing Rules, ConfigMaps & Secrets | ✅ Completed |
| **12** | [`session-13-storage-hpa-probes`](./session-13-storage-hpa-probes) | PV/PVC, StorageClasses, HPA Autoscaling & Health Probes | ✅ Completed |
| **13** | [`session-14-kubernetes-troubleshooting`](./session-14-kubernetes-troubleshooting) | Debugging CrashLoopBackOff, ImagePullBackOff & Pod Outages | ✅ Completed |
| **14** | [`session-15-helm`](./session-15-helm) | Helm Package Manager, Values, Templates & Rollbacks | ✅ [**Completed**](./session-15-helm/homework/README.md) |
| **15** | [`session-16-github-actions`](./session-16-github-actions) | CI/CD Pipelines, GitHub Actions, Jobs, Secrets & Artifacts | ✅ [**Completed**](./session-16-github-actions/homework/README.md) |
| **16** | [`session-17-devsecops`](./session-17-devsecops) | DevSecOps, SAST (CodeQL), SCA, Secret Scan & Trivy | ✅ [**Completed**](./session-17-devsecops/homework/README.md) |
| **17** | [`session18-terraform-iac`](./session18-terraform-iac) | Infrastructure as Code, Terraform Workflow & AWS Core Services | ✅ [**Completed**](./session18-terraform-iac/homework/README.md) |
| **18** | [`session19-cloud-terraform`](./session19-cloud-terraform) | Cloud Architecture, AWS VPC, Subnets, EC2, S3 & Terraform | ✅ [**Completed**](./session19-cloud-terraform/homework/README.md) |
| **19** | [`session20-monitoring-observability-gitops`](./session20-monitoring-observability-gitops) | Prometheus, Grafana, Node Exporter, 3 Pillars & ArgoCD | ✅ [**Completed**](./session20-monitoring-observability-gitops/homework/README.md) |
| **20** | [`session21-python`](./session21-python) | **DevOps Final Capstone**: TaskBoard SaaS, EKS, Helm, DevSecOps | ✅ [**Completed**](./session21-python/homework/README.md) |

---

## 🎯 Spotlight: Homework Deliverables (Sessions 15 – 21)

### 📦 [Session 15: Helm Package Management](./session-15-helm/homework/README.md)
- **Task 1: Helm Commands Practice**: Hands-on practice with `helm create`, `install`, `list`, `status`, `get`, `upgrade`, `history`, `rollback`, `uninstall`, `repo`, and `search`.
- **Task 2: Rollback Workflow**: Full upgrade and rollback sequence verification with Kubernetes pods status inspection.
- **Task 3: Mini Project**: Created custom `notes-chart` with configurable `values.yaml` and `values-prod.yaml`.
- **Artifacts**: 5 real-terminal output screenshots demonstrating each step.

---

### ⚙️ [Session 16: CI/CD & GitHub Actions](./session-16-github-actions/homework/README.md)
- **Demo Project**: End-to-end Python application build and automated testing pipeline.
- **Workflow Highlights** (`.github/workflows/cicd-pipeline.yml`):
  - `test`: Automated `pytest` execution on Python 3.12.
  - `build`: Packaging and uploading build artifacts.
  - `security-check`: Automated scan for accidental commit of sensitive files (`.env`, `*.pem`, `*.key`).
  - `deploy`: Automated CD stage executed only on successful `main` branch merges.
- **Dockerization**: Production `Dockerfile` included for multi-stage container deployment.

---

### 🛡️ [Session 17: Complete CI/CD & DevSecOps](./session-17-devsecops/homework/README.md)
- **Shift-Left Security Pipeline** (`.github/workflows/devsecops.yml`):
  - **Unit Testing**: Pytest with coverage reporting (`pytest-cov`).
  - **SAST**: GitHub CodeQL static code analysis.
  - **SCA**: `pip-audit` automated dependency CVE auditing.
  - **Secret Scanning**: TruffleHog deep scan of git commit history.
  - **Container Scanning**: Aqua Security **Trivy** scanning image layers.
  - **Security Gate**: Automated policy enforcement blocking deployment on `CRITICAL` CVEs.
  - **Deployment**: Automatic manifest updating and Kubernetes deployment.

---

### 🏗️ [Session 18: Terraform & Infrastructure as Code](./session18-terraform-iac/homework/README.md)
- **Task 1: Terraform S3 Demo** (`homework/terraform-s3-demo/`):
  - Modular Terraform project (`main.tf`, `variables.tf`, `outputs.tf`, `provider.tf`, `terraform.tfvars`).
  - Full execution cycle: `init`, `fmt`, `validate`, `plan`, `apply`, `show`, `output`, `destroy`.
- **Task 2: AWS Services In-Depth Research** (`homework/aws-services/`):
  - [`01-iam`](./session18-terraform-iac/homework/aws-services/01-iam/README.md): Users, Groups, Roles, Policies, Least Privilege & Best Practices.
  - [`02-ec2`](./session18-terraform-iac/homework/aws-services/02-ec2/README.md): AMIs, Instance Types, Key Pairs, Security Groups, EBS & Lifecycle.
  - [`03-s3`](./session18-terraform-iac/homework/aws-services/03-s3/README.md): Buckets, Objects, Storage Classes, Versioning, Lifecycle & Encryption.
  - [`04-vpc`](./session18-terraform-iac/homework/aws-services/04-vpc/README.md): CIDR, Subnets, Route Tables, Internet Gateways, NAT Gateways & NACLs.
  - [`05-dynamodb-rds`](./session18-terraform-iac/homework/aws-services/05-dynamodb-rds/README.md): NoSQL vs Relational, Partition Keys, Multi-AZ & Read Replicas.

---

### ☁️ [Session 19: Cloud & Terraform in Action](./session19-cloud-terraform/homework/README.md)
- **End-to-End AWS Cloud Architecture** (`homework/end-to-end-aws-infra/`):
  - **VPC**: Isolated `10.0.0.0/16` network.
  - **Public Subnet**: `10.0.1.0/24` with public IP auto-assignment.
  - **Internet Gateway & Route Tables**: Configured for direct internet access.
  - **Security Group**: Controlled ingress for HTTP (port 80) and SSH (port 22).
  - **EC2 Instance**: Virtual machine bootstrapped with an Apache Web Server via `user_data`.
  - **S3 Bucket**: Scalable storage bucket with automated naming.

---

### 📊 [Session 20: Monitoring, Observability & GitOps](./session20-monitoring-observability-gitops/homework/README.md)
- **Task 1: Monitoring Stack** (`homework/01-monitoring/`):
  - Docker Compose orchestration running **Prometheus**, **Node Exporter**, and **Grafana**.
  - Dashboards for CPU utilization, memory pressure, and node health metrics.
- **Task 2: Observability Architecture** (`homework/02-observability/README.md`):
  - Detailed architectural guide on the Three Pillars: **Metrics**, **Logs**, and **Traces**.
  - Modern cloud-native tooling (OpenTelemetry, Prometheus, Loki, Tempo, Jaeger).
- **Task 3: GitOps Workflow** (`homework/03-gitops/README.md`):
  - Continuous reconciliation theory with Git as the single source of truth.
  - Declarative **ArgoCD Application** manifest (`demo-gitops-app`).

---

### 🏆 [Session 21: DevOps Final Capstone — TaskBoard SaaS](./session21-python/homework/README.md)
- **Full-Stack Application**: FastAPI Python backend (SQLAlchemy, Alembic migrations, REST API) + React Vite frontend UI.
- **Containerization**: Optimized Dockerfiles and multi-service `docker-compose.yml`.
- **CI/CD Pipeline**: GitHub Actions running linting, tests, frontend build, containerization, and publishing to GHCR.
- **DevSecOps**: Automated Trivy container vulnerability scanning integrated into the pipeline.
- **Cloud Infrastructure**: Terraform manifests for AWS VPC and EKS cluster provisioning.
- **Kubernetes & Helm**: Helm chart (`helm/taskboard`) including Deployment, Service, ConfigMap, Secret, Ingress, HPA, and ServiceMonitor.
- **Observability**: Prometheus metrics exposed via `/metrics` and Grafana visualization.
- **Troubleshooting Lab**: Pre-configured broken manifests (`broken-image.yaml`, `broken-service.yaml`) with root cause analysis documentation.
- **Grading Rubric**: Mapped directly against [`GRADING.md`](./session21-python/GRADING.md) (10 modules, 100 points).

---

## 💻 Quick Start & Local Development

### Clone the Repository
```bash
git clone https://github.com/Kapil564/devops-heros.git
cd devops-heros
git checkout kapil
```

### Run the Capstone Project Locally (Session 21)
```bash
cd session21-python
docker compose up --build -d
```
Access points:
- **Frontend UI**: [http://localhost:3000](http://localhost:3000)
- **Backend API & Swagger Docs**: [http://localhost:8000/docs](http://localhost:8000/docs)
- **Backend Health Check**: [http://localhost:8000/health](http://localhost:8000/health)
- **Prometheus Metrics**: [http://localhost:8000/metrics](http://localhost:8000/metrics)

---

## 👨‍💻 Author

- **Kapil** — DevOps Engineer & Cloud Enthusiast
- **Branch**: `kapil`
- **GitHub**: [@Kapil564](https://github.com/Kapil564)
