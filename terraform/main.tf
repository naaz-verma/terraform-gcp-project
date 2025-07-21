terraform {
  backend "gcs" {
    bucket = "demo-bucket-6bf0c651"
    prefix = "jenkins/dev"
  }
}

provider "google" {
  credentials = file("credentials.json")
  project     = var.project_id
  region      = var.region
  zone        = var.zone
}


resource "random_id" "bucket_suffix" {
  byte_length = 4
}

resource "google_storage_bucket" "my_bucket" {
  name          = "demo-bucket-${random_id.bucket_suffix.hex}"
  location      = var.bucket_location
  force_destroy = true
}

resource "google_compute_instance" "my_vm" {
  name         = var.vm_name
  machine_type = "f1-micro"
  zone         = var.zone

  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-11"
    }
  }

  network_interface {
    network       = "default"
    access_config {}
  }

  metadata = {
  ssh-keys = "naaz:${file("${path.module}/naaz.pub")}"
}
}
