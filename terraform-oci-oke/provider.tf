terraform {
  required_providers {
    oci = {
      source  = "oracle/oci"
      version = "~> 5.0"  # Ensure compatibility with your OCI setup
    }
  }
}

provider "oci" {
  config_file_profile = var.oci_profile
}
