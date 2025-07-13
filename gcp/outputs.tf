output "monitoring-vm-ip" {
  value       = google_compute_address.monitoring.address
  description = "Monitoring VM static IP address"
}