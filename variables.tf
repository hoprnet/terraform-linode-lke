variable "k8s_version" {
  default     = "1.23"
  description = "k8s version to be used"
}

variable "min_num_nodes" {
  description = "min number of lke nodes"
}

variable "max_num_nodes" {
  description = "max number of lke nodes"
}

variable "machine_type" {
  description = "machine type used for lke nodes"
}

variable "region" {
  description = "compute region used"
}

variable "cluster_name" {
  description = "unique cluster name"
}

variable "tags" {
  default     = []
  description = "tags for the resource"
}
