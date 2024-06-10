# How Terraform works:

- Written in Golang
- Interfaces with the API of the "Provider"
- Create
- Read
- Update
- Delete

# Core Terraform Workflow:
- Write -> Plan - -> Apply

# Terraform State
- Store information about the current environment
- It created based on the configuration files and any changes are committed to the infrastructure via the API
- Only knows about resources created by it. If those resources are missing, it can replace, but cannot see other resources.

# IaC Workflow
- Terraform code -> Git repository -> CICD tools -> Infrastructure -> Application

# Declarative vs. Procedural

# Code convention
```
terraform init
terraform init -upgrade
terraform console
join("-", ["This", "sentence", "has", 2+5,"dashes"])
terraform fmt -diff
terraform plan
terraform plan -out plan1
terraform apply plan1
terraform apply --auto-approve
terraform output
terraform destroy --auto-approve
terraform plan --var ext_port=2000 --var-file=test.tfvars
```

# Splat Expression

# Terraform taint

# Terraform local provisioners

# Terraform graph

```
sudo apt install graphviz
terraform graph -type-plan | dot -Tpdf > graph-plan.pdf
```

# 

