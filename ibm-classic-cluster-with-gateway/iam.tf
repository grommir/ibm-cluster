# Create jenkins service account for cluster with required policies
resource "ibm_iam_service_id" "svc_iam_id" {
    name        = "svc-jenkins-kubernetes-${var.cluster_name}"
    description = "Jenkins service account for iks prod cluster"
}

resource "ibm_iam_service_policy" "svc_policy_resource_group" {
    iam_service_id = ibm_iam_service_id.svc_iam_id.id
    roles  = [ "Viewer" ]
    resources {
        resource_type = "resource-group"
        resource = data.ibm_resource_group.resource_group.id
    }
}

resource "ibm_iam_service_policy" "svc_policy_cluster" {
    iam_service_id = ibm_iam_service_id.svc_iam_id.id
    roles = [ "Manager" ]
    resources {
        service = "containers-kubernetes"
        resource_instance_id = ibm_container_cluster.iks_cluster.id
    }
}
