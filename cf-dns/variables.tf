variable "api-token" {
  type        = string
  sensitive   = true
  description = "CloudFlare API Token for DNS zone management"
}

variable "dns-zone-id" {
  type        = string
  sensitive   = true
  description = "CloudFlare DNS Zone ID to Edit"
}

variable "zone-name" {
  type        = string
  sensitive   = true
  description = "Zone Name for Entry Records"
}

variable "npm-ts-ip" {
  type        = string
  description = "Nginx-Proxy-Manager Tailscale IP address"
}

variable "entries" {
  type        = list(string)
  description = "List of Entries to Create in DNS Zone"
}