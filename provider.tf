provider "google" {
  project = var.gcp_project
  region  = var.gcp_region
}

terraform {
  backend "gcs" {
    bucket = var.backend_gcp_bucket
    prefix = "terraform/statefile"
  }

  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "~> 4.0"
    }
  }
}