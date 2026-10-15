# Session 20: Monitoring, Observability & GitOps

This session explores modern cloud-native observability practices and continuous deployment using the GitOps paradigm.

---

## 📚 Topics Covered

| Folder | Topic | Description |
|--------|-------|-------------|
| `01-monitoring-vs-observability/` | Monitoring vs Observability | Understanding the shift from black-box checks to internal system insights |
| `02-metrics-logs-traces/` | The Three Pillars | Deep dive into Metrics, Logs, and Distributed Traces |
| `03-prometheus/` | Prometheus | Time-series metrics collection, PromQL, and alerting rules |
| `04-grafana/` | Grafana | Building dynamic visualization dashboards and alert notifications |
| `05-introduction-to-gitops/` | GitOps Fundamentals | Principles of declarative infrastructure and version-controlled environments |
| `06-git-as-source-of-truth/` | Git as Source of Truth | Managing environment drift and automated state reconciliation |
| `07-argocd/` | ArgoCD | Declarative GitOps continuous delivery tool for Kubernetes |
| `08-mini-project/` | Mini Project | Hands-on GitOps deployment with ArgoCD |
| `homework/` | **Homework Project** | Monitoring stack, Observability guide, and GitOps application |

---

## 🎯 Homework Deliverables

The complete homework assignment for Session 20 is located in:
👉 [**Session 20 Homework Directory**](./homework/README.md)

### Key Deliverables:
1. **Task 1: Monitoring Demo** — [`homework/01-monitoring/`](./homework/01-monitoring/)
   - `docker-compose.yml` spinning up Prometheus, Node Exporter, and Grafana
   - Metric collection for CPU, Memory, and System performance
2. **Task 2: Observability Guide** — [`homework/02-observability/`](./homework/02-observability/README.md)
   - Comprehensive documentation on Metrics, Logs, and Traces
   - Common industry tools (Prometheus, Loki, Jaeger, OpenTelemetry) and Kubernetes observability
3. **Task 3: GitOps Demo** — [`homework/03-gitops/`](./homework/03-gitops/README.md)
   - Detailed guide on GitOps principles and continuous reconciliation
   - ArgoCD Application manifest (`demo-gitops-app`) targeting Kubernetes
4. **Execution Proof**:
   - Screenshot of running monitoring stack in [`homework/image.png`](./homework/image.png)
