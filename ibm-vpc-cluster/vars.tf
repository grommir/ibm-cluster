variable "tags" {
  type = list
  default = [ "test", "Managed-by-terraform" ]
}
variable "resource_group" { default = "test-resource-group" }
## VPC
# VPC1
variable "zone" { default = "us-south-1" }
variable "total_ipv4_address_count" { default = "256" }
variable "vpc1_name" { default = "vpc1-test" }
variable "vpc1_subnet_name" { default = "vpc1-test-testsubnet" }
# Cluster
variable "flavor_default" { default = "cx2.2x4" }
variable "default_pool_size" { default = "2" }
variable "vpc1_cluster_name" { default = "vpc1-test-cluster" }
