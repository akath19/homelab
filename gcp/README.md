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
| [google_compute_network.vpc](https://registry.terraform.io/providers/hashicorp/google/6.43.0/docs/resources/compute_network) | resource |
| [google_compute_subnetwork.subnet](https://registry.terraform.io/providers/hashicorp/google/6.43.0/docs/resources/compute_subnetwork) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_project"></a> [project](#input\_project) | Project ID to create resources in | `string` | n/a | yes |
| <a name="input_region"></a> [region](#input\_region) | Region to create resources in | `string` | n/a | yes |
| <a name="input_tfe-sa"></a> [tfe-sa](#input\_tfe-sa) | Terraform Cloud SA email | `string` | n/a | yes |

## Outputs

No outputs.
<!-- END_TF_DOCS -->