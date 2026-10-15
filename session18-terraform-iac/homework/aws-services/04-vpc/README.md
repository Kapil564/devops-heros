# 04. VPC - Networking

## What is VPC?
Amazon Virtual Private Cloud (Amazon VPC) enables you to launch AWS resources into a virtual network that you've defined. This virtual network closely resembles a traditional network that you'd operate in your own data center, with the benefits of using the scalable infrastructure of AWS.

## CIDR
Classless Inter-Domain Routing (CIDR) is a method for allocating IP addresses and IP routing. When you create a VPC, you assign an IPv4 CIDR block (e.g., `10.0.0.0/16`).

## Subnets
A subnet is a range of IP addresses in your VPC. You launch AWS resources into a specified subnet. Use public subnets for resources that must be connected to the internet, and private subnets for resources that won't be connected to the internet.

## Route Tables
A route table contains a set of rules, called routes, that are used to determine where network traffic from your subnet or gateway is directed.

## Internet Gateway
An internet gateway is a horizontally scaled, redundant, and highly available VPC component that allows communication between your VPC and the internet.

## NAT Gateway
A NAT gateway gives instances in a private subnet the ability to connect to services outside your VPC (like the internet or other AWS services) but external services cannot initiate a connection with those instances.

## Security Groups
Security groups act as a firewall at the instance level. They evaluate traffic to and from the ENI (Elastic Network Interface) of the instance.

## Network ACLs
Network Access Control Lists (NACLs) act as a firewall for associated subnets, controlling both inbound and outbound traffic at the subnet boundary. NACLs are stateless, while Security Groups are stateful.

## Public vs Private Subnet
- **Public Subnet:** A subnet is public if its associated route table directs internet traffic to an internet gateway.
- **Private Subnet:** A subnet is private if its associated route table does not route traffic to an internet gateway (usually routes outbound traffic through a NAT Gateway).
