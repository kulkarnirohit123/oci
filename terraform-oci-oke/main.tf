module "network" {
  source         = "./modules/network"
  compartment_id = var.compartment_id
  vcn_cidr       = "10.0.0.0/16"
  subnet_cidr    = "10.0.1.0/24"
}

module "oke" {
  source         = "./modules/oke"
  compartment_id = var.compartment_id
  vcn_id         = module.network.vcn_id
  k8s_version    = "v1.29.0"
}

module "node_pool" {
  source         = "./modules/node_pool"
  compartment_id = var.compartment_id
  cluster_id     = module.oke.cluster_id
  k8s_version    = "v1.29.0"
  node_shape     = "VM.Standard.E4.Flex"
  node_count     = 3
}
