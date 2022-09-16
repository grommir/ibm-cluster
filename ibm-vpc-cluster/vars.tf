variable "tags" {
  type    = list(any)
  default = ["test", "Managed-by-terraform"]
}
variable "resource_group" {
  default = "test-resource-group"
  type    = string
}
## VPC
# VPC1
variable "zone" {
  default = "us-south-1"
  type    = string
}
variable "total_ipv4_address_count" {
  default = "256"
  type    = string
}
variable "vpc1_name" {
  default = "vpc1-test"
  type    = string
}
variable "vpc1_subnet_name" {
  default = "vpc1-test-testsubnet"
  type    = string
}
# Cluster
variable "flavor_default" {
  default = "cx2.2x4"
  type    = string
}
variable "default_pool_size" {
  default = "1"
  type    = string
}
variable "vpc1_cluster_name" {
  default = "vpc1-test-cluster"
  type    = string
}
