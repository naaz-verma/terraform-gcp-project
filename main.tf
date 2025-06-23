provider "google" {
  credentials = file("credentials.json")
  project     = "terraform-gcp-demo-463810"
  region      = "us-central1"
  zone        = "us-central1-a"
}
