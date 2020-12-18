variable "hardware_type" { default = "shared" }
variable "public_vlan" { default = "k8s-dal10.1pub-prod" }
variable "private_vlan" { default = "k8s-dal10.1priv-prod" }
variable "resource_group" { default = "test" }
variable "cluster_name" { default = "ibm-test-cluster" }
variable "machine_type" { default = "u3c.2x4" }
variable "default_pool_size" { default = "1" }
variable "datacenter" { default = "dal10" }
