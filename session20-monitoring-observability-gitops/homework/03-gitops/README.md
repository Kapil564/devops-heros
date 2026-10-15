# GitOps

## What is GitOps?
GitOps is an operational framework that takes DevOps best practices used for application development such as version control, collaboration, compliance, and CI/CD, and applies them to infrastructure automation.

## Git as the Source of Truth
In a GitOps model, the Git repository is the single source of truth for the desired state of the entire system. If the infrastructure state drifts from the state defined in Git, the system automatically detects this and reconciles it.

## Declarative Configuration
GitOps relies on declarative configuration (e.g., Kubernetes YAML files, Terraform). You declare *what* you want the system to look like, and an automated agent figures out *how* to make the system match that desired state.

## Continuous Reconciliation
An agent (like ArgoCD or Flux) continuously monitors the Git repository and the target environment (e.g., a Kubernetes cluster). If it detects a difference (drift), it automatically updates the target environment to match the Git repository.

## GitOps Workflow
1. Developer pushes code to the Application Repository.
2. CI Pipeline runs tests and builds a new Docker image.
3. CI Pipeline pushes the image to a Container Registry.
4. CI Pipeline updates the deployment manifests in the Config Repository with the new image tag.
5. GitOps Agent (e.g., ArgoCD) detects the commit in the Config Repository.
6. GitOps Agent pulls the new manifests and applies them to the Kubernetes Cluster (Continuous Reconciliation).

## Kubernetes + GitOps
Kubernetes' declarative nature makes it the perfect match for GitOps. Tools like **ArgoCD** and **FluxCD** run inside the cluster as Kubernetes controllers. They watch your Git repositories and automatically execute `kubectl apply` equivalent operations to keep the cluster synchronized with Git.

---

### ArgoCD Demo Application
Below is an example of an ArgoCD Application manifest that tells ArgoCD to monitor a GitHub repository and deploy the manifests found in a specific path to the `default` namespace.

```yaml
apiVersion: argoproj.io/v1alpha1
kind: Application
metadata:
  name: demo-gitops-app
  namespace: argocd
spec:
  project: default
  source:
    repoURL: 'https://github.com/argoproj/argocd-example-apps.git'
    targetRevision: HEAD
    path: guestbook
  destination:
    server: 'https://kubernetes.default.svc'
    namespace: default
  syncPolicy:
    automated:
      prune: true
      selfHeal: true
```
