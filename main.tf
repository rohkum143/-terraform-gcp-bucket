terraform {
  required_providers {
    google = {
      source = "hashicorp/google"
    }
  }
}

provider "google" {
  region  = var.region
  zone    = var.zone
  project = var.project

}
resource "random_id" "suffix" {
  byte_length = 2
}


resource "google_storage_bucket" "bucket" {
  name          = "module-bucket-${random_id.suffix.hex}"
  location      = var.region
  uniform_bucket_level_access = true
  storage_class = var.storage_class
  versioning {
    enabled = var.versioning
  }
  
}