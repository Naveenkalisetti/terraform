# setup the GCP provider | provider.tf

terraform {
  required_version = ">= 0.12"
}

provider "google" {
  project = var.gcp_project
  credentials = file(var.gcp_auth_file)
  region  = var.gcp_region_1
  zone    = var.gcp_zone_1
}

provider "google-beta" {
  project = var.gcp_project
  credentials = file(var.gcp_auth_file)
  region  = var.gcp_region_1
  zone    = var.gcp_zone_1
}
