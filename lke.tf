resource "linode_lke_cluster" "cluster" {
  label       = var.cluster_name
  k8s_version = var.k8s_version
  region      = var.region
  tags        = var.tags

  pool {
    type  = var.machine_type
    count = var.min_num_nodes

    autoscaler {
      min = var.min_num_nodes
      max = var.max_num_nodes
    }
  }

  control_plane {
    high_availability = true
  }
}
