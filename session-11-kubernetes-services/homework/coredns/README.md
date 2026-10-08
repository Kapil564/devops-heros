# CoreDNS in Kubernetes

## What is CoreDNS?
CoreDNS is a flexible, extensible DNS server that serves as the default cluster DNS for Kubernetes. It is deployed as a set of Pods running inside the `kube-system` namespace.

## Why Kubernetes uses CoreDNS
Kubernetes needs a way for services to discover each other dynamically because Pod IPs are ephemeral (they change constantly). CoreDNS solves this by automatically maintaining a registry of DNS records that map predictable Service names to their current IPs.

## How Service Discovery Works
1. A Service is created.
2. Kubernetes API informs CoreDNS.
3. CoreDNS creates a DNS record (`A` record for the IP, `SRV` for ports).
4. Any Pod can now resolve the Service name to its IP.

## How DNS Queries are Resolved
1. A Pod makes a network request (e.g., `curl http://backend-svc`).
2. The Pod's `/etc/resolv.conf` directs the DNS query to the CoreDNS service IP.
3. CoreDNS checks its records. If it's an internal Kubernetes name, it returns the ClusterIP. If it's an external name (like `google.com`), CoreDNS forwards the query to the upstream DNS server.

## CoreDNS Configuration
CoreDNS is configured via a Kubernetes ConfigMap named `coredns` in the `kube-system` namespace. The configuration file inside the ConfigMap is called the `Corefile`. It defines plugins (like `kubernetes`, `forward`, `errors`, `health`) that dictate how DNS requests are handled.

## How to Troubleshoot DNS Issues
1. **Check if CoreDNS pods are running:**
   `kubectl get pods -n kube-system -l k8s-app=kube-dns`
2. **Test DNS from a utility pod:**
   `kubectl run -it --rm debug --image=busybox -- nslookup kubernetes.default`
3. **Check CoreDNS logs:**
   `kubectl logs -n kube-system -l k8s-app=kube-dns`
4. **Verify the Pod's `/etc/resolv.conf`:** Ensure it points to the CoreDNS IP.
