# modules/node_pool/main.tf
resource "oci_containerengine_node_pool" "node_pool" {
  cluster_id        = var.cluster_id
  compartment_id    = var.compartment_id
  kubernetes_version = var.k8s_version
  name              = "oke-nodepool"

  node_shape = var.node_shape

  node_config_details {
    size = var.node_count
  }

  node_metadata = {
    user_data = filebase64("${path.module}/cloud-init.yaml")
  }
}
