variable "hardware_type" {
  default = "shared"
  type    = string
}
variable "public_vlan" {
  default = "k8s-dal10.1pub-prod"
  type    = string
}
variable "private_vlan" {
  default = "k8s-dal10.1priv-prod"
  type    = string
}
variable "resource_group" {
  default = "test"
  type    = string
}
variable "cluster_name" {
  default = "ibm-test-cluster"
  type    = string
}
variable "machine_type" {
  default = "u3c.2x4"
  type    = string
}
variable "default_pool_size" {
  default = "1"
  type    = string
}
variable "datacenter" {
  default = "dal10"
  type    = string
}

variable "ssl_certs" {
  type = list(object({
    certificate_crn  = string
    certificate_name = string
  }))
  default = [
    {
      certificate_crn  = "crn:v1:bluemix:public:cloudcerts:us-south:a/dummydummydummy:blablabla:certificate:qwerty12334566"
      certificate_name = "my_first_cert"
    },
    {
      certificate_crn  = "crn:v1:bluemix:public:cloudcerts:us-south:a/dummydummydummy:blablabla:certificate:qwerty1233456677"
      certificate_name = "my_second_cert"
    }
  ]
}
