# Session 9: Kubernetes Homework

Here is the output from running the YAML files in the Minikube cluster:

### 1. Running `hello.yml`
**Command:**
```bash
kubectl apply -f hello.yml
```
**Output:**
```text
pod/hello created
```

---

### 2. Running `pods.yml`
**Command:**
```bash
kubectl apply -f pods.yml
```
**Output:**
```text
pod/my-pod created
```

---

### 3. Verifying the Pods Status
**Command:**
```bash
kubectl get pods
```
**Output:**
```text
NAME     READY   STATUS              RESTARTS   AGE
hello    0/1     ContainerCreating   0          16s
my-pod   0/1     ContainerCreating   0          6s
```
