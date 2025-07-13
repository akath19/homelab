resource "cloudflare_dns_record" "truenas-dns-entry" {
  for_each = toset(var.entries)
  zone_id  = var.dns-zone-id
  name     = "${each.key}.${var.zone-name}"
  type     = "A"
  comment  = "NPM Entry for ${each.key} service"
  content  = var.npm-ts-ip
  proxied  = false
  ttl      = 1
}

resource "cloudflare_dns_record" "monitoring-vm-gcp" {
  zone_id = var.dns-zone-id
  name    = "monitoring.${var.zone-name}"
  type    = "A"
  comment = "Monitoring VM in GCP"
  content = data.tfe_outputs.gcp.values.monitoring-vm-ip
  proxied = true
  ttl     = 1
}