variable "hardware_type" { default = "shared" }
variable "dal10_public_vlan" { default = "k8s-dal10.1pub-prod" }
variable "dal10_private_vlan" { default = "k8s-dal10.1priv-prod" }
variable "resource_group" { default = "test" }
variable "cluster_name" { default = "ibm-test-cluster" }
variable "machine_type" { default = "u3c.2x4" }