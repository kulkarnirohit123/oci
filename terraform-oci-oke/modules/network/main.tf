# modules/network/main.tf
resource "oci_core_vcn" "vcn" {
  cidr_block = var.vcn_cidr
  compartment_id = var.compartment_id
  display_name  = "oke_vcn"
}

resource "oci_core_subnet" "oke_subnet" {
  vcn_id            = oci_core_vcn.vcn.id
  cidr_block        = var.subnet_cidr
  compartment_id    = var.compartment_id
  display_name      = "oke_subnet"
}

resource "oci_core_internet_gateway" "internet_gateway" {
  compartment_id = var.compartment_id
  vcn_id         = oci_core_vcn.vcn.id
  display_name   = "oke_igw"
}

resource "oci_core_route_table" "oke_rt" {
  compartment_id = var.compartment_id
  vcn_id         = oci_core_vcn.vcn.id
  route_rules {
    destination       = "0.0.0.0/0"
    network_entity_id = oci_core_internet_gateway.internet_gateway.id
  }
}

resource "oci_core_security_list" "oke_security_list" {
  compartment_id = var.compartment_id
  vcn_id         = oci_core_vcn.vcn.id
  display_name   = "oke_security_list"

  ingress_security_rules {
    protocol = "6"  # TCP
    source   = "0.0.0.0/0"
    tcp_options {
      min = 6443
      max = 6443
    }
  }

  egress_security_rules {
    protocol = "all"
    destination = "0.0.0.0/0"
  }
}
