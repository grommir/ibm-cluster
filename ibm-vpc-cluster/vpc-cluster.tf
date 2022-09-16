resource "ibm_resource_group" "env_resource_group" {
  name = var.resource_group
  tags = var.tags
}
resource "ibm_is_vpc" "env_vpc1" {
  name           = var.vpc1_name
  resource_group = ibm_resource_group.env_resource_group.id
  tags           = var.tags
}
resource "ibm_is_subnet" "vpc1_subnet" {
  name                     = var.vpc1_subnet_name
  vpc                      = ibm_is_vpc.env_vpc1.id
  zone                     = var.zone
  total_ipv4_address_count = var.total_ipv4_address_count
  resource_group           = ibm_resource_group.env_resource_group.id
}
resource "ibm_container_vpc_cluster" "vpc1_cluster" {
  name              = var.vpc1_cluster_name
  vpc_id            = ibm_is_vpc.env_vpc1.id
  flavor            = var.flavor_default
  worker_count      = var.default_pool_size
  resource_group_id = ibm_resource_group.env_resource_group.id

  zones {
    subnet_id = ibm_is_subnet.vpc1_subnet.id
    name      = var.zone
  }
}
