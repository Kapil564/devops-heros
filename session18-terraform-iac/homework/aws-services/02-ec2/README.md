# 02. EC2 - Compute

## What is EC2?
Amazon Elastic Compute Cloud (Amazon EC2) provides scalable computing capacity in the Amazon Web Services (AWS) Cloud. Using Amazon EC2 eliminates your need to invest in hardware up front, so you can develop and deploy applications faster.

## AMI
An Amazon Machine Image (AMI) provides the information required to launch an instance. You must specify an AMI when you launch an instance. You can launch multiple instances from a single AMI when you need multiple instances with the same configuration.

## Instance Types
Amazon EC2 provides a wide selection of instance types optimized to fit different use cases. Instance types comprise varying combinations of CPU, memory, storage, and networking capacity (e.g., t3.micro, m5.large, c5.xlarge).

## Key Pairs
A key pair, consisting of a public key and a private key, is a set of security credentials that you use to prove your identity when connecting to an Amazon EC2 instance.

## Security Groups
A security group acts as a virtual firewall for your EC2 instances to control incoming and outgoing traffic. Inbound rules control the incoming traffic to your instance, and outbound rules control the outgoing traffic from your instance.

## EBS
Amazon Elastic Block Store (Amazon EBS) provides block level storage volumes for use with EC2 instances. EBS volumes behave like raw, unformatted block devices. You can mount these volumes as devices on your instances.

## Public vs Private IP
- **Public IP:** Accessible from the internet. EC2 can be assigned a public IP to host public-facing websites.
- **Private IP:** Used for internal communication within an AWS network (VPC). Instances without a public IP can only be accessed from within the VPC.

## Instance Lifecycle
The EC2 instance lifecycle involves states such as `pending`, `running`, `stopping`, `stopped`, `shutting-down`, and `terminated`. You are billed only when the instance is `running`.

## Common Use Cases
- Web hosting and application servers.
- Big data processing and analytics.
- Batch processing.
- Disaster recovery environments.
