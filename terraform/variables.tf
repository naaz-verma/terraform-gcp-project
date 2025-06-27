variable "project_id" {
  description = "GCP project ID"
  type        = string
}

variable "region" {
  description = "GCP region"
  type        = string
  default     = "us-central1"
}

variable "zone" {
  description = "GCP zone"
  type        = string
  default     = "us-central1-a"
}

variable "bucket_location" {
  description = "Location of the GCS bucket"
  type        = string
  default     = "US"
}

variable "vm_name" {
  description = "Name of the virtual machine"
  type        = string
  default     = "demo-instance"
}

variable "service_account_email" {
  description = "Email of the Terraform service account"
  type        = string
}