variable "compartment_id" {}

variable "oci_profile" {
  description = "The OCI CLI profile to use (e.g., DEFAULT, PHOENIX, TOKYO)"
  type        = string
  default     = "DEFAULT"
}
