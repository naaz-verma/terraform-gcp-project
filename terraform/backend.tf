resource "google_storage_bucket" "terraform_state" {
  name          = "terraform-state-gcp-demo-naaz"  
  location      = "US"
  storage_class = "STANDARD"
  force_destroy = true

  versioning {
    enabled = true
  }

  labels = {
    env     = "dev"
    purpose = "terraform-state"
  }
}


resource "google_storage_bucket_iam_member" "terraform_writer" {
  bucket = google_storage_bucket.terraform_state.name
  role   = "roles/storage.admin"
  member = "serviceAccount:${var.service_account_email}"

}

