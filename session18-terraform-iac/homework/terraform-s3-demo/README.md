# Terraform S3 Demo

This project demonstrates how to create an AWS S3 bucket using Terraform.

## Files Structure
- `main.tf`: Contains the main set of configuration for the S3 bucket.
- `variables.tf`: Contains the variable definitions for the region, bucket name, and environment.
- `outputs.tf`: Contains output definitions for the created bucket's ID and ARN.
- `provider.tf`: Contains the AWS provider configuration.
- `terraform.tfvars`: Provides values for the variables defined in `variables.tf`.

## Terraform Workflow

### 1. Initialize
Initialize the working directory containing the Terraform configuration files.
```bash
terraform init
```

### 2. Format
Format the configuration files to a canonical format and style.
```bash
terraform fmt
```

### 3. Validate
Validate the configuration files to ensure they are syntactically valid and internally consistent.
```bash
terraform validate
```

### 4. Plan
Create an execution plan, showing what actions Terraform will take to change infrastructure.
```bash
terraform plan
```

### 5. Apply
Execute the actions proposed in the Terraform plan to create the resources.
```bash
terraform apply
```
*(You will need to type `yes` when prompted)*

### 6. Show
Show the current state or a saved plan.
```bash
terraform show
```

### 7. Output
Extract the value of an output variable from the state file.
```bash
terraform output
```

### 8. Destroy
Destroy the Terraform-managed infrastructure.
```bash
terraform destroy
```
*(You will need to type `yes` when prompted)*
