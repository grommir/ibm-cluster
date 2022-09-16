# gather data
data "ibm_network_vlan" "public_vlan" {
  name = var.public_vlan
}
data "ibm_network_vlan" "private_vlan" {
  name = var.private_vlan
}
data "ibm_resource_group" "resource_group" {
  name = var.resource_group
}
# create cluster
resource "ibm_container_cluster" "iks_cluster" {
  name                     = var.cluster_name
  datacenter               = var.datacenter
  machine_type             = var.machine_type
  hardware                 = var.hardware_type
  public_vlan_id           = data.ibm_network_vlan.public_vlan.id
  private_vlan_id          = data.ibm_network_vlan.private_vlan.id
  default_pool_size        = var.default_pool_size
  public_service_endpoint  = "false"
  private_service_endpoint = "true"
  resource_group_id        = data.ibm_resource_group.resource_group.id
  gateway_enabled          = "true"
}

# print cluster info 
output "cluster_data" {
  value = ibm_container_cluster.iks_cluster
}

# add certificates to cluster
resource "ibm_container_alb_cert" "ssl_cert" {
  count = length(var.ssl_certs)

  cert_crn    = var.ssl_certs[count.index].certificate_crn
  secret_name = var.ssl_certs[count.index].certificate_name
  cluster_id  = ibm_container_cluster.iks_cluster.id
  persistence = true
  depends_on  = [ibm_container_cluster.iks_cluster]
}
