# Google Cloud Platform

This module holds all my GCP Configs

<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | ~> 1.12 |
| <a name="requirement_google"></a> [google](#requirement\_google) | 6.43.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_google"></a> [google](#provider\_google) | 6.43.0 |

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_tfe-sa-iam"></a> [tfe-sa-iam](#module\_tfe-sa-iam) | terraform-google-modules/iam/google//modules/projects_iam | ~> 8.0 |

## Resources

| Name | Type |
|------|------|
| [google_compute_address.monitoring](https://registry.terraform.io/providers/hashicorp/google/6.43.0/docs/resources/compute_address) | resource |
| [google_compute_firewall.monitoring](https://registry.terraform.io/providers/hashicorp/google/6.43.0/docs/resources/compute_firewall) | resource |
| [google_compute_instance.monitoring](https://registry.terraform.io/providers/hashicorp/google/6.43.0/docs/resources/compute_instance) | resource |
| [google_compute_network.vpc](https://registry.terraform.io/providers/hashicorp/google/6.43.0/docs/resources/compute_network) | resource |
| [google_compute_subnetwork.subnet](https://registry.terraform.io/providers/hashicorp/google/6.43.0/docs/resources/compute_subnetwork) | resource |
| [google_service_account.monitoring-vm](https://registry.terraform.io/providers/hashicorp/google/6.43.0/docs/resources/service_account) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_cloudflare-ranges"></a> [cloudflare-ranges](#input\_cloudflare-ranges) | Cloudflare ranges for connection to monitoring VM | `string` | n/a | yes |
| <a name="input_current-home-ip"></a> [current-home-ip](#input\_current-home-ip) | Current home IP for connection to monitoring VM | `string` | n/a | yes |
| <a name="input_project"></a> [project](#input\_project) | Project ID to create resources in | `string` | n/a | yes |
| <a name="input_region"></a> [region](#input\_region) | Region to create resources in | `string` | n/a | yes |
| <a name="input_tfe-sa"></a> [tfe-sa](#input\_tfe-sa) | Terraform Cloud SA email | `string` | n/a | yes |
| <a name="input_zone"></a> [zone](#input\_zone) | Zone within region to create resources in | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_monitoring-vm-ip"></a> [monitoring-vm-ip](#output\_monitoring-vm-ip) | Monitoring VM static IP address |
<!-- END_TF_DOCS -->