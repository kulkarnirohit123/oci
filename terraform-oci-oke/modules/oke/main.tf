# modules/oke/main.tf
resource "oci_containerengine_cluster" "oke_cluster" {
  compartment_id     = var.compartment_id
  vcn_id            = var.vcn_id
  kubernetes_version = var.k8s_version
  name              = "GlobalDevOps"

  endpoint_config {
    is_public_ip_enabled = false
  }
}
