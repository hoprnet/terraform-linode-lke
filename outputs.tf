locals {
  kube_config = base64decode(linode_lke_cluster.cluster.kubeconfig)
}

output "cluster_id" {
  value       = linode_lke_cluster.cluster.id
  description = "LKE k8s Cluster ID"
}

output "cluster_status" {
  value       = linode_lke_cluster.cluster.status
  description = "LKE k8s Cluster Status"
}

output "cluster_dashboard_url" {
  value       = linode_lke_cluster.cluster.dashboard_url
  description = "LKE k8s Cluster Dashboard URL"
}

output "kube_config" {
  value       = local.kube_config
  sensitive   = true
  description = "LKE k8s config"
}
