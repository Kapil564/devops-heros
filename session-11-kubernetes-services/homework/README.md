# Session 11: Kubernetes Networking & Services Homework

## Task 1: Kubernetes Services

Below are the commands to run and test all 5 Service types. Run them, then insert your screenshots!

### 1. ClusterIP
**Apply & Test:**
```bash
kubectl apply -f 01-clusterip.yaml
kubectl get svc svc-clusterip
# To test connectivity, use a temporary busybox pod to curl the service
kubectl run -i --tty --rm debug --image=busybox --restart=Never -- sh -c "wget -qO- http://svc-clusterip"
```
*(Insert your screenshot here)*

### 2. NodePort
**Apply & Test:**
```bash
kubectl apply -f 02-nodeport.yaml
kubectl get svc svc-nodeport
# To test (Minikube users):
minikube service svc-nodeport --url
# Then curl the URL provided by minikube
```
*(Insert your screenshot here)*

### 3. LoadBalancer
**Apply & Test:**
```bash
kubectl apply -f 03-loadbalancer.yaml
kubectl get svc svc-lb
# Note: On Minikube, the external IP stays pending unless you run `minikube tunnel` in a separate terminal.
```
*(Insert your screenshot here)*

### 4. ExternalName
**Apply & Test:**
```bash
kubectl apply -f 04-externalname.yaml
kubectl get svc svc-externalname
```
*(Insert your screenshot here)*

### 5. Headless Service
**Apply & Test:**
```bash
kubectl apply -f 05-headless.yaml
kubectl get svc svc-headless
# Test DNS resolution using busybox (it should return the IPs of the individual pods instead of a single ClusterIP)
kubectl run -i --tty --rm debug --image=busybox --restart=Never -- nslookup svc-headless
```
*(Insert your screenshot here)*

---

## Task 2: Kubernetes Object Comparison

### 1. Deployment vs ReplicaSet
*   **Purpose:** A **ReplicaSet** ensures a specified number of pod replicas are running at any given time. A **Deployment** is a higher-level concept that manages ReplicaSets and provides declarative updates to Pods.
*   **Pod Management:** ReplicaSet directly manages pods. Deployment manages ReplicaSets.
*   **Scaling:** Both can be scaled up or down.
*   **Rolling Updates:** ReplicaSets **do not** support rolling updates. Deployments **do** support rolling updates (and rollbacks) seamlessly.
*   **Relationship:** A Deployment creates a ReplicaSet to bring up the pods. When you update a Deployment, it creates a *new* ReplicaSet, scales it up, and scales the *old* ReplicaSet down.

### 2. Deployment vs DaemonSet vs StatefulSet
*   **Deployment:** Best for stateless applications (e.g., web servers). Pods are interchangeable and can run on any node. Uses standard scaling and rolling updates.
*   **DaemonSet:** Ensures that exactly *one* copy of a Pod runs on *every* node (or specific nodes) in the cluster. **Use Case:** Logging agents (Fluentd), monitoring agents (Prometheus Node Exporter), or networking plugins (Calico).
*   **StatefulSet:** Best for stateful applications (e.g., Databases like MySQL, MongoDB). Pods are created with a sticky, predictable identity (e.g., `db-0`, `db-1`) and ordered, graceful deployment and scaling. It guarantees stable network IDs and stable persistent storage.

### 3. ReplicaSet vs Service
*   **ReplicaSet Responsibility:** Ensures the desired number of Pods are running. It handles application availability and scaling.
*   **Service Responsibility:** Provides a stable IP address and DNS name to a set of Pods. It acts as an internal load balancer.
*   **Why a Service is required:** Pods are ephemeral; their IP addresses change every time they are restarted or recreated by a ReplicaSet. A Service gives you a fixed IP to talk to, regardless of how many Pods die and respawn behind it.
*   **How traffic reaches Pods:** Traffic hits the Service's IP, and the Service uses `iptables`/`IPVS` rules to forward the request to the IP of one of the healthy Pods matching its `selector`.
