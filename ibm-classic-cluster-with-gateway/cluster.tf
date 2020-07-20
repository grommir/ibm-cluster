variable "ibmcloud_api_key" {}
variable "iaas_classic_username" {}
variable "iaas_classic_api_key" {}

provider "ibm" {
    ibmcloud_api_key        = var.ibmcloud_api_key
    iaas_classic_username   = var.iaas_classic_username
    iaas_classic_api_key    = var.iaas_classic_api_key
}

variable "hardware_type" { default = "shared" }
variable "dal10_public_vlan" { default = "k8s-dal10.1pub-prod" }
variable "dal10_private_vlan" { default = "k8s-dal10.1priv-prod" }
variable "resource_group" { default = "test" }
variable "cluster_name" { default = "gateway-test-cluster" }

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
resource ibm_container_cluster "cluster" {
    name                        = var.cluster_name
    datacenter                  = "dal10"
    machine_type                = "u3c.2x4"
    hardware                    = var.hardware_type
    public_vlan_id              = data.ibm_network_vlan.dal10_public_vlan.id
    private_vlan_id             = data.ibm_network_vlan.dal10_private_vlan.id
    default_pool_size           = 1
    public_service_endpoint     = "true"
    private_service_endpoint    = "true"
    resource_group_id           = data.ibm_resource_group.resource_group.id
    gateway_enabled             = "true"
}


output "cluster_data" {
  value = ibm_container_cluster.cluster
}