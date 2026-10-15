# Session 18 Homework: Terraform & Infrastructure as Code

This directory contains the completed deliverables for Session 18 homework, split across two main tasks:

---

## 📌 Task Breakdown

### 1. [Task 1: Terraform S3 Demo](./terraform-s3-demo/)
A production-ready Terraform project provisioning an AWS S3 bucket.

**Project Structure:**
```text
terraform-s3-demo/
├── main.tf              # AWS S3 bucket resource definition and tags
├── variables.tf         # Input variable declarations (region, bucket_name, env)
├── outputs.tf           # Output declarations (bucket_id, bucket_arn)
├── provider.tf          # AWS provider configuration and required version
├── terraform.tfvars     # Variable value definitions
└── README.md            # Detailed workflow and command execution steps
```

**Workflow Demonstrated:**
- `terraform init` — Download AWS provider plugin & initialize state backend
- `terraform fmt` — Format configuration files to standard HashiCorp style
- `terraform validate` — Validate syntax and resource parameters
- `terraform plan` — Preview execution plan
- `terraform apply` — Provision S3 bucket on AWS
- `terraform show` — Inspect state file
- `terraform output` — View output variables
- `terraform destroy` — Clean up cloud resources

---

### 2. [Task 2: AWS Services Research](./aws-services/)
Comprehensive architectural research and documentation on essential AWS cloud services:

| Service Directory | AWS Service | Topics Documented |
|-------------------|-------------|-------------------|
| [`01-iam/`](./aws-services/01-iam/README.md) | **IAM (Identity & Access Management)** | Users, Groups, Roles, Policies, Permissions, Least Privilege, Best Practices, Use Cases |
| [`02-ec2/`](./aws-services/02-ec2/README.md) | **EC2 (Elastic Compute Cloud)** | AMIs, Instance Types, Key Pairs, Security Groups, EBS, Public vs Private IP, Lifecycle |
| [`03-s3/`](./aws-services/03-s3/README.md) | **S3 (Simple Storage Service)** | Buckets, Objects, Storage Classes, Versioning, Lifecycle Rules, Encryption, Bucket Policies |
| [`04-vpc/`](./aws-services/04-vpc/README.md) | **VPC (Virtual Private Cloud)** | CIDR, Subnets, Route Tables, Internet Gateway, NAT Gateway, SGs, NACLs, Public/Private subnets |
| [`05-dynamodb-rds/`](./aws-services/05-dynamodb-rds/README.md) | **Databases (DynamoDB & RDS)** | DynamoDB NoSQL (Partition & Sort Keys) vs RDS Relational (Engines, Multi-AZ, Read Replicas, Backups) |

---

## 🚀 How to Run the Terraform S3 Demo

```bash
cd terraform-s3-demo

# Initialize Terraform
terraform init

# Validate configuration
terraform validate

# Plan and preview changes
terraform plan

# Apply infrastructure
terraform apply -auto-approve

# Verify outputs
terraform output

# Destroy when finished
terraform destroy -auto-approve
```
