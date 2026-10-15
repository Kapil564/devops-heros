# Observability

## Why Observability is Required
As modern architectures (like microservices and Kubernetes) become more distributed and complex, traditional monitoring (just checking if a server is UP or DOWN) is no longer enough. Observability allows us to understand the internal state of a system based on its external outputs. It helps teams quickly identify *why* something is broken, rather than just knowing *that* it is broken.

## The Three Pillars of Observability

### 1. Metrics
**What it means:** Metrics are numeric representations of data measured over intervals of time. They are lightweight, highly compressible, and excellent for triggering alerts and recognizing trends.
**Examples:** CPU utilization, memory usage, request rate, error rate.
**Common Tools:** Prometheus, Datadog, InfluxDB.

### 2. Logs
**What it means:** Logs are immutable, timestamped records of discrete events that happened over time. They provide high-fidelity context and details about specific events.
**Examples:** Application error stack traces, NGINX access logs.
**Common Tools:** ELK Stack (Elasticsearch, Logstash, Kibana), Loki, Splunk.

### 3. Traces
**What it means:** A trace represents the end-to-end journey of a single request as it moves across all the distributed components (microservices) of a system.
**Examples:** A user checkout request traversing an API gateway, an auth service, an inventory service, and a payment gateway.
**Common Tools:** Jaeger, Zipkin, AWS X-Ray, OpenTelemetry.

## Kubernetes Observability
In a Kubernetes environment, observability involves tracking the health of the control plane (API server, scheduler), worker nodes (kubelet), and the workloads (pods, deployments). Tools like Prometheus (for metrics), Loki (for logs), and Tempo/Jaeger (for traces) are frequently deployed together to provide a holistic view of the cluster and applications.
