output "vm_name" {
  value = google_compute_instance.my_vm.name
}

output "bucket_name" {
  value = google_storage_bucket.my_bucket.name
}
