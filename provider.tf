provider "google" {
  project = "test-project"
  region = "us-central1"
}

terraform {
  backend "gcs" {
    bucket = "bucket-name"
    prefix = "terraform/statefile"
  }

  required_providers {
    google = {
        source = "hashicorp/google"
        version = "~> 4.0"
    }
  }
}