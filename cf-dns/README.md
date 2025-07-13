# CloudFlare DNS

This module holds all my personal domain CloudFlare DNS entries

<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | ~> 1.12 |
| <a name="requirement_cloudflare"></a> [cloudflare](#requirement\_cloudflare) | ~> 5.6 |
| <a name="requirement_tfe"></a> [tfe](#requirement\_tfe) | 0.67.1 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_cloudflare"></a> [cloudflare](#provider\_cloudflare) | 5.6.0 |
| <a name="provider_tfe"></a> [tfe](#provider\_tfe) | 0.67.1 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [cloudflare_dns_record.monitoring-vm-gcp](https://registry.terraform.io/providers/cloudflare/cloudflare/latest/docs/resources/dns_record) | resource |
| [cloudflare_dns_record.ntfy-vm-gcp](https://registry.terraform.io/providers/cloudflare/cloudflare/latest/docs/resources/dns_record) | resource |
| [cloudflare_dns_record.truenas-dns-entry](https://registry.terraform.io/providers/cloudflare/cloudflare/latest/docs/resources/dns_record) | resource |
| [tfe_outputs.gcp](https://registry.terraform.io/providers/hashicorp/tfe/0.67.1/docs/data-sources/outputs) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_api-token"></a> [api-token](#input\_api-token) | CloudFlare API Token for DNS zone management | `string` | n/a | yes |
| <a name="input_dns-zone-id"></a> [dns-zone-id](#input\_dns-zone-id) | CloudFlare DNS Zone ID to Edit | `string` | n/a | yes |
| <a name="input_entries"></a> [entries](#input\_entries) | List of Entries to Create in DNS Zone | `list(string)` | n/a | yes |
| <a name="input_npm-ts-ip"></a> [npm-ts-ip](#input\_npm-ts-ip) | Nginx-Proxy-Manager Tailscale IP address | `string` | n/a | yes |
| <a name="input_zone-name"></a> [zone-name](#input\_zone-name) | Zone Name for Entry Records | `string` | n/a | yes |

## Outputs

No outputs.
<!-- END_TF_DOCS -->