resource "google_storage_bucket" "bucket" {
  project       = var.project
  name          = var.bucket_name
  location      = var.region
  force_destroy = true
}

resource "google_compute_instance" "vm_instance" {
  name         = "my-instance"
  machine_type = "n2-standard-2"
  zone         = "europe-west1-c"

  tags = ["foo", "bar"]

  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-11"
      labels = {
        my_label = "value"
      }
    }
  }

  // Local SSD disk
  scratch_disk {
    interface = "NVME"
  }

  network_interface {
    network = "default"

    access_config {
      // Ephemeral public IP
    }
  }

  metadata = {
    foo = "bar"
  }

  metadata_startup_script = "echo hi > /test.txt"

}

