resource "google_compute_address" "monitoring" {
  name         = "monitoring"
  network_tier = "STANDARD"
}

resource "google_compute_instance" "monitoring" {
  name         = "monitoring"
  machine_type = "e2-micro"
  zone         = var.zone

  tags = ["foo", "bar"]

  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-11"
    }
  }

  network_interface {
    network    = "vpc"
    subnetwork = var.region

    access_config {
      nat_ip       = google_compute_address.monitoring.address
      network_tier = "STANDARD"
    }
  }

  service_account {
    # Google recommends custom service accounts that have cloud-platform scope and permissions granted via IAM Roles.
    email  = google_service_account.monitoring-vm.email
    scopes = ["cloud-platform"]
  }
}