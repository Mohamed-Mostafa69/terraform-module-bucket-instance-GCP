variable "project" {
  description = "Google Cloud project ID"
}

variable "bucket_name" {
  description = "GCS bucket name"
}

variable "region" {
  description = "GKE cluster region"
  default     = "europe-west1"
}
