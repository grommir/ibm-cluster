variable "hardware_type" {
  default = "shared"
}
variable "public_vlan" {
  default = "k8s-dal10.1pub-prod"
}
variable "private_vlan" {
  default = "k8s-dal10.1priv-prod"
}
variable "resource_group" {
  default = "test"
}
variable "cluster_name" {
  default = "ibm-test-cluster"
}
variable "machine_type" {
  default = "u3c.2x4"
}
variable "default_pool_size" {
  default = "1"
}
variable "datacenter" {
  default = "dal10"
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
