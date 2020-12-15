# gather data
data "ibm_network_vlan" "dal10_public_vlan" {
    name = var.dal10_public_vlan
}
data "ibm_network_vlan" "dal10_private_vlan" {
    name = var.dal10_private_vlan
}
data ibm_resource_group "resource_group" {
    name = var.resource_group
}
# create cluster
resource ibm_container_cluster "iks_cluster" {
    name                        = var.cluster_name
    datacenter                  = "dal10"
    machine_type                = var.machine_type
    hardware                    = var.hardware_type
    public_vlan_id              = data.ibm_network_vlan.dal10_public_vlan.id
    private_vlan_id             = data.ibm_network_vlan.dal10_private_vlan.id
    default_pool_size           = var.default_pool_size
    public_service_endpoint     = "false"
    private_service_endpoint    = "true"
    resource_group_id           = data.ibm_resource_group.resource_group.id
    gateway_enabled             = "true"
}

# print cluster info 
output "cluster_data" {
  value = ibm_container_cluster.iks_cluster
}
