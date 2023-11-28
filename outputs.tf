output "bucket" {
  value       = google_storage_bucket.bucket.name
  description = "The name of the newely created bucket"
}

output "location" {
  value       = var.region
  description = "The location of the bucket"
}