# Session 19: Cloud & Terraform in Action

This session focuses on provisioning production AWS cloud networking, compute, and storage infrastructure using Terraform.

---

## 📚 Topics Covered

| Folder | Topic | Description |
|--------|-------|-------------|
| `01-cloud-service-models/` | Cloud Service Models | IaaS, PaaS, and SaaS comparisons |
| `02-regions-and-availability-zones/` | Regions & AZs | AWS global infrastructure, fault tolerance, and latency |
| `03-vpc-and-subnets/` | VPC & Subnets | IP addressing, CIDR notation, and network partitioning |
| `04-route-tables-and-internet-gateway/` | Routing & IGW | Connecting private subnets to the public internet |
| `05-security-groups/` | Security Groups | Stateful firewall rules for compute resources |
| `06-terraform-vpc/` | Terraform VPC | Modular Terraform code for VPC creation |
| `07-terraform-workflow/` | Terraform Workflow | Advanced workflow practices and team collaboration |
| `08-mini-project/` | Mini Project | Hands-on infrastructure provisioning |
| `homework/` | **Homework Project** | End-to-end AWS infrastructure (VPC, Subnet, SG, EC2, S3) |

---

## 🎯 Homework Deliverables

The complete homework assignment for Session 19 is located in:
👉 [**Session 19 Homework Directory**](./homework/README.md)

It contains an end-to-end Terraform project:
- **Architecture**: VPC + Public Subnet + Internet Gateway + Route Table + Security Group + EC2 (Apache Web Server) + S3 Bucket
- **Code**: `main.tf`, `variables.tf`, `terraform.tfvars`, `outputs.tf`, `provider.tf`
- **Documentation**: Architecture diagram and step-by-step workflow commands
