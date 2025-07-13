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
