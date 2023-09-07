variable "gcp_project" {
  type        = string
  default     = "name-of-gcp-project"
  description = "The name of the Google Cloud Project where the cluster is to be provisioned"
}

variable "gcp_region" {
  type        = string
  default     = "us-central1"
  description = "The name of the Google region where the cluster nodes are to be provisioned"
}

variable "cluster_name" {
  type        = string
  default     = "primary"
  description = "The name of the cluster to appear on the Google Cloud Console"
}

variable "vpc_name" {
  type        = string
  default     = "main"
  description = "The name of the vpc to appear on the Google Cloud Console"
}

variable "backend_gcp_bucket" {
  type        = string
  default     = "bucket-name"
  description = "The name of the gcp bucket on the Google Cloud Console"
}


variable "machine_type" {
  type        = string
  default     = "e2.small"
  description = "The name of the machine type to use for the cluster nodes"
}

variable "node_count" {
  default     = 4
  description = "The number of cluster nodes"
}
