Infrastructure as a code for OKE 
terraform-oci-oke/
│── provider.tf          # Defines the OCI provider
│── main.tf              # Calls the modules
│── variables.tf         # Global variables for Terraform
│── terraform.tfvars     # Optional: Store default values
│── outputs.tf           # Define output values
│
├── modules/
│   ├── network/
│   │   ├── main.tf      # Create VCN, Subnets, etc.
│   │   ├── variables.tf
│   │   ├── outputs.tf
│   │
│   ├── oke/
│   │   ├── main.tf      # Create OKE cluster
│   │   ├── variables.tf
│   │   ├── outputs.tf
│   │
│   ├── node_pool/
│       ├── main.tf      # Create OKE worker nodes
│       ├── variables.tf
│       ├── outputs.tf
│
│── backend.tf (Optional)  # Remote backend configuration
│── .terraform/ (Terraform state directory)
│── .terraform.lock.hclterraform-oci-oke/
│── provider.tf          # Defines the OCI provider
│── main.tf              # Calls the modules
│── variables.tf         # Global variables for Terraform
│── terraform.tfvars     # Optional: Store default values
│── outputs.tf           # Define output values
│
├── modules/
│   ├── network/
│   │   ├── main.tf      # Create VCN, Subnets, etc.
│   │   ├── variables.tf
│   │   ├── outputs.tf
│   │
│   ├── oke/
│   │   ├── main.tf      # Create OKE cluster
│   │   ├── variables.tf
│   │   ├── outputs.tf
│   │
│   ├── node_pool/
│       ├── main.tf      # Create OKE worker nodes
│       ├── variables.tf
│       ├── outputs.tf
│
│── backend.tf (Optional)  # Remote backend configuration
│── .terraform/ (Terraform state directory)
│── .terraform.lock.hcl


