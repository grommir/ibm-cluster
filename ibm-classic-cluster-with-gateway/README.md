# Requirements

No requirements.

## Providers

| Name | Version |
|------|---------|
| <a name="provider_ibm"></a> [ibm](#provider\_ibm) | n/a |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [ibm_container_alb_cert.ssl_cert](https://registry.terraform.io/providers/hashicorp/ibm/latest/docs/resources/container_alb_cert) | resource |
| [ibm_container_cluster.iks_cluster](https://registry.terraform.io/providers/hashicorp/ibm/latest/docs/resources/container_cluster) | resource |
| [ibm_iam_service_id.svc_iam_id](https://registry.terraform.io/providers/hashicorp/ibm/latest/docs/resources/iam_service_id) | resource |
| [ibm_iam_service_policy.svc_policy_cluster](https://registry.terraform.io/providers/hashicorp/ibm/latest/docs/resources/iam_service_policy) | resource |
| [ibm_iam_service_policy.svc_policy_resource_group](https://registry.terraform.io/providers/hashicorp/ibm/latest/docs/resources/iam_service_policy) | resource |
| [ibm_network_vlan.private_vlan](https://registry.terraform.io/providers/hashicorp/ibm/latest/docs/data-sources/network_vlan) | data source |
| [ibm_network_vlan.public_vlan](https://registry.terraform.io/providers/hashicorp/ibm/latest/docs/data-sources/network_vlan) | data source |
| [ibm_resource_group.resource_group](https://registry.terraform.io/providers/hashicorp/ibm/latest/docs/data-sources/resource_group) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_iaas_classic_api_key"></a> [iaas\_classic\_api\_key](#input\_iaas\_classic\_api\_key) | n/a | `any` | n/a | yes |
| <a name="input_iaas_classic_username"></a> [iaas\_classic\_username](#input\_iaas\_classic\_username) | n/a | `any` | n/a | yes |
| <a name="input_ibmcloud_api_key"></a> [ibmcloud\_api\_key](#input\_ibmcloud\_api\_key) | n/a | `any` | n/a | yes |
| <a name="input_cluster_name"></a> [cluster\_name](#input\_cluster\_name) | n/a | `string` | `"ibm-test-cluster"` | no |
| <a name="input_datacenter"></a> [datacenter](#input\_datacenter) | n/a | `string` | `"dal10"` | no |
| <a name="input_default_pool_size"></a> [default\_pool\_size](#input\_default\_pool\_size) | n/a | `string` | `"1"` | no |
| <a name="input_hardware_type"></a> [hardware\_type](#input\_hardware\_type) | n/a | `string` | `"shared"` | no |
| <a name="input_machine_type"></a> [machine\_type](#input\_machine\_type) | n/a | `string` | `"u3c.2x4"` | no |
| <a name="input_private_vlan"></a> [private\_vlan](#input\_private\_vlan) | n/a | `string` | `"k8s-dal10.1priv-prod"` | no |
| <a name="input_public_vlan"></a> [public\_vlan](#input\_public\_vlan) | n/a | `string` | `"k8s-dal10.1pub-prod"` | no |
| <a name="input_resource_group"></a> [resource\_group](#input\_resource\_group) | n/a | `string` | `"test"` | no |
| <a name="input_ssl_certs"></a> [ssl\_certs](#input\_ssl\_certs) | n/a | <pre>list(object({<br>    certificate_crn  = string<br>    certificate_name = string<br>  }))</pre> | <pre>[<br>  {<br>    "certificate_crn": "crn:v1:bluemix:public:cloudcerts:us-south:a/dummydummydummy:blablabla:certificate:qwerty12334566",<br>    "certificate_name": "my_first_cert"<br>  },<br>  {<br>    "certificate_crn": "crn:v1:bluemix:public:cloudcerts:us-south:a/dummydummydummy:blablabla:certificate:qwerty1233456677",<br>    "certificate_name": "my_second_cert"<br>  }<br>]</pre> | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_cluster_data"></a> [cluster\_data](#output\_cluster\_data) | print cluster info |
