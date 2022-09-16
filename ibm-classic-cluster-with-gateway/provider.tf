variable "ibmcloud_api_key" {
  type = string
}
variable "iaas_classic_username" {
  type = string
}
variable "iaas_classic_api_key" {
  type = string
}

provider "ibm" {
  ibmcloud_api_key      = var.ibmcloud_api_key
  iaas_classic_username = var.iaas_classic_username
  iaas_classic_api_key  = var.iaas_classic_api_key
}
