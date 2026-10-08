# Fully Qualified Domain Name (FQDN) in Kubernetes

## What is FQDN?
An FQDN (Fully Qualified Domain Name) is the complete domain name for a specific computer, or host, on the internet (or inside a private cluster). In Kubernetes, it provides an exact, unique address for a Service or Pod.

## Kubernetes Service DNS
When you create a Service, Kubernetes automatically creates a DNS record for it. This allows other Pods to communicate with the Service using its name instead of its ever-changing IP address.

## Kubernetes DNS Naming Convention
The standard convention for a Service FQDN in Kubernetes is:
`service-name.namespace-name.svc.cluster.local`

## Namespace-based DNS
Namespaces partition the cluster. 
- If a Pod wants to talk to a Service in the **same namespace**, it only needs to use the `service-name`.
- If a Pod wants to talk to a Service in a **different namespace**, it must use the expanded name: `service-name.namespace-name`.

## Pod-to-Service Communication
When Pod A tries to connect to `my-database`, it sends a DNS query. The cluster's internal DNS server (CoreDNS) intercepts this, looks up `my-database`, and returns the ClusterIP of the Service. Pod A then sends traffic to that IP.

## Examples of Kubernetes FQDNs
1. **Same Namespace:** `my-web-svc`
2. **Cross Namespace:** `my-web-svc.dev-namespace`
3. **Full FQDN:** `my-web-svc.dev-namespace.svc.cluster.local`
