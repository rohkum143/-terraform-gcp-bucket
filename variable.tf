variable "project" {
  description = "burner-rohkumar46"
}

variable "region" {
  default = "us-central1"
}

variable "zone" {
  default = "us-central1-a"
}

variable "storage_class" {
  type = string
  default = "STANDARD"
}
variable "versioning" {
  type = bool
  default = true
}