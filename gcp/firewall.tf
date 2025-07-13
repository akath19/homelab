locals {
  ips = concat(var.cloudflare-ranges, [var.current-home-ip])
}

resource "google_compute_firewall" "monitoring" {
  name    = "monitoring-vm"
  network = google_compute_network.vpc.name

  allow {
    protocol = "icmp"
  }

  allow {
    protocol = "tcp"
    ports    = ["22", "80", "443"]
  }

  direction = "INGRESS"

  source_ranges = local.ips
}
