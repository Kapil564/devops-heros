# Session 18: Terraform & Infrastructure as Code (IaC)

Infrastructure as Code (IaC) allows engineers to define, provision, and manage cloud infrastructure using declarative configuration files rather than manual console clicks.

---

## 📚 Topics Covered

| Folder | Topic | Description |
|--------|-------|-------------|
| `01-iac-basics/` | IaC Fundamentals | Core concepts of declarative infrastructure |
| `02-terraform-architecture/` | Architecture | Terraform Core, Plugins, and State Engine |
| `03-providers/` | Providers | Configuring cloud providers (AWS, Azure, GCP) |
| `04-resources/` | Resources | Resource blocks, attributes, and lifecycle |
| `05-variables/` | Variables | Input variables, types, defaults, and `terraform.tfvars` |
| `06-outputs/` | Outputs | Exporting resource attributes (IDs, IPs, ARNs) |
| `07-init-plan-apply/` | Execution Cycle | `init`, `plan`, and `apply` workflow |
| `08-destroy/` | Resource Teardown | Safely destroying infrastructure with `terraform destroy` |
| `09-state/` | State Management | Understanding `terraform.tfstate` and state locking |
| `homework/` | **Homework Project** | S3 Bucket project & AWS Services Research |

---

## 🎯 Homework Deliverables

All homework deliverables for Session 18 are documented in:
👉 [**Session 18 Homework Directory**](./homework/README.md)

- **Task 1: Terraform S3 Demo** — [`homework/terraform-s3-demo/`](./homework/terraform-s3-demo/)
- **Task 2: AWS Services Research** — [`homework/aws-services/`](./homework/aws-services/)
  - [01. IAM - Governance](./homework/aws-services/01-iam/README.md)
  - [02. EC2 - Compute](./homework/aws-services/02-ec2/README.md)
  - [03. S3 - Storage](./homework/aws-services/03-s3/README.md)
  - [04. VPC - Networking](./homework/aws-services/04-vpc/README.md)
  - [05. DynamoDB & RDS - Databases](./homework/aws-services/05-dynamodb-rds/README.md)

---

## 🛠️ Helpful Links & Setup

- [Install Terraform CLI](https://developer.hashicorp.com/terraform/tutorials/aws-get-started/install-cli)
- [Terraform with AWS Cloud Tutorial](https://developer.hashicorp.com/terraform/tutorials/aws-get-started/aws-create)
- [Install AWS CLI](https://docs.aws.amazon.com/cli/latest/userguide/getting-started-install.html)